; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/sja1105/sja1105_tas.c_pt.bc'
source_filename = "../drivers/net/dsa/sja1105/sja1105_tas.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sja1105_private = type { %struct.sja1105_static_config, [11 x i32], [11 x i32], [11 x i32], [11 x i8], i32, i32, i32, ptr, i32, ptr, ptr, [11 x i16], [11 x i16], %struct.sja1105_flow_block, %struct.mutex, %struct.spinlock, i8, %struct.mutex, ptr, ptr, ptr, ptr, ptr, [11 x ptr], %struct.sja1105_ptp_data, %struct.sja1105_tas_data }
%struct.sja1105_static_config = type { i64, [21 x %struct.sja1105_table] }
%struct.sja1105_table = type { ptr, i32, ptr }
%struct.sja1105_flow_block = type { %struct.list_head, [110 x i8], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sja1105_ptp_data = type { %struct.timer_list, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ptp_clock_info, ptr, %struct.sja1105_ptp_cmd, %struct.mutex, i8, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sja1105_ptp_cmd = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_tas_data = type { [11 x ptr], %struct.sja1105_gating_config, i32, i32, %struct.work_struct, i64, i64, i64, i8 }
%struct.sja1105_gating_config = type { i64, i64, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.tc_taprio_qopt_offload = type { i8, i64, i64, i64, i32, [0 x %struct.tc_taprio_sched_entry] }
%struct.tc_taprio_sched_entry = type { i8, i32, i32 }
%struct.sja1105_table_ops = type { ptr, i32, i32, i32 }
%struct.sja1105_schedule_entry_points_params_entry = type { i64, i64 }
%struct.sja1105_schedule_entry_points_entry = type { i64, i64, i64 }
%struct.sja1105_schedule_entry = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_gate_entry = type { %struct.list_head, ptr, i64, i8 }
%struct.sja1105_rule = type { %struct.list_head, i32, i32, %struct.sja1105_key, i32, %union.anon.175 }
%struct.sja1105_key = type { i32, %union.anon.172 }
%union.anon.172 = type { %struct.anon.174 }
%struct.anon.174 = type { i64, i16, i16 }
%union.anon.175 = type { %struct.anon.178 }
%struct.anon.178 = type { i32, i32, i32, i32, i32, i64, i64, i32, ptr, %struct.flow_stats }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.timespec64 = type { i64, i32 }
%struct.sja1105_info = type { i64, i64, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i32], [5 x i64] }
%struct.sja1105_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [4 x [11 x i64]], i64, i64, [11 x i64] }

@sja1105_gating_check_conflicts.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sja1105: Failed to allocate memory\00", [61 x i8] zeroinitializer }, align 32
@sja1105_setup_tc_taprio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 554, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Interval %llu too %s for GCL entry %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sja1105_setup_tc_taprio\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/dsa/sja1105/sja1105_tas.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sja1105_setup_tc_taprio._entry_ptr = internal global ptr @sja1105_setup_tc_taprio._entry, section ".printk_index", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"long\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"short\00", [26 x i8] zeroinitializer }, align 32
@sja1105_setup_tc_taprio._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 568, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Conflict with tc-gate schedule\0A\00", [32 x i8] zeroinitializer }, align 32
@sja1105_setup_tc_taprio._entry_ptr.9 = internal global ptr @sja1105_setup_tc_taprio._entry.7, section ".printk_index", align 4
@sja1105_tas_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&tas_data->tas_work)\00", [57 x i8] zeroinitializer }, align 32
@sja1105_tas_set_runtime_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 79, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Base times too far apart: min %llu max %llu\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sja1105_tas_set_runtime_params\00", [33 x i8] zeroinitializer }, align 32
@sja1105_tas_set_runtime_params._entry_ptr = internal global ptr @sja1105_tas_set_runtime_params._entry, section ".printk_index", align 4
@sja1105_tas_set_runtime_params.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sja1105\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"earliest base time %lld ns\0A\00", [36 x i8] zeroinitializer }, align 32
@sja1105_tas_set_runtime_params.__UNIQUE_ID_ddebug519 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"latest base time %lld ns\0A\00", [38 x i8] zeroinitializer }, align 32
@sja1105_tas_set_runtime_params.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.12, ptr @.str.2, ptr @.str.16, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"longest cycle time %lld ns\0A\00", [36 x i8] zeroinitializer }, align 32
@sja1105_tas_check_conflicts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 450, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"GCL entry %d collides with entry %d of port %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sja1105_tas_check_conflicts\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sja1105_tas_check_conflicts._entry_ptr = internal global ptr @sja1105_tas_check_conflicts._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sja1105_tas_state_machine.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sja1105_tas_state_machine\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"OPER base time %lld.%09ld (now %lld.%09ld)\0A\00", [52 x i8] zeroinitializer }, align 32
@sja1105_tas_state_machine.__UNIQUE_ID_ddebug530 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 0, i8 -57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"time to start: [%lld.%09ld]\00", [36 x i8] zeroinitializer }, align 32
@sja1105_tas_state_machine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.2, i32 811, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"TAS not started despite time elapsed\0A\00", [58 x i8] zeroinitializer }, align 32
@sja1105_tas_state_machine._entry_ptr = internal global ptr @sja1105_tas_state_machine._entry, section ".printk_index", align 4
@sja1105_tas_state_machine._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 827, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TAS surprisingly stopped\0A\00", [38 x i8] zeroinitializer }, align 32
@sja1105_tas_state_machine._entry_ptr.26 = internal global ptr @sja1105_tas_state_machine._entry.24, section ".printk_index", align 4
@sja1105_tas_state_machine._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.2, i32 833, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"TAS in an invalid state (incorrect use of API)!\0A\00", [47 x i8] zeroinitializer }, align 32
@sja1105_tas_state_machine._entry_ptr.29 = internal global ptr @sja1105_tas_state_machine._entry.27, section ".printk_index", align 4
@sja1105_tas_state_machine._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.2, i32 837, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"An operation returned %d\0A\00", [38 x i8] zeroinitializer }, align 32
@sja1105_tas_state_machine._entry_ptr.32 = internal global ptr @sja1105_tas_state_machine._entry.30, section ".printk_index", align 4
@sja1105_tas_start.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sja1105_tas_start\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Starting the TAS\0A\00", [46 x i8] zeroinitializer }, align 32
@sja1105_tas_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 638, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TAS already started\0A\00", [43 x i8] zeroinitializer }, align 32
@sja1105_tas_start._entry_ptr = internal global ptr @sja1105_tas_start._entry, section ".printk_index", align 4
@sja1105_tas_stop.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sja1105_tas_stop\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Stopping the TAS\0A\00", [46 x i8] zeroinitializer }, align 32
@sja1105_tas_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 664, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TAS already disabled\0A\00", [42 x i8] zeroinitializer }, align 32
@sja1105_tas_stop._entry_ptr = internal global ptr @sja1105_tas_stop._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 482, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 552, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 568, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 875, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 77, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 86, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 87, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 88, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 448, i32 7 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 775, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 798, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 810, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 827, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 833, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 837, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 634, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 638, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 661, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [41 x i8] c"../drivers/net/dsa/sja1105/sja1105_tas.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 664, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @sja1105_setup_tc_taprio._entry, ptr @sja1105_setup_tc_taprio._entry.7, ptr @sja1105_setup_tc_taprio._entry_ptr, ptr @sja1105_setup_tc_taprio._entry_ptr.9, ptr @sja1105_tas_check_conflicts._entry, ptr @sja1105_tas_check_conflicts._entry_ptr, ptr @sja1105_tas_set_runtime_params._entry, ptr @sja1105_tas_set_runtime_params._entry_ptr, ptr @sja1105_tas_start._entry, ptr @sja1105_tas_start._entry_ptr, ptr @sja1105_tas_state_machine._entry, ptr @sja1105_tas_state_machine._entry.24, ptr @sja1105_tas_state_machine._entry.27, ptr @sja1105_tas_state_machine._entry.30, ptr @sja1105_tas_state_machine._entry_ptr, ptr @sja1105_tas_state_machine._entry_ptr.26, ptr @sja1105_tas_state_machine._entry_ptr.29, ptr @sja1105_tas_state_machine._entry_ptr.32, ptr @sja1105_tas_stop._entry, ptr @sja1105_tas_stop._entry_ptr, ptr @sja1105_gating_check_conflicts.__msg, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @sja1105_tas_setup.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_gating_check_conflicts.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_setup_tc_taprio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_setup_tc_taprio._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_tas_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_tas_set_runtime_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_tas_check_conflicts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_tas_state_machine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_tas_state_machine._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_tas_state_machine._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_tas_state_machine._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_tas_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_tas_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_init_scheduling(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %remainder.i.i520 = alloca i32, align 4
  %remainder.i.i518 = alloca i32, align 4
  %remainder.i.i506 = alloca i32, align 4
  %remainder.i.i502 = alloca i32, align 4
  %remainder.i.i500 = alloca i32, align 4
  %remainder.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tas_data1 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26
  %gating_cfg2 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 1
  %ds3 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ds3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds3, align 8
  %call = tail call fastcc i32 @sja1105_tas_set_runtime_params(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup235_crit_edge, label %if.end

entry.cleanup235_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup235

if.end:                                           ; preds = %entry
  %tables = getelementptr inbounds %struct.sja1105_static_config, ptr %priv, i32 0, i32 1
  %entry_count = getelementptr inbounds %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %entries = getelementptr inbounds %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entries, align 4
  tail call void @kfree(ptr noundef %5) #6
  %6 = ptrtoint ptr %entry_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %entry_count, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %arrayidx9 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 11
  %entry_count10 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 11, i32 1
  %7 = ptrtoint ptr %entry_count10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %entry_count10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not = icmp eq i32 %8, 0
  br i1 %tobool11.not, label %if.end6.if.end15_crit_edge, label %if.then12

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %entries13 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 11, i32 2
  %9 = ptrtoint ptr %entries13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entries13, align 4
  tail call void @kfree(ptr noundef %10) #6
  %11 = ptrtoint ptr %entry_count10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %entry_count10, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end6.if.end15_crit_edge
  %arrayidx18 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 10
  %entry_count19 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 10, i32 1
  %12 = ptrtoint ptr %entry_count19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %entry_count19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %if.end15.if.end24_crit_edge, label %if.then21

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %entries22 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 10, i32 2
  %14 = ptrtoint ptr %entries22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entries22, align 4
  tail call void @kfree(ptr noundef %15) #6
  %16 = ptrtoint ptr %entry_count19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %entry_count19, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end15.if.end24_crit_edge
  %arrayidx27 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 1
  %entry_count28 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %entry_count28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %entry_count28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool29.not = icmp eq i32 %18, 0
  br i1 %tobool29.not, label %if.end24.if.end33_crit_edge, label %if.then30

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %entries31 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 1, i32 2
  %19 = ptrtoint ptr %entries31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %entries31, align 4
  tail call void @kfree(ptr noundef %20) #6
  %21 = ptrtoint ptr %entry_count28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %entry_count28, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end24.if.end33_crit_edge
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 18
  %22 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp34554.not = icmp eq i32 %23, 0
  br i1 %cmp34554.not, label %if.end33.for.end_crit_edge, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  br label %for.body

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end33.for.body_crit_edge
  %port.0557 = phi i32 [ %inc42, %for.inc.for.body_crit_edge ], [ 0, %if.end33.for.body_crit_edge ]
  %num_cycles.0556 = phi i32 [ %num_cycles.1, %for.inc.for.body_crit_edge ], [ 0, %if.end33.for.body_crit_edge ]
  %num_entries.0555 = phi i32 [ %num_entries.1, %for.inc.for.body_crit_edge ], [ 0, %if.end33.for.body_crit_edge ]
  %arrayidx35 = getelementptr [11 x ptr], ptr %tas_data1, i32 0, i32 %port.0557
  %24 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx35, align 4
  %tobool36.not = icmp eq ptr %25, null
  br i1 %tobool36.not, label %for.body.for.inc_crit_edge, label %if.then37

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then37:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %num_entries40 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %num_entries40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_entries40, align 8
  %add = add i32 %27, %num_entries.0555
  %inc = add i32 %num_cycles.0556, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then37, %for.body.for.inc_crit_edge
  %num_entries.1 = phi i32 [ %add, %if.then37 ], [ %num_entries.0555, %for.body.for.inc_crit_edge ]
  %num_cycles.1 = phi i32 [ %inc, %if.then37 ], [ %num_cycles.0556, %for.body.for.inc_crit_edge ]
  %inc42 = add nuw i32 %port.0557, 1
  %exitcond.not = icmp eq i32 %inc42, %23
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end33.for.end_crit_edge
  %num_entries.0.lcssa = phi i32 [ 0, %if.end33.for.end_crit_edge ], [ %num_entries.1, %for.inc.for.end_crit_edge ]
  %num_cycles.0.lcssa = phi i32 [ 0, %if.end33.for.end_crit_edge ], [ %num_cycles.1, %for.inc.for.end_crit_edge ]
  %entries43 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 1, i32 3
  %28 = ptrtoint ptr %entries43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %entries43, align 4
  %cmp.i.not = icmp eq ptr %29, %entries43
  br i1 %cmp.i.not, label %for.end.if.end50_crit_edge, label %if.then46

for.end.if.end50_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then46:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %num_entries47 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 1, i32 2
  %30 = ptrtoint ptr %num_entries47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_entries47, align 8
  %add48 = add i32 %31, %num_entries.0.lcssa
  %inc49 = add i32 %num_cycles.0.lcssa, 1
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %for.end.if.end50_crit_edge
  %num_entries.2 = phi i32 [ %num_entries.0.lcssa, %for.end.if.end50_crit_edge ], [ %add48, %if.then46 ]
  %num_cycles.2 = phi i32 [ %num_cycles.0.lcssa, %for.end.if.end50_crit_edge ], [ %inc49, %if.then46 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_cycles.2)
  %tobool51.not = icmp eq i32 %num_cycles.2, 0
  br i1 %tobool51.not, label %if.end50.cleanup235_crit_edge, label %if.end53

if.end50.cleanup235_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup235

if.end53:                                         ; preds = %if.end50
  %32 = ptrtoint ptr %tables to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tables, align 4
  %unpacked_entry_size = getelementptr inbounds %struct.sja1105_table_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %unpacked_entry_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %unpacked_entry_size, align 4
  %36 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_entries.2, i32 %35) #6
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !88

kcalloc.exit.thread:                              ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %entries58523 = getelementptr inbounds %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 0, i32 2
  br label %cleanup235.sink.split

if.end7.i.i:                                      ; preds = %if.end53
  %38 = extractvalue { i32, i1 } %36, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %38, i32 noundef 3520) #9
  %entries58 = getelementptr inbounds %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 0, i32 2
  %39 = ptrtoint ptr %entries58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call8.i.i, ptr %entries58, align 4
  %tobool60.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool60.not, label %if.end7.i.i.cleanup235_crit_edge, label %if.end62

if.end7.i.i.cleanup235_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup235

if.end62:                                         ; preds = %if.end7.i.i
  %40 = ptrtoint ptr %entry_count to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %num_entries.2, ptr %entry_count, align 4
  %41 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx9, align 4
  %unpacked_entry_size69 = getelementptr inbounds %struct.sja1105_table_ops, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %unpacked_entry_size69 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %unpacked_entry_size69, align 4
  %call8.i.i427 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %44, i32 noundef 3520) #9
  %entries71 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 11, i32 2
  %45 = ptrtoint ptr %entries71 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call8.i.i427, ptr %entries71, align 4
  %tobool73.not = icmp eq ptr %call8.i.i427, null
  br i1 %tobool73.not, label %if.end62.cleanup235_crit_edge, label %if.end75

if.end62.cleanup235_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup235

if.end75:                                         ; preds = %if.end62
  %46 = ptrtoint ptr %entry_count10 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %entry_count10, align 4
  %47 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx18, align 4
  %unpacked_entry_size82 = getelementptr inbounds %struct.sja1105_table_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %unpacked_entry_size82 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %unpacked_entry_size82, align 4
  %call8.i.i461 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %50, i32 noundef 3520) #9
  %entries84 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 10, i32 2
  %51 = ptrtoint ptr %entries84 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call8.i.i461, ptr %entries84, align 4
  %tobool86.not = icmp eq ptr %call8.i.i461, null
  br i1 %tobool86.not, label %if.end75.cleanup235_crit_edge, label %if.end88

if.end75.cleanup235_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup235

if.end88:                                         ; preds = %if.end75
  %52 = ptrtoint ptr %entry_count19 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %entry_count19, align 4
  %53 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx27, align 4
  %unpacked_entry_size95 = getelementptr inbounds %struct.sja1105_table_ops, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %unpacked_entry_size95 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %unpacked_entry_size95, align 4
  %57 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_cycles.2, i32 %56) #6
  %58 = extractvalue { i32, i1 } %57, 1
  br i1 %58, label %kcalloc.exit498.thread, label %if.end7.i.i496, !prof !88

kcalloc.exit498.thread:                           ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  %entries97547 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 1, i32 2
  br label %cleanup235.sink.split

if.end7.i.i496:                                   ; preds = %if.end88
  %59 = extractvalue { i32, i1 } %57, 0
  %call8.i.i495 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %59, i32 noundef 3520) #9
  %entries97 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 1, i32 2
  %60 = ptrtoint ptr %entries97 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call8.i.i495, ptr %entries97, align 4
  %tobool99.not = icmp eq ptr %call8.i.i495, null
  br i1 %tobool99.not, label %if.end7.i.i496.cleanup235_crit_edge, label %if.end101

if.end7.i.i496.cleanup235_crit_edge:              ; preds = %if.end7.i.i496
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup235

if.end101:                                        ; preds = %if.end7.i.i496
  %61 = ptrtoint ptr %entry_count28 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %num_cycles.2, ptr %entry_count28, align 4
  %62 = ptrtoint ptr %call8.i.i427 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 3, ptr %call8.i.i427, align 128
  %sub = add i32 %num_cycles.2, -1
  %conv = sext i32 %sub to i64
  %actsubsch = getelementptr inbounds %struct.sja1105_schedule_entry_points_params_entry, ptr %call8.i.i427, i32 0, i32 1
  %63 = ptrtoint ptr %actsubsch to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv, ptr %actsubsch, align 8
  %64 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp106565.not = icmp eq i32 %65, 0
  br i1 %cmp106565.not, label %if.end101.for.end163_crit_edge, label %for.body108.lr.ph

if.end101.for.end163_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end163

for.body108.lr.ph:                                ; preds = %if.end101
  %earliest_base_time = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 5
  br label %for.body108

for.body108:                                      ; preds = %cleanup.for.body108_crit_edge, %for.body108.lr.ph
  %port.1569 = phi i32 [ 0, %for.body108.lr.ph ], [ %inc162, %cleanup.for.body108_crit_edge ]
  %k.0568 = phi i32 [ 0, %for.body108.lr.ph ], [ %k.2, %cleanup.for.body108_crit_edge ]
  %cycle.0566 = phi i32 [ 0, %for.body108.lr.ph ], [ %cycle.1, %cleanup.for.body108_crit_edge ]
  %arrayidx111 = getelementptr [11 x ptr], ptr %tas_data1, i32 0, i32 %port.1569
  %66 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx111, align 4
  %tobool112.not = icmp eq ptr %67, null
  br i1 %tobool112.not, label %for.body108.cleanup_crit_edge, label %if.end114

for.body108.cleanup_crit_edge:                    ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end114:                                        ; preds = %for.body108
  %num_entries115 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %num_entries115 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_entries115, align 8
  %add116 = add i32 %k.0568, -1
  %sub117 = add i32 %add116, %69
  %base_time = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %67, i32 0, i32 1
  %70 = ptrtoint ptr %base_time to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %base_time, align 8
  %72 = ptrtoint ptr %earliest_base_time to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %earliest_base_time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %73, i64 %71)
  %cmp.not.i = icmp sgt i64 %73, %71
  br i1 %cmp.not.i, label %if.end.i, label %if.end114.future_base_time.exit_crit_edge

if.end114.future_base_time.exit_crit_edge:        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %future_base_time.exit

if.end.i:                                         ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  %cycle_time = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %67, i32 0, i32 2
  %74 = ptrtoint ptr %cycle_time to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %cycle_time, align 8
  %sub.i = xor i64 %71, -1
  %add.i = add i64 %73, %sub.i
  %sub1.i = add i64 %add.i, %75
  %conv.i499 = trunc i64 %75 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %76 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !89
  %call.i.i = call i64 @div_s64_rem(i64 noundef %sub1.i, i32 noundef %conv.i499, ptr noundef nonnull %remainder.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %mul.i = mul i64 %call.i.i, %75
  %add2.i = add i64 %mul.i, %71
  br label %future_base_time.exit

future_base_time.exit:                            ; preds = %if.end.i, %if.end114.future_base_time.exit_crit_edge
  %retval.0.i = phi i64 [ %add2.i, %if.end.i ], [ %71, %if.end114.future_base_time.exit_crit_edge ]
  %77 = ptrtoint ptr %earliest_base_time to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %earliest_base_time, align 8
  %sub120 = sub i64 %retval.0.i, %78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i500) #6
  %79 = ptrtoint ptr %remainder.i.i500 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %remainder.i.i500, align 4, !annotation !89
  %call.i.i501 = call i64 @div_s64_rem(i64 noundef %sub120, i32 noundef 200, ptr noundef nonnull %remainder.i.i500) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i500) #6
  %add122 = add i64 %call.i.i501, 1
  %conv123 = sext i32 %cycle.0566 to i64
  %arrayidx124 = getelementptr %struct.sja1105_schedule_entry_points_entry, ptr %call8.i.i495, i32 %cycle.0566
  %80 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %conv123, ptr %arrayidx124, align 8
  %delta = getelementptr %struct.sja1105_schedule_entry_points_entry, ptr %call8.i.i495, i32 %cycle.0566, i32 1
  %81 = ptrtoint ptr %delta to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %add122, ptr %delta, align 8
  %conv126 = sext i32 %k.0568 to i64
  %address = getelementptr %struct.sja1105_schedule_entry_points_entry, ptr %call8.i.i495, i32 %cycle.0566, i32 2
  %82 = ptrtoint ptr %address to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %conv126, ptr %address, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cycle.0566)
  %cmp129559 = icmp slt i32 %cycle.0566, 8
  br i1 %cmp129559, label %for.body131.lr.ph, label %future_base_time.exit.for.cond137.preheader_crit_edge

future_base_time.exit.for.cond137.preheader_crit_edge: ; preds = %future_base_time.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond137.preheader

for.body131.lr.ph:                                ; preds = %future_base_time.exit
  %conv132 = sext i32 %sub117 to i64
  br label %for.body131

for.cond137.preheader:                            ; preds = %for.body131.for.cond137.preheader_crit_edge, %future_base_time.exit.for.cond137.preheader_crit_edge
  %83 = ptrtoint ptr %num_entries115 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_entries115, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp139561.not = icmp eq i32 %84, 0
  br i1 %cmp139561.not, label %for.cond137.preheader.for.end158_crit_edge, label %for.body141.lr.ph

for.cond137.preheader.for.end158_crit_edge:       ; preds = %for.cond137.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end158

for.body141.lr.ph:                                ; preds = %for.cond137.preheader
  %shl = shl nuw i32 1, %port.1569
  %conv148 = zext i32 %shl to i64
  br label %for.body141

for.body131:                                      ; preds = %for.body131.for.body131_crit_edge, %for.body131.lr.ph
  %i.0560 = phi i32 [ %cycle.0566, %for.body131.lr.ph ], [ %inc135, %for.body131.for.body131_crit_edge ]
  %arrayidx133 = getelementptr [8 x i64], ptr %call8.i.i461, i32 0, i32 %i.0560
  %85 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv132, ptr %arrayidx133, align 8
  %inc135 = add i32 %i.0560, 1
  %exitcond581.not = icmp eq i32 %inc135, 8
  br i1 %exitcond581.not, label %for.body131.for.cond137.preheader_crit_edge, label %for.body131.for.body131_crit_edge

for.body131.for.body131_crit_edge:                ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body131

for.body131.for.cond137.preheader_crit_edge:      ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond137.preheader

for.body141:                                      ; preds = %for.body141.for.body141_crit_edge, %for.body141.lr.ph
  %k.1563 = phi i32 [ %k.0568, %for.body141.lr.ph ], [ %inc157, %for.body141.for.body141_crit_edge ]
  %i.1562 = phi i32 [ 0, %for.body141.lr.ph ], [ %inc156, %for.body141.for.body141_crit_edge ]
  %interval = getelementptr %struct.tc_taprio_qopt_offload, ptr %67, i32 0, i32 5, i32 %i.1562, i32 2
  %86 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %interval, align 4
  %conv144 = zext i32 %87 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i502) #6
  %88 = ptrtoint ptr %remainder.i.i502 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %remainder.i.i502, align 4, !annotation !89
  %call.i.i503 = call i64 @div_s64_rem(i64 noundef %conv144, i32 noundef 200, ptr noundef nonnull %remainder.i.i502) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i502) #6
  %delta147 = getelementptr %struct.sja1105_schedule_entry, ptr %call8.i.i, i32 %k.1563, i32 9
  %89 = ptrtoint ptr %delta147 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %call.i.i503, ptr %delta147, align 8
  %destports = getelementptr %struct.sja1105_schedule_entry, ptr %call8.i.i, i32 %k.1563, i32 3
  %90 = ptrtoint ptr %destports to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv148, ptr %destports, align 8
  %resmedia_en = getelementptr %struct.sja1105_schedule_entry, ptr %call8.i.i, i32 %k.1563, i32 6
  %91 = ptrtoint ptr %resmedia_en to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 1, ptr %resmedia_en, align 16
  %gate_mask = getelementptr %struct.tc_taprio_qopt_offload, ptr %67, i32 0, i32 5, i32 %i.1562, i32 1
  %92 = ptrtoint ptr %gate_mask to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %gate_mask, align 4
  %neg = and i32 %93, 255
  %94 = xor i32 %neg, 255
  %and = zext i32 %94 to i64
  %resmedia = getelementptr %struct.sja1105_schedule_entry, ptr %call8.i.i, i32 %k.1563, i32 7
  %95 = ptrtoint ptr %resmedia to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %and, ptr %resmedia, align 8
  %inc156 = add nuw i32 %i.1562, 1
  %inc157 = add i32 %k.1563, 1
  %96 = ptrtoint ptr %num_entries115 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_entries115, align 8
  %cmp139 = icmp ult i32 %inc156, %97
  br i1 %cmp139, label %for.body141.for.body141_crit_edge, label %for.body141.for.end158_crit_edge

for.body141.for.end158_crit_edge:                 ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end158

for.body141.for.body141_crit_edge:                ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body141

for.end158:                                       ; preds = %for.body141.for.end158_crit_edge, %for.cond137.preheader.for.end158_crit_edge
  %k.1.lcssa = phi i32 [ %k.0568, %for.cond137.preheader.for.end158_crit_edge ], [ %inc157, %for.body141.for.end158_crit_edge ]
  %inc159 = add i32 %cycle.0566, 1
  br label %cleanup

cleanup:                                          ; preds = %for.end158, %for.body108.cleanup_crit_edge
  %cycle.1 = phi i32 [ %inc159, %for.end158 ], [ %cycle.0566, %for.body108.cleanup_crit_edge ]
  %k.2 = phi i32 [ %k.1.lcssa, %for.end158 ], [ %k.0568, %for.body108.cleanup_crit_edge ]
  %inc162 = add nuw i32 %port.1569, 1
  %98 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_ports, align 4
  %cmp106 = icmp ult i32 %inc162, %99
  br i1 %cmp106, label %cleanup.for.body108_crit_edge, label %cleanup.for.end163_crit_edge

cleanup.for.end163_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end163

cleanup.for.body108_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body108

for.end163:                                       ; preds = %cleanup.for.end163_crit_edge, %if.end101.for.end163_crit_edge
  %cycle.0.lcssa = phi i32 [ 0, %if.end101.for.end163_crit_edge ], [ %cycle.1, %cleanup.for.end163_crit_edge ]
  %k.0.lcssa = phi i32 [ 0, %if.end101.for.end163_crit_edge ], [ %k.2, %cleanup.for.end163_crit_edge ]
  %100 = ptrtoint ptr %entries43 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile ptr, ptr %entries43, align 4
  %cmp.i504.not = icmp eq ptr %101, %entries43
  br i1 %cmp.i504.not, label %for.end163.cleanup235_crit_edge, label %if.then167

for.end163.cleanup235_crit_edge:                  ; preds = %for.end163
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup235

if.then167:                                       ; preds = %for.end163
  %num_entries169 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 1, i32 2
  %102 = ptrtoint ptr %num_entries169 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_entries169, align 8
  %add170 = add i32 %k.0.lcssa, -1
  %sub171 = add i32 %add170, %103
  %base_time172 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 1, i32 1
  %104 = ptrtoint ptr %base_time172 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %base_time172, align 8
  %earliest_base_time174 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 5
  %106 = ptrtoint ptr %earliest_base_time174 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %earliest_base_time174, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %107, i64 %105)
  %cmp.not.i507 = icmp sgt i64 %107, %105
  br i1 %cmp.not.i507, label %if.end.i515, label %if.then167.future_base_time.exit517_crit_edge

if.then167.future_base_time.exit517_crit_edge:    ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #8
  br label %future_base_time.exit517

if.end.i515:                                      ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %gating_cfg2 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %gating_cfg2, align 8
  %sub.i508 = xor i64 %105, -1
  %add.i509 = add i64 %107, %sub.i508
  %sub1.i510 = add i64 %add.i509, %109
  %conv.i511 = trunc i64 %109 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i506) #6
  %110 = ptrtoint ptr %remainder.i.i506 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -1, ptr %remainder.i.i506, align 4, !annotation !89
  %call.i.i512 = call i64 @div_s64_rem(i64 noundef %sub1.i510, i32 noundef %conv.i511, ptr noundef nonnull %remainder.i.i506) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i506) #6
  %mul.i513 = mul i64 %call.i.i512, %109
  %add2.i514 = add i64 %mul.i513, %105
  br label %future_base_time.exit517

future_base_time.exit517:                         ; preds = %if.end.i515, %if.then167.future_base_time.exit517_crit_edge
  %retval.0.i516 = phi i64 [ %add2.i514, %if.end.i515 ], [ %105, %if.then167.future_base_time.exit517_crit_edge ]
  %111 = ptrtoint ptr %earliest_base_time174 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %earliest_base_time174, align 8
  %sub177 = sub i64 %retval.0.i516, %112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i518) #6
  %113 = ptrtoint ptr %remainder.i.i518 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %remainder.i.i518, align 4, !annotation !89
  %call.i.i519 = call i64 @div_s64_rem(i64 noundef %sub177, i32 noundef 200, ptr noundef nonnull %remainder.i.i518) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i518) #6
  %add179 = add i64 %call.i.i519, 1
  %conv180 = sext i32 %cycle.0.lcssa to i64
  %arrayidx181 = getelementptr %struct.sja1105_schedule_entry_points_entry, ptr %call8.i.i495, i32 %cycle.0.lcssa
  %114 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %conv180, ptr %arrayidx181, align 8
  %delta184 = getelementptr %struct.sja1105_schedule_entry_points_entry, ptr %call8.i.i495, i32 %cycle.0.lcssa, i32 1
  %115 = ptrtoint ptr %delta184 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %add179, ptr %delta184, align 8
  %conv185 = sext i32 %k.0.lcssa to i64
  %address187 = getelementptr %struct.sja1105_schedule_entry_points_entry, ptr %call8.i.i495, i32 %cycle.0.lcssa, i32 2
  %116 = ptrtoint ptr %address187 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %conv185, ptr %address187, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cycle.0.lcssa)
  %cmp189574 = icmp slt i32 %cycle.0.lcssa, 8
  br i1 %cmp189574, label %for.body191.lr.ph, label %future_base_time.exit517.for.cond199.preheader_crit_edge

future_base_time.exit517.for.cond199.preheader_crit_edge: ; preds = %future_base_time.exit517
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond199.preheader

for.body191.lr.ph:                                ; preds = %future_base_time.exit517
  %conv192 = sext i32 %sub171 to i64
  br label %for.body191

for.cond199.preheader:                            ; preds = %for.body191.for.cond199.preheader_crit_edge, %future_base_time.exit517.for.cond199.preheader_crit_edge
  %117 = ptrtoint ptr %entries43 to i32
  call void @__asan_load4_noabort(i32 %117)
  %e.0576 = load ptr, ptr %entries43, align 4
  %cmp201.not577 = icmp eq ptr %e.0576, %entries43
  br i1 %cmp201.not577, label %for.cond199.preheader.cleanup235_crit_edge, label %for.cond199.preheader.for.body203_crit_edge

for.cond199.preheader.for.body203_crit_edge:      ; preds = %for.cond199.preheader
  br label %for.body203

for.cond199.preheader.cleanup235_crit_edge:       ; preds = %for.cond199.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup235

for.body191:                                      ; preds = %for.body191.for.body191_crit_edge, %for.body191.lr.ph
  %i.2575 = phi i32 [ %cycle.0.lcssa, %for.body191.lr.ph ], [ %inc196, %for.body191.for.body191_crit_edge ]
  %arrayidx194 = getelementptr [8 x i64], ptr %call8.i.i461, i32 0, i32 %i.2575
  %118 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %conv192, ptr %arrayidx194, align 8
  %inc196 = add i32 %i.2575, 1
  %exitcond582.not = icmp eq i32 %inc196, 8
  br i1 %exitcond582.not, label %for.body191.for.cond199.preheader_crit_edge, label %for.body191.for.body191_crit_edge

for.body191.for.body191_crit_edge:                ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body191

for.body191.for.cond199.preheader_crit_edge:      ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond199.preheader

for.body203:                                      ; preds = %for.body203.for.body203_crit_edge, %for.cond199.preheader.for.body203_crit_edge
  %e.0580 = phi ptr [ %e.0, %for.body203.for.body203_crit_edge ], [ %e.0576, %for.cond199.preheader.for.body203_crit_edge ]
  %k.3578 = phi i32 [ %inc226, %for.body203.for.body203_crit_edge ], [ %k.0.lcssa, %for.cond199.preheader.for.body203_crit_edge ]
  %interval204 = getelementptr inbounds %struct.sja1105_gate_entry, ptr %e.0580, i32 0, i32 2
  %119 = ptrtoint ptr %interval204 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %interval204, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i520) #6
  %121 = ptrtoint ptr %remainder.i.i520 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %remainder.i.i520, align 4, !annotation !89
  %call.i.i521 = call i64 @div_s64_rem(i64 noundef %120, i32 noundef 200, ptr noundef nonnull %remainder.i.i520) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i520) #6
  %arrayidx206 = getelementptr %struct.sja1105_schedule_entry, ptr %call8.i.i, i32 %k.3578
  %delta207 = getelementptr %struct.sja1105_schedule_entry, ptr %call8.i.i, i32 %k.3578, i32 9
  %122 = ptrtoint ptr %delta207 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %call.i.i521, ptr %delta207, align 8
  %rule = getelementptr inbounds %struct.sja1105_gate_entry, ptr %e.0580, i32 0, i32 1
  %123 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rule, align 8
  %destports208 = getelementptr inbounds %struct.sja1105_rule, ptr %124, i32 0, i32 5, i32 0, i32 1
  %125 = ptrtoint ptr %destports208 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %destports208, align 4
  %conv209 = zext i32 %126 to i64
  %destports211 = getelementptr %struct.sja1105_schedule_entry, ptr %call8.i.i, i32 %k.3578, i32 3
  %127 = ptrtoint ptr %destports211 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %conv209, ptr %destports211, align 8
  %setvalid = getelementptr %struct.sja1105_schedule_entry, ptr %call8.i.i, i32 %k.3578, i32 4
  %128 = ptrtoint ptr %setvalid to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 1, ptr %setvalid, align 16
  %txen = getelementptr %struct.sja1105_schedule_entry, ptr %call8.i.i, i32 %k.3578, i32 5
  %129 = ptrtoint ptr %txen to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 1, ptr %txen, align 8
  %130 = load ptr, ptr %rule, align 8
  %sharindx = getelementptr inbounds %struct.sja1105_rule, ptr %130, i32 0, i32 5, i32 0, i32 2
  %131 = ptrtoint ptr %sharindx to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %sharindx, align 8
  %conv215 = sext i32 %132 to i64
  %vlindex = getelementptr %struct.sja1105_schedule_entry, ptr %call8.i.i, i32 %k.3578, i32 8
  %133 = ptrtoint ptr %vlindex to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %conv215, ptr %vlindex, align 16
  %134 = load ptr, ptr %rule, align 8
  %sharindx218 = getelementptr inbounds %struct.sja1105_rule, ptr %134, i32 0, i32 5, i32 0, i32 2
  %135 = ptrtoint ptr %sharindx218 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sharindx218, align 8
  %conv219 = sext i32 %136 to i64
  %137 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %conv219, ptr %arrayidx206, align 16
  %gate_state = getelementptr inbounds %struct.sja1105_gate_entry, ptr %e.0580, i32 0, i32 3
  %138 = ptrtoint ptr %gate_state to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %gate_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool221.not = icmp eq i8 %139, 0
  %winend = getelementptr %struct.sja1105_schedule_entry, ptr %call8.i.i, i32 %k.3578, i32 1
  %winst = getelementptr %struct.sja1105_schedule_entry, ptr %call8.i.i, i32 %k.3578, i32 2
  %winend.sink = select i1 %tobool221.not, ptr %winend, ptr %winst
  %140 = ptrtoint ptr %winend.sink to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 1, ptr %winend.sink, align 8
  %inc226 = add i32 %k.3578, 1
  %141 = ptrtoint ptr %e.0580 to i32
  call void @__asan_load4_noabort(i32 %141)
  %e.0 = load ptr, ptr %e.0580, align 4
  %cmp201.not = icmp eq ptr %e.0, %entries43
  br i1 %cmp201.not, label %for.body203.cleanup235_crit_edge, label %for.body203.for.body203_crit_edge

for.body203.for.body203_crit_edge:                ; preds = %for.body203
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body203

for.body203.cleanup235_crit_edge:                 ; preds = %for.body203
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup235

cleanup235.sink.split:                            ; preds = %kcalloc.exit498.thread, %kcalloc.exit.thread
  %entries97547.sink = phi ptr [ %entries97547, %kcalloc.exit498.thread ], [ %entries58523, %kcalloc.exit.thread ]
  %142 = ptrtoint ptr %entries97547.sink to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %entries97547.sink, align 4
  br label %cleanup235

cleanup235:                                       ; preds = %cleanup235.sink.split, %for.body203.cleanup235_crit_edge, %for.cond199.preheader.cleanup235_crit_edge, %for.end163.cleanup235_crit_edge, %if.end7.i.i496.cleanup235_crit_edge, %if.end75.cleanup235_crit_edge, %if.end62.cleanup235_crit_edge, %if.end7.i.i.cleanup235_crit_edge, %if.end50.cleanup235_crit_edge, %entry.cleanup235_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup235_crit_edge ], [ 0, %if.end50.cleanup235_crit_edge ], [ -12, %if.end7.i.i.cleanup235_crit_edge ], [ -12, %if.end62.cleanup235_crit_edge ], [ -12, %if.end75.cleanup235_crit_edge ], [ -12, %if.end7.i.i496.cleanup235_crit_edge ], [ 0, %for.end163.cleanup235_crit_edge ], [ 0, %for.cond199.preheader.cleanup235_crit_edge ], [ -12, %cleanup235.sink.split ], [ 0, %for.body203.cleanup235_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_tas_set_runtime_params(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %remainder.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tas_data1 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26
  %gating_cfg2 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 1
  %ds3 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ds3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds3, align 8
  %enabled = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled, align 8
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp173.not = icmp eq i32 %4, 0
  br i1 %cmp173.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %earliest_base_time.0178 = phi i64 [ %earliest_base_time.2, %cleanup.for.body_crit_edge ], [ 9223372036854775807, %entry.for.body_crit_edge ]
  %latest_base_time.0177 = phi i64 [ %latest_base_time.2, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %port.0176 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %max_cycle_time.0175 = phi i64 [ %max_cycle_time.2, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %its_cycle_time.0174 = phi i64 [ %its_cycle_time.2, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [11 x ptr], ptr %tas_data1, i32 0, i32 %port.0176
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %enabled, align 8
  %cycle_time = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %6, i32 0, i32 2
  %8 = ptrtoint ptr %cycle_time to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cycle_time, align 8
  %10 = tail call i64 @llvm.umax.i64(i64 %max_cycle_time.0175, i64 %9)
  %base_time = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %base_time to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %base_time, align 8
  %13 = tail call i64 @llvm.smax.i64(i64 %latest_base_time.0177, i64 %12)
  call void @__sanitizer_cov_trace_cmp8(i64 %earliest_base_time.0178, i64 %12)
  %cmp15 = icmp sgt i64 %earliest_base_time.0178, %12
  %spec.select169 = select i1 %cmp15, i64 %9, i64 %its_cycle_time.0174
  %14 = tail call i64 @llvm.smin.i64(i64 %earliest_base_time.0178, i64 %12)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %its_cycle_time.2 = phi i64 [ %its_cycle_time.0174, %for.body.cleanup_crit_edge ], [ %spec.select169, %if.end ]
  %max_cycle_time.2 = phi i64 [ %max_cycle_time.0175, %for.body.cleanup_crit_edge ], [ %10, %if.end ]
  %latest_base_time.2 = phi i64 [ %latest_base_time.0177, %for.body.cleanup_crit_edge ], [ %13, %if.end ]
  %earliest_base_time.2 = phi i64 [ %earliest_base_time.0178, %for.body.cleanup_crit_edge ], [ %14, %if.end ]
  %inc = add nuw i32 %port.0176, 1
  %15 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %its_cycle_time.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %its_cycle_time.2, %cleanup.for.end_crit_edge ]
  %max_cycle_time.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %max_cycle_time.2, %cleanup.for.end_crit_edge ]
  %latest_base_time.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %latest_base_time.2, %cleanup.for.end_crit_edge ]
  %earliest_base_time.0.lcssa = phi i64 [ 9223372036854775807, %entry.for.end_crit_edge ], [ %earliest_base_time.2, %cleanup.for.end_crit_edge ]
  %entries = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 1, i32 3
  %17 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %entries, align 4
  %cmp.i.not = icmp eq ptr %18, %entries
  br i1 %cmp.i.not, label %for.end.if.end39_crit_edge, label %if.then21

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %enabled, align 8
  %20 = ptrtoint ptr %gating_cfg2 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %gating_cfg2, align 8
  %22 = tail call i64 @llvm.umax.i64(i64 %max_cycle_time.0.lcssa, i64 %21)
  %base_time28 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 1, i32 1
  %23 = ptrtoint ptr %base_time28 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %base_time28, align 8
  %25 = tail call i64 @llvm.smax.i64(i64 %latest_base_time.0.lcssa, i64 %24)
  call void @__sanitizer_cov_trace_cmp8(i64 %earliest_base_time.0.lcssa, i64 %24)
  %cmp34 = icmp sgt i64 %earliest_base_time.0.lcssa, %24
  %spec.select171 = select i1 %cmp34, i64 %21, i64 %its_cycle_time.0.lcssa
  %26 = tail call i64 @llvm.smin.i64(i64 %earliest_base_time.0.lcssa, i64 %24)
  br label %if.end39

if.end39:                                         ; preds = %if.then21, %for.end.if.end39_crit_edge
  %its_cycle_time.3 = phi i64 [ %its_cycle_time.0.lcssa, %for.end.if.end39_crit_edge ], [ %spec.select171, %if.then21 ]
  %max_cycle_time.4 = phi i64 [ %max_cycle_time.0.lcssa, %for.end.if.end39_crit_edge ], [ %22, %if.then21 ]
  %latest_base_time.4 = phi i64 [ %latest_base_time.0.lcssa, %for.end.if.end39_crit_edge ], [ %25, %if.then21 ]
  %earliest_base_time.3 = phi i64 [ %earliest_base_time.0.lcssa, %for.end.if.end39_crit_edge ], [ %26, %if.then21 ]
  %27 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %enabled, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool41.not = icmp eq i8 %28, 0
  br i1 %tobool41.not, label %if.end39.cleanup97_crit_edge, label %if.end43

if.end39.cleanup97_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup97

if.end43:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_cmp8(i64 %latest_base_time.4, i64 %earliest_base_time.3)
  %cmp.not.i = icmp sgt i64 %latest_base_time.4, %earliest_base_time.3
  br i1 %cmp.not.i, label %if.end.i, label %if.end43.while.cond.preheader_crit_edge

if.end43.while.cond.preheader_crit_edge:          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader

if.end.i:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = xor i64 %earliest_base_time.3, -1
  %add.i = add i64 %latest_base_time.4, %its_cycle_time.3
  %sub1.i = add i64 %add.i, %sub.i
  %conv.i164 = trunc i64 %its_cycle_time.3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %29 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !89
  %call.i.i = call i64 @div_s64_rem(i64 noundef %sub1.i, i32 noundef %conv.i164, ptr noundef nonnull %remainder.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %mul.i = mul i64 %call.i.i, %its_cycle_time.3
  %add2.i = add i64 %mul.i, %earliest_base_time.3
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end.i, %if.end43.while.cond.preheader_crit_edge
  %earliest_base_time.4.ph = phi i64 [ %earliest_base_time.3, %if.end43.while.cond.preheader_crit_edge ], [ %add2.i, %if.end.i ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %earliest_base_time.4 = phi i64 [ %sub, %while.cond.while.cond_crit_edge ], [ %earliest_base_time.4.ph, %while.cond.preheader ]
  %cmp45 = icmp slt i64 %latest_base_time.4, %earliest_base_time.4
  %sub = sub i64 %earliest_base_time.4, %its_cycle_time.3
  br i1 %cmp45, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %sub46 = sub i64 %latest_base_time.4, %earliest_base_time.4
  call void @__sanitizer_cov_trace_const_cmp8(i64 52428800, i64 %sub46)
  %cmp48 = icmp sgt i64 %sub46, 52428800
  br i1 %cmp48, label %do.end, label %if.end50

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.11, i64 noundef %earliest_base_time.4, i64 noundef %latest_base_time.4) #10
  br label %cleanup97

if.end50:                                         ; preds = %while.end
  %earliest_base_time51 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 5
  %32 = ptrtoint ptr %earliest_base_time51 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %earliest_base_time.4, ptr %earliest_base_time51, align 8
  %max_cycle_time52 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 7
  %33 = ptrtoint ptr %max_cycle_time52 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %max_cycle_time.4, ptr %max_cycle_time52, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sja1105_tas_set_runtime_params.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sja1105_tas_set_runtime_params, %if.then58)) #6
          to label %do.body63 [label %if.then58], !srcloc !91

if.then58:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sja1105_tas_set_runtime_params.__UNIQUE_ID_ddebug518, ptr noundef %35, ptr noundef nonnull @.str.14, i64 noundef %earliest_base_time.4) #6
  br label %do.body63

do.body63:                                        ; preds = %if.then58, %if.end50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sja1105_tas_set_runtime_params.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sja1105_tas_set_runtime_params, %if.then75)) #6
          to label %do.body80 [label %if.then75], !srcloc !91

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sja1105_tas_set_runtime_params.__UNIQUE_ID_ddebug519, ptr noundef %37, ptr noundef nonnull @.str.15, i64 noundef %latest_base_time.4) #6
  br label %do.body80

do.body80:                                        ; preds = %if.then75, %do.body63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sja1105_tas_set_runtime_params.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sja1105_tas_set_runtime_params, %if.then92)) #6
          to label %cleanup97 [label %if.then92], !srcloc !91

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sja1105_tas_set_runtime_params.__UNIQUE_ID_ddebug520, ptr noundef %39, ptr noundef nonnull @.str.16, i64 noundef %max_cycle_time.4) #6
  br label %cleanup97

cleanup97:                                        ; preds = %if.then92, %do.body80, %do.end, %if.end39.cleanup97_crit_edge
  %retval.0 = phi i32 [ -34, %do.end ], [ 0, %if.end39.cleanup97_crit_edge ], [ 0, %if.then92 ], [ 0, %do.body80 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sja1105_gating_check_conflicts(ptr noundef %priv, i32 noundef %port, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gating_cfg1 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 1
  %num_entries2 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 1, i32 2
  %0 = ptrtoint ptr %num_entries2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_entries2, align 8
  %ds3 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  %2 = ptrtoint ptr %ds3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds3, align 8
  %entries = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 1, i32 3
  %4 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %entries, align 4
  %cmp.i.not = icmp eq ptr %5, %entries
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 12) #6
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %8, i32 40) #6
  %retval.0.i = select i1 %7, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #9
  %tobool6.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not, label %do.body, label %if.end11

do.body:                                          ; preds = %if.end8.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_gating_check_conflicts.__msg) #6
  %tobool8.not = icmp eq ptr %extack, null
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %if.then9

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sja1105_gating_check_conflicts.__msg, ptr %extack, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end8.i.i
  %num_entries12 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call9.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %num_entries12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %1, ptr %num_entries12, align 32
  %base_time = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 1, i32 1
  %11 = ptrtoint ptr %base_time to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %base_time, align 8
  %base_time13 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call9.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %base_time13 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %base_time13, align 8
  %14 = ptrtoint ptr %gating_cfg1 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %gating_cfg1, align 8
  %cycle_time14 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call9.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %cycle_time14 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %cycle_time14, align 16
  %17 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %17)
  %e.075 = load ptr, ptr %entries, align 4
  %cmp.not76 = icmp eq ptr %e.075, %entries
  br i1 %cmp.not76, label %if.end11.for.end_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end11.for.body_crit_edge
  %e.078 = phi ptr [ %e.0, %for.body.for.body_crit_edge ], [ %e.075, %if.end11.for.body_crit_edge ]
  %i.077 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end11.for.body_crit_edge ]
  %interval = getelementptr inbounds %struct.sja1105_gate_entry, ptr %e.078, i32 0, i32 2
  %18 = ptrtoint ptr %interval to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %interval, align 8
  %conv = trunc i64 %19 to i32
  %inc = add i32 %i.077, 1
  %interval18 = getelementptr %struct.tc_taprio_qopt_offload, ptr %call9.i.i, i32 0, i32 5, i32 %i.077, i32 2
  %20 = ptrtoint ptr %interval18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %interval18, align 4
  %21 = ptrtoint ptr %e.078 to i32
  call void @__asan_load4_noabort(i32 %21)
  %e.0 = load ptr, ptr %e.078, align 4
  %cmp.not = icmp eq ptr %e.0, %entries
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end11.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %port)
  %cmp24.not = icmp eq i32 %port, -1
  br i1 %cmp24.not, label %for.cond28.preheader, label %if.then26

for.cond28.preheader:                             ; preds = %for.end
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 18
  %22 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2979.not = icmp eq i32 %23, 0
  br i1 %cmp2979.not, label %for.cond28.preheader.if.end40_crit_edge, label %for.cond28.preheader.for.body31_crit_edge

for.cond28.preheader.for.body31_crit_edge:        ; preds = %for.cond28.preheader
  br label %for.body31

for.cond28.preheader.if.end40_crit_edge:          ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then26:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call fastcc zeroext i1 @sja1105_tas_check_conflicts(ptr noundef %priv, i32 noundef %port, ptr noundef nonnull %call9.i.i)
  br label %if.end40

for.cond28:                                       ; preds = %for.body31
  %inc38 = add nuw i32 %port.addr.080, 1
  %24 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_ports, align 4
  %cmp29 = icmp ult i32 %inc38, %25
  br i1 %cmp29, label %for.cond28.for.body31_crit_edge, label %for.cond28.if.end40_crit_edge

for.cond28.if.end40_crit_edge:                    ; preds = %for.cond28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

for.cond28.for.body31_crit_edge:                  ; preds = %for.cond28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body31

for.body31:                                       ; preds = %for.cond28.for.body31_crit_edge, %for.cond28.preheader.for.body31_crit_edge
  %port.addr.080 = phi i32 [ %inc38, %for.cond28.for.body31_crit_edge ], [ 0, %for.cond28.preheader.for.body31_crit_edge ]
  %call32 = tail call fastcc zeroext i1 @sja1105_tas_check_conflicts(ptr noundef %priv, i32 noundef %port.addr.080, ptr noundef nonnull %call9.i.i)
  br i1 %call32, label %for.body31.if.end40_crit_edge, label %for.cond28

for.body31.if.end40_crit_edge:                    ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.end40:                                         ; preds = %for.body31.if.end40_crit_edge, %for.cond28.if.end40_crit_edge, %if.then26, %for.cond28.preheader.if.end40_crit_edge
  %conflict.1.off0 = phi i1 [ %call27, %if.then26 ], [ true, %for.cond28.preheader.if.end40_crit_edge ], [ %call32, %for.cond28.if.end40_crit_edge ], [ %call32, %for.body31.if.end40_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then9, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %conflict.1.off0, %if.end40 ], [ false, %entry.cleanup_crit_edge ], [ true, %if.then9 ], [ true, %do.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sja1105_tas_check_conflicts(ptr nocapture noundef readonly %priv, i32 noundef %port, ptr nocapture noundef readonly %admin) unnamed_addr #0 align 64 {
entry:
  %rem = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tas_data1 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rem) #6
  %0 = ptrtoint ptr %rem to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rem, align 4, !annotation !89
  %arrayidx = getelementptr [11 x ptr], ptr %tas_data1, i32 0, i32 %port
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cycle_time = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %cycle_time to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %cycle_time, align 8
  %cycle_time3 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %admin, i32 0, i32 2
  %5 = ptrtoint ptr %cycle_time3 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %cycle_time3, align 8
  %7 = tail call i64 @llvm.umax.i64(i64 %4, i64 %6)
  %8 = tail call i64 @llvm.umin.i64(i64 %4, i64 %6)
  %cond11.off0 = trunc i64 %8 to i32
  %call = call i64 @div_s64_rem(i64 noundef %7, i32 noundef %cond11.off0, ptr noundef nonnull %rem) #6
  %9 = ptrtoint ptr %rem to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %base_time = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %base_time to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %base_time, align 8
  %13 = ptrtoint ptr %cycle_time to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %cycle_time, align 8
  %conv16 = trunc i64 %14 to i32
  %call17 = call i64 @div_s64_rem(i64 noundef %12, i32 noundef %conv16, ptr noundef nonnull %rem) #6
  %15 = ptrtoint ptr %rem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rem, align 4
  %conv18 = sext i32 %16 to i64
  %base_time19 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %admin, i32 0, i32 1
  %17 = ptrtoint ptr %base_time19 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %base_time19, align 8
  %19 = ptrtoint ptr %cycle_time3 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %cycle_time3, align 8
  %conv21 = trunc i64 %20 to i32
  %call22 = call i64 @div_s64_rem(i64 noundef %18, i32 noundef %conv21, ptr noundef nonnull %rem) #6
  %21 = ptrtoint ptr %rem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rem, align 4
  %conv23 = sext i32 %22 to i64
  %23 = call i32 @llvm.smax.i32(i32 %16, i32 %22)
  %24 = sext i32 %23 to i64
  %add = add i64 %7, %24
  %num_entries = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %2, i32 0, i32 4
  %25 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp31138.not = icmp eq i32 %26, 0
  br i1 %cmp31138.not, label %if.end14.cleanup_crit_edge, label %for.cond33.preheader.lr.ph

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond33.preheader.lr.ph:                       ; preds = %if.end14
  %num_entries34 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %admin, i32 0, i32 4
  %27 = ptrtoint ptr %num_entries34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_entries34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp35134.not = icmp eq i32 %28, 0
  br label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %for.inc63.for.cond33.preheader_crit_edge, %for.cond33.preheader.lr.ph
  %i.0140 = phi i32 [ 0, %for.cond33.preheader.lr.ph ], [ %inc69, %for.inc63.for.cond33.preheader_crit_edge ]
  %delta1.0139 = phi i64 [ 0, %for.cond33.preheader.lr.ph ], [ %add68, %for.inc63.for.cond33.preheader_crit_edge ]
  br i1 %cmp35134.not, label %for.cond33.preheader.for.inc63_crit_edge, label %for.body37.lr.ph

for.cond33.preheader.for.inc63_crit_edge:         ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc63

for.body37.lr.ph:                                 ; preds = %for.cond33.preheader
  %add38 = add i64 %delta1.0139, %conv18
  call void @__sanitizer_cov_trace_cmp8(i64 %add38, i64 %add)
  %cmp40.not131 = icmp sgt i64 %add38, %add
  br label %for.body37

for.body37:                                       ; preds = %for.inc58.for.body37_crit_edge, %for.body37.lr.ph
  %j.0136 = phi i32 [ 0, %for.body37.lr.ph ], [ %inc, %for.inc58.for.body37_crit_edge ]
  %delta2.0135 = phi i64 [ 0, %for.body37.lr.ph ], [ %add61, %for.inc58.for.body37_crit_edge ]
  br i1 %cmp40.not131, label %for.body37.for.inc58_crit_edge, label %for.body42.lr.ph

for.body37.for.inc58_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc58

for.body42.lr.ph:                                 ; preds = %for.body37
  %add43 = add i64 %delta2.0135, %conv23
  call void @__sanitizer_cov_trace_cmp8(i64 %add43, i64 %add)
  %cmp45.not129 = icmp sgt i64 %add43, %add
  br label %for.body42

for.body42:                                       ; preds = %for.inc54.for.body42_crit_edge, %for.body42.lr.ph
  %t1.0132 = phi i64 [ %add38, %for.body42.lr.ph ], [ %add56, %for.inc54.for.body42_crit_edge ]
  br i1 %cmp45.not129, label %for.body42.for.inc54_crit_edge, label %for.body42.for.body47_crit_edge

for.body42.for.body47_crit_edge:                  ; preds = %for.body42
  br label %for.body47

for.body42.for.inc54_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc54

for.body47:                                       ; preds = %for.inc.for.body47_crit_edge, %for.body42.for.body47_crit_edge
  %t2.0130 = phi i64 [ %add53, %for.inc.for.body47_crit_edge ], [ %add43, %for.body42.for.body47_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %t1.0132, i64 %t2.0130)
  %cmp48 = icmp eq i64 %t1.0132, %t2.0130
  br i1 %cmp48, label %do.end, label %for.inc

do.end:                                           ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #8
  %ds = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  %29 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ds, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.17, i32 noundef %j.0136, i32 noundef %i.0140, i32 noundef %port) #10
  br label %cleanup

for.inc:                                          ; preds = %for.body47
  %33 = ptrtoint ptr %cycle_time3 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %cycle_time3, align 8
  %add53 = add i64 %34, %t2.0130
  %cmp45.not = icmp sgt i64 %add53, %add
  br i1 %cmp45.not, label %for.inc.for.inc54_crit_edge, label %for.inc.for.body47_crit_edge

for.inc.for.body47_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body47

for.inc.for.inc54_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc54

for.inc54:                                        ; preds = %for.inc.for.inc54_crit_edge, %for.body42.for.inc54_crit_edge
  %35 = ptrtoint ptr %cycle_time to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %cycle_time, align 8
  %add56 = add i64 %36, %t1.0132
  %cmp40.not = icmp sgt i64 %add56, %add
  br i1 %cmp40.not, label %for.inc54.for.inc58_crit_edge, label %for.inc54.for.body42_crit_edge

for.inc54.for.body42_crit_edge:                   ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body42

for.inc54.for.inc58_crit_edge:                    ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc58

for.inc58:                                        ; preds = %for.inc54.for.inc58_crit_edge, %for.body37.for.inc58_crit_edge
  %interval = getelementptr %struct.tc_taprio_qopt_offload, ptr %admin, i32 0, i32 5, i32 %j.0136, i32 2
  %37 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %interval, align 4
  %conv60 = zext i32 %38 to i64
  %add61 = add i64 %delta2.0135, %conv60
  %inc = add nuw i32 %j.0136, 1
  %exitcond.not = icmp eq i32 %inc, %28
  br i1 %exitcond.not, label %for.inc58.for.inc63_crit_edge, label %for.inc58.for.body37_crit_edge

for.inc58.for.body37_crit_edge:                   ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body37

for.inc58.for.inc63_crit_edge:                    ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc63

for.inc63:                                        ; preds = %for.inc58.for.inc63_crit_edge, %for.cond33.preheader.for.inc63_crit_edge
  %interval66 = getelementptr %struct.tc_taprio_qopt_offload, ptr %2, i32 0, i32 5, i32 %i.0140, i32 2
  %39 = ptrtoint ptr %interval66 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %interval66, align 4
  %conv67 = zext i32 %40 to i64
  %add68 = add i64 %delta1.0139, %conv67
  %inc69 = add nuw i32 %i.0140, 1
  %exitcond144.not = icmp eq i32 %inc69, %26
  br i1 %exitcond144.not, label %for.inc63.cleanup_crit_edge, label %for.inc63.for.cond33.preheader_crit_edge

for.inc63.for.cond33.preheader_crit_edge:         ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond33.preheader

for.inc63.cleanup_crit_edge:                      ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc63.cleanup_crit_edge, %do.end, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.end ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ false, %if.end14.cleanup_crit_edge ], [ false, %for.inc63.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rem) #6
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_setup_tc_taprio(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %admin) local_unnamed_addr #0 align 64 {
entry:
  %remainder.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %tas_data2 = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 26
  %arrayidx = getelementptr [11 x ptr], ptr %tas_data2, i32 0, i32 %port
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool = icmp ne ptr %3, null
  %4 = ptrtoint ptr %admin to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %admin, align 8
  %6 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp = icmp eq i8 %5, %6
  br i1 %cmp, label %entry.cleanup73_crit_edge, label %if.end

entry.cleanup73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end17

if.then7:                                         ; preds = %if.end
  tail call void @taprio_offload_free(ptr noundef %3) #6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx, align 4
  %call = tail call i32 @sja1105_init_scheduling(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp12 = icmp slt i32 %call, 0
  br i1 %cmp12, label %if.then7.cleanup73_crit_edge, label %if.end15

if.then7.cleanup73_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.end15:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 @sja1105_static_config_reload(ptr noundef %1, i32 noundef 3) #6
  br label %cleanup73

if.end17:                                         ; preds = %if.end
  %cycle_time_extension = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %admin, i32 0, i32 3
  %8 = ptrtoint ptr %cycle_time_extension to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cycle_time_extension, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool18.not = icmp eq i64 %9, 0
  br i1 %tobool18.not, label %for.cond.preheader, label %if.end17.cleanup73_crit_edge

if.end17.cleanup73_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

for.cond.preheader:                               ; preds = %if.end17
  %num_entries = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %admin, i32 0, i32 4
  %10 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp21115.not = icmp eq i32 %11, 0
  br i1 %cmp21115.not, label %for.cond.preheader.for.cond43.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond43.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %for.inc.for.cond43.preheader_crit_edge, %for.cond.preheader.for.cond43.preheader_crit_edge
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 18
  %12 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp44117.not = icmp eq i32 %13, 0
  br i1 %cmp44117.not, label %for.cond43.preheader.for.end56_crit_edge, label %for.cond43.preheader.for.body46_crit_edge

for.cond43.preheader.for.body46_crit_edge:        ; preds = %for.cond43.preheader
  br label %for.body46

for.cond43.preheader.for.end56_crit_edge:         ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end56

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0116 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %interval = getelementptr %struct.tc_taprio_qopt_offload, ptr %admin, i32 0, i32 5, i32 %i.0116, i32 2
  %14 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %interval, align 4
  %conv24 = zext i32 %15 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %16 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !89
  %call.i.i = call i64 @div_s64_rem(i64 noundef %conv24, i32 noundef 200, ptr noundef nonnull %remainder.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 262143, i64 %call.i.i)
  %cmp26 = icmp sgt i64 %call.i.i, 262143
  br i1 %cmp26, label %for.body.do.end_crit_edge, label %lor.lhs.false

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i)
  %cmp28 = icmp eq i64 %call.i.i, 0
  br i1 %cmp28, label %lor.lhs.false.do.end_crit_edge, label %for.inc

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %for.body.do.end_crit_edge
  %cond = phi ptr [ @.str.5, %for.body.do.end_crit_edge ], [ @.str.6, %lor.lhs.false.do.end_crit_edge ]
  %ds36 = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %ds36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ds36, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str, i64 noundef %conv24, ptr noundef nonnull %cond, i32 noundef %i.0116) #10
  br label %cleanup73

for.inc:                                          ; preds = %lor.lhs.false
  %inc = add nuw i32 %i.0116, 1
  %21 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_entries, align 8
  %cmp21 = icmp ult i32 %inc, %22
  br i1 %cmp21, label %for.inc.for.body_crit_edge, label %for.inc.for.cond43.preheader_crit_edge

for.inc.for.cond43.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond43.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body46:                                       ; preds = %for.inc54.for.body46_crit_edge, %for.cond43.preheader.for.body46_crit_edge
  %other_port.0118 = phi i32 [ %inc55, %for.inc54.for.body46_crit_edge ], [ 0, %for.cond43.preheader.for.body46_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %other_port.0118, i32 %port)
  %cmp47 = icmp eq i32 %other_port.0118, %port
  br i1 %cmp47, label %for.body46.for.inc54_crit_edge, label %if.end50

for.body46.for.inc54_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc54

if.end50:                                         ; preds = %for.body46
  %call51 = call fastcc zeroext i1 @sja1105_tas_check_conflicts(ptr noundef %1, i32 noundef %other_port.0118, ptr noundef %admin)
  br i1 %call51, label %if.end50.cleanup73_crit_edge, label %if.end50.for.inc54_crit_edge

if.end50.for.inc54_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc54

if.end50.cleanup73_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

for.inc54:                                        ; preds = %if.end50.for.inc54_crit_edge, %for.body46.for.inc54_crit_edge
  %inc55 = add nuw i32 %other_port.0118, 1
  %23 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_ports, align 4
  %cmp44 = icmp ult i32 %inc55, %24
  br i1 %cmp44, label %for.inc54.for.body46_crit_edge, label %for.inc54.for.end56_crit_edge

for.inc54.for.end56_crit_edge:                    ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end56

for.inc54.for.body46_crit_edge:                   ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body46

for.end56:                                        ; preds = %for.inc54.for.end56_crit_edge, %for.cond43.preheader.for.end56_crit_edge
  %call57 = call zeroext i1 @sja1105_gating_check_conflicts(ptr noundef %1, i32 noundef %port, ptr noundef null)
  br i1 %call57, label %do.end61, label %if.end63

do.end61:                                         ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ds, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.8) #10
  br label %cleanup73

if.end63:                                         ; preds = %for.end56
  %call64 = call ptr @taprio_offload_get(ptr noundef %admin) #6
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call64, ptr %arrayidx, align 4
  %call67 = call i32 @sja1105_init_scheduling(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.end63.cleanup73_crit_edge, label %if.end71

if.end63.cleanup73_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.end71:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %call72 = call i32 @sja1105_static_config_reload(ptr noundef %1, i32 noundef 3) #6
  br label %cleanup73

cleanup73:                                        ; preds = %if.end71, %if.end63.cleanup73_crit_edge, %do.end61, %if.end50.cleanup73_crit_edge, %do.end, %if.end17.cleanup73_crit_edge, %if.end15, %if.then7.cleanup73_crit_edge, %entry.cleanup73_crit_edge
  %retval.2 = phi i32 [ -34, %do.end61 ], [ %call72, %if.end71 ], [ %call16, %if.end15 ], [ -22, %entry.cleanup73_crit_edge ], [ %call, %if.then7.cleanup73_crit_edge ], [ -524, %if.end17.cleanup73_crit_edge ], [ -34, %do.end ], [ %call67, %if.end63.cleanup73_crit_edge ], [ -34, %if.end50.cleanup73_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @taprio_offload_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_static_config_reload(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @taprio_offload_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105_tas_clockstep(ptr nocapture noundef readonly %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %enabled = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 26, i32 8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %last_op = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 26, i32 3
  %4 = ptrtoint ptr %last_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %last_op, align 4
  %tas_work = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 26, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %tas_work) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105_tas_adjfreq(ptr nocapture noundef readonly %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %enabled = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 26, i32 8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 26, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %last_op = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 26, i32 3
  %6 = ptrtoint ptr %last_op to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %last_op, align 4
  %tas_work = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 26, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %tas_work) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105_tas_setup(ptr nocapture noundef readonly %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %tas_work = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 26, i32 4
  tail call void @__init_work(ptr noundef %tas_work, i32 noundef 0) #6
  %2 = ptrtoint ptr %tas_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %tas_work, align 8
  %lockdep_map = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 26, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @sja1105_tas_setup.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry6 = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 26, i32 4, i32 1
  %3 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry6, ptr %entry6, align 4
  %prev.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 26, i32 4, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry6, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 26, i32 4, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sja1105_tas_state_machine, ptr %func, align 4
  %state = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 26, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state, align 8
  %last_op = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 26, i32 3
  %7 = ptrtoint ptr %last_op to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %last_op, align 4
  %entries = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 26, i32 1, i32 3
  %8 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entries, ptr %entries, align 4
  %prev.i15 = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 26, i32 1, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entries, ptr %prev.i15, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_tas_state_machine(ptr noundef %work) #0 align 64 {
entry:
  %cmd.i203 = alloca %struct.sja1105_ptp_cmd, align 8
  %cmd.i = alloca %struct.sja1105_ptp_cmd, align 8
  %ptpschtm.i = alloca i64, align 8
  %remainder.i.i = alloca i32, align 4
  %ptpclkcorp.i = alloca i32, align 4
  %now = alloca i64, align 8
  %tmp24 = alloca %struct.timespec64, align 8
  %tmp25 = alloca %struct.timespec64, align 8
  %tmp47 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -1424
  %ds5 = getelementptr i8, ptr %work, i32 -992
  %0 = ptrtoint ptr %ds5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %now) #6
  %2 = ptrtoint ptr %now to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %now, align 8, !annotation !89
  %lock = getelementptr i8, ptr %work, i32 -192
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %state = getelementptr i8, ptr %work, i32 -8
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb34
    i32 2, label %sw.bb82
  ]

sw.bb:                                            ; preds = %entry
  %last_op = getelementptr i8, ptr %work, i32 -4
  %6 = ptrtoint ptr %last_op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %if.end, label %sw.bb.if.end116_crit_edge

sw.bb.if.end116_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

if.end:                                           ; preds = %sw.bb
  %max_cycle_time = getelementptr i8, ptr %work, i32 64
  %8 = ptrtoint ptr %max_cycle_time to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %max_cycle_time, align 8
  %info.i = getelementptr i8, ptr %work, i32 -1004
  %10 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info.i, align 4
  %regs1.i = getelementptr inbounds %struct.sja1105_info, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptpclkcorp.i) #6
  %div.i.i = sdiv i64 %9, 8
  %conv.i = trunc i64 %div.i.i to i32
  %14 = ptrtoint ptr %ptpclkcorp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv.i, ptr %ptpclkcorp.i, align 4
  %ptpclkcorp2.i = getelementptr inbounds %struct.sja1105_regs, ptr %13, i32 0, i32 13
  %15 = ptrtoint ptr %ptpclkcorp2.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ptpclkcorp2.i, align 8
  %call3.i = call i32 @sja1105_xfer_u32(ptr noundef %add.ptr3, i32 noundef 1, i64 noundef %16, ptr noundef nonnull %ptpclkcorp.i, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptpclkcorp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp6 = icmp slt i32 %call3.i, 0
  br i1 %cmp6, label %if.end.land.lhs.true_crit_edge, label %if.end8

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @__sja1105_ptp_gettimex(ptr noundef %1, ptr noundef nonnull %now, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.land.lhs.true_crit_edge, label %if.end12

if.end8.land.lhs.true_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end12:                                         ; preds = %if.end8
  %earliest_base_time = getelementptr i8, ptr %work, i32 48
  %17 = ptrtoint ptr %earliest_base_time to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %earliest_base_time, align 8
  %19 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %now, align 8
  %add = add i64 %20, 1000000000
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %18)
  %cmp.not.i = icmp sgt i64 %add, %18
  br i1 %cmp.not.i, label %if.end.i, label %if.end12.future_base_time.exit_crit_edge

if.end12.future_base_time.exit_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %future_base_time.exit

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %max_cycle_time to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %max_cycle_time, align 8
  %sub.i = xor i64 %18, -1
  %add.i = add i64 %add, %sub.i
  %sub1.i = add i64 %add.i, %22
  %conv.i169 = trunc i64 %22 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %23 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !89
  %call.i.i = call i64 @div_s64_rem(i64 noundef %sub1.i, i32 noundef %conv.i169, ptr noundef nonnull %remainder.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %mul.i = mul i64 %call.i.i, %22
  %add2.i = add i64 %mul.i, %18
  br label %future_base_time.exit

future_base_time.exit:                            ; preds = %if.end.i, %if.end12.future_base_time.exit_crit_edge
  %retval.0.i170 = phi i64 [ %add2.i, %if.end.i ], [ %18, %if.end12.future_base_time.exit_crit_edge ]
  %sub = add i64 %retval.0.i170, -200
  %24 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info.i, align 4
  %regs1.i172 = getelementptr inbounds %struct.sja1105_info, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %regs1.i172 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs1.i172, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ptpschtm.i) #6
  %div.i.i173 = sdiv i64 %sub, 8
  %28 = ptrtoint ptr %ptpschtm.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %div.i.i173, ptr %ptpschtm.i, align 8
  %ptpschtm2.i = getelementptr inbounds %struct.sja1105_regs, ptr %27, i32 0, i32 15
  %29 = ptrtoint ptr %ptpschtm2.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ptpschtm2.i, align 8
  %call3.i174 = call i32 @sja1105_xfer_u64(ptr noundef %add.ptr3, i32 noundef 1, i64 noundef %30, ptr noundef nonnull %ptpschtm.i, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ptpschtm.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i174)
  %cmp17 = icmp slt i32 %call3.i174, 0
  br i1 %cmp17, label %future_base_time.exit.land.lhs.true_crit_edge, label %if.end19

future_base_time.exit.land.lhs.true_crit_edge:    ; preds = %future_base_time.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end19:                                         ; preds = %future_base_time.exit
  %oper_base_time = getelementptr i8, ptr %work, i32 56
  %31 = ptrtoint ptr %oper_base_time to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %sub, ptr %oper_base_time, align 8
  %cmd2.i = getelementptr i8, ptr %work, i32 -248
  %32 = ptrtoint ptr %ds5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ds5, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sja1105_tas_start.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sja1105_tas_state_machine, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !91

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sja1105_tas_start.__UNIQUE_ID_ddebug527, ptr noundef %35, ptr noundef nonnull @.str.34) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end19
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state, align 8
  %.off.i = add i32 %37, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %do.end11.i, label %if.end13.i

do.end11.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.35) #10
  br label %land.lhs.true

if.end13.i:                                       ; preds = %do.end.i
  %ptpstrtsch.i = getelementptr i8, ptr %work, i32 -232
  %40 = ptrtoint ptr %ptpstrtsch.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 1, ptr %ptpstrtsch.i, align 8
  %ptpstopsch.i = getelementptr i8, ptr %work, i32 -224
  %41 = ptrtoint ptr %ptpstopsch.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 0, ptr %ptpstopsch.i, align 8
  %call14.i = call i32 @sja1105_ptp_commit(ptr noundef %33, ptr noundef %cmd2.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end13.i.land.lhs.true_crit_edge, label %if.end23

if.end13.i.land.lhs.true_crit_edge:               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end23:                                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %state, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp24) #6
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp24, i64 noundef %sub) #6
  %43 = ptrtoint ptr %tmp24 to i32
  call void @__asan_load8_noabort(i32 %43)
  %base_time_ts.sroa.0.0.copyload142 = load i64, ptr %tmp24, align 8
  %base_time_ts.sroa.5.0.tmp24.sroa_idx = getelementptr inbounds i8, ptr %tmp24, i32 8
  %44 = ptrtoint ptr %base_time_ts.sroa.5.0.tmp24.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %44)
  %base_time_ts.sroa.5.0.copyload143 = load i32, ptr %base_time_ts.sroa.5.0.tmp24.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp24) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp25) #6
  %45 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %now, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp25, i64 noundef %46) #6
  %47 = ptrtoint ptr %tmp25 to i32
  call void @__asan_load8_noabort(i32 %47)
  %now_ts.sroa.0.0.copyload139 = load i64, ptr %tmp25, align 8
  %now_ts.sroa.5.0.tmp25.sroa_idx = getelementptr inbounds i8, ptr %tmp25, i32 8
  %48 = ptrtoint ptr %now_ts.sroa.5.0.tmp25.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %now_ts.sroa.5.0.copyload140 = load i32, ptr %now_ts.sroa.5.0.tmp25.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp25) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sja1105_tas_state_machine.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sja1105_tas_state_machine, %if.then30)) #6
          to label %sw.epilog [label %if.then30], !srcloc !91

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sja1105_tas_state_machine.__UNIQUE_ID_ddebug529, ptr noundef %50, ptr noundef nonnull @.str.21, i64 noundef %base_time_ts.sroa.0.0.copyload142, i32 noundef %base_time_ts.sroa.5.0.copyload143, i64 noundef %now_ts.sroa.0.0.copyload139, i32 noundef %now_ts.sroa.5.0.copyload140) #6
  br label %if.end116

sw.bb34:                                          ; preds = %entry
  %last_op35 = getelementptr i8, ptr %work, i32 -4
  %51 = ptrtoint ptr %last_op35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %last_op35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp36.not = icmp eq i32 %52, 2
  br i1 %cmp36.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %sw.bb34
  %cmd2.i176 = getelementptr i8, ptr %work, i32 -248
  %53 = ptrtoint ptr %ds5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ds5, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sja1105_tas_stop.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sja1105_tas_state_machine, %if.then.i178)) #6
          to label %do.end.i180 [label %if.then.i178], !srcloc !91

if.then.i178:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sja1105_tas_stop.__UNIQUE_ID_ddebug528, ptr noundef %56, ptr noundef nonnull @.str.37) #6
  br label %do.end.i180

do.end.i180:                                      ; preds = %if.then.i178, %if.then37
  %57 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i = icmp eq i32 %58, 0
  br i1 %cmp.i, label %do.end9.i, label %if.end11.i

do.end9.i:                                        ; preds = %do.end.i180
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %54, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.38) #10
  br label %if.end116

if.end11.i:                                       ; preds = %do.end.i180
  %ptpstopsch.i181 = getelementptr i8, ptr %work, i32 -224
  %61 = ptrtoint ptr %ptpstopsch.i181 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 1, ptr %ptpstopsch.i181, align 8
  %ptpstrtsch.i182 = getelementptr i8, ptr %work, i32 -232
  %62 = ptrtoint ptr %ptpstrtsch.i182 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 0, ptr %ptpstrtsch.i182, align 8
  %call12.i = tail call i32 @sja1105_ptp_commit(ptr noundef %54, ptr noundef %cmd2.i176, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end11.i.if.end116_crit_edge, label %if.end15.i

if.end11.i.if.end116_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

if.end15.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %state, align 8
  br label %if.end116

if.end39:                                         ; preds = %sw.bb34
  %call40 = call i32 @__sja1105_ptp_gettimex(ptr noundef %1, ptr noundef nonnull %now, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end39.land.lhs.true_crit_edge, label %if.end43

if.end39.land.lhs.true_crit_edge:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end43:                                         ; preds = %if.end39
  %64 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %now, align 8
  %oper_base_time44 = getelementptr i8, ptr %work, i32 56
  %66 = ptrtoint ptr %oper_base_time44 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %oper_base_time44, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %67, i64 %65)
  %cmp45 = icmp sgt i64 %67, %65
  br i1 %cmp45, label %if.then46, label %if.end69

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp47) #6
  %sub49 = sub i64 %67, %65
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp47, i64 noundef %sub49) #6
  %68 = ptrtoint ptr %tmp47 to i32
  call void @__asan_load8_noabort(i32 %68)
  %diff.sroa.0.0.copyload129 = load i64, ptr %tmp47, align 8
  %diff.sroa.5.0.tmp47.sroa_idx = getelementptr inbounds i8, ptr %tmp47, i32 8
  %69 = ptrtoint ptr %diff.sroa.5.0.tmp47.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %69)
  %diff.sroa.5.0.copyload130 = load i32, ptr %diff.sroa.5.0.tmp47.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp47) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sja1105_tas_state_machine.__UNIQUE_ID_ddebug530, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sja1105_tas_state_machine, %if.then62)) #6
          to label %sw.epilog [label %if.then62], !srcloc !91

if.then62:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sja1105_tas_state_machine.__UNIQUE_ID_ddebug530, ptr noundef %71, ptr noundef nonnull @.str.22, i64 noundef %diff.sroa.0.0.copyload129, i32 noundef %diff.sroa.5.0.copyload130) #6
  br label %sw.epilog

if.end69:                                         ; preds = %if.end43
  %72 = ptrtoint ptr %ds5 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ds5, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmd.i) #6
  %74 = call ptr @memset(ptr %cmd.i, i32 0, i32 56)
  %call.i = call i32 @sja1105_ptp_commit(ptr noundef %73, ptr noundef nonnull %cmd.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i183 = icmp slt i32 %call.i, 0
  br i1 %cmp.i183, label %if.end69.sja1105_tas_check_running.exit.thread_crit_edge, label %if.end.i185

if.end69.sja1105_tas_check_running.exit.thread_crit_edge: ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %sja1105_tas_check_running.exit.thread

if.end.i185:                                      ; preds = %if.end69
  %ptpstrtsch.i184 = getelementptr inbounds %struct.sja1105_ptp_cmd, ptr %cmd.i, i32 0, i32 2
  %75 = ptrtoint ptr %ptpstrtsch.i184 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ptpstrtsch.i184, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %76)
  %cmp3.i = icmp eq i64 %76, 1
  br i1 %cmp3.i, label %sw.epilog.critedge, label %if.else.i

if.else.i:                                        ; preds = %if.end.i185
  %ptpstopsch.i186 = getelementptr inbounds %struct.sja1105_ptp_cmd, ptr %cmd.i, i32 0, i32 3
  %77 = ptrtoint ptr %ptpstopsch.i186 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %ptpstopsch.i186, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %78)
  %cmp5.i = icmp eq i64 %78, 1
  br i1 %cmp5.i, label %do.end79.critedge, label %if.else.i.sja1105_tas_check_running.exit.thread_crit_edge

if.else.i.sja1105_tas_check_running.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sja1105_tas_check_running.exit.thread

sja1105_tas_check_running.exit.thread:            ; preds = %if.else.i.sja1105_tas_check_running.exit.thread_crit_edge, %if.end69.sja1105_tas_check_running.exit.thread_crit_edge
  %retval.0.i188.ph = phi i32 [ -22, %if.else.i.sja1105_tas_check_running.exit.thread_crit_edge ], [ %call.i, %if.end69.sja1105_tas_check_running.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmd.i) #6
  br label %land.lhs.true

do.end79.critedge:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %state, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmd.i) #6
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.23) #10
  br label %sw.epilog

sw.bb82:                                          ; preds = %entry
  %last_op83 = getelementptr i8, ptr %work, i32 -4
  %82 = ptrtoint ptr %last_op83 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %last_op83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %cmp84.not = icmp eq i32 %83, 2
  br i1 %cmp84.not, label %if.end87, label %if.then85

if.then85:                                        ; preds = %sw.bb82
  %cmd2.i189 = getelementptr i8, ptr %work, i32 -248
  %84 = ptrtoint ptr %ds5 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ds5, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sja1105_tas_stop.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sja1105_tas_state_machine, %if.then.i191)) #6
          to label %do.end.i194 [label %if.then.i191], !srcloc !91

if.then.i191:                                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sja1105_tas_stop.__UNIQUE_ID_ddebug528, ptr noundef %87, ptr noundef nonnull @.str.37) #6
  br label %do.end.i194

do.end.i194:                                      ; preds = %if.then.i191, %if.then85
  %88 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp.i193 = icmp eq i32 %89, 0
  br i1 %cmp.i193, label %do.end9.i195, label %if.end11.i200

do.end9.i195:                                     ; preds = %do.end.i194
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %85, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.38) #10
  br label %if.end116

if.end11.i200:                                    ; preds = %do.end.i194
  %ptpstopsch.i196 = getelementptr i8, ptr %work, i32 -224
  %92 = ptrtoint ptr %ptpstopsch.i196 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 1, ptr %ptpstopsch.i196, align 8
  %ptpstrtsch.i197 = getelementptr i8, ptr %work, i32 -232
  %93 = ptrtoint ptr %ptpstrtsch.i197 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 0, ptr %ptpstrtsch.i197, align 8
  %call12.i198 = tail call i32 @sja1105_ptp_commit(ptr noundef %85, ptr noundef %cmd2.i189, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i198)
  %cmp13.i199 = icmp slt i32 %call12.i198, 0
  br i1 %cmp13.i199, label %if.end11.i200.if.end116_crit_edge, label %if.end15.i201

if.end11.i200.if.end116_crit_edge:                ; preds = %if.end11.i200
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

if.end15.i201:                                    ; preds = %if.end11.i200
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %state, align 8
  br label %if.end116

if.end87:                                         ; preds = %sw.bb82
  %95 = ptrtoint ptr %ds5 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ds5, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmd.i203) #6
  %97 = call ptr @memset(ptr %cmd.i203, i32 0, i32 56)
  %call.i205 = call i32 @sja1105_ptp_commit(ptr noundef %96, ptr noundef nonnull %cmd.i203, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %cmp.i206 = icmp slt i32 %call.i205, 0
  br i1 %cmp.i206, label %if.end87.sja1105_tas_check_running.exit217.thread_crit_edge, label %if.end.i209

if.end87.sja1105_tas_check_running.exit217.thread_crit_edge: ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %sja1105_tas_check_running.exit217.thread

if.end.i209:                                      ; preds = %if.end87
  %ptpstrtsch.i207 = getelementptr inbounds %struct.sja1105_ptp_cmd, ptr %cmd.i203, i32 0, i32 2
  %98 = ptrtoint ptr %ptpstrtsch.i207 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %ptpstrtsch.i207, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %99)
  %cmp3.i208 = icmp eq i64 %99, 1
  br i1 %cmp3.i208, label %sw.epilog.critedge234, label %if.else.i212

if.else.i212:                                     ; preds = %if.end.i209
  %ptpstopsch.i210 = getelementptr inbounds %struct.sja1105_ptp_cmd, ptr %cmd.i203, i32 0, i32 3
  %100 = ptrtoint ptr %ptpstopsch.i210 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %ptpstopsch.i210, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %101)
  %cmp5.i211 = icmp eq i64 %101, 1
  br i1 %cmp5.i211, label %do.end97.critedge, label %if.else.i212.sja1105_tas_check_running.exit217.thread_crit_edge

if.else.i212.sja1105_tas_check_running.exit217.thread_crit_edge: ; preds = %if.else.i212
  call void @__sanitizer_cov_trace_pc() #8
  br label %sja1105_tas_check_running.exit217.thread

sja1105_tas_check_running.exit217.thread:         ; preds = %if.else.i212.sja1105_tas_check_running.exit217.thread_crit_edge, %if.end87.sja1105_tas_check_running.exit217.thread_crit_edge
  %retval.0.i216.ph = phi i32 [ -22, %if.else.i212.sja1105_tas_check_running.exit217.thread_crit_edge ], [ %call.i205, %if.end87.sja1105_tas_check_running.exit217.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmd.i203) #6
  br label %land.lhs.true

do.end97.critedge:                                ; preds = %if.else.i212
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %state, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmd.i203) #6
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.25) #10
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call100 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %sw.default.if.end116_crit_edge, label %do.end105

sw.default.if.end116_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

do.end105:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.28) #10
  br label %if.end116

sw.epilog.critedge:                               ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #8
  %107 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 2, ptr %state, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmd.i) #6
  br label %sw.epilog

sw.epilog.critedge234:                            ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 2, ptr %state, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmd.i203) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.critedge234, %sw.epilog.critedge, %do.end97.critedge, %do.end79.critedge, %if.then62, %if.then46, %if.end23
  %rc.0 = phi i32 [ %call.i205, %do.end97.critedge ], [ %call40, %if.then62 ], [ %call.i, %do.end79.critedge ], [ 0, %if.end23 ], [ %call40, %if.then46 ], [ %call.i, %sw.epilog.critedge ], [ %call.i205, %sw.epilog.critedge234 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool108.not = icmp eq i32 %rc.0, 0
  br i1 %tobool108.not, label %sw.epilog.if.end116_crit_edge, label %sw.epilog.land.lhs.true_crit_edge

sw.epilog.land.lhs.true_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

sw.epilog.if.end116_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

land.lhs.true:                                    ; preds = %sw.epilog.land.lhs.true_crit_edge, %sja1105_tas_check_running.exit217.thread, %sja1105_tas_check_running.exit.thread, %if.end39.land.lhs.true_crit_edge, %if.end13.i.land.lhs.true_crit_edge, %do.end11.i, %future_base_time.exit.land.lhs.true_crit_edge, %if.end8.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %rc.0232 = phi i32 [ %rc.0, %sw.epilog.land.lhs.true_crit_edge ], [ %retval.0.i216.ph, %sja1105_tas_check_running.exit217.thread ], [ %retval.0.i188.ph, %sja1105_tas_check_running.exit.thread ], [ %call3.i174, %future_base_time.exit.land.lhs.true_crit_edge ], [ %call9, %if.end8.land.lhs.true_crit_edge ], [ %call3.i, %if.end.land.lhs.true_crit_edge ], [ %call40, %if.end39.land.lhs.true_crit_edge ], [ %call14.i, %if.end13.i.land.lhs.true_crit_edge ], [ -22, %do.end11.i ]
  %call109 = call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %land.lhs.true.if.end116_crit_edge, label %do.end114

land.lhs.true.if.end116_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

do.end114:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.31, i32 noundef %rc.0232) #10
  br label %if.end116

if.end116:                                        ; preds = %do.end114, %land.lhs.true.if.end116_crit_edge, %sw.epilog.if.end116_crit_edge, %do.end105, %sw.default.if.end116_crit_edge, %if.end15.i201, %if.end11.i200.if.end116_crit_edge, %do.end9.i195, %if.end15.i, %if.end11.i.if.end116_crit_edge, %do.end9.i, %if.then30, %sw.bb.if.end116_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %now) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105_tas_teardown(ptr nocapture noundef readonly %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %tas_data = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 26
  %tas_work = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 26, i32 4
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %tas_work) #6
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 18
  %2 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not = icmp eq i32 %3, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %port.010 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [11 x ptr], ptr %tas_data, i32 0, i32 %port.010
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @taprio_offload_free(ptr noundef nonnull %5) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %port.010, 1
  %6 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sja1105_ptp_gettimex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_xfer_u32(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_xfer_u64(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_ptp_commit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @sja1105_gating_check_conflicts.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/sja1105/sja1105_tas.c", i32 482, i32 3}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/sja1105/sja1105_tas.c", i32 552, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @sja1105_setup_tc_taprio._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @sja1105_setup_tc_taprio._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/sja1105/sja1105_tas.c", i32 568, i32 3}
!14 = !{ptr @sja1105_setup_tc_taprio._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @sja1105_setup_tc_taprio._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @sja1105_tas_setup.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/net/dsa/sja1105/sja1105_tas.c", i32 875, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/dsa/sja1105/sja1105_tas.c", i32 77, i32 3}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sja1105_tas_set_runtime_params._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @sja1105_tas_set_runtime_params._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/dsa/sja1105/sja1105_tas.c", i32 86, i32 2}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sja1105_tas_set_runtime_params.__UNIQUE_ID_ddebug518, !25, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/sja1105/sja1105_tas.c", i32 87, i32 2}
!30 = !{ptr @sja1105_tas_set_runtime_params.__UNIQUE_ID_ddebug519, !29, !"__UNIQUE_ID_ddebug519", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/dsa/sja1105/sja1105_tas.c", i32 88, i32 2}
!33 = !{ptr @sja1105_tas_set_runtime_params.__UNIQUE_ID_ddebug520, !32, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/dsa/sja1105/sja1105_tas.c", i32 448, i32 7}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @sja1105_tas_check_conflicts._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @sja1105_tas_check_conflicts._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/dsa/sja1105/sja1105_tas.c", i32 775, i32 3}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @sja1105_tas_state_machine.__UNIQUE_ID_ddebug529, !41, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/dsa/sja1105/sja1105_tas.c", i32 798, i32 4}
!46 = !{ptr @sja1105_tas_state_machine.__UNIQUE_ID_ddebug530, !45, !"__UNIQUE_ID_ddebug530", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/dsa/sja1105/sja1105_tas.c", i32 810, i32 4}
!49 = !{ptr @sja1105_tas_state_machine._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @sja1105_tas_state_machine._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/dsa/sja1105/sja1105_tas.c", i32 827, i32 4}
!53 = !{ptr @sja1105_tas_state_machine._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sja1105_tas_state_machine._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/dsa/sja1105/sja1105_tas.c", i32 833, i32 4}
!57 = !{ptr @sja1105_tas_state_machine._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @sja1105_tas_state_machine._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/dsa/sja1105/sja1105_tas.c", i32 837, i32 3}
!61 = !{ptr @sja1105_tas_state_machine._entry.30, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sja1105_tas_state_machine._entry_ptr.32, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/dsa/sja1105/sja1105_tas.c", i32 634, i32 2}
!65 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sja1105_tas_start.__UNIQUE_ID_ddebug527, !64, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/dsa/sja1105/sja1105_tas.c", i32 638, i32 3}
!69 = !{ptr @sja1105_tas_start._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @sja1105_tas_start._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/dsa/sja1105/sja1105_tas.c", i32 661, i32 2}
!73 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @sja1105_tas_stop.__UNIQUE_ID_ddebug528, !72, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/dsa/sja1105/sja1105_tas.c", i32 664, i32 3}
!77 = !{ptr @sja1105_tas_stop._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @sja1105_tas_stop._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{!"auto-init"}
!90 = !{i8 0, i8 2}
!91 = !{i64 2148329880, i64 2148329885, i64 2148329898, i64 2148329942, i64 2148329976, i64 2148329997}
