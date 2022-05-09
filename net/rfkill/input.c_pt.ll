; ModuleID = '/llk/IR_all_yes/net/rfkill/input.c_pt.bc'
source_filename = "../net/rfkill/input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.input_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.input_device_id = type { i32, i16, i16, i16, i16, [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }
%struct.input_handle = type { ptr, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@__param_str_master_switch_mode = internal constant [26 x i8] c"rfkill.master_switch_mode\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@rfkill_master_switch_mode = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_master_switch_mode = internal constant %struct.kernel_param { ptr @__param_str_master_switch_mode, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @rfkill_master_switch_mode } }, section "__param", align 4
@__UNIQUE_ID_master_switch_modetype223 = internal constant [40 x i8] c"rfkill.parmtype=master_switch_mode:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_master_switch_mode224 = internal constant [109 x i8] c"rfkill.parm=master_switch_mode:SW_RFKILL_ALL ON should: 0=do nothing (only unlock); 1=restore; 2=unblock all\00", section ".modinfo", align 1
@rfkill_master_switch_op = internal global { i32, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rfkill_last_scheduled = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rfkill_handler = internal global { %struct.input_handler, [32 x i8] } { %struct.input_handler { ptr null, ptr @rfkill_event, ptr null, ptr null, ptr null, ptr @rfkill_connect, ptr @rfkill_disconnect, ptr @rfkill_start, i8 0, i32 0, ptr @.str, ptr @rfkill_ids, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rfkill_op_work = internal global { %struct.delayed_work, [60 x i8] } { %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @rfkill_op_work, i64 4), ptr getelementptr (i8, ptr @rfkill_op_work, i64 4) }, ptr @rfkill_op_handler, %struct.lockdep_map { ptr @rfkill_op_work, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.4, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rfkill\00", [25 x i8] zeroinitializer }, align 32
@rfkill_op_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@rfkill_op_pending = internal global { i1, [31 x i8] } zeroinitializer, align 32
@rfkill_sw_pending.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rfkill_sw_state.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rfkill_op_lock\00", [17 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rfkill_op = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rfkill_ids = internal constant { <{ { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id }>, [260 x i8] } { <{ { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id }> <{ { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ [8 x i32], [16 x i32] }> <{ [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16384], [16 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ [8 x i32], [16 x i32] }> <{ [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8192], [16 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ [8 x i32], [16 x i32] }> <{ [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32768], [16 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ [8 x i32], [16 x i32] }> <{ [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4194304], [16 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ [8 x i32], [16 x i32] }> <{ [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8388608], [16 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id { i32 4112, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 32], [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] [i32 8], [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id zeroinitializer }>, [260 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(rfkill_op_work).work\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/rfkill/input.c:137\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/rfkill/input.c\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Unknown requested operation %d! rfkill Emergency Power Off activated\0A\00", [58 x i8] zeroinitializer }, align 32
@switch.table.rfkill_handler_init = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 1, i32 3], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 237, i64 238, i64 239, i64 246, i64 247]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.8 = private unnamed_addr constant [26 x i8] c"rfkill_master_switch_mode\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 33, i32 38 }
@___asan_gen_.11 = private unnamed_addr constant [24 x i8] c"rfkill_master_switch_op\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 51, i32 29 }
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"rfkill_last_scheduled\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 138, i32 22 }
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"rfkill_handler\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 308, i32 29 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"rfkill_op_work\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 309, i32 10 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"rfkill_op_lock\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"rfkill_op_pending\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"rfkill_sw_pending.0\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"rfkill_sw_state.0\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 39, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant [10 x i8] c"rfkill_op\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 52, i32 29 }
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"rfkill_ids\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 274, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 137, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [22 x i8] c"../net/rfkill/input.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 76, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [33 x i8] c"switch.table.rfkill_handler_init\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_master_switch_mode224, ptr @__UNIQUE_ID_master_switch_modetype223, ptr @__param_master_switch_mode, ptr @rfkill_handler_exit, ptr @rfkill_master_switch_mode, ptr @rfkill_master_switch_op, ptr @rfkill_last_scheduled, ptr @rfkill_handler, ptr @rfkill_op_work, ptr @.str, ptr @rfkill_op_lock, ptr @rfkill_op_pending, ptr @rfkill_sw_pending.0, ptr @rfkill_sw_state.0, ptr @.str.1, ptr @rfkill_op, ptr @rfkill_ids, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @switch.table.rfkill_handler_init], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfkill_master_switch_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfkill_master_switch_op to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfkill_last_scheduled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfkill_handler to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfkill_op_work to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfkill_op_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfkill_op_pending to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfkill_sw_pending.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfkill_sw_state.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfkill_op to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfkill_ids to i32), i32 1148, i32 1408, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rfkill_handler_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rfkill_handler_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @rfkill_master_switch_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %1 = icmp ult i32 %0, 3
  br i1 %1, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.rfkill_handler_init, i32 0, i32 %0
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  store i32 %switch.load, ptr @rfkill_master_switch_op, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub3 = add i32 %3, -21
  store i32 %sub3, ptr @rfkill_last_scheduled, align 4
  %call4 = tail call i32 @input_register_handler(ptr noundef nonnull @rfkill_handler) #4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %switch.lookup ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @rfkill_handler_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @input_unregister_handler(ptr noundef nonnull @rfkill_handler) #4
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @rfkill_op_work) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfkill_event(ptr nocapture noundef readnone %handle, i32 noundef %type, i32 noundef %code, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data)
  %cmp1 = icmp eq i32 %data, 1
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %code, label %if.then.if.end10_crit_edge [
    i32 238, label %sw.bb
    i32 237, label %sw.bb2
    i32 239, label %sw.bb3
    i32 246, label %sw.bb4
    i32 247, label %sw.bb5
  ]

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

sw.bb:                                            ; preds = %if.then
  %call.i = tail call zeroext i1 @rfkill_is_epo_lock_active() #4
  br i1 %call.i, label %sw.bb.if.end10_crit_edge, label %do.body1.i

sw.bb.if.end10_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

do.body1.i:                                       ; preds = %sw.bb
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rfkill_op_lock) #4
  %.b9.i = load i1, ptr @rfkill_op_pending, align 1
  br i1 %.b9.i, label %do.body1.i.if.end7.i_crit_edge, label %if.then6.i

do.body1.i.if.end7.i_crit_edge:                   ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i

if.then6.i:                                       ; preds = %do.body1.i
  %1 = load i32, ptr @rfkill_sw_pending.0, align 4
  %or.i.i = or i32 %1, 2
  store i32 %or.i.i, ptr @rfkill_sw_pending.0, align 4
  %2 = load i32, ptr @rfkill_sw_state.0, align 4
  %xor.i.i = xor i32 %2, 2
  store i32 %xor.i.i, ptr @rfkill_sw_state.0, align 4
  %3 = load i32, ptr @rfkill_last_scheduled, align 4
  %add.i.i.i = add i32 %3, 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i.i.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef nonnull @rfkill_op_work, i32 noundef %spec.select.i.i.i) #4
  br i1 %call.i.i.i.i, label %if.then.i.i, label %if.then6.i.if.end7.i_crit_edge

if.then6.i.if.end7.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i

if.then.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  store i32 %6, ptr @rfkill_last_scheduled, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then.i.i, %if.then6.i.if.end7.i_crit_edge, %do.body1.i.if.end7.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rfkill_op_lock, i32 noundef %call3.i) #4
  br label %if.end10

sw.bb2:                                           ; preds = %if.then
  %call.i15 = tail call zeroext i1 @rfkill_is_epo_lock_active() #4
  br i1 %call.i15, label %sw.bb2.if.end10_crit_edge, label %do.body1.i18

sw.bb2.if.end10_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

do.body1.i18:                                     ; preds = %sw.bb2
  %call3.i16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rfkill_op_lock) #4
  %.b9.i17 = load i1, ptr @rfkill_op_pending, align 1
  br i1 %.b9.i17, label %do.body1.i18.if.end7.i28_crit_edge, label %if.then6.i26

do.body1.i18.if.end7.i28_crit_edge:               ; preds = %do.body1.i18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i28

if.then6.i26:                                     ; preds = %do.body1.i18
  %7 = load i32, ptr @rfkill_sw_pending.0, align 4
  %or.i.i19 = or i32 %7, 4
  store i32 %or.i.i19, ptr @rfkill_sw_pending.0, align 4
  %8 = load i32, ptr @rfkill_sw_state.0, align 4
  %xor.i.i20 = xor i32 %8, 4
  store i32 %xor.i.i20, ptr @rfkill_sw_state.0, align 4
  %9 = load i32, ptr @rfkill_last_scheduled, align 4
  %add.i.i.i21 = add i32 %9, 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i22 = sub i32 %add.i.i.i21, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i22)
  %cmp.i.i.i23 = icmp slt i32 %sub.i.i.i22, 0
  %spec.select.i.i.i24 = select i1 %cmp.i.i.i23, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i25 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %11, ptr noundef nonnull @rfkill_op_work, i32 noundef %spec.select.i.i.i24) #4
  br i1 %call.i.i.i.i25, label %if.then.i.i27, label %if.then6.i26.if.end7.i28_crit_edge

if.then6.i26.if.end7.i28_crit_edge:               ; preds = %if.then6.i26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i28

if.then.i.i27:                                    ; preds = %if.then6.i26
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  store i32 %12, ptr @rfkill_last_scheduled, align 4
  br label %if.end7.i28

if.end7.i28:                                      ; preds = %if.then.i.i27, %if.then6.i26.if.end7.i28_crit_edge, %do.body1.i18.if.end7.i28_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rfkill_op_lock, i32 noundef %call3.i16) #4
  br label %if.end10

sw.bb3:                                           ; preds = %if.then
  %call.i30 = tail call zeroext i1 @rfkill_is_epo_lock_active() #4
  br i1 %call.i30, label %sw.bb3.if.end10_crit_edge, label %do.body1.i33

sw.bb3.if.end10_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

do.body1.i33:                                     ; preds = %sw.bb3
  %call3.i31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rfkill_op_lock) #4
  %.b9.i32 = load i1, ptr @rfkill_op_pending, align 1
  br i1 %.b9.i32, label %do.body1.i33.if.end7.i43_crit_edge, label %if.then6.i41

do.body1.i33.if.end7.i43_crit_edge:               ; preds = %do.body1.i33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i43

if.then6.i41:                                     ; preds = %do.body1.i33
  %13 = load i32, ptr @rfkill_sw_pending.0, align 4
  %or.i.i34 = or i32 %13, 8
  store i32 %or.i.i34, ptr @rfkill_sw_pending.0, align 4
  %14 = load i32, ptr @rfkill_sw_state.0, align 4
  %xor.i.i35 = xor i32 %14, 8
  store i32 %xor.i.i35, ptr @rfkill_sw_state.0, align 4
  %15 = load i32, ptr @rfkill_last_scheduled, align 4
  %add.i.i.i36 = add i32 %15, 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i37 = sub i32 %add.i.i.i36, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i37)
  %cmp.i.i.i38 = icmp slt i32 %sub.i.i.i37, 0
  %spec.select.i.i.i39 = select i1 %cmp.i.i.i38, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i40 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %17, ptr noundef nonnull @rfkill_op_work, i32 noundef %spec.select.i.i.i39) #4
  br i1 %call.i.i.i.i40, label %if.then.i.i42, label %if.then6.i41.if.end7.i43_crit_edge

if.then6.i41.if.end7.i43_crit_edge:               ; preds = %if.then6.i41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i43

if.then.i.i42:                                    ; preds = %if.then6.i41
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  store i32 %18, ptr @rfkill_last_scheduled, align 4
  br label %if.end7.i43

if.end7.i43:                                      ; preds = %if.then.i.i42, %if.then6.i41.if.end7.i43_crit_edge, %do.body1.i33.if.end7.i43_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rfkill_op_lock, i32 noundef %call3.i31) #4
  br label %if.end10

sw.bb4:                                           ; preds = %if.then
  %call.i45 = tail call zeroext i1 @rfkill_is_epo_lock_active() #4
  br i1 %call.i45, label %sw.bb4.if.end10_crit_edge, label %do.body1.i48

sw.bb4.if.end10_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

do.body1.i48:                                     ; preds = %sw.bb4
  %call3.i46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rfkill_op_lock) #4
  %.b9.i47 = load i1, ptr @rfkill_op_pending, align 1
  br i1 %.b9.i47, label %do.body1.i48.if.end7.i58_crit_edge, label %if.then6.i56

do.body1.i48.if.end7.i58_crit_edge:               ; preds = %do.body1.i48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i58

if.then6.i56:                                     ; preds = %do.body1.i48
  %19 = load i32, ptr @rfkill_sw_pending.0, align 4
  %or.i.i49 = or i32 %19, 16
  store i32 %or.i.i49, ptr @rfkill_sw_pending.0, align 4
  %20 = load i32, ptr @rfkill_sw_state.0, align 4
  %xor.i.i50 = xor i32 %20, 16
  store i32 %xor.i.i50, ptr @rfkill_sw_state.0, align 4
  %21 = load i32, ptr @rfkill_last_scheduled, align 4
  %add.i.i.i51 = add i32 %21, 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i52 = sub i32 %add.i.i.i51, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i52)
  %cmp.i.i.i53 = icmp slt i32 %sub.i.i.i52, 0
  %spec.select.i.i.i54 = select i1 %cmp.i.i.i53, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %23 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i55 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %23, ptr noundef nonnull @rfkill_op_work, i32 noundef %spec.select.i.i.i54) #4
  br i1 %call.i.i.i.i55, label %if.then.i.i57, label %if.then6.i56.if.end7.i58_crit_edge

if.then6.i56.if.end7.i58_crit_edge:               ; preds = %if.then6.i56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i58

if.then.i.i57:                                    ; preds = %if.then6.i56
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  store i32 %24, ptr @rfkill_last_scheduled, align 4
  br label %if.end7.i58

if.end7.i58:                                      ; preds = %if.then.i.i57, %if.then6.i56.if.end7.i58_crit_edge, %do.body1.i48.if.end7.i58_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rfkill_op_lock, i32 noundef %call3.i46) #4
  br label %if.end10

sw.bb5:                                           ; preds = %if.then
  %call.i60 = tail call zeroext i1 @rfkill_is_epo_lock_active() #4
  br i1 %call.i60, label %sw.bb5.if.end10_crit_edge, label %do.body1.i63

sw.bb5.if.end10_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

do.body1.i63:                                     ; preds = %sw.bb5
  %call3.i61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rfkill_op_lock) #4
  %.b9.i62 = load i1, ptr @rfkill_op_pending, align 1
  br i1 %.b9.i62, label %do.body1.i63.if.end7.i73_crit_edge, label %if.then6.i71

do.body1.i63.if.end7.i73_crit_edge:               ; preds = %do.body1.i63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i73

if.then6.i71:                                     ; preds = %do.body1.i63
  %25 = load i32, ptr @rfkill_sw_pending.0, align 4
  %or.i.i64 = or i32 %25, 1
  store i32 %or.i.i64, ptr @rfkill_sw_pending.0, align 4
  %26 = load i32, ptr @rfkill_sw_state.0, align 4
  %xor.i.i65 = xor i32 %26, 1
  store i32 %xor.i.i65, ptr @rfkill_sw_state.0, align 4
  %27 = load i32, ptr @rfkill_last_scheduled, align 4
  %add.i.i.i66 = add i32 %27, 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i67 = sub i32 %add.i.i.i66, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i67)
  %cmp.i.i.i68 = icmp slt i32 %sub.i.i.i67, 0
  %spec.select.i.i.i69 = select i1 %cmp.i.i.i68, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i70 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %29, ptr noundef nonnull @rfkill_op_work, i32 noundef %spec.select.i.i.i69) #4
  br i1 %call.i.i.i.i70, label %if.then.i.i72, label %if.then6.i71.if.end7.i73_crit_edge

if.then6.i71.if.end7.i73_crit_edge:               ; preds = %if.then6.i71
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i73

if.then.i.i72:                                    ; preds = %if.then6.i71
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  store i32 %30, ptr @rfkill_last_scheduled, align 4
  br label %if.end7.i73

if.end7.i73:                                      ; preds = %if.then.i.i72, %if.then6.i71.if.end7.i73_crit_edge, %do.body1.i63.if.end7.i73_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rfkill_op_lock, i32 noundef %call3.i61) #4
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cmp6 = icmp eq i32 %type, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %code)
  %cmp8 = icmp eq i32 %code, 3
  %or.cond14 = and i1 %cmp6, %cmp8
  br i1 %or.cond14, label %if.then9, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data)
  %tobool.not.i = icmp eq i32 %data, 0
  br i1 %tobool.not.i, label %if.then9.rfkill_schedule_evsw_rfkillall.exit_crit_edge, label %if.then.i

if.then9.rfkill_schedule_evsw_rfkillall.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %rfkill_schedule_evsw_rfkillall.exit

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %31 = load i32, ptr @rfkill_master_switch_op, align 4
  br label %rfkill_schedule_evsw_rfkillall.exit

rfkill_schedule_evsw_rfkillall.exit:              ; preds = %if.then.i, %if.then9.rfkill_schedule_evsw_rfkillall.exit_crit_edge
  %.sink.i = phi i32 [ %31, %if.then.i ], [ 0, %if.then9.rfkill_schedule_evsw_rfkillall.exit_crit_edge ]
  tail call fastcc void @rfkill_schedule_global_op(i32 noundef %.sink.i) #4
  br label %if.end10

if.end10:                                         ; preds = %rfkill_schedule_evsw_rfkillall.exit, %if.else.if.end10_crit_edge, %if.end7.i73, %sw.bb5.if.end10_crit_edge, %if.end7.i58, %sw.bb4.if.end10_crit_edge, %if.end7.i43, %sw.bb3.if.end10_crit_edge, %if.end7.i28, %sw.bb2.if.end10_crit_edge, %if.end7.i, %sw.bb.if.end10_crit_edge, %if.then.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfkill_connect(ptr noundef %handler, ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.input_handle, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev1, align 4
  %handler2 = getelementptr inbounds %struct.input_handle, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %handler2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %handler, ptr %handler2, align 8
  %name = getelementptr inbounds %struct.input_handle, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %name, align 8
  %call3 = tail call i32 @input_register_handle(ptr noundef nonnull %call7.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.err_free_handle_crit_edge

if.end.err_free_handle_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_handle

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @input_open_device(ptr noundef nonnull %call7.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %err_unregister_handle

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_unregister_handle:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @input_unregister_handle(ptr noundef nonnull %call7.i.i) #4
  br label %err_free_handle

err_free_handle:                                  ; preds = %err_unregister_handle, %if.end.err_free_handle_crit_edge
  %error.0 = phi i32 [ %call3, %if.end.err_free_handle_crit_edge ], [ %call7, %err_unregister_handle ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %err_free_handle, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err_free_handle ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfkill_disconnect(ptr noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @input_close_device(ptr noundef %handle) #4
  tail call void @input_unregister_handle(ptr noundef %handle) #4
  tail call void @kfree(ptr noundef %handle) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfkill_start(ptr nocapture noundef readonly %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.input_handle, ptr %handle, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %event_lock = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 36
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %evbit, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %swbit = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %swbit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %swbit, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %sw = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 30
  %10 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %sw, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.then.rfkill_schedule_evsw_rfkillall.exit_crit_edge, label %if.then.i

if.then.rfkill_schedule_evsw_rfkillall.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %rfkill_schedule_evsw_rfkillall.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %13 = load i32, ptr @rfkill_master_switch_op, align 4
  br label %rfkill_schedule_evsw_rfkillall.exit

rfkill_schedule_evsw_rfkillall.exit:              ; preds = %if.then.i, %if.then.rfkill_schedule_evsw_rfkillall.exit_crit_edge
  %.sink.i = phi i32 [ %13, %if.then.i ], [ 0, %if.then.rfkill_schedule_evsw_rfkillall.exit_crit_edge ]
  tail call fastcc void @rfkill_schedule_global_op(i32 noundef %.sink.i) #4
  br label %if.end

if.end:                                           ; preds = %rfkill_schedule_evsw_rfkillall.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %event_lock10 = getelementptr inbounds %struct.input_dev, ptr %15, i32 0, i32 36
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock10) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rfkill_is_epo_lock_active() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfkill_schedule_global_op(i32 noundef %op) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rfkill_op_lock) #4
  store i32 %op, ptr @rfkill_op, align 4
  store i1 true, ptr @rfkill_op_pending, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op)
  %cmp5 = icmp eq i32 %op, 0
  br i1 %cmp5, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %call7 = tail call zeroext i1 @rfkill_is_epo_lock_active() #4
  br i1 %call7, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @rfkill_op_work, i32 noundef 0) #4
  br label %if.end.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %1 = load i32, ptr @rfkill_last_scheduled, align 4
  %add.i.i = add i32 %1, 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  %spec.select.i.i = select i1 %cmp.i.i, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef nonnull @rfkill_op_work, i32 noundef %spec.select.i.i) #4
  br i1 %call.i.i.i, label %if.else.if.end.sink.split_crit_edge, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  store i32 %4, ptr @rfkill_last_scheduled, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rfkill_op_lock, i32 noundef %call2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_open_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_close_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfkill_op_handler(ptr nocapture noundef readnone %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rfkill_op_lock) #4
  %.b1920.pr = load i1, ptr @rfkill_op_pending, align 1
  br i1 %.b1920.pr, label %entry.if.then.preheader_crit_edge, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

entry.if.then.preheader_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.preheader

if.then.preheader:                                ; preds = %do.condthread-pre-split.if.then.preheader_crit_edge, %entry.if.then.preheader_crit_edge
  br label %if.then

if.then:                                          ; preds = %__rfkill_handle_global_op.exit.if.then_crit_edge, %if.then.preheader
  %0 = load i32, ptr @rfkill_op, align 4
  store i1 false, ptr @rfkill_op_pending, align 1
  store i32 0, ptr @rfkill_sw_pending.0, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @rfkill_op_lock) #4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %0, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rfkill_epo() #4
  br label %__rfkill_handle_global_op.exit

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rfkill_restore_states() #4
  br label %__rfkill_handle_global_op.exit

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rfkill_remove_epo_lock() #4
  br label %__rfkill_handle_global_op.exit

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rfkill_remove_epo_lock() #4
  tail call void @rfkill_switch_all(i32 noundef 0, i1 noundef zeroext false) #4
  tail call void @rfkill_switch_all(i32 noundef 1, i1 noundef zeroext false) #4
  tail call void @rfkill_switch_all(i32 noundef 2, i1 noundef zeroext false) #4
  tail call void @rfkill_switch_all(i32 noundef 3, i1 noundef zeroext false) #4
  tail call void @rfkill_switch_all(i32 noundef 4, i1 noundef zeroext false) #4
  tail call void @rfkill_switch_all(i32 noundef 5, i1 noundef zeroext false) #4
  tail call void @rfkill_switch_all(i32 noundef 6, i1 noundef zeroext false) #4
  tail call void @rfkill_switch_all(i32 noundef 7, i1 noundef zeroext false) #4
  tail call void @rfkill_switch_all(i32 noundef 8, i1 noundef zeroext false) #4
  br label %__rfkill_handle_global_op.exit

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rfkill_epo() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %0) #4
  br label %__rfkill_handle_global_op.exit

__rfkill_handle_global_op.exit:                   ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rfkill_op_lock) #4
  %.b1822 = load i1, ptr @rfkill_op_pending, align 1
  br i1 %.b1822, label %__rfkill_handle_global_op.exit.if.then_crit_edge, label %__rfkill_handle_global_op.exit.if.end3_crit_edge

__rfkill_handle_global_op.exit.if.end3_crit_edge: ; preds = %__rfkill_handle_global_op.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

__rfkill_handle_global_op.exit.if.then_crit_edge: ; preds = %__rfkill_handle_global_op.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end3:                                          ; preds = %__rfkill_handle_global_op.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  %call = tail call zeroext i1 @rfkill_is_epo_lock_active() #4
  br i1 %call, label %if.end3.do.condthread-pre-split_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.do.condthread-pre-split_crit_edge:        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.condthread-pre-split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %shl.i = shl nuw i32 1, %i.028
  %2 = load i32, ptr @rfkill_sw_pending.0, align 4
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %2, %neg.i
  store i32 %and.i, ptr @rfkill_sw_pending.0, align 4
  %3 = and i32 %2, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %if.then8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %4 = load i32, ptr @rfkill_sw_state.0, align 4
  %and.i26 = and i32 %4, %neg.i
  store i32 %and.i26, ptr @rfkill_sw_state.0, align 4
  %5 = and i32 %4, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10 = icmp ne i32 %5, 0
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @rfkill_op_lock) #4
  %call.i = tail call zeroext i1 @rfkill_get_global_sw_state(i32 noundef %i.028) #4
  %spec.select.i = xor i1 %tobool10, %call.i
  tail call void @rfkill_switch_all(i32 noundef %i.028, i1 noundef zeroext %spec.select.i) #4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rfkill_op_lock) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.inc.do.condthread-pre-split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.do.condthread-pre-split_crit_edge:        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.condthread-pre-split

do.condthread-pre-split:                          ; preds = %for.inc.do.condthread-pre-split_crit_edge, %if.end3.do.condthread-pre-split_crit_edge
  %.b21.pr = load i1, ptr @rfkill_op_pending, align 1
  br i1 %.b21.pr, label %do.condthread-pre-split.if.then.preheader_crit_edge, label %do.end

do.condthread-pre-split.if.then.preheader_crit_edge: ; preds = %do.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.preheader

do.end:                                           ; preds = %do.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @rfkill_op_lock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_epo() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_restore_states() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_remove_epo_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_switch_all(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rfkill_get_global_sw_state(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !32, !33, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__param_master_switch_mode, !1, !"__param_master_switch_mode", i1 false, i1 false}
!1 = !{!"../net/rfkill/input.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_master_switch_modetype223, !1, !"__UNIQUE_ID_master_switch_modetype223", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_master_switch_mode224, !4, !"__UNIQUE_ID_master_switch_mode224", i1 false, i1 false}
!4 = !{!"../net/rfkill/input.c", i32 36, i32 1}
!5 = !{ptr @rfkill_master_switch_op, !6, !"rfkill_master_switch_op", i1 false, i1 false}
!6 = !{!"../net/rfkill/input.c", i32 51, i32 29}
!7 = !{ptr @rfkill_last_scheduled, !8, !"rfkill_last_scheduled", i1 false, i1 false}
!8 = !{!"../net/rfkill/input.c", i32 138, i32 22}
!9 = !{ptr @__param_str_master_switch_mode, !1, !"__param_str_master_switch_mode", i1 false, i1 false}
!10 = !{ptr @rfkill_master_switch_mode, !11, !"rfkill_master_switch_mode", i1 false, i1 false}
!11 = !{!"../net/rfkill/input.c", i32 33, i32 38}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/rfkill/input.c", i32 309, i32 10}
!14 = !{ptr @rfkill_handler, !15, !"rfkill_handler", i1 false, i1 false}
!15 = !{!"../net/rfkill/input.c", i32 308, i32 29}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/rfkill/input.c", i32 39, i32 8}
!18 = !{ptr @rfkill_op_lock, !17, !"rfkill_op_lock", i1 false, i1 false}
!19 = distinct !{null, !20, !"rfkill_op_pending", i1 false, i1 false}
!20 = !{!"../net/rfkill/input.c", i32 40, i32 13}
!21 = distinct !{null, !22, !"rfkill_sw_pending", i1 false, i1 false}
!22 = !{!"../net/rfkill/input.c", i32 41, i32 22}
!23 = distinct !{null, !24, !"rfkill_sw_state", i1 false, i1 false}
!24 = !{!"../net/rfkill/input.c", i32 42, i32 22}
!25 = !{ptr @rfkill_op, !26, !"rfkill_op", i1 false, i1 false}
!26 = !{!"../net/rfkill/input.c", i32 52, i32 29}
!27 = !{ptr @rfkill_ids, !28, !"rfkill_ids", i1 false, i1 false}
!28 = !{!"../net/rfkill/input.c", i32 274, i32 37}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/rfkill/input.c", i32 137, i32 8}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rfkill_op_work, !30, !"rfkill_op_work", i1 false, i1 false}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/rfkill/input.c", i32 76, i32 3}
!35 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
