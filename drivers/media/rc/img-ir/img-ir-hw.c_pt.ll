; ModuleID = '/llk/IR_all_yes/drivers/media/rc/img-ir/img-ir-hw.c_pt.bc'
source_filename = "../drivers/media/rc/img-ir/img-ir-hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.img_ir_decoder = type { i64, i32, i32, %struct.img_ir_timings, %struct.img_ir_timings, i32, %struct.img_ir_control, ptr, ptr }
%struct.img_ir_timings = type { %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing, %struct.img_ir_free_timing }
%struct.img_ir_symbol_timing = type { %struct.img_ir_timing_range, %struct.img_ir_timing_range }
%struct.img_ir_timing_range = type { i16, i16 }
%struct.img_ir_free_timing = type { i8, i8, i16 }
%struct.img_ir_control = type { i16, [2 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.img_ir_priv = type { ptr, i32, ptr, ptr, ptr, %struct.spinlock, %struct.img_ir_priv_raw, %struct.img_ir_priv_hw }
%struct.img_ir_priv_raw = type { ptr, %struct.timer_list, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.img_ir_priv_hw = type { [4 x i32], ptr, %struct.notifier_block, %struct.timer_list, %struct.timer_list, ptr, i64, i32, %struct.img_ir_reg_timings, i32, [2 x %struct.img_ir_filter], i32, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.img_ir_reg_timings = type { i32, %struct.img_ir_timing_regvals, %struct.img_ir_timing_regvals }
%struct.img_ir_timing_regvals = type { i32, i32, i32, i32, i32, i32 }
%struct.img_ir_filter = type { i64, i64, i8, i8 }
%struct.img_ir_scancode_req = type { i32, i32, i8 }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rc_scancode_filter = type { i32, i32 }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.clk_notifier_data = type { ptr, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@img_ir_decoders = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @img_ir_nec, ptr @img_ir_jvc, ptr @img_ir_sony, ptr @img_ir_sharp, ptr @img_ir_sanyo, ptr @img_ir_rc5, ptr @img_ir_rc6, ptr null], [32 x i8] zeroinitializer }, align 32
@img_ir_probe_hw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&hw->end_timer)\00", [47 x i8] zeroinitializer }, align 32
@img_ir_probe_hw.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&hw->suspend_timer)\00", [43 x i8] zeroinitializer }, align 32
@img_ir_probe_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1065, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register clock notifier\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"img_ir_probe_hw\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/rc/img-ir/img-ir-hw.c\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@img_ir_probe_hw._entry_ptr = internal global ptr @img_ir_probe_hw._entry, section ".printk_index", align 4
@img_ir_probe_hw._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1074, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot allocate input device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@img_ir_probe_hw._entry_ptr.11 = internal global ptr @img_ir_probe_hw._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc-empty\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IMG Infrared Decoder\00", [43 x i8] zeroinitializer }, align 32
@img_ir_probe_hw._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 1088, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register IR input device\0A\00", [60 x i8] zeroinitializer }, align 32
@img_ir_probe_hw._entry_ptr.16 = internal global ptr @img_ir_probe_hw._entry.14, section ".printk_index", align 4
@img_ir_handle_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.5, ptr @.str.19, i8 0, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"img_ir\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"img_ir_handle_data\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"data (%u bits) = %#llx\0A\00", [40 x i8] zeroinitializer }, align 32
@img_ir_handle_data.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.5, ptr @.str.20, i8 0, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"decoded scan code %#x, toggle %u\0A\00", [62 x i8] zeroinitializer }, align 32
@img_ir_handle_data.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.5, ptr @.str.21, i8 0, i8 -46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"decoded repeat code\0A\00", [43 x i8] zeroinitializer }, align 32
@img_ir_handle_data.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.5, ptr @.str.22, i8 0, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"decoded unexpected repeat code, ignoring\0A\00", [54 x i8] zeroinitializer }, align 32
@img_ir_handle_data.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.5, ptr @.str.23, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"decode failed (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@img_ir_write_timings.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.24, ptr @.str.5, ptr @.str.25, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"img_ir_write_timings\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"timings: ldr=%#x, s=[%#x, %#x, %#x, %#x], ft=%#x\0A\00", [46 x i8] zeroinitializer }, align 32
@img_ir_nec = external dso_local global %struct.img_ir_decoder, align 8
@img_ir_jvc = external dso_local global %struct.img_ir_decoder, align 8
@img_ir_sony = external dso_local global %struct.img_ir_decoder, align 8
@img_ir_sharp = external dso_local global %struct.img_ir_decoder, align 8
@img_ir_sanyo = external dso_local global %struct.img_ir_decoder, align 8
@img_ir_rc5 = external dso_local global %struct.img_ir_decoder, align 8
@img_ir_rc6 = external dso_local global %struct.img_ir_decoder, align 8
@img_ir_write_filter.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.26, ptr @.str.5, ptr @.str.27, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"img_ir_write_filter\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IR filter=%016llx & %016llx\0A\00", [35 x i8] zeroinitializer }, align 32
@img_ir_write_filter.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.26, ptr @.str.5, ptr @.str.28, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IR clearing filter\0A\00", [44 x i8] zeroinitializer }, align 32
@img_ir_decoders_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@img_ir_decoders_preprocessed = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"img_ir_decoders_lock\00", [43 x i8] zeroinitializer }, align 32
@img_ir_change_frequency.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.30, ptr @.str.5, ptr @.str.31, i8 0, i8 -30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"img_ir_change_frequency\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clk changed %lu HZ -> %lu HZ\0A\00", [34 x i8] zeroinitializer }, align 32
@img_ir_set_filter.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.32, ptr @.str.5, ptr @.str.33, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"img_ir_set_filter\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"IR scancode %sfilter=%08x & %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wake \00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@img_ir_set_filter.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.32, ptr @.str.5, ptr @.str.36, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IR raw %sfilter=%016llx & %016llx\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"img_ir_decoders\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 25, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1054, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1055, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1064, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1074, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1079, i32 19 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1081, i32 22 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1088, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 831, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 834, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 841, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 844, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 847, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 389, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 397, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 407, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [21 x i8] c"img_ir_decoders_lock\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [29 x i8] c"img_ir_decoders_preprocessed\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 22, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 904, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 465, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private constant [39 x i8] c"../drivers/media/rc/img-ir/img-ir-hw.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 498, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @img_ir_probe_hw._entry, ptr @img_ir_probe_hw._entry.14, ptr @img_ir_probe_hw._entry.8, ptr @img_ir_probe_hw._entry_ptr, ptr @img_ir_probe_hw._entry_ptr.11, ptr @img_ir_probe_hw._entry_ptr.16, ptr @img_ir_decoders, ptr @img_ir_probe_hw.__key, ptr @.str, ptr @img_ir_probe_hw.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @img_ir_decoders_lock, ptr @img_ir_decoders_preprocessed, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_decoders to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_probe_hw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_probe_hw.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_probe_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_probe_hw._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_probe_hw._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_decoders_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_decoders_preprocessed to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @img_ir_isr_hw(ptr noundef %priv, i32 noundef %irq_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7
  %decoder = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %decoder, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %control = getelementptr inbounds %struct.img_ir_decoder, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %control, align 4
  %bf.lshr = lshr i16 %bf.load, 13
  %bf.clear = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %bf.clear to i32
  %reg_base.i = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 4
  %3 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !84
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %and = and i32 %6, 4160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then4, label %if.end16

if.then4:                                         ; preds = %if.end
  %arrayidx = getelementptr [4 x i32], ptr %hw1, i32 0, i32 %bf.cast
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %and6 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then4.cleanup_crit_edge, label %lor.lhs.false

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then4
  %stopping = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 12
  %9 = ptrtoint ptr %stopping to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %stopping, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %if.end10, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #6, !srcloc !88
  %13 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i55 = getelementptr i8, ptr %14, i32 64
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #6, !srcloc !84
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %quirk_suspend_irq = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 14
  %17 = ptrtoint ptr %quirk_suspend_irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %quirk_suspend_irq, align 4
  %18 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i57 = getelementptr i8, ptr %19, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %and13 = shl i32 %16, 24
  %20 = and i32 %and13, 402653184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %20) #6, !srcloc !88
  %suspend_timer = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %21, 1
  %call15 = tail call i32 @mod_timer(ptr noundef %suspend_timer, i32 noundef %add) #6
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and17 = and i32 %6, -4161
  %22 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i59 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %and17) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %24) #6, !srcloc !88
  %and18 = and i32 %6, 63
  %arrayidx20 = getelementptr [4 x i32], ptr %hw1, i32 0, i32 %bf.cast
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx20, align 4
  %and21 = lshr i32 %26, 1
  %and21.lobit = and i32 %and21, 1
  %spec.select = add nuw nsw i32 %and21.lobit, %and18
  %27 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i61 = getelementptr i8, ptr %28, i32 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %30 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i63 = getelementptr i8, ptr %31, i32 12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %33 = zext i32 %32 to i64
  %34 = zext i32 %29 to i64
  %35 = shl nuw i64 %34, 32
  %36 = or i64 %35, %33
  %37 = tail call i64 @llvm.bswap.i64(i64 %36)
  tail call fastcc void @img_ir_handle_data(ptr noundef %priv, i32 noundef %spec.select, i64 noundef %37)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end10, %lor.lhs.false.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @img_ir_handle_data(ptr noundef %priv, i32 noundef %len, i64 noundef %raw) unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.img_ir_scancode_req, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %decoder = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %decoder, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %request) #6
  %2 = getelementptr inbounds i8, ptr %request, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4
  %4 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %request, align 4
  %toggle = getelementptr inbounds %struct.img_ir_scancode_req, ptr %request, i32 0, i32 2
  %5 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %toggle, align 4
  %scancode = getelementptr inbounds %struct.img_ir_decoder, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %scancode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scancode, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %enabled_protocols = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 6
  %8 = ptrtoint ptr %enabled_protocols to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %enabled_protocols, align 8
  %call = call i32 %7(i32 noundef %len, i64 noundef %raw, i64 noundef %9, ptr noundef nonnull %request) #6
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %len)
  %cmp = icmp ugt i32 %len, 31
  %conv = trunc i64 %raw to i32
  br i1 %cmp, label %if.then3, label %if.then8

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %scancode4 = getelementptr inbounds %struct.img_ir_scancode_req, ptr %request, i32 0, i32 1
  %10 = ptrtoint ptr %scancode4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %scancode4, align 4
  br label %do.body

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %notmask = shl nsw i32 -1, %len
  %sub = xor i32 %notmask, -1
  %and = and i32 %conv, %sub
  %scancode10 = getelementptr inbounds %struct.img_ir_scancode_req, ptr %request, i32 0, i32 1
  %11 = ptrtoint ptr %scancode10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and, ptr %scancode10, align 4
  br label %do.body

do.body:                                          ; preds = %if.then8, %if.then3, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %if.then3 ], [ 0, %if.then8 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_ir_handle_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_ir_handle_data, %if.then17)) #6
          to label %do.end [label %if.then17], !srcloc !89

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_ir_handle_data.__UNIQUE_ID_ddebug237, ptr noundef %13, ptr noundef nonnull @.str.19, i32 noundef %len, i64 noundef %raw) #6
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %14 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ret.0, label %do.body91 [
    i32 0, label %do.body22
    i32 1, label %if.then49
  ]

do.body22:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_ir_handle_data.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_ir_handle_data, %if.then34)) #6
          to label %do.end41 [label %if.then34], !srcloc !89

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %scancode36 = getelementptr inbounds %struct.img_ir_scancode_req, ptr %request, i32 0, i32 1
  %17 = ptrtoint ptr %scancode36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %scancode36, align 4
  %19 = ptrtoint ptr %toggle to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %toggle, align 4
  %conv38 = zext i8 %20 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_ir_handle_data.__UNIQUE_ID_ddebug238, ptr noundef %16, ptr noundef nonnull @.str.20, i32 noundef %18, i32 noundef %conv38) #6
  br label %do.end41

do.end41:                                         ; preds = %if.then34, %do.body22
  %rdev = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rdev, align 8
  %23 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %request, align 4
  %scancode43 = getelementptr inbounds %struct.img_ir_scancode_req, ptr %request, i32 0, i32 1
  %25 = ptrtoint ptr %scancode43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scancode43, align 4
  %conv44 = zext i32 %26 to i64
  %27 = ptrtoint ptr %toggle to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %toggle, align 4
  call void @rc_keydown(ptr noundef %22, i32 noundef %24, i64 noundef %conv44, i8 noundef zeroext %28) #6
  %mode.i = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 11
  %29 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i161 = icmp eq i32 %30, 1
  br i1 %cmp.i161, label %if.then.i162, label %do.end41.if.end109_crit_edge

do.end41.if.end109_crit_edge:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.then.i162:                                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  %reg_base.i.i = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 4
  %31 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_base.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #6, !srcloc !88
  %33 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %mode.i, align 8
  %reg_timings.i = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 8
  %timings.i = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 8, i32 1
  call fastcc void @img_ir_write_timings(ptr noundef %priv, ptr noundef %timings.i, i32 noundef 0) #6
  %34 = ptrtoint ptr %reg_timings.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg_timings.i, align 4
  %36 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_base.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  call void @arm_heavy_mb() #6
  %38 = call i32 @llvm.bswap.i32(i32 %35) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %38) #6, !srcloc !88
  br label %if.end109

if.then49:                                        ; preds = %do.end
  %mode = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 11
  %39 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp50 = icmp eq i32 %40, 1
  br i1 %cmp50, label %do.body53, label %do.body72

do.body53:                                        ; preds = %if.then49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_ir_handle_data.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_ir_handle_data, %if.then65)) #6
          to label %do.end69 [label %if.then65], !srcloc !89

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_ir_handle_data.__UNIQUE_ID_ddebug239, ptr noundef %42, ptr noundef nonnull @.str.21) #6
  br label %do.end69

do.end69:                                         ; preds = %if.then65, %do.body53
  %rdev70 = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 1
  %43 = ptrtoint ptr %rdev70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rdev70, align 8
  call void @rc_repeat(ptr noundef %44) #6
  br label %if.end109

do.body72:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_ir_handle_data.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_ir_handle_data, %if.then84)) #6
          to label %if.end109 [label %if.then84], !srcloc !89

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_ir_handle_data.__UNIQUE_ID_ddebug240, ptr noundef %46, ptr noundef nonnull @.str.22) #6
  br label %if.end109

do.body91:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_ir_handle_data.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_ir_handle_data, %if.then103)) #6
          to label %cleanup [label %if.then103], !srcloc !89

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_ir_handle_data.__UNIQUE_ID_ddebug241, ptr noundef %48, ptr noundef nonnull @.str.23, i32 noundef %ret.0) #6
  br label %cleanup

if.end109:                                        ; preds = %if.then84, %do.body72, %do.end69, %if.then.i162, %do.end41.if.end109_crit_edge
  %repeat = getelementptr inbounds %struct.img_ir_decoder, ptr %1, i32 0, i32 5
  %49 = ptrtoint ptr %repeat to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %repeat, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool110.not = icmp eq i32 %50, 0
  br i1 %tobool110.not, label %if.end109.cleanup_crit_edge, label %land.lhs.true

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end109
  %stopping = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 12
  %51 = ptrtoint ptr %stopping to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %stopping, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool111.not = icmp eq i8 %52, 0
  br i1 %tobool111.not, label %if.then112, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then112:                                       ; preds = %land.lhs.true
  %mode.i164 = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 11
  %53 = ptrtoint ptr %mode.i164 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mode.i164, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i165 = icmp eq i32 %54, 0
  br i1 %cmp.i165, label %if.then.i168, label %if.then112.img_ir_begin_repeat.exit_crit_edge

if.then112.img_ir_begin_repeat.exit_crit_edge:    ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_begin_repeat.exit

if.then.i168:                                     ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  %reg_base.i.i166 = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 4
  %55 = ptrtoint ptr %reg_base.i.i166 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_base.i.i166, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 0) #6, !srcloc !88
  %57 = ptrtoint ptr %mode.i164 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %mode.i164, align 8
  %reg_timings.i167 = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 8
  %rtimings.i = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 8, i32 2
  call fastcc void @img_ir_write_timings(ptr noundef %priv, ptr noundef %rtimings.i, i32 noundef 0) #6
  %58 = ptrtoint ptr %reg_timings.i167 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reg_timings.i167, align 4
  %60 = ptrtoint ptr %reg_base.i.i166 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_base.i.i166, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  call void @arm_heavy_mb() #6
  %62 = call i32 @llvm.bswap.i32(i32 %59) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %62) #6, !srcloc !88
  br label %img_ir_begin_repeat.exit

img_ir_begin_repeat.exit:                         ; preds = %if.then.i168, %if.then112.img_ir_begin_repeat.exit_crit_edge
  %63 = ptrtoint ptr %repeat to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %repeat, align 8
  %end_timer = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %shr = lshr i32 %64, 3
  %add = add i32 %shr, %64
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %add) #6
  %add116 = add i32 %call2.i, %65
  %call117 = call i32 @mod_timer(ptr noundef %end_timer, i32 noundef %add116) #6
  br label %cleanup

cleanup:                                          ; preds = %img_ir_begin_repeat.exit, %land.lhs.true.cleanup_crit_edge, %if.end109.cleanup_crit_edge, %if.then103, %do.body91
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %request) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @img_ir_setup_hw(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rdev = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup4_crit_edge, label %for.cond.preheader

entry.cleanup4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup4

for.cond.preheader:                               ; preds = %entry
  %hw.i = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_nec, i32 0, i32 6) to i32))
  %bf.load.i = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_nec, i32 0, i32 6), align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 13
  %bf.clear.i = and i16 %bf.lshr.i, 3
  %bf.cast.i = zext i16 %bf.clear.i to i32
  %arrayidx.i = getelementptr [4 x i32], ptr %hw.i, i32 0, i32 %bf.cast.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.if.then2_crit_edge, label %for.cond

for.cond.preheader.if.then2_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

for.cond:                                         ; preds = %for.cond.preheader
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_jvc, i32 0, i32 6) to i32))
  %bf.load.i.1 = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_jvc, i32 0, i32 6), align 4
  %bf.lshr.i.1 = lshr i16 %bf.load.i.1, 13
  %bf.clear.i.1 = and i16 %bf.lshr.i.1, 3
  %bf.cast.i.1 = zext i16 %bf.clear.i.1 to i32
  %arrayidx.i.1 = getelementptr [4 x i32], ptr %hw.i, i32 0, i32 %bf.cast.i.1
  %4 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.1, align 4
  %and.i.1 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.not.i.1, label %for.cond.if.then2_crit_edge, label %for.cond.1

for.cond.if.then2_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

for.cond.1:                                       ; preds = %for.cond
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_sony, i32 0, i32 6) to i32))
  %bf.load.i.2 = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_sony, i32 0, i32 6), align 4
  %bf.lshr.i.2 = lshr i16 %bf.load.i.2, 13
  %bf.clear.i.2 = and i16 %bf.lshr.i.2, 3
  %bf.cast.i.2 = zext i16 %bf.clear.i.2 to i32
  %arrayidx.i.2 = getelementptr [4 x i32], ptr %hw.i, i32 0, i32 %bf.cast.i.2
  %6 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.2, align 4
  %and.i.2 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool.not.i.2 = icmp eq i32 %and.i.2, 0
  br i1 %tobool.not.i.2, label %for.cond.1.if.then2_crit_edge, label %for.cond.2

for.cond.1.if.then2_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

for.cond.2:                                       ; preds = %for.cond.1
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_sharp, i32 0, i32 6) to i32))
  %bf.load.i.3 = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_sharp, i32 0, i32 6), align 4
  %bf.lshr.i.3 = lshr i16 %bf.load.i.3, 13
  %bf.clear.i.3 = and i16 %bf.lshr.i.3, 3
  %bf.cast.i.3 = zext i16 %bf.clear.i.3 to i32
  %arrayidx.i.3 = getelementptr [4 x i32], ptr %hw.i, i32 0, i32 %bf.cast.i.3
  %8 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.3, align 4
  %and.i.3 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %tobool.not.i.3 = icmp eq i32 %and.i.3, 0
  br i1 %tobool.not.i.3, label %for.cond.2.if.then2_crit_edge, label %for.cond.3

for.cond.2.if.then2_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

for.cond.3:                                       ; preds = %for.cond.2
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_sanyo, i32 0, i32 6) to i32))
  %bf.load.i.4 = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_sanyo, i32 0, i32 6), align 4
  %bf.lshr.i.4 = lshr i16 %bf.load.i.4, 13
  %bf.clear.i.4 = and i16 %bf.lshr.i.4, 3
  %bf.cast.i.4 = zext i16 %bf.clear.i.4 to i32
  %arrayidx.i.4 = getelementptr [4 x i32], ptr %hw.i, i32 0, i32 %bf.cast.i.4
  %10 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.4, align 4
  %and.i.4 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.4)
  %tobool.not.i.4 = icmp eq i32 %and.i.4, 0
  br i1 %tobool.not.i.4, label %for.cond.3.if.then2_crit_edge, label %for.cond.4

for.cond.3.if.then2_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

for.cond.4:                                       ; preds = %for.cond.3
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_rc5, i32 0, i32 6) to i32))
  %bf.load.i.5 = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_rc5, i32 0, i32 6), align 4
  %bf.lshr.i.5 = lshr i16 %bf.load.i.5, 13
  %bf.clear.i.5 = and i16 %bf.lshr.i.5, 3
  %bf.cast.i.5 = zext i16 %bf.clear.i.5 to i32
  %arrayidx.i.5 = getelementptr [4 x i32], ptr %hw.i, i32 0, i32 %bf.cast.i.5
  %12 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.5, align 4
  %and.i.5 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.5)
  %tobool.not.i.5 = icmp eq i32 %and.i.5, 0
  br i1 %tobool.not.i.5, label %for.cond.4.if.then2_crit_edge, label %for.cond.5

for.cond.4.if.then2_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

for.cond.5:                                       ; preds = %for.cond.4
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_rc6, i32 0, i32 6) to i32))
  %bf.load.i.6 = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_rc6, i32 0, i32 6), align 4
  %bf.lshr.i.6 = lshr i16 %bf.load.i.6, 13
  %bf.clear.i.6 = and i16 %bf.lshr.i.6, 3
  %bf.cast.i.6 = zext i16 %bf.clear.i.6 to i32
  %arrayidx.i.6 = getelementptr [4 x i32], ptr %hw.i, i32 0, i32 %bf.cast.i.6
  %14 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.6, align 4
  %and.i.6 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.6)
  %tobool.not.i.6 = icmp eq i32 %and.i.6, 0
  br i1 %tobool.not.i.6, label %for.cond.5.if.then2_crit_edge, label %for.cond.6

for.cond.5.if.then2_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

for.cond.6:                                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @img_ir_set_decoder(ptr noundef %priv, ptr noundef null, i64 noundef 0)
  br label %cleanup4

if.then2:                                         ; preds = %for.cond.5.if.then2_crit_edge, %for.cond.4.if.then2_crit_edge, %for.cond.3.if.then2_crit_edge, %for.cond.2.if.then2_crit_edge, %for.cond.1.if.then2_crit_edge, %for.cond.if.then2_crit_edge, %for.cond.preheader.if.then2_crit_edge
  %.lcssa = phi ptr [ @img_ir_nec, %for.cond.preheader.if.then2_crit_edge ], [ @img_ir_jvc, %for.cond.if.then2_crit_edge ], [ @img_ir_sony, %for.cond.1.if.then2_crit_edge ], [ @img_ir_sharp, %for.cond.2.if.then2_crit_edge ], [ @img_ir_sanyo, %for.cond.3.if.then2_crit_edge ], [ @img_ir_rc5, %for.cond.4.if.then2_crit_edge ], [ @img_ir_rc6, %for.cond.5.if.then2_crit_edge ]
  %16 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %.lcssa, align 8
  %lock.i = getelementptr inbounds %struct.rc_dev, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %enabled_protocols.i = getelementptr inbounds %struct.rc_dev, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %enabled_protocols.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %enabled_protocols.i, align 8
  %allowed_wakeup_protocols.i = getelementptr inbounds %struct.rc_dev, ptr %1, i32 0, i32 18
  %19 = ptrtoint ptr %allowed_wakeup_protocols.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %17, ptr %allowed_wakeup_protocols.i, align 8
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  tail call fastcc void @img_ir_set_decoder(ptr noundef %priv, ptr noundef nonnull %.lcssa, i64 noundef 0)
  br label %cleanup4

cleanup4:                                         ; preds = %if.then2, %for.cond.6, %entry.cleanup4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @img_ir_set_decoder(ptr noundef %priv, ptr noundef %decoder, i64 noundef %proto) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rdev2 = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %rdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev2, align 8
  %lock = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %stopping = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 12
  %2 = ptrtoint ptr %stopping to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %stopping, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  %end_timer = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 3
  %call = tail call i32 @del_timer_sync(ptr noundef %end_timer) #6
  %suspend_timer = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 4
  %call4 = tail call i32 @del_timer_sync(ptr noundef %suspend_timer) #6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %3 = ptrtoint ptr %stopping to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %stopping, align 4
  %reg_base.i = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 4
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #6, !srcloc !88
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %and = and i32 %8, 402653184
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i63 = getelementptr i8, ptr %10, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %and) #6, !srcloc !88
  %11 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i65 = getelementptr i8, ptr %12, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 -419430400) #6, !srcloc !88
  %13 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i67 = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #6, !srcloc !84
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %and9 = and i32 %16, 4160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and10 = and i32 %16, -4161
  %17 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i69 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %and10) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %19) #6, !srcloc !88
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i71 = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %23 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i73 = getelementptr i8, ptr %24, i32 12
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %mode = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 11
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %mode, align 8
  %scancode_wakeup_filter = getelementptr inbounds %struct.rc_dev, ptr %1, i32 0, i32 21
  %27 = ptrtoint ptr %scancode_wakeup_filter to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %scancode_wakeup_filter, align 4
  %mask = getelementptr inbounds %struct.rc_dev, ptr %1, i32 0, i32 21, i32 1
  %28 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %mask, align 4
  %wakeup_protocol = getelementptr inbounds %struct.rc_dev, ptr %1, i32 0, i32 19
  %29 = ptrtoint ptr %wakeup_protocol to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %wakeup_protocol, align 8
  %30 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 64
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %flags2.i = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 9
  %33 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags2.i, align 8
  %and3.i = and i32 %34, -2
  store i32 %and3.i, ptr %flags2.i, align 8
  %35 = and i32 %32, -117440513
  %36 = or i32 %35, 50331648
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_ir_write_filter.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_ir_set_decoder, %if.then25.i)) #6
          to label %img_ir_write_filter.exit [label %if.then25.i], !srcloc !89

if.then25.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_ir_write_filter.__UNIQUE_ID_ddebug234, ptr noundef %38, ptr noundef nonnull @.str.28) #6
  br label %img_ir_write_filter.exit

img_ir_write_filter.exit:                         ; preds = %if.then25.i, %if.end
  %39 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i53.i = getelementptr i8, ptr %40, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 0) #6, !srcloc !88
  %41 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i55.i = getelementptr i8, ptr %42, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 0) #6, !srcloc !88
  %43 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i19.i = getelementptr i8, ptr %44, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 50331648) #6, !srcloc !88
  %45 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %46, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %36) #6, !srcloc !88
  %47 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags2.i, align 8
  %and.i = and i32 %48, -3
  store i32 %and.i, ptr %flags2.i, align 8
  %enabled_protocols = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 6
  %49 = ptrtoint ptr %enabled_protocols to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %enabled_protocols, align 8
  %decoder14 = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 5
  %50 = ptrtoint ptr %decoder14 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %decoder, ptr %decoder14, align 8
  %tobool15.not = icmp eq ptr %decoder, null
  br i1 %tobool15.not, label %img_ir_write_filter.exit.unlock_crit_edge, label %if.end17

img_ir_write_filter.exit.unlock_crit_edge:        ; preds = %img_ir_write_filter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end17:                                         ; preds = %img_ir_write_filter.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %proto)
  %tobool18.not = icmp eq i64 %proto, 0
  br i1 %tobool18.not, label %if.then19, label %if.end17.if.end20_crit_edge

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %decoder to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %decoder, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  %proto.addr.0 = phi i64 [ %proto, %if.end17.if.end20_crit_edge ], [ %52, %if.then19 ]
  %53 = ptrtoint ptr %enabled_protocols to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %proto.addr.0, ptr %enabled_protocols, align 8
  %reg_timings = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 8
  %clk_hz = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 7
  %54 = ptrtoint ptr %clk_hz to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %clk_hz, align 8
  tail call fastcc void @img_ir_decoder_convert(ptr noundef nonnull %decoder, ptr noundef %reg_timings, i32 noundef %55)
  %timings = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 8, i32 1
  tail call fastcc void @img_ir_write_timings(ptr noundef %priv, ptr noundef %timings, i32 noundef 0)
  %56 = ptrtoint ptr %reg_timings to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %reg_timings, align 4
  %58 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %60 = tail call i32 @llvm.bswap.i32(i32 %57) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %60) #6, !srcloc !88
  br label %unlock

unlock:                                           ; preds = %if.end20, %img_ir_write_filter.exit.unlock_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @img_ir_probe_hw(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @img_ir_decoders_lock) #6
  %.b4.i = load i1, ptr @img_ir_decoders_preprocessed, align 1
  br i1 %.b4.i, label %entry.img_ir_init_decoders.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.img_ir_init_decoders.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_init_decoders.exit

for.body.i:                                       ; preds = %img_ir_decoder_preprocess.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %0 = phi ptr [ %118, %img_ir_decoder_preprocess.exit.i.for.body.i_crit_edge ], [ @img_ir_nec, %entry.for.body.i_crit_edge ]
  %decp.05.i = phi ptr [ %incdec.ptr.i, %img_ir_decoder_preprocess.exit.i.for.body.i_crit_edge ], [ @img_ir_decoders, %entry.for.body.i_crit_edge ]
  %tolerance.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %tolerance.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tolerance.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.body.i.if.end.i.i_crit_edge

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %tolerance.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 10, ptr %tolerance.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.if.end.i.i_crit_edge
  %4 = ptrtoint ptr %tolerance.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tolerance.i.i, align 8
  %mul.i.i = shl i32 %5, 7
  %div.i.i = udiv i32 %mul.i.i, 100
  store i32 %div.i.i, ptr %tolerance.i.i, align 8
  %timings.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3
  %unit.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 2
  %6 = ptrtoint ptr %unit.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %unit.i.i, align 4
  tail call fastcc void @img_ir_timings_preprocess(ptr noundef %timings.i.i, i32 noundef %7) #6
  %repeat.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 5
  %8 = ptrtoint ptr %repeat.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %repeat.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.img_ir_decoder_preprocess.exit.i_crit_edge, label %if.then5.i.i

if.end.i.i.img_ir_decoder_preprocess.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_decoder_preprocess.exit.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  %rtimings.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4
  %10 = ptrtoint ptr %unit.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %unit.i.i, align 4
  tail call fastcc void @img_ir_timings_preprocess(ptr noundef %rtimings.i.i, i32 noundef %11) #6
  %12 = ptrtoint ptr %rtimings.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rtimings.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i.i.i.i.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.then5.i.i.if.end.i.i.i.i.i_crit_edge

if.then5.i.i.if.end.i.i.i.i.i_crit_edge:          ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %timings.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %timings.i.i, align 2
  %16 = ptrtoint ptr %rtimings.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %rtimings.i.i, align 2
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.i, %if.then5.i.i.if.end.i.i.i.i.i_crit_edge
  %max.i.i.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %max.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %max.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool3.not.i.i.i.i.i = icmp eq i16 %18, 0
  br i1 %tobool3.not.i.i.i.i.i, label %if.then4.i.i.i.i.i, label %if.end.i.i.i.i.i.img_ir_timing_defaults.exit.i.i.i.i_crit_edge

if.end.i.i.i.i.i.img_ir_timing_defaults.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_timing_defaults.exit.i.i.i.i

if.then4.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %max5.i.i.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %max5.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %max5.i.i.i.i.i, align 2
  %21 = ptrtoint ptr %max.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %max.i.i.i.i.i, align 2
  br label %img_ir_timing_defaults.exit.i.i.i.i

img_ir_timing_defaults.exit.i.i.i.i:              ; preds = %if.then4.i.i.i.i.i, %if.end.i.i.i.i.i.img_ir_timing_defaults.exit.i.i.i.i_crit_edge
  %space.i.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 0, i32 1
  %22 = ptrtoint ptr %space.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %space.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i5.i.i.i.i = icmp eq i16 %23, 0
  br i1 %tobool.not.i5.i.i.i.i, label %if.then.i6.i.i.i.i, label %img_ir_timing_defaults.exit.i.i.i.i.if.end.i9.i.i.i.i_crit_edge

img_ir_timing_defaults.exit.i.i.i.i.if.end.i9.i.i.i.i_crit_edge: ; preds = %img_ir_timing_defaults.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i9.i.i.i.i

if.then.i6.i.i.i.i:                               ; preds = %img_ir_timing_defaults.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %space2.i.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 0, i32 1
  %24 = ptrtoint ptr %space2.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %space2.i.i.i.i, align 2
  %26 = ptrtoint ptr %space.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %space.i.i.i.i, align 2
  br label %if.end.i9.i.i.i.i

if.end.i9.i.i.i.i:                                ; preds = %if.then.i6.i.i.i.i, %img_ir_timing_defaults.exit.i.i.i.i.if.end.i9.i.i.i.i_crit_edge
  %max.i7.i.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %max.i7.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %max.i7.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool3.not.i8.i.i.i.i = icmp eq i16 %28, 0
  br i1 %tobool3.not.i8.i.i.i.i, label %if.then4.i11.i.i.i.i, label %if.end.i9.i.i.i.i.img_ir_symbol_timing_defaults.exit.i.i.i_crit_edge

if.end.i9.i.i.i.i.img_ir_symbol_timing_defaults.exit.i.i.i_crit_edge: ; preds = %if.end.i9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_symbol_timing_defaults.exit.i.i.i

if.then4.i11.i.i.i.i:                             ; preds = %if.end.i9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %max5.i10.i.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %max5.i10.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %max5.i10.i.i.i.i, align 2
  %31 = ptrtoint ptr %max.i7.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %max.i7.i.i.i.i, align 2
  br label %img_ir_symbol_timing_defaults.exit.i.i.i

img_ir_symbol_timing_defaults.exit.i.i.i:         ; preds = %if.then4.i11.i.i.i.i, %if.end.i9.i.i.i.i.img_ir_symbol_timing_defaults.exit.i.i.i_crit_edge
  %s00.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %s00.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %s00.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not.i.i21.i.i.i = icmp eq i16 %33, 0
  br i1 %tobool.not.i.i21.i.i.i, label %if.then.i.i22.i.i.i, label %img_ir_symbol_timing_defaults.exit.i.i.i.if.end.i.i25.i.i.i_crit_edge

img_ir_symbol_timing_defaults.exit.i.i.i.if.end.i.i25.i.i.i_crit_edge: ; preds = %img_ir_symbol_timing_defaults.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i25.i.i.i

if.then.i.i22.i.i.i:                              ; preds = %img_ir_symbol_timing_defaults.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %s002.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %s002.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %s002.i.i.i, align 2
  %36 = ptrtoint ptr %s00.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %s00.i.i.i, align 2
  br label %if.end.i.i25.i.i.i

if.end.i.i25.i.i.i:                               ; preds = %if.then.i.i22.i.i.i, %img_ir_symbol_timing_defaults.exit.i.i.i.if.end.i.i25.i.i.i_crit_edge
  %max.i.i23.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %max.i.i23.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %max.i.i23.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool3.not.i.i24.i.i.i = icmp eq i16 %38, 0
  br i1 %tobool3.not.i.i24.i.i.i, label %if.then4.i.i27.i.i.i, label %if.end.i.i25.i.i.i.img_ir_timing_defaults.exit.i30.i.i.i_crit_edge

if.end.i.i25.i.i.i.img_ir_timing_defaults.exit.i30.i.i.i_crit_edge: ; preds = %if.end.i.i25.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_timing_defaults.exit.i30.i.i.i

if.then4.i.i27.i.i.i:                             ; preds = %if.end.i.i25.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %max5.i.i26.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %max5.i.i26.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %max5.i.i26.i.i.i, align 2
  %41 = ptrtoint ptr %max.i.i23.i.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %max.i.i23.i.i.i, align 2
  br label %img_ir_timing_defaults.exit.i30.i.i.i

img_ir_timing_defaults.exit.i30.i.i.i:            ; preds = %if.then4.i.i27.i.i.i, %if.end.i.i25.i.i.i.img_ir_timing_defaults.exit.i30.i.i.i_crit_edge
  %space.i28.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 1, i32 1
  %42 = ptrtoint ptr %space.i28.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %space.i28.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not.i5.i29.i.i.i = icmp eq i16 %43, 0
  br i1 %tobool.not.i5.i29.i.i.i, label %if.then.i6.i32.i.i.i, label %img_ir_timing_defaults.exit.i30.i.i.i.if.end.i9.i35.i.i.i_crit_edge

img_ir_timing_defaults.exit.i30.i.i.i.if.end.i9.i35.i.i.i_crit_edge: ; preds = %img_ir_timing_defaults.exit.i30.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i9.i35.i.i.i

if.then.i6.i32.i.i.i:                             ; preds = %img_ir_timing_defaults.exit.i30.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %space2.i31.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 1, i32 1
  %44 = ptrtoint ptr %space2.i31.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %space2.i31.i.i.i, align 2
  %46 = ptrtoint ptr %space.i28.i.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %space.i28.i.i.i, align 2
  br label %if.end.i9.i35.i.i.i

if.end.i9.i35.i.i.i:                              ; preds = %if.then.i6.i32.i.i.i, %img_ir_timing_defaults.exit.i30.i.i.i.if.end.i9.i35.i.i.i_crit_edge
  %max.i7.i33.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 1, i32 1, i32 1
  %47 = ptrtoint ptr %max.i7.i33.i.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %max.i7.i33.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool3.not.i8.i34.i.i.i = icmp eq i16 %48, 0
  br i1 %tobool3.not.i8.i34.i.i.i, label %if.then4.i11.i37.i.i.i, label %if.end.i9.i35.i.i.i.img_ir_symbol_timing_defaults.exit38.i.i.i_crit_edge

if.end.i9.i35.i.i.i.img_ir_symbol_timing_defaults.exit38.i.i.i_crit_edge: ; preds = %if.end.i9.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_symbol_timing_defaults.exit38.i.i.i

if.then4.i11.i37.i.i.i:                           ; preds = %if.end.i9.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %max5.i10.i36.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 1, i32 1, i32 1
  %49 = ptrtoint ptr %max5.i10.i36.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %max5.i10.i36.i.i.i, align 2
  %51 = ptrtoint ptr %max.i7.i33.i.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %max.i7.i33.i.i.i, align 2
  br label %img_ir_symbol_timing_defaults.exit38.i.i.i

img_ir_symbol_timing_defaults.exit38.i.i.i:       ; preds = %if.then4.i11.i37.i.i.i, %if.end.i9.i35.i.i.i.img_ir_symbol_timing_defaults.exit38.i.i.i_crit_edge
  %s01.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 2
  %52 = ptrtoint ptr %s01.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %s01.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool.not.i.i39.i.i.i = icmp eq i16 %53, 0
  br i1 %tobool.not.i.i39.i.i.i, label %if.then.i.i40.i.i.i, label %img_ir_symbol_timing_defaults.exit38.i.i.i.if.end.i.i43.i.i.i_crit_edge

img_ir_symbol_timing_defaults.exit38.i.i.i.if.end.i.i43.i.i.i_crit_edge: ; preds = %img_ir_symbol_timing_defaults.exit38.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i43.i.i.i

if.then.i.i40.i.i.i:                              ; preds = %img_ir_symbol_timing_defaults.exit38.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %s013.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 2
  %54 = ptrtoint ptr %s013.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %s013.i.i.i, align 2
  %56 = ptrtoint ptr %s01.i.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %s01.i.i.i, align 2
  br label %if.end.i.i43.i.i.i

if.end.i.i43.i.i.i:                               ; preds = %if.then.i.i40.i.i.i, %img_ir_symbol_timing_defaults.exit38.i.i.i.if.end.i.i43.i.i.i_crit_edge
  %max.i.i41.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 2, i32 0, i32 1
  %57 = ptrtoint ptr %max.i.i41.i.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %max.i.i41.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool3.not.i.i42.i.i.i = icmp eq i16 %58, 0
  br i1 %tobool3.not.i.i42.i.i.i, label %if.then4.i.i45.i.i.i, label %if.end.i.i43.i.i.i.img_ir_timing_defaults.exit.i48.i.i.i_crit_edge

if.end.i.i43.i.i.i.img_ir_timing_defaults.exit.i48.i.i.i_crit_edge: ; preds = %if.end.i.i43.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_timing_defaults.exit.i48.i.i.i

if.then4.i.i45.i.i.i:                             ; preds = %if.end.i.i43.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %max5.i.i44.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 2, i32 0, i32 1
  %59 = ptrtoint ptr %max5.i.i44.i.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %max5.i.i44.i.i.i, align 2
  %61 = ptrtoint ptr %max.i.i41.i.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %max.i.i41.i.i.i, align 2
  br label %img_ir_timing_defaults.exit.i48.i.i.i

img_ir_timing_defaults.exit.i48.i.i.i:            ; preds = %if.then4.i.i45.i.i.i, %if.end.i.i43.i.i.i.img_ir_timing_defaults.exit.i48.i.i.i_crit_edge
  %space.i46.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 2, i32 1
  %62 = ptrtoint ptr %space.i46.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %space.i46.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool.not.i5.i47.i.i.i = icmp eq i16 %63, 0
  br i1 %tobool.not.i5.i47.i.i.i, label %if.then.i6.i50.i.i.i, label %img_ir_timing_defaults.exit.i48.i.i.i.if.end.i9.i53.i.i.i_crit_edge

img_ir_timing_defaults.exit.i48.i.i.i.if.end.i9.i53.i.i.i_crit_edge: ; preds = %img_ir_timing_defaults.exit.i48.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i9.i53.i.i.i

if.then.i6.i50.i.i.i:                             ; preds = %img_ir_timing_defaults.exit.i48.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %space2.i49.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 2, i32 1
  %64 = ptrtoint ptr %space2.i49.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %space2.i49.i.i.i, align 2
  %66 = ptrtoint ptr %space.i46.i.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %space.i46.i.i.i, align 2
  br label %if.end.i9.i53.i.i.i

if.end.i9.i53.i.i.i:                              ; preds = %if.then.i6.i50.i.i.i, %img_ir_timing_defaults.exit.i48.i.i.i.if.end.i9.i53.i.i.i_crit_edge
  %max.i7.i51.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 2, i32 1, i32 1
  %67 = ptrtoint ptr %max.i7.i51.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %max.i7.i51.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool3.not.i8.i52.i.i.i = icmp eq i16 %68, 0
  br i1 %tobool3.not.i8.i52.i.i.i, label %if.then4.i11.i55.i.i.i, label %if.end.i9.i53.i.i.i.img_ir_symbol_timing_defaults.exit56.i.i.i_crit_edge

if.end.i9.i53.i.i.i.img_ir_symbol_timing_defaults.exit56.i.i.i_crit_edge: ; preds = %if.end.i9.i53.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_symbol_timing_defaults.exit56.i.i.i

if.then4.i11.i55.i.i.i:                           ; preds = %if.end.i9.i53.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %max5.i10.i54.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 2, i32 1, i32 1
  %69 = ptrtoint ptr %max5.i10.i54.i.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %max5.i10.i54.i.i.i, align 2
  %71 = ptrtoint ptr %max.i7.i51.i.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %max.i7.i51.i.i.i, align 2
  br label %img_ir_symbol_timing_defaults.exit56.i.i.i

img_ir_symbol_timing_defaults.exit56.i.i.i:       ; preds = %if.then4.i11.i55.i.i.i, %if.end.i9.i53.i.i.i.img_ir_symbol_timing_defaults.exit56.i.i.i_crit_edge
  %s10.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 3
  %72 = ptrtoint ptr %s10.i.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %s10.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool.not.i.i57.i.i.i = icmp eq i16 %73, 0
  br i1 %tobool.not.i.i57.i.i.i, label %if.then.i.i58.i.i.i, label %img_ir_symbol_timing_defaults.exit56.i.i.i.if.end.i.i61.i.i.i_crit_edge

img_ir_symbol_timing_defaults.exit56.i.i.i.if.end.i.i61.i.i.i_crit_edge: ; preds = %img_ir_symbol_timing_defaults.exit56.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i61.i.i.i

if.then.i.i58.i.i.i:                              ; preds = %img_ir_symbol_timing_defaults.exit56.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %s104.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 3
  %74 = ptrtoint ptr %s104.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %s104.i.i.i, align 2
  %76 = ptrtoint ptr %s10.i.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %s10.i.i.i, align 2
  br label %if.end.i.i61.i.i.i

if.end.i.i61.i.i.i:                               ; preds = %if.then.i.i58.i.i.i, %img_ir_symbol_timing_defaults.exit56.i.i.i.if.end.i.i61.i.i.i_crit_edge
  %max.i.i59.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 3, i32 0, i32 1
  %77 = ptrtoint ptr %max.i.i59.i.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %max.i.i59.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool3.not.i.i60.i.i.i = icmp eq i16 %78, 0
  br i1 %tobool3.not.i.i60.i.i.i, label %if.then4.i.i63.i.i.i, label %if.end.i.i61.i.i.i.img_ir_timing_defaults.exit.i66.i.i.i_crit_edge

if.end.i.i61.i.i.i.img_ir_timing_defaults.exit.i66.i.i.i_crit_edge: ; preds = %if.end.i.i61.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_timing_defaults.exit.i66.i.i.i

if.then4.i.i63.i.i.i:                             ; preds = %if.end.i.i61.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %max5.i.i62.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 3, i32 0, i32 1
  %79 = ptrtoint ptr %max5.i.i62.i.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %max5.i.i62.i.i.i, align 2
  %81 = ptrtoint ptr %max.i.i59.i.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %max.i.i59.i.i.i, align 2
  br label %img_ir_timing_defaults.exit.i66.i.i.i

img_ir_timing_defaults.exit.i66.i.i.i:            ; preds = %if.then4.i.i63.i.i.i, %if.end.i.i61.i.i.i.img_ir_timing_defaults.exit.i66.i.i.i_crit_edge
  %space.i64.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 3, i32 1
  %82 = ptrtoint ptr %space.i64.i.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %space.i64.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool.not.i5.i65.i.i.i = icmp eq i16 %83, 0
  br i1 %tobool.not.i5.i65.i.i.i, label %if.then.i6.i68.i.i.i, label %img_ir_timing_defaults.exit.i66.i.i.i.if.end.i9.i71.i.i.i_crit_edge

img_ir_timing_defaults.exit.i66.i.i.i.if.end.i9.i71.i.i.i_crit_edge: ; preds = %img_ir_timing_defaults.exit.i66.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i9.i71.i.i.i

if.then.i6.i68.i.i.i:                             ; preds = %img_ir_timing_defaults.exit.i66.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %space2.i67.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 3, i32 1
  %84 = ptrtoint ptr %space2.i67.i.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %space2.i67.i.i.i, align 2
  %86 = ptrtoint ptr %space.i64.i.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %space.i64.i.i.i, align 2
  br label %if.end.i9.i71.i.i.i

if.end.i9.i71.i.i.i:                              ; preds = %if.then.i6.i68.i.i.i, %img_ir_timing_defaults.exit.i66.i.i.i.if.end.i9.i71.i.i.i_crit_edge
  %max.i7.i69.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 3, i32 1, i32 1
  %87 = ptrtoint ptr %max.i7.i69.i.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %max.i7.i69.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool3.not.i8.i70.i.i.i = icmp eq i16 %88, 0
  br i1 %tobool3.not.i8.i70.i.i.i, label %if.then4.i11.i73.i.i.i, label %if.end.i9.i71.i.i.i.img_ir_symbol_timing_defaults.exit74.i.i.i_crit_edge

if.end.i9.i71.i.i.i.img_ir_symbol_timing_defaults.exit74.i.i.i_crit_edge: ; preds = %if.end.i9.i71.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_symbol_timing_defaults.exit74.i.i.i

if.then4.i11.i73.i.i.i:                           ; preds = %if.end.i9.i71.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %max5.i10.i72.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 3, i32 1, i32 1
  %89 = ptrtoint ptr %max5.i10.i72.i.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %max5.i10.i72.i.i.i, align 2
  %91 = ptrtoint ptr %max.i7.i69.i.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %max.i7.i69.i.i.i, align 2
  br label %img_ir_symbol_timing_defaults.exit74.i.i.i

img_ir_symbol_timing_defaults.exit74.i.i.i:       ; preds = %if.then4.i11.i73.i.i.i, %if.end.i9.i71.i.i.i.img_ir_symbol_timing_defaults.exit74.i.i.i_crit_edge
  %s11.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 4
  %92 = ptrtoint ptr %s11.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %s11.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool.not.i.i75.i.i.i = icmp eq i16 %93, 0
  br i1 %tobool.not.i.i75.i.i.i, label %if.then.i.i76.i.i.i, label %img_ir_symbol_timing_defaults.exit74.i.i.i.if.end.i.i79.i.i.i_crit_edge

img_ir_symbol_timing_defaults.exit74.i.i.i.if.end.i.i79.i.i.i_crit_edge: ; preds = %img_ir_symbol_timing_defaults.exit74.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i79.i.i.i

if.then.i.i76.i.i.i:                              ; preds = %img_ir_symbol_timing_defaults.exit74.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %s115.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 4
  %94 = ptrtoint ptr %s115.i.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %s115.i.i.i, align 2
  %96 = ptrtoint ptr %s11.i.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %s11.i.i.i, align 2
  br label %if.end.i.i79.i.i.i

if.end.i.i79.i.i.i:                               ; preds = %if.then.i.i76.i.i.i, %img_ir_symbol_timing_defaults.exit74.i.i.i.if.end.i.i79.i.i.i_crit_edge
  %max.i.i77.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 4, i32 0, i32 1
  %97 = ptrtoint ptr %max.i.i77.i.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %max.i.i77.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool3.not.i.i78.i.i.i = icmp eq i16 %98, 0
  br i1 %tobool3.not.i.i78.i.i.i, label %if.then4.i.i81.i.i.i, label %if.end.i.i79.i.i.i.img_ir_timing_defaults.exit.i84.i.i.i_crit_edge

if.end.i.i79.i.i.i.img_ir_timing_defaults.exit.i84.i.i.i_crit_edge: ; preds = %if.end.i.i79.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_timing_defaults.exit.i84.i.i.i

if.then4.i.i81.i.i.i:                             ; preds = %if.end.i.i79.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %max5.i.i80.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 4, i32 0, i32 1
  %99 = ptrtoint ptr %max5.i.i80.i.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %max5.i.i80.i.i.i, align 2
  %101 = ptrtoint ptr %max.i.i77.i.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %max.i.i77.i.i.i, align 2
  br label %img_ir_timing_defaults.exit.i84.i.i.i

img_ir_timing_defaults.exit.i84.i.i.i:            ; preds = %if.then4.i.i81.i.i.i, %if.end.i.i79.i.i.i.img_ir_timing_defaults.exit.i84.i.i.i_crit_edge
  %space.i82.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 4, i32 1
  %102 = ptrtoint ptr %space.i82.i.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %space.i82.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool.not.i5.i83.i.i.i = icmp eq i16 %103, 0
  br i1 %tobool.not.i5.i83.i.i.i, label %if.then.i6.i86.i.i.i, label %img_ir_timing_defaults.exit.i84.i.i.i.if.end.i9.i89.i.i.i_crit_edge

img_ir_timing_defaults.exit.i84.i.i.i.if.end.i9.i89.i.i.i_crit_edge: ; preds = %img_ir_timing_defaults.exit.i84.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i9.i89.i.i.i

if.then.i6.i86.i.i.i:                             ; preds = %img_ir_timing_defaults.exit.i84.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %space2.i85.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 4, i32 1
  %104 = ptrtoint ptr %space2.i85.i.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %space2.i85.i.i.i, align 2
  %106 = ptrtoint ptr %space.i82.i.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %space.i82.i.i.i, align 2
  br label %if.end.i9.i89.i.i.i

if.end.i9.i89.i.i.i:                              ; preds = %if.then.i6.i86.i.i.i, %img_ir_timing_defaults.exit.i84.i.i.i.if.end.i9.i89.i.i.i_crit_edge
  %max.i7.i87.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 4, i32 1, i32 1
  %107 = ptrtoint ptr %max.i7.i87.i.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %max.i7.i87.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %tobool3.not.i8.i88.i.i.i = icmp eq i16 %108, 0
  br i1 %tobool3.not.i8.i88.i.i.i, label %if.then4.i11.i91.i.i.i, label %if.end.i9.i89.i.i.i.img_ir_symbol_timing_defaults.exit92.i.i.i_crit_edge

if.end.i9.i89.i.i.i.img_ir_symbol_timing_defaults.exit92.i.i.i_crit_edge: ; preds = %if.end.i9.i89.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_symbol_timing_defaults.exit92.i.i.i

if.then4.i11.i91.i.i.i:                           ; preds = %if.end.i9.i89.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %max5.i10.i90.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 4, i32 1, i32 1
  %109 = ptrtoint ptr %max5.i10.i90.i.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %max5.i10.i90.i.i.i, align 2
  %111 = ptrtoint ptr %max.i7.i87.i.i.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %max.i7.i87.i.i.i, align 2
  br label %img_ir_symbol_timing_defaults.exit92.i.i.i

img_ir_symbol_timing_defaults.exit92.i.i.i:       ; preds = %if.then4.i11.i91.i.i.i, %if.end.i9.i89.i.i.i.img_ir_symbol_timing_defaults.exit92.i.i.i_crit_edge
  %ft_min.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 4, i32 5, i32 2
  %112 = ptrtoint ptr %ft_min.i.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %ft_min.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool.not.i.i.i = icmp eq i16 %113, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %img_ir_symbol_timing_defaults.exit92.i.i.i.img_ir_decoder_preprocess.exit.i_crit_edge

img_ir_symbol_timing_defaults.exit92.i.i.i.img_ir_decoder_preprocess.exit.i_crit_edge: ; preds = %img_ir_symbol_timing_defaults.exit92.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_decoder_preprocess.exit.i

if.then.i.i.i:                                    ; preds = %img_ir_symbol_timing_defaults.exit92.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ft_min7.i.i.i = getelementptr inbounds %struct.img_ir_decoder, ptr %0, i32 0, i32 3, i32 5, i32 2
  %114 = ptrtoint ptr %ft_min7.i.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %ft_min7.i.i.i, align 2
  %116 = ptrtoint ptr %ft_min.i.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %ft_min.i.i.i, align 2
  br label %img_ir_decoder_preprocess.exit.i

img_ir_decoder_preprocess.exit.i:                 ; preds = %if.then.i.i.i, %img_ir_symbol_timing_defaults.exit92.i.i.i.img_ir_decoder_preprocess.exit.i_crit_edge, %if.end.i.i.img_ir_decoder_preprocess.exit.i_crit_edge
  %incdec.ptr.i = getelementptr ptr, ptr %decp.05.i, i32 1
  %117 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool1.not.i = icmp eq ptr %118, null
  br i1 %tobool1.not.i, label %for.end.i, label %img_ir_decoder_preprocess.exit.i.for.body.i_crit_edge

img_ir_decoder_preprocess.exit.i.for.body.i_crit_edge: ; preds = %img_ir_decoder_preprocess.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %img_ir_decoder_preprocess.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @img_ir_decoders_preprocessed, align 1
  br label %img_ir_init_decoders.exit

img_ir_init_decoders.exit:                        ; preds = %for.end.i, %entry.img_ir_init_decoders.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @img_ir_decoders_lock) #6
  %hw1.i = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7
  %119 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %hw1.i, align 8
  %or.i = or i32 %120, 2
  store i32 %or.i, ptr %hw1.i, align 8
  %arrayidx3.i = getelementptr %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 0, i32 2
  %121 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx3.i, align 8
  %or4.i = or i32 %122, 4
  store i32 %or4.i, ptr %arrayidx3.i, align 8
  %arrayidx6.i = getelementptr %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 0, i32 3
  %123 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx6.i, align 4
  %or7.i = or i32 %124, 1
  store i32 %or7.i, ptr %arrayidx6.i, align 4
  %end_timer = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 3
  tail call void @init_timer_key(ptr noundef %end_timer, ptr noundef nonnull @img_ir_end_timer, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @img_ir_probe_hw.__key) #6
  %suspend_timer = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 4
  tail call void @init_timer_key(ptr noundef %suspend_timer, ptr noundef nonnull @img_ir_suspend_timer, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @img_ir_probe_hw.__key.1) #6
  %clk = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 2
  %125 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %126, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then

if.then:                                          ; preds = %img_ir_init_decoders.exit
  %call6 = tail call i32 @clk_get_rate(ptr noundef %126) #6
  %clk_hz = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 7
  %127 = ptrtoint ptr %clk_hz to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %call6, ptr %clk_hz, align 8
  %clk_nb = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 2
  %128 = ptrtoint ptr %clk_nb to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @img_ir_clk_notify, ptr %clk_nb, align 4
  %129 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %clk, align 8
  %call9 = tail call i32 @clk_notifier_register(ptr noundef %130, ptr noundef %clk_nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then.if.end15_crit_edge, label %do.end13

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end13:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %131 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %132, ptr noundef nonnull @.str.3) #9
  br label %if.end15

if.else:                                          ; preds = %img_ir_init_decoders.exit
  call void @__sanitizer_cov_trace_pc() #8
  %clk_hz14 = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 7
  %133 = ptrtoint ptr %clk_hz14 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 32768, ptr %clk_hz14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %do.end13, %if.then.if.end15_crit_edge
  %call16 = tail call ptr @rc_allocate_device(i32 noundef 0) #6
  %rdev17 = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 1
  %134 = ptrtoint ptr %rdev17 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call16, ptr %rdev17, align 8
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %135 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.9) #9
  br label %err_alloc_rc

if.end24:                                         ; preds = %if.end15
  %priv25 = getelementptr inbounds %struct.rc_dev, ptr %call16, i32 0, i32 24
  %137 = ptrtoint ptr %priv25 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %priv, ptr %priv25, align 4
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call16, i32 0, i32 7
  %138 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @.str.12, ptr %map_name, align 4
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_nec, i32 0, i32 6) to i32))
  %bf.load.i.i = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_nec, i32 0, i32 6), align 4
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 13
  %bf.clear.i.i = and i16 %bf.lshr.i.i, 3
  %bf.cast.i.i = zext i16 %bf.clear.i.i to i32
  %arrayidx.i.i = getelementptr [4 x i32], ptr %hw1.i, i32 0, i32 %bf.cast.i.i
  %139 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %140, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i79 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i79, label %if.then.i, label %if.end24.if.end.i_crit_edge

if.end24.if.end.i_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @img_ir_nec to i32))
  %141 = load i64, ptr @img_ir_nec, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end24.if.end.i_crit_edge
  %protos.1.i = phi i64 [ %141, %if.then.i ], [ 0, %if.end24.if.end.i_crit_edge ]
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_jvc, i32 0, i32 6) to i32))
  %bf.load.i.1.i = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_jvc, i32 0, i32 6), align 4
  %bf.lshr.i.1.i = lshr i16 %bf.load.i.1.i, 13
  %bf.clear.i.1.i = and i16 %bf.lshr.i.1.i, 3
  %bf.cast.i.1.i = zext i16 %bf.clear.i.1.i to i32
  %arrayidx.i.1.i = getelementptr [4 x i32], ptr %hw1.i, i32 0, i32 %bf.cast.i.1.i
  %142 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx.i.1.i, align 4
  %and.i.1.i = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %and.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %if.then.1.i, label %if.end.i.if.end.1.i_crit_edge

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @img_ir_jvc to i32))
  %144 = load i64, ptr @img_ir_jvc, align 8
  %or.1.i = or i64 %144, %protos.1.i
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i.if.end.1.i_crit_edge
  %protos.1.1.i = phi i64 [ %or.1.i, %if.then.1.i ], [ %protos.1.i, %if.end.i.if.end.1.i_crit_edge ]
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_sony, i32 0, i32 6) to i32))
  %bf.load.i.2.i = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_sony, i32 0, i32 6), align 4
  %bf.lshr.i.2.i = lshr i16 %bf.load.i.2.i, 13
  %bf.clear.i.2.i = and i16 %bf.lshr.i.2.i, 3
  %bf.cast.i.2.i = zext i16 %bf.clear.i.2.i to i32
  %arrayidx.i.2.i = getelementptr [4 x i32], ptr %hw1.i, i32 0, i32 %bf.cast.i.2.i
  %145 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx.i.2.i, align 4
  %and.i.2.i = and i32 %146, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2.i)
  %tobool.not.i.2.i = icmp eq i32 %and.i.2.i, 0
  br i1 %tobool.not.i.2.i, label %if.then.2.i, label %if.end.1.i.if.end.2.i_crit_edge

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.2.i

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @img_ir_sony to i32))
  %147 = load i64, ptr @img_ir_sony, align 8
  %or.2.i = or i64 %147, %protos.1.1.i
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then.2.i, %if.end.1.i.if.end.2.i_crit_edge
  %protos.1.2.i = phi i64 [ %or.2.i, %if.then.2.i ], [ %protos.1.1.i, %if.end.1.i.if.end.2.i_crit_edge ]
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_sharp, i32 0, i32 6) to i32))
  %bf.load.i.3.i = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_sharp, i32 0, i32 6), align 4
  %bf.lshr.i.3.i = lshr i16 %bf.load.i.3.i, 13
  %bf.clear.i.3.i = and i16 %bf.lshr.i.3.i, 3
  %bf.cast.i.3.i = zext i16 %bf.clear.i.3.i to i32
  %arrayidx.i.3.i = getelementptr [4 x i32], ptr %hw1.i, i32 0, i32 %bf.cast.i.3.i
  %148 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx.i.3.i, align 4
  %and.i.3.i = and i32 %149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3.i)
  %tobool.not.i.3.i = icmp eq i32 %and.i.3.i, 0
  br i1 %tobool.not.i.3.i, label %if.then.3.i, label %if.end.2.i.if.end.3.i_crit_edge

if.end.2.i.if.end.3.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.3.i

if.then.3.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @img_ir_sharp to i32))
  %150 = load i64, ptr @img_ir_sharp, align 8
  %or.3.i = or i64 %150, %protos.1.2.i
  br label %if.end.3.i

if.end.3.i:                                       ; preds = %if.then.3.i, %if.end.2.i.if.end.3.i_crit_edge
  %protos.1.3.i = phi i64 [ %or.3.i, %if.then.3.i ], [ %protos.1.2.i, %if.end.2.i.if.end.3.i_crit_edge ]
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_sanyo, i32 0, i32 6) to i32))
  %bf.load.i.4.i = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_sanyo, i32 0, i32 6), align 4
  %bf.lshr.i.4.i = lshr i16 %bf.load.i.4.i, 13
  %bf.clear.i.4.i = and i16 %bf.lshr.i.4.i, 3
  %bf.cast.i.4.i = zext i16 %bf.clear.i.4.i to i32
  %arrayidx.i.4.i = getelementptr [4 x i32], ptr %hw1.i, i32 0, i32 %bf.cast.i.4.i
  %151 = ptrtoint ptr %arrayidx.i.4.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx.i.4.i, align 4
  %and.i.4.i = and i32 %152, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.4.i)
  %tobool.not.i.4.i = icmp eq i32 %and.i.4.i, 0
  br i1 %tobool.not.i.4.i, label %if.then.4.i, label %if.end.3.i.if.end.4.i_crit_edge

if.end.3.i.if.end.4.i_crit_edge:                  ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.4.i

if.then.4.i:                                      ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @img_ir_sanyo to i32))
  %153 = load i64, ptr @img_ir_sanyo, align 8
  %or.4.i = or i64 %153, %protos.1.3.i
  br label %if.end.4.i

if.end.4.i:                                       ; preds = %if.then.4.i, %if.end.3.i.if.end.4.i_crit_edge
  %protos.1.4.i = phi i64 [ %or.4.i, %if.then.4.i ], [ %protos.1.3.i, %if.end.3.i.if.end.4.i_crit_edge ]
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_rc5, i32 0, i32 6) to i32))
  %bf.load.i.5.i = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_rc5, i32 0, i32 6), align 4
  %bf.lshr.i.5.i = lshr i16 %bf.load.i.5.i, 13
  %bf.clear.i.5.i = and i16 %bf.lshr.i.5.i, 3
  %bf.cast.i.5.i = zext i16 %bf.clear.i.5.i to i32
  %arrayidx.i.5.i = getelementptr [4 x i32], ptr %hw1.i, i32 0, i32 %bf.cast.i.5.i
  %154 = ptrtoint ptr %arrayidx.i.5.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx.i.5.i, align 4
  %and.i.5.i = and i32 %155, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.5.i)
  %tobool.not.i.5.i = icmp eq i32 %and.i.5.i, 0
  br i1 %tobool.not.i.5.i, label %if.then.5.i, label %if.end.4.i.if.end.5.i_crit_edge

if.end.4.i.if.end.5.i_crit_edge:                  ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.5.i

if.then.5.i:                                      ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @img_ir_rc5 to i32))
  %156 = load i64, ptr @img_ir_rc5, align 8
  %or.5.i = or i64 %156, %protos.1.4.i
  br label %if.end.5.i

if.end.5.i:                                       ; preds = %if.then.5.i, %if.end.4.i.if.end.5.i_crit_edge
  %protos.1.5.i = phi i64 [ %or.5.i, %if.then.5.i ], [ %protos.1.4.i, %if.end.4.i.if.end.5.i_crit_edge ]
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_rc6, i32 0, i32 6) to i32))
  %bf.load.i.6.i = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_rc6, i32 0, i32 6), align 4
  %bf.lshr.i.6.i = lshr i16 %bf.load.i.6.i, 13
  %bf.clear.i.6.i = and i16 %bf.lshr.i.6.i, 3
  %bf.cast.i.6.i = zext i16 %bf.clear.i.6.i to i32
  %arrayidx.i.6.i = getelementptr [4 x i32], ptr %hw1.i, i32 0, i32 %bf.cast.i.6.i
  %157 = ptrtoint ptr %arrayidx.i.6.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx.i.6.i, align 4
  %and.i.6.i = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.6.i)
  %tobool.not.i.6.i = icmp eq i32 %and.i.6.i, 0
  br i1 %tobool.not.i.6.i, label %if.then.6.i, label %if.end.5.i.img_ir_allowed_protos.exit_crit_edge

if.end.5.i.img_ir_allowed_protos.exit_crit_edge:  ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_allowed_protos.exit

if.then.6.i:                                      ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @img_ir_rc6 to i32))
  %159 = load i64, ptr @img_ir_rc6, align 8
  %or.6.i = or i64 %159, %protos.1.5.i
  br label %img_ir_allowed_protos.exit

img_ir_allowed_protos.exit:                       ; preds = %if.then.6.i, %if.end.5.i.img_ir_allowed_protos.exit_crit_edge
  %protos.1.6.i = phi i64 [ %or.6.i, %if.then.6.i ], [ %protos.1.5.i, %if.end.5.i.img_ir_allowed_protos.exit_crit_edge ]
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call16, i32 0, i32 16
  %160 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %protos.1.6.i, ptr %allowed_protocols, align 8
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call16, i32 0, i32 3
  %161 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @.str.13, ptr %device_name, align 8
  %s_filter = getelementptr inbounds %struct.rc_dev, ptr %call16, i32 0, i32 58
  %162 = ptrtoint ptr %s_filter to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @img_ir_set_normal_filter, ptr %s_filter, align 8
  %s_wakeup_filter = getelementptr inbounds %struct.rc_dev, ptr %call16, i32 0, i32 59
  %163 = ptrtoint ptr %s_wakeup_filter to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @img_ir_set_wakeup_filter, ptr %s_wakeup_filter, align 4
  %call27 = tail call i32 @rc_register_device(ptr noundef nonnull %call16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end34, label %do.end32

do.end32:                                         ; preds = %img_ir_allowed_protos.exit
  call void @__sanitizer_cov_trace_pc() #8
  %164 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.15) #9
  tail call fastcc void @img_ir_set_decoder(ptr noundef %priv, ptr noundef null, i64 noundef 0)
  %166 = ptrtoint ptr %rdev17 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %rdev17, align 8
  tail call void @rc_free_device(ptr noundef nonnull %call16) #6
  br label %err_alloc_rc

if.end34:                                         ; preds = %img_ir_allowed_protos.exit
  call void @__sanitizer_cov_trace_pc() #8
  %change_protocol = getelementptr inbounds %struct.rc_dev, ptr %call16, i32 0, i32 47
  %167 = ptrtoint ptr %change_protocol to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr @img_ir_change_protocol, ptr %change_protocol, align 4
  %168 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %priv, align 8
  %call36 = tail call i32 @device_init_wakeup(ptr noundef %169, i1 noundef zeroext true) #6
  br label %cleanup

err_alloc_rc:                                     ; preds = %do.end32, %do.end22
  %error.0 = phi i32 [ %call27, %do.end32 ], [ -12, %do.end22 ]
  %170 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %clk, align 8
  %cmp.i80 = icmp ugt ptr %171, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80, label %err_alloc_rc.cleanup_crit_edge, label %if.then40

err_alloc_rc.cleanup_crit_edge:                   ; preds = %err_alloc_rc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then40:                                        ; preds = %err_alloc_rc
  call void @__sanitizer_cov_trace_pc() #8
  %clk_nb42 = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 2
  %call43 = tail call i32 @clk_notifier_unregister(ptr noundef %171, ptr noundef %clk_nb42) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %err_alloc_rc.cleanup_crit_edge, %if.end34
  %retval.0 = phi i32 [ 0, %if.end34 ], [ %error.0, %if.then40 ], [ %error.0, %err_alloc_rc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @img_ir_end_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %t, i32 -132
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %mode.i = getelementptr i8, ptr %t, i32 224
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.img_ir_end_repeat.exit_crit_edge

entry.img_ir_end_repeat.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_end_repeat.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %t, i32 -152
  %reg_base.i.i = getelementptr i8, ptr %t, i32 -136
  %2 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #6, !srcloc !88
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mode.i, align 8
  %reg_timings.i = getelementptr i8, ptr %t, i32 116
  %timings.i = getelementptr i8, ptr %t, i32 120
  tail call fastcc void @img_ir_write_timings(ptr noundef %add.ptr, ptr noundef %timings.i, i32 noundef 0) #6
  %5 = ptrtoint ptr %reg_timings.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_timings.i, align 4
  %7 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %9) #6, !srcloc !88
  br label %img_ir_end_repeat.exit

img_ir_end_repeat.exit:                           ; preds = %if.then.i, %entry.img_ir_end_repeat.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @img_ir_suspend_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %t, i32 -180
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %quirk_suspend_irq = getelementptr i8, ptr %t, i32 188
  %0 = ptrtoint ptr %quirk_suspend_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirk_suspend_irq, align 4
  %and = and i32 %1, 24
  %reg_base.i = getelementptr i8, ptr %t, i32 -184
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !84
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %5)
  %cmp = icmp eq i32 %and, %5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %quirk_suspend_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirk_suspend_irq, align 4
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %9, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %10) #6, !srcloc !88
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reg_timings = getelementptr i8, ptr %t, i32 68
  %11 = ptrtoint ptr %reg_timings to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_timings, align 4
  %13 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %15) #6, !srcloc !88
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_ir_clk_notify(ptr noundef %self, i32 noundef %action, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %action)
  %cond = icmp eq i32 %action, 2
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %self, i32 -140
  tail call fastcc void @img_ir_change_frequency(ptr noundef %add.ptr, ptr noundef %data)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_ir_set_normal_filter(ptr nocapture noundef readonly %dev, ptr noundef %sc_filter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @img_ir_set_filter(ptr noundef %dev, i32 noundef 0, ptr noundef %sc_filter)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_ir_set_wakeup_filter(ptr nocapture noundef readonly %dev, ptr noundef %sc_filter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @img_ir_set_filter(ptr noundef %dev, i32 noundef 1, ptr noundef %sc_filter)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_ir_change_protocol(ptr nocapture noundef readonly %dev, ptr nocapture noundef %ir_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %rdev3 = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %rdev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev3, align 8
  %4 = ptrtoint ptr %ir_type to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ir_type, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %hw.i = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 7
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_nec, i32 0, i32 6) to i32))
  %bf.load.i = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_nec, i32 0, i32 6), align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 13
  %bf.clear.i = and i16 %bf.lshr.i, 3
  %bf.cast.i = zext i16 %bf.clear.i to i32
  %arrayidx.i = getelementptr [4 x i32], ptr %hw.i, i32 0, i32 %bf.cast.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6, label %for.cond.preheader.for.inc_crit_edge

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @img_ir_set_decoder(ptr noundef %1, ptr noundef null, i64 noundef 0)
  br label %success

if.end6:                                          ; preds = %for.cond.preheader
  %8 = ptrtoint ptr %ir_type to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ir_type, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @img_ir_nec to i32))
  %10 = load i64, ptr @img_ir_nec, align 8
  %and = and i64 %10, %9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool7.not = icmp eq i64 %and, 0
  br i1 %tobool7.not, label %if.end6.for.inc_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup:                                          ; preds = %if.end6.6.cleanup_crit_edge, %if.end6.5.cleanup_crit_edge, %if.end6.4.cleanup_crit_edge, %if.end6.3.cleanup_crit_edge, %if.end6.2.cleanup_crit_edge, %if.end6.1.cleanup_crit_edge, %if.end6.cleanup_crit_edge
  %.lcssa = phi ptr [ @img_ir_nec, %if.end6.cleanup_crit_edge ], [ @img_ir_jvc, %if.end6.1.cleanup_crit_edge ], [ @img_ir_sony, %if.end6.2.cleanup_crit_edge ], [ @img_ir_sharp, %if.end6.3.cleanup_crit_edge ], [ @img_ir_sanyo, %if.end6.4.cleanup_crit_edge ], [ @img_ir_rc5, %if.end6.5.cleanup_crit_edge ], [ @img_ir_rc6, %if.end6.6.cleanup_crit_edge ]
  %and.lcssa = phi i64 [ %and, %if.end6.cleanup_crit_edge ], [ %and.1, %if.end6.1.cleanup_crit_edge ], [ %and.2, %if.end6.2.cleanup_crit_edge ], [ %and.3, %if.end6.3.cleanup_crit_edge ], [ %and.4, %if.end6.4.cleanup_crit_edge ], [ %and.5, %if.end6.5.cleanup_crit_edge ], [ %and.6, %if.end6.6.cleanup_crit_edge ]
  %11 = ptrtoint ptr %ir_type to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %and.lcssa, ptr %ir_type, align 8
  tail call fastcc void @img_ir_set_decoder(ptr noundef %1, ptr noundef nonnull %.lcssa, i64 noundef %and.lcssa)
  br label %success

for.inc:                                          ; preds = %if.end6.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_jvc, i32 0, i32 6) to i32))
  %bf.load.i.1 = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_jvc, i32 0, i32 6), align 4
  %bf.lshr.i.1 = lshr i16 %bf.load.i.1, 13
  %bf.clear.i.1 = and i16 %bf.lshr.i.1, 3
  %bf.cast.i.1 = zext i16 %bf.clear.i.1 to i32
  %arrayidx.i.1 = getelementptr [4 x i32], ptr %hw.i, i32 0, i32 %bf.cast.i.1
  %12 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.1, align 4
  %and.i.1 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.not.i.1, label %if.end6.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end6.1:                                        ; preds = %for.inc
  %14 = ptrtoint ptr %ir_type to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ir_type, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @img_ir_jvc to i32))
  %16 = load i64, ptr @img_ir_jvc, align 8
  %and.1 = and i64 %16, %15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.1)
  %tobool7.not.1 = icmp eq i64 %and.1, 0
  br i1 %tobool7.not.1, label %if.end6.1.for.inc.1_crit_edge, label %if.end6.1.cleanup_crit_edge

if.end6.1.cleanup_crit_edge:                      ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.1.for.inc.1_crit_edge:                    ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end6.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_sony, i32 0, i32 6) to i32))
  %bf.load.i.2 = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_sony, i32 0, i32 6), align 4
  %bf.lshr.i.2 = lshr i16 %bf.load.i.2, 13
  %bf.clear.i.2 = and i16 %bf.lshr.i.2, 3
  %bf.cast.i.2 = zext i16 %bf.clear.i.2 to i32
  %arrayidx.i.2 = getelementptr [4 x i32], ptr %hw.i, i32 0, i32 %bf.cast.i.2
  %17 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.2, align 4
  %and.i.2 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool.not.i.2 = icmp eq i32 %and.i.2, 0
  br i1 %tobool.not.i.2, label %if.end6.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.end6.2:                                        ; preds = %for.inc.1
  %19 = ptrtoint ptr %ir_type to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ir_type, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @img_ir_sony to i32))
  %21 = load i64, ptr @img_ir_sony, align 8
  %and.2 = and i64 %21, %20
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.2)
  %tobool7.not.2 = icmp eq i64 %and.2, 0
  br i1 %tobool7.not.2, label %if.end6.2.for.inc.2_crit_edge, label %if.end6.2.cleanup_crit_edge

if.end6.2.cleanup_crit_edge:                      ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.2.for.inc.2_crit_edge:                    ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end6.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_sharp, i32 0, i32 6) to i32))
  %bf.load.i.3 = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_sharp, i32 0, i32 6), align 4
  %bf.lshr.i.3 = lshr i16 %bf.load.i.3, 13
  %bf.clear.i.3 = and i16 %bf.lshr.i.3, 3
  %bf.cast.i.3 = zext i16 %bf.clear.i.3 to i32
  %arrayidx.i.3 = getelementptr [4 x i32], ptr %hw.i, i32 0, i32 %bf.cast.i.3
  %22 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.3, align 4
  %and.i.3 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %tobool.not.i.3 = icmp eq i32 %and.i.3, 0
  br i1 %tobool.not.i.3, label %if.end6.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.end6.3:                                        ; preds = %for.inc.2
  %24 = ptrtoint ptr %ir_type to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %ir_type, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @img_ir_sharp to i32))
  %26 = load i64, ptr @img_ir_sharp, align 8
  %and.3 = and i64 %26, %25
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.3)
  %tobool7.not.3 = icmp eq i64 %and.3, 0
  br i1 %tobool7.not.3, label %if.end6.3.for.inc.3_crit_edge, label %if.end6.3.cleanup_crit_edge

if.end6.3.cleanup_crit_edge:                      ; preds = %if.end6.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.3.for.inc.3_crit_edge:                    ; preds = %if.end6.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end6.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_sanyo, i32 0, i32 6) to i32))
  %bf.load.i.4 = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_sanyo, i32 0, i32 6), align 4
  %bf.lshr.i.4 = lshr i16 %bf.load.i.4, 13
  %bf.clear.i.4 = and i16 %bf.lshr.i.4, 3
  %bf.cast.i.4 = zext i16 %bf.clear.i.4 to i32
  %arrayidx.i.4 = getelementptr [4 x i32], ptr %hw.i, i32 0, i32 %bf.cast.i.4
  %27 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.4, align 4
  %and.i.4 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.4)
  %tobool.not.i.4 = icmp eq i32 %and.i.4, 0
  br i1 %tobool.not.i.4, label %if.end6.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.end6.4:                                        ; preds = %for.inc.3
  %29 = ptrtoint ptr %ir_type to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ir_type, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @img_ir_sanyo to i32))
  %31 = load i64, ptr @img_ir_sanyo, align 8
  %and.4 = and i64 %31, %30
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.4)
  %tobool7.not.4 = icmp eq i64 %and.4, 0
  br i1 %tobool7.not.4, label %if.end6.4.for.inc.4_crit_edge, label %if.end6.4.cleanup_crit_edge

if.end6.4.cleanup_crit_edge:                      ; preds = %if.end6.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.4.for.inc.4_crit_edge:                    ; preds = %if.end6.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end6.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_rc5, i32 0, i32 6) to i32))
  %bf.load.i.5 = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_rc5, i32 0, i32 6), align 4
  %bf.lshr.i.5 = lshr i16 %bf.load.i.5, 13
  %bf.clear.i.5 = and i16 %bf.lshr.i.5, 3
  %bf.cast.i.5 = zext i16 %bf.clear.i.5 to i32
  %arrayidx.i.5 = getelementptr [4 x i32], ptr %hw.i, i32 0, i32 %bf.cast.i.5
  %32 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.5, align 4
  %and.i.5 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.5)
  %tobool.not.i.5 = icmp eq i32 %and.i.5, 0
  br i1 %tobool.not.i.5, label %if.end6.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.end6.5:                                        ; preds = %for.inc.4
  %34 = ptrtoint ptr %ir_type to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %ir_type, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @img_ir_rc5 to i32))
  %36 = load i64, ptr @img_ir_rc5, align 8
  %and.5 = and i64 %36, %35
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.5)
  %tobool7.not.5 = icmp eq i64 %and.5, 0
  br i1 %tobool7.not.5, label %if.end6.5.for.inc.5_crit_edge, label %if.end6.5.cleanup_crit_edge

if.end6.5.cleanup_crit_edge:                      ; preds = %if.end6.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.5.for.inc.5_crit_edge:                    ; preds = %if.end6.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end6.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_rc6, i32 0, i32 6) to i32))
  %bf.load.i.6 = load i16, ptr getelementptr inbounds (%struct.img_ir_decoder, ptr @img_ir_rc6, i32 0, i32 6), align 4
  %bf.lshr.i.6 = lshr i16 %bf.load.i.6, 13
  %bf.clear.i.6 = and i16 %bf.lshr.i.6, 3
  %bf.cast.i.6 = zext i16 %bf.clear.i.6 to i32
  %arrayidx.i.6 = getelementptr [4 x i32], ptr %hw.i, i32 0, i32 %bf.cast.i.6
  %37 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.6, align 4
  %and.i.6 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.6)
  %tobool.not.i.6 = icmp eq i32 %and.i.6, 0
  br i1 %tobool.not.i.6, label %if.end6.6, label %for.inc.5.cleanup17_crit_edge

for.inc.5.cleanup17_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup17

if.end6.6:                                        ; preds = %for.inc.5
  %39 = ptrtoint ptr %ir_type to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %ir_type, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @img_ir_rc6 to i32))
  %41 = load i64, ptr @img_ir_rc6, align 8
  %and.6 = and i64 %41, %40
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.6)
  %tobool7.not.6 = icmp eq i64 %and.6, 0
  br i1 %tobool7.not.6, label %if.end6.6.cleanup17_crit_edge, label %if.end6.6.cleanup_crit_edge

if.end6.6.cleanup_crit_edge:                      ; preds = %if.end6.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.6.cleanup17_crit_edge:                    ; preds = %if.end6.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup17

success:                                          ; preds = %cleanup, %if.then
  %decoder = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 7, i32 5
  %42 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %decoder, align 8
  %tobool12.not = icmp eq ptr %43, null
  br i1 %tobool12.not, label %success.if.then15_crit_edge, label %lor.lhs.false

success.if.then15_crit_edge:                      ; preds = %success
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

lor.lhs.false:                                    ; preds = %success
  %44 = ptrtoint ptr %ir_type to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %ir_type, align 8
  %filter = getelementptr inbounds %struct.img_ir_decoder, ptr %43, i32 0, i32 8
  %46 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %filter, align 4
  %tobool14.not = icmp eq ptr %47, null
  br i1 %tobool14.not, label %lor.lhs.false.if.then15_crit_edge, label %lor.lhs.false.if.end16_crit_edge

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %success.if.then15_crit_edge
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %lor.lhs.false.if.end16_crit_edge
  %wakeup_protocols.0 = phi i64 [ %45, %lor.lhs.false.if.end16_crit_edge ], [ 0, %if.then15 ]
  %allowed_wakeup_protocols = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 18
  %48 = ptrtoint ptr %allowed_wakeup_protocols to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %wakeup_protocols.0, ptr %allowed_wakeup_protocols, align 8
  br label %cleanup17

cleanup17:                                        ; preds = %if.end16, %if.end6.6.cleanup17_crit_edge, %for.inc.5.cleanup17_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %if.end6.6.cleanup17_crit_edge ], [ -22, %for.inc.5.cleanup17_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @img_ir_remove_hw(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rdev2 = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %rdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev2, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @img_ir_set_decoder(ptr noundef %priv, ptr noundef null, i64 noundef 0)
  %2 = ptrtoint ptr %rdev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rdev2, align 8
  tail call void @rc_unregister_device(ptr noundef nonnull %1) #6
  %clk = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 2
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %clk_nb = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 2
  %call6 = tail call i32 @clk_notifier_unregister(ptr noundef %4, ptr noundef %clk_nb) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @img_ir_suspend(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %lock.i = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #6
  %flags.i = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 7, i32 9
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i6 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i6, label %img_ir_enable_wake.exit.thread, label %if.then

img_ir_enable_wake.exit.thread:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %reg_base.i.i = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !84
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %suspend_irqen.i = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 7, i32 13
  %11 = ptrtoint ptr %suspend_irqen.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %suspend_irqen.i, align 8
  %12 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i.i, align 8
  %add.ptr.i14.i = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 67108864) #6, !srcloc !88
  %arrayidx.i = getelementptr %struct.img_ir_priv, ptr %1, i32 0, i32 7, i32 10, i32 1
  tail call fastcc void @img_ir_write_filter(ptr noundef %1, ptr noundef %arrayidx.i) #6
  %timings.i = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 7, i32 8, i32 1
  tail call fastcc void @img_ir_write_timings(ptr noundef %1, ptr noundef %timings.i, i32 noundef 1) #6
  %mode.i = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 7, i32 11
  %14 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %mode.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #6
  %irq = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %16, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %img_ir_enable_wake.exit.thread, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @img_ir_resume(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %call2 = tail call fastcc i32 @img_ir_disable_wake(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @img_ir_disable_wake(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %flags = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %entry
  %and3 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %suspend_irqen7 = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 13
  %2 = ptrtoint ptr %suspend_irqen7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %suspend_irqen7, align 8
  %reg_base.i26 = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 4
  %4 = ptrtoint ptr %reg_base.i26 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i26, align 8
  %add.ptr.i27 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %and8 = shl i32 %3, 24
  %or10 = and i32 %and8, 402653184
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = or i32 %or10, 67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %6) #6, !srcloc !88
  %filters = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 10
  tail call fastcc void @img_ir_write_filter(ptr noundef %priv, ptr noundef %filters)
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = or i32 %or10, 50331648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %7) #6, !srcloc !88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_ir_write_filter.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_ir_disable_wake, %if.then25.i)) #6
          to label %img_ir_write_filter.exit [label %if.then25.i], !srcloc !89

if.then25.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_ir_write_filter.__UNIQUE_ID_ddebug234, ptr noundef %9, ptr noundef nonnull @.str.28) #6
  br label %img_ir_write_filter.exit

img_ir_write_filter.exit:                         ; preds = %if.then25.i, %if.else
  %10 = ptrtoint ptr %reg_base.i26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i26, align 8
  %add.ptr.i53.i = getelementptr i8, ptr %11, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 0) #6, !srcloc !88
  %12 = ptrtoint ptr %reg_base.i26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i26, align 8
  %add.ptr.i55.i = getelementptr i8, ptr %13, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 0) #6, !srcloc !88
  br label %if.end

if.end:                                           ; preds = %img_ir_write_filter.exit, %if.then5
  %timings = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 8, i32 1
  tail call fastcc void @img_ir_write_timings(ptr noundef %priv, ptr noundef %timings, i32 noundef 0)
  %mode = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 11
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %mode, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  %ret.0 = phi i32 [ 1, %if.end ], [ 0, %entry.if.end11_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_repeat(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @img_ir_write_timings(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %regs, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ft2 = getelementptr inbounds %struct.img_ir_timing_regvals, ptr %regs, i32 0, i32 5
  %0 = ptrtoint ptr %ft2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ft2, align 4
  %flags = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 9
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %shl = shl nuw i32 1, %type
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %minlen1.i = getelementptr %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 10, i32 %type, i32 2
  %4 = ptrtoint ptr %minlen1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %minlen1.i, align 8
  %6 = and i8 %5, -2
  %and.i = zext i8 %6 to i32
  %maxlen2.i = getelementptr %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 10, i32 %type, i32 3
  %7 = ptrtoint ptr %maxlen2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %maxlen2.i, align 1
  %conv3.i = zext i8 %8 to i32
  %add.i = add nuw nsw i32 %conv3.i, 1
  %and4.i = and i32 %add.i, 510
  %and5.i = lshr i32 %1, 8
  %shr.i = and i32 %and5.i, 31
  %and6.i = lshr i32 %1, 13
  %shr7.i = and i32 %and6.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %and.i)
  %cmp.i = icmp ult i32 %shr.i, %and.i
  %and9.i = and i32 %1, -7937
  %shl.i = shl nuw nsw i32 %and.i, 8
  %or.i = or i32 %shl.i, %and9.i
  %st_ft.addr.0.i = select i1 %cmp.i, i32 %or.i, i32 %1
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i, i32 %shr7.i)
  %cmp10.i = icmp ult i32 %and4.i, %shr7.i
  %and13.i = and i32 %st_ft.addr.0.i, -516097
  %shl14.i = shl nuw nsw i32 %and4.i, 13
  %or15.i = or i32 %and13.i, %shl14.i
  %st_ft.addr.1.i = select i1 %cmp10.i, i32 %or15.i, i32 %st_ft.addr.0.i
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ft.0 = phi i32 [ %st_ft.addr.1.i, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %regs, align 4
  %reg_base.i = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 4
  %11 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #6, !srcloc !88
  %s00 = getelementptr inbounds %struct.img_ir_timing_regvals, ptr %regs, i32 0, i32 1
  %14 = ptrtoint ptr %s00 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s00, align 4
  %16 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i37 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %18) #6, !srcloc !88
  %s01 = getelementptr inbounds %struct.img_ir_timing_regvals, ptr %regs, i32 0, i32 2
  %19 = ptrtoint ptr %s01 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s01, align 4
  %21 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i39 = getelementptr i8, ptr %22, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %23) #6, !srcloc !88
  %s10 = getelementptr inbounds %struct.img_ir_timing_regvals, ptr %regs, i32 0, i32 3
  %24 = ptrtoint ptr %s10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s10, align 4
  %26 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i41 = getelementptr i8, ptr %27, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %28) #6, !srcloc !88
  %s11 = getelementptr inbounds %struct.img_ir_timing_regvals, ptr %regs, i32 0, i32 4
  %29 = ptrtoint ptr %s11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s11, align 4
  %31 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i43 = getelementptr i8, ptr %32, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %33 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %33) #6, !srcloc !88
  %34 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i45 = getelementptr i8, ptr %35, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %36 = tail call i32 @llvm.bswap.i32(i32 %ft.0) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %36) #6, !srcloc !88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_ir_write_timings.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_ir_write_timings, %if.then8)) #6
          to label %do.end [label %if.then8], !srcloc !89

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %regs, align 4
  %41 = ptrtoint ptr %s00 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s00, align 4
  %43 = ptrtoint ptr %s01 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s01, align 4
  %45 = ptrtoint ptr %s10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s10, align 4
  %47 = ptrtoint ptr %s11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_ir_write_timings.__UNIQUE_ID_ddebug232, ptr noundef %38, ptr noundef nonnull @.str.25, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %ft.0) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @img_ir_decoder_convert(ptr nocapture noundef readonly %decoder, ptr nocapture noundef writeonly %reg_timings, i32 noundef %clock_hz) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %control = getelementptr inbounds %struct.img_ir_decoder, ptr %decoder, i32 0, i32 6
  %0 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %control, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 13
  %bf.clear.i = and i16 %bf.lshr.i, 3
  %bf.cast.i = zext i16 %bf.clear.i to i32
  %shl.i = shl nuw nsw i32 %bf.cast.i, 28
  %or.i = or i32 %shl.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.not96.i = icmp slt i16 %bf.load.i, 0
  %spec.select.i = select i1 %tobool.not96.i, i32 %or.i, i32 %shl.i
  %1 = and i16 %bf.load.i, 4096
  %2 = zext i16 %1 to i32
  %3 = shl nuw nsw i32 %2, 15
  %4 = or i32 %spec.select.i, %3
  %5 = and i16 %bf.load.i, 2048
  %6 = zext i16 %5 to i32
  %7 = shl nuw nsw i32 %6, 15
  %8 = or i32 %4, %7
  %9 = and i16 %bf.load.i, 1024
  %10 = zext i16 %9 to i32
  %11 = shl nuw nsw i32 %10, 15
  %12 = or i32 %8, %11
  %13 = and i16 %bf.load.i, 512
  %14 = zext i16 %13 to i32
  %15 = shl nuw nsw i32 %14, 15
  %16 = or i32 %12, %15
  %17 = shl i16 %bf.load.i, 7
  %18 = and i16 %17, -32768
  %19 = lshr i16 %bf.load.i, 1
  %20 = and i16 %19, 64
  %21 = lshr i16 %bf.load.i, 2
  %22 = and i16 %21, 16
  %23 = lshr i16 %bf.load.i, 4
  %24 = and i16 %23, 2
  %25 = and i16 %23, 1
  %26 = or i16 %20, %18
  %27 = or i16 %26, %22
  %28 = or i16 %27, %24
  %29 = or i16 %28, %25
  %30 = zext i16 %29 to i32
  %31 = or i32 %16, %30
  %32 = ptrtoint ptr %reg_timings to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %reg_timings, align 4
  %timings = getelementptr inbounds %struct.img_ir_reg_timings, ptr %reg_timings, i32 0, i32 1
  %timings1 = getelementptr inbounds %struct.img_ir_decoder, ptr %decoder, i32 0, i32 3
  %tolerance = getelementptr inbounds %struct.img_ir_decoder, ptr %decoder, i32 0, i32 1
  %33 = ptrtoint ptr %tolerance to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tolerance, align 8
  tail call fastcc void @img_ir_timings_convert(ptr noundef %timings, ptr noundef %timings1, i32 noundef %34, i32 noundef %clock_hz)
  %repeat = getelementptr inbounds %struct.img_ir_decoder, ptr %decoder, i32 0, i32 5
  %35 = ptrtoint ptr %repeat to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %repeat, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not = icmp eq i32 %36, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rtimings = getelementptr inbounds %struct.img_ir_reg_timings, ptr %reg_timings, i32 0, i32 2
  %rtimings2 = getelementptr inbounds %struct.img_ir_decoder, ptr %decoder, i32 0, i32 4
  %37 = ptrtoint ptr %tolerance to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tolerance, align 8
  tail call fastcc void @img_ir_timings_convert(ptr noundef %rtimings, ptr noundef %rtimings2, i32 noundef %38, i32 noundef %clock_hz)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @img_ir_write_filter(ptr nocapture noundef readonly %priv, ptr noundef readonly %filter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %filter, null
  br i1 %tobool.not, label %do.body13, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_ir_write_filter.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_ir_write_filter, %if.then4)) #6
          to label %do.end [label %if.then4], !srcloc !89

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %filter to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %filter, align 8
  %mask = getelementptr inbounds %struct.img_ir_filter, ptr %filter, i32 0, i32 1
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mask, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_ir_write_filter.__UNIQUE_ID_ddebug233, ptr noundef %1, ptr noundef nonnull @.str.27, i64 noundef %3, i64 noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %6 = ptrtoint ptr %filter to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %filter, align 8
  %conv = trunc i64 %7 to i32
  %reg_base.i = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 4
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #6, !srcloc !88
  %11 = ptrtoint ptr %filter to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %filter, align 8
  %shr = lshr i64 %12, 32
  %conv7 = trunc i64 %shr to i32
  %13 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i47 = getelementptr i8, ptr %14, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv7) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %15) #6, !srcloc !88
  %mask8 = getelementptr inbounds %struct.img_ir_filter, ptr %filter, i32 0, i32 1
  %16 = ptrtoint ptr %mask8 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %mask8, align 8
  %conv9 = trunc i64 %17 to i32
  %18 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i49 = getelementptr i8, ptr %19, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv9) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %20) #6, !srcloc !88
  %21 = ptrtoint ptr %mask8 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %mask8, align 8
  %shr11 = lshr i64 %22, 32
  %conv12 = trunc i64 %shr11 to i32
  %23 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i51 = getelementptr i8, ptr %24, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv12) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %25) #6, !srcloc !88
  br label %if.end29

do.body13:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_ir_write_filter.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_ir_write_filter, %if.then25)) #6
          to label %do.end28 [label %if.then25], !srcloc !89

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_ir_write_filter.__UNIQUE_ID_ddebug234, ptr noundef %27, ptr noundef nonnull @.str.28) #6
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.body13
  %reg_base.i52 = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 4
  %28 = ptrtoint ptr %reg_base.i52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base.i52, align 8
  %add.ptr.i53 = getelementptr i8, ptr %29, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 0) #6, !srcloc !88
  %30 = ptrtoint ptr %reg_base.i52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base.i52, align 8
  %add.ptr.i55 = getelementptr i8, ptr %31, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 0) #6, !srcloc !88
  br label %if.end29

if.end29:                                         ; preds = %do.end28, %do.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @img_ir_timings_convert(ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %timings, i32 noundef %tolerance, i32 noundef %clock_hz) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %timings to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %timings, align 2
  %space.i = getelementptr inbounds %struct.img_ir_symbol_timing, ptr %timings, i32 0, i32 1
  %2 = ptrtoint ptr %space.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %space.i, align 2
  %add.i = add i16 %3, %1
  %max.i = getelementptr inbounds %struct.img_ir_timing_range, ptr %timings, i32 0, i32 1
  %4 = ptrtoint ptr %max.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max.i, align 2
  %max8.i = getelementptr inbounds %struct.img_ir_symbol_timing, ptr %timings, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %max8.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max8.i, align 2
  %add10.i = add i16 %7, %5
  %conv.i.i = zext i16 %add.i to i32
  %conv3.i.i = zext i16 %add10.i to i32
  %mul.i.i = mul i32 %conv.i.i, %tolerance
  %shr.i.i = lshr i32 %mul.i.i, 7
  %sub.i.i = sub nsw i32 %conv.i.i, %shr.i.i
  %mul4.i.i = mul i32 %conv3.i.i, %tolerance
  %shr5.i.i = lshr i32 %mul4.i.i, 7
  %add.i.i = add nuw nsw i32 %shr5.i.i, %conv3.i.i
  %mul6.i.i = mul i32 %sub.i.i, %clock_hz
  %div.i.i = udiv i32 %mul6.i.i, 1000000
  %mul7.i.i = mul i32 %add.i.i, %clock_hz
  %add8.i.i = add i32 %mul7.i.i, 999999
  %div9.i.i = udiv i32 %add8.i.i, 1000000
  %conv.i33.i = zext i16 %1 to i32
  %conv3.i35.i = zext i16 %5 to i32
  %mul.i36.i = mul i32 %conv.i33.i, %tolerance
  %shr.i37.i = lshr i32 %mul.i36.i, 7
  %sub.i38.i = sub nsw i32 %conv.i33.i, %shr.i37.i
  %mul4.i39.i = mul i32 %conv3.i35.i, %tolerance
  %shr5.i40.i = lshr i32 %mul4.i39.i, 7
  %add.i41.i = add nuw nsw i32 %shr5.i40.i, %conv3.i35.i
  %mul6.i42.i = mul i32 %sub.i38.i, %clock_hz
  %div.i43.i = udiv i32 %mul6.i42.i, 1000000
  %mul7.i44.i = mul i32 %add.i41.i, %clock_hz
  %add8.i45.i = add i32 %mul7.i44.i, 999999
  %div9.i46.i = udiv i32 %add8.i45.i, 1000000
  %shr10.i47.i = lshr i32 %div.i43.i, 4
  %add14.i.i = shl i32 %div9.i.i, 20
  %8 = add i32 %add14.i.i, 15728640
  %shl.i = and i32 %8, -16777216
  %9 = shl nuw nsw i32 %div.i.i, 12
  %conv17.i = and i32 %9, 2147418112
  %add14.i51.i = shl nuw nsw i32 %div9.i46.i, 4
  %10 = add nuw nsw i32 %add14.i51.i, 240
  %shl21.i = and i32 %10, 16776960
  %or.i = or i32 %conv17.i, %shr10.i47.i
  %or22.i = or i32 %or.i, %shl21.i
  %or26.i = or i32 %or22.i, %shl.i
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or26.i, ptr %regs, align 4
  %s00 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 1
  %12 = ptrtoint ptr %s00 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %s00, align 2
  %space.i31 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %space.i31 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %space.i31, align 2
  %add.i32 = add i16 %15, %13
  %max.i33 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %max.i33 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %max.i33, align 2
  %max8.i34 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 1, i32 1, i32 1
  %18 = ptrtoint ptr %max8.i34 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %max8.i34, align 2
  %add10.i35 = add i16 %19, %17
  %conv.i.i36 = zext i16 %add.i32 to i32
  %conv3.i.i37 = zext i16 %add10.i35 to i32
  %mul.i.i38 = mul i32 %conv.i.i36, %tolerance
  %shr.i.i39 = lshr i32 %mul.i.i38, 7
  %sub.i.i40 = sub nsw i32 %conv.i.i36, %shr.i.i39
  %mul4.i.i41 = mul i32 %conv3.i.i37, %tolerance
  %shr5.i.i42 = lshr i32 %mul4.i.i41, 7
  %add.i.i43 = add nuw nsw i32 %shr5.i.i42, %conv3.i.i37
  %mul6.i.i44 = mul i32 %sub.i.i40, %clock_hz
  %div.i.i45 = udiv i32 %mul6.i.i44, 1000000
  %mul7.i.i46 = mul i32 %add.i.i43, %clock_hz
  %add8.i.i47 = add i32 %mul7.i.i46, 999999
  %div9.i.i48 = udiv i32 %add8.i.i47, 1000000
  %conv.i33.i52 = zext i16 %13 to i32
  %conv3.i35.i53 = zext i16 %17 to i32
  %mul.i36.i54 = mul i32 %conv.i33.i52, %tolerance
  %shr.i37.i55 = lshr i32 %mul.i36.i54, 7
  %sub.i38.i56 = sub nsw i32 %conv.i33.i52, %shr.i37.i55
  %mul4.i39.i57 = mul i32 %conv3.i35.i53, %tolerance
  %shr5.i40.i58 = lshr i32 %mul4.i39.i57, 7
  %add.i41.i59 = add nuw nsw i32 %shr5.i40.i58, %conv3.i35.i53
  %mul6.i42.i60 = mul i32 %sub.i38.i56, %clock_hz
  %div.i43.i61 = udiv i32 %mul6.i42.i60, 1000000
  %mul7.i44.i62 = mul i32 %add.i41.i59, %clock_hz
  %add8.i45.i63 = add i32 %mul7.i44.i62, 999999
  %div9.i46.i64 = udiv i32 %add8.i45.i63, 1000000
  %add14.i.i50 = shl i32 %div9.i.i48, 23
  %20 = add i32 %add14.i.i50, 8388608
  %shl.i65 = and i32 %20, -16777216
  %21 = shl nuw nsw i32 %div.i.i45, 15
  %conv17.i66 = and i32 %21, 2147418112
  %conv20.i67 = shl nuw nsw i32 %div9.i46.i64, 8
  %shl21.i68 = and i32 %conv20.i67, 16776960
  %or.i69 = or i32 %conv17.i66, %div.i43.i61
  %or22.i70 = or i32 %or.i69, %shl21.i68
  %or26.i71 = or i32 %or22.i70, %shl.i65
  %s003 = getelementptr inbounds %struct.img_ir_timing_regvals, ptr %regs, i32 0, i32 1
  %22 = ptrtoint ptr %s003 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or26.i71, ptr %s003, align 4
  %s01 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 2
  %23 = ptrtoint ptr %s01 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %s01, align 2
  %space.i72 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %space.i72 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %space.i72, align 2
  %add.i73 = add i16 %26, %24
  %max.i74 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 2, i32 0, i32 1
  %27 = ptrtoint ptr %max.i74 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %max.i74, align 2
  %max8.i75 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 2, i32 1, i32 1
  %29 = ptrtoint ptr %max8.i75 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %max8.i75, align 2
  %add10.i76 = add i16 %30, %28
  %conv.i.i77 = zext i16 %add.i73 to i32
  %conv3.i.i78 = zext i16 %add10.i76 to i32
  %mul.i.i79 = mul i32 %conv.i.i77, %tolerance
  %shr.i.i80 = lshr i32 %mul.i.i79, 7
  %sub.i.i81 = sub nsw i32 %conv.i.i77, %shr.i.i80
  %mul4.i.i82 = mul i32 %conv3.i.i78, %tolerance
  %shr5.i.i83 = lshr i32 %mul4.i.i82, 7
  %add.i.i84 = add nuw nsw i32 %shr5.i.i83, %conv3.i.i78
  %mul6.i.i85 = mul i32 %sub.i.i81, %clock_hz
  %div.i.i86 = udiv i32 %mul6.i.i85, 1000000
  %mul7.i.i87 = mul i32 %add.i.i84, %clock_hz
  %add8.i.i88 = add i32 %mul7.i.i87, 999999
  %div9.i.i89 = udiv i32 %add8.i.i88, 1000000
  %conv.i33.i93 = zext i16 %24 to i32
  %conv3.i35.i94 = zext i16 %28 to i32
  %mul.i36.i95 = mul i32 %conv.i33.i93, %tolerance
  %shr.i37.i96 = lshr i32 %mul.i36.i95, 7
  %sub.i38.i97 = sub nsw i32 %conv.i33.i93, %shr.i37.i96
  %mul4.i39.i98 = mul i32 %conv3.i35.i94, %tolerance
  %shr5.i40.i99 = lshr i32 %mul4.i39.i98, 7
  %add.i41.i100 = add nuw nsw i32 %shr5.i40.i99, %conv3.i35.i94
  %mul6.i42.i101 = mul i32 %sub.i38.i97, %clock_hz
  %div.i43.i102 = udiv i32 %mul6.i42.i101, 1000000
  %mul7.i44.i103 = mul i32 %add.i41.i100, %clock_hz
  %add8.i45.i104 = add i32 %mul7.i44.i103, 999999
  %div9.i46.i105 = udiv i32 %add8.i45.i104, 1000000
  %add14.i.i91 = shl i32 %div9.i.i89, 23
  %31 = add i32 %add14.i.i91, 8388608
  %shl.i106 = and i32 %31, -16777216
  %32 = shl nuw nsw i32 %div.i.i86, 15
  %conv17.i107 = and i32 %32, 2147418112
  %conv20.i108 = shl nuw nsw i32 %div9.i46.i105, 8
  %shl21.i109 = and i32 %conv20.i108, 16776960
  %or.i110 = or i32 %conv17.i107, %div.i43.i102
  %or22.i111 = or i32 %or.i110, %shl21.i109
  %or26.i112 = or i32 %or22.i111, %shl.i106
  %s015 = getelementptr inbounds %struct.img_ir_timing_regvals, ptr %regs, i32 0, i32 2
  %33 = ptrtoint ptr %s015 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or26.i112, ptr %s015, align 4
  %s10 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 3
  %34 = ptrtoint ptr %s10 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %s10, align 2
  %space.i113 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %space.i113 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %space.i113, align 2
  %add.i114 = add i16 %37, %35
  %max.i115 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 3, i32 0, i32 1
  %38 = ptrtoint ptr %max.i115 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %max.i115, align 2
  %max8.i116 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 3, i32 1, i32 1
  %40 = ptrtoint ptr %max8.i116 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %max8.i116, align 2
  %add10.i117 = add i16 %41, %39
  %conv.i.i118 = zext i16 %add.i114 to i32
  %conv3.i.i119 = zext i16 %add10.i117 to i32
  %mul.i.i120 = mul i32 %conv.i.i118, %tolerance
  %shr.i.i121 = lshr i32 %mul.i.i120, 7
  %sub.i.i122 = sub nsw i32 %conv.i.i118, %shr.i.i121
  %mul4.i.i123 = mul i32 %conv3.i.i119, %tolerance
  %shr5.i.i124 = lshr i32 %mul4.i.i123, 7
  %add.i.i125 = add nuw nsw i32 %shr5.i.i124, %conv3.i.i119
  %mul6.i.i126 = mul i32 %sub.i.i122, %clock_hz
  %div.i.i127 = udiv i32 %mul6.i.i126, 1000000
  %mul7.i.i128 = mul i32 %add.i.i125, %clock_hz
  %add8.i.i129 = add i32 %mul7.i.i128, 999999
  %div9.i.i130 = udiv i32 %add8.i.i129, 1000000
  %conv.i33.i134 = zext i16 %35 to i32
  %conv3.i35.i135 = zext i16 %39 to i32
  %mul.i36.i136 = mul i32 %conv.i33.i134, %tolerance
  %shr.i37.i137 = lshr i32 %mul.i36.i136, 7
  %sub.i38.i138 = sub nsw i32 %conv.i33.i134, %shr.i37.i137
  %mul4.i39.i139 = mul i32 %conv3.i35.i135, %tolerance
  %shr5.i40.i140 = lshr i32 %mul4.i39.i139, 7
  %add.i41.i141 = add nuw nsw i32 %shr5.i40.i140, %conv3.i35.i135
  %mul6.i42.i142 = mul i32 %sub.i38.i138, %clock_hz
  %div.i43.i143 = udiv i32 %mul6.i42.i142, 1000000
  %mul7.i44.i144 = mul i32 %add.i41.i141, %clock_hz
  %add8.i45.i145 = add i32 %mul7.i44.i144, 999999
  %div9.i46.i146 = udiv i32 %add8.i45.i145, 1000000
  %add14.i.i132 = shl i32 %div9.i.i130, 23
  %42 = add i32 %add14.i.i132, 8388608
  %shl.i147 = and i32 %42, -16777216
  %43 = shl nuw nsw i32 %div.i.i127, 15
  %conv17.i148 = and i32 %43, 2147418112
  %conv20.i149 = shl nuw nsw i32 %div9.i46.i146, 8
  %shl21.i150 = and i32 %conv20.i149, 16776960
  %or.i151 = or i32 %conv17.i148, %div.i43.i143
  %or22.i152 = or i32 %or.i151, %shl21.i150
  %or26.i153 = or i32 %or22.i152, %shl.i147
  %s107 = getelementptr inbounds %struct.img_ir_timing_regvals, ptr %regs, i32 0, i32 3
  %44 = ptrtoint ptr %s107 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or26.i153, ptr %s107, align 4
  %s11 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 4
  %45 = ptrtoint ptr %s11 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %s11, align 2
  %space.i154 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %space.i154 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %space.i154, align 2
  %add.i155 = add i16 %48, %46
  %max.i156 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 4, i32 0, i32 1
  %49 = ptrtoint ptr %max.i156 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %max.i156, align 2
  %max8.i157 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 4, i32 1, i32 1
  %51 = ptrtoint ptr %max8.i157 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %max8.i157, align 2
  %add10.i158 = add i16 %52, %50
  %conv.i.i159 = zext i16 %add.i155 to i32
  %conv3.i.i160 = zext i16 %add10.i158 to i32
  %mul.i.i161 = mul i32 %conv.i.i159, %tolerance
  %shr.i.i162 = lshr i32 %mul.i.i161, 7
  %sub.i.i163 = sub nsw i32 %conv.i.i159, %shr.i.i162
  %mul4.i.i164 = mul i32 %conv3.i.i160, %tolerance
  %shr5.i.i165 = lshr i32 %mul4.i.i164, 7
  %add.i.i166 = add nuw nsw i32 %shr5.i.i165, %conv3.i.i160
  %mul6.i.i167 = mul i32 %sub.i.i163, %clock_hz
  %div.i.i168 = udiv i32 %mul6.i.i167, 1000000
  %mul7.i.i169 = mul i32 %add.i.i166, %clock_hz
  %add8.i.i170 = add i32 %mul7.i.i169, 999999
  %div9.i.i171 = udiv i32 %add8.i.i170, 1000000
  %conv.i33.i175 = zext i16 %46 to i32
  %conv3.i35.i176 = zext i16 %50 to i32
  %mul.i36.i177 = mul i32 %conv.i33.i175, %tolerance
  %shr.i37.i178 = lshr i32 %mul.i36.i177, 7
  %sub.i38.i179 = sub nsw i32 %conv.i33.i175, %shr.i37.i178
  %mul4.i39.i180 = mul i32 %conv3.i35.i176, %tolerance
  %shr5.i40.i181 = lshr i32 %mul4.i39.i180, 7
  %add.i41.i182 = add nuw nsw i32 %shr5.i40.i181, %conv3.i35.i176
  %mul6.i42.i183 = mul i32 %sub.i38.i179, %clock_hz
  %div.i43.i184 = udiv i32 %mul6.i42.i183, 1000000
  %mul7.i44.i185 = mul i32 %add.i41.i182, %clock_hz
  %add8.i45.i186 = add i32 %mul7.i44.i185, 999999
  %div9.i46.i187 = udiv i32 %add8.i45.i186, 1000000
  %add14.i.i173 = shl i32 %div9.i.i171, 23
  %53 = add i32 %add14.i.i173, 8388608
  %shl.i188 = and i32 %53, -16777216
  %54 = shl nuw nsw i32 %div.i.i168, 15
  %conv17.i189 = and i32 %54, 2147418112
  %conv20.i190 = shl nuw nsw i32 %div9.i46.i187, 8
  %shl21.i191 = and i32 %conv20.i190, 16776960
  %or.i192 = or i32 %conv17.i189, %div.i43.i184
  %or22.i193 = or i32 %or.i192, %shl21.i191
  %or26.i194 = or i32 %or22.i193, %shl.i188
  %s119 = getelementptr inbounds %struct.img_ir_timing_regvals, ptr %regs, i32 0, i32 4
  %55 = ptrtoint ptr %s119 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or26.i194, ptr %s119, align 4
  %ft = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 5
  %56 = ptrtoint ptr %ft to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ft, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %57)
  %cmp.i = icmp ult i8 %57, 30
  %conv.i = zext i8 %57 to i32
  %and.i = shl nuw nsw i32 %conv.i, 8
  %phi.bo27.i = and i32 %and.i, 65024
  %minlen.0.i = select i1 %cmp.i, i32 %phi.bo27.i, i32 7680
  %maxlen5.i = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %maxlen5.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %maxlen5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %59)
  %cmp7.i = icmp ult i8 %59, 48
  %conv6.i = zext i8 %59 to i32
  %add.i195 = shl nuw nsw i32 %conv6.i, 13
  %and12.i = add nuw nsw i32 %add.i195, 8192
  %phi.bo.i = and i32 %and12.i, 4177920
  %maxlen.0.i = select i1 %cmp7.i, i32 %phi.bo.i, i32 393216
  %ft_min15.i = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 5, i32 2
  %60 = ptrtoint ptr %ft_min15.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %ft_min15.i, align 2
  %conv16.i = zext i16 %61 to i32
  %mul.i = mul i32 %conv16.i, %clock_hz
  %add17.i = add i32 %mul.i, 999999
  %div.i = udiv i32 %add17.i, 1000000
  %add18.i = add nuw nsw i32 %div.i, 7
  %shr.i = lshr i32 %add18.i, 3
  %or.i196 = or i32 %maxlen.0.i, %minlen.0.i
  %or21.i = or i32 %or.i196, %shr.i
  %ft11 = getelementptr inbounds %struct.img_ir_timing_regvals, ptr %regs, i32 0, i32 5
  %62 = ptrtoint ptr %ft11 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or21.i, ptr %ft11, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @img_ir_timings_preprocess(ptr nocapture noundef %timings, i32 noundef %unit) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %max.i.i = getelementptr inbounds %struct.img_ir_timing_range, ptr %timings, i32 0, i32 1
  %0 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max.i.i, align 2
  %2 = ptrtoint ptr %timings to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %timings, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.i.i = icmp ult i16 %1, %3
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end.i.i_crit_edge

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %max.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %max.i.i, align 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %entry.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unit)
  %tobool.not.i.i = icmp eq i32 %unit, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.img_ir_timing_preprocess.exit.i_crit_edge, label %if.then5.i.i

if.end.i.i.img_ir_timing_preprocess.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_timing_preprocess.exit.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i = zext i16 %3 to i32
  %mul.i.i = mul i32 %conv7.i.i, %unit
  %div.i.i = udiv i32 %mul.i.i, 1000
  %conv8.i.i = trunc i32 %div.i.i to i16
  %5 = ptrtoint ptr %timings to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv8.i.i, ptr %timings, align 2
  %6 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max.i.i, align 2
  %conv11.i.i = zext i16 %7 to i32
  %mul12.i.i = mul i32 %conv11.i.i, %unit
  %add.i.i = add i32 %mul12.i.i, 999
  %div13.i.i = udiv i32 %add.i.i, 1000
  %conv14.i.i = trunc i32 %div13.i.i to i16
  store i16 %conv14.i.i, ptr %max.i.i, align 2
  br label %img_ir_timing_preprocess.exit.i

img_ir_timing_preprocess.exit.i:                  ; preds = %if.then5.i.i, %if.end.i.i.img_ir_timing_preprocess.exit.i_crit_edge
  %space.i = getelementptr inbounds %struct.img_ir_symbol_timing, ptr %timings, i32 0, i32 1
  %max.i3.i = getelementptr inbounds %struct.img_ir_symbol_timing, ptr %timings, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %max.i3.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %max.i3.i, align 2
  %10 = ptrtoint ptr %space.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %space.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp.i4.i = icmp ult i16 %9, %11
  br i1 %cmp.i4.i, label %if.then.i5.i, label %img_ir_timing_preprocess.exit.i.if.end.i7.i_crit_edge

img_ir_timing_preprocess.exit.i.if.end.i7.i_crit_edge: ; preds = %img_ir_timing_preprocess.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i7.i

if.then.i5.i:                                     ; preds = %img_ir_timing_preprocess.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %max.i3.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %max.i3.i, align 2
  br label %if.end.i7.i

if.end.i7.i:                                      ; preds = %if.then.i5.i, %img_ir_timing_preprocess.exit.i.if.end.i7.i_crit_edge
  br i1 %tobool.not.i.i, label %if.end.i7.i.img_ir_symbol_timing_preprocess.exit_crit_edge, label %if.then5.i17.i

if.end.i7.i.img_ir_symbol_timing_preprocess.exit_crit_edge: ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_symbol_timing_preprocess.exit

if.then5.i17.i:                                   ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i8.i = zext i16 %11 to i32
  %mul.i9.i = mul i32 %conv7.i8.i, %unit
  %div.i10.i = udiv i32 %mul.i9.i, 1000
  %conv8.i11.i = trunc i32 %div.i10.i to i16
  %13 = ptrtoint ptr %space.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv8.i11.i, ptr %space.i, align 2
  %14 = ptrtoint ptr %max.i3.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %max.i3.i, align 2
  %conv11.i12.i = zext i16 %15 to i32
  %mul12.i13.i = mul i32 %conv11.i12.i, %unit
  %add.i14.i = add i32 %mul12.i13.i, 999
  %div13.i15.i = udiv i32 %add.i14.i, 1000
  %conv14.i16.i = trunc i32 %div13.i15.i to i16
  store i16 %conv14.i16.i, ptr %max.i3.i, align 2
  br label %img_ir_symbol_timing_preprocess.exit

img_ir_symbol_timing_preprocess.exit:             ; preds = %if.then5.i17.i, %if.end.i7.i.img_ir_symbol_timing_preprocess.exit_crit_edge
  %s00 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 1
  %max.i.i16 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %max.i.i16 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %max.i.i16, align 2
  %18 = ptrtoint ptr %s00 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %s00, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp.i.i17 = icmp ult i16 %17, %19
  br i1 %cmp.i.i17, label %if.then.i.i18, label %img_ir_symbol_timing_preprocess.exit.if.end.i.i20_crit_edge

img_ir_symbol_timing_preprocess.exit.if.end.i.i20_crit_edge: ; preds = %img_ir_symbol_timing_preprocess.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i20

if.then.i.i18:                                    ; preds = %img_ir_symbol_timing_preprocess.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %max.i.i16 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %max.i.i16, align 2
  br label %if.end.i.i20

if.end.i.i20:                                     ; preds = %if.then.i.i18, %img_ir_symbol_timing_preprocess.exit.if.end.i.i20_crit_edge
  br i1 %tobool.not.i.i, label %if.end.i.i20.img_ir_timing_preprocess.exit.i34_crit_edge, label %if.then5.i.i30

if.end.i.i20.img_ir_timing_preprocess.exit.i34_crit_edge: ; preds = %if.end.i.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_timing_preprocess.exit.i34

if.then5.i.i30:                                   ; preds = %if.end.i.i20
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i21 = zext i16 %19 to i32
  %mul.i.i22 = mul i32 %conv7.i.i21, %unit
  %div.i.i23 = udiv i32 %mul.i.i22, 1000
  %conv8.i.i24 = trunc i32 %div.i.i23 to i16
  %21 = ptrtoint ptr %s00 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv8.i.i24, ptr %s00, align 2
  %22 = ptrtoint ptr %max.i.i16 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %max.i.i16, align 2
  %conv11.i.i25 = zext i16 %23 to i32
  %mul12.i.i26 = mul i32 %conv11.i.i25, %unit
  %add.i.i27 = add i32 %mul12.i.i26, 999
  %div13.i.i28 = udiv i32 %add.i.i27, 1000
  %conv14.i.i29 = trunc i32 %div13.i.i28 to i16
  store i16 %conv14.i.i29, ptr %max.i.i16, align 2
  br label %img_ir_timing_preprocess.exit.i34

img_ir_timing_preprocess.exit.i34:                ; preds = %if.then5.i.i30, %if.end.i.i20.img_ir_timing_preprocess.exit.i34_crit_edge
  %space.i31 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 1, i32 1
  %max.i3.i32 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 1, i32 1, i32 1
  %24 = ptrtoint ptr %max.i3.i32 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %max.i3.i32, align 2
  %26 = ptrtoint ptr %space.i31 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %space.i31, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp.i4.i33 = icmp ult i16 %25, %27
  br i1 %cmp.i4.i33, label %if.then.i5.i35, label %img_ir_timing_preprocess.exit.i34.if.end.i7.i36_crit_edge

img_ir_timing_preprocess.exit.i34.if.end.i7.i36_crit_edge: ; preds = %img_ir_timing_preprocess.exit.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i7.i36

if.then.i5.i35:                                   ; preds = %img_ir_timing_preprocess.exit.i34
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %max.i3.i32 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %max.i3.i32, align 2
  br label %if.end.i7.i36

if.end.i7.i36:                                    ; preds = %if.then.i5.i35, %img_ir_timing_preprocess.exit.i34.if.end.i7.i36_crit_edge
  br i1 %tobool.not.i.i, label %if.end.i7.i36.img_ir_symbol_timing_preprocess.exit47_crit_edge, label %if.then5.i17.i46

if.end.i7.i36.img_ir_symbol_timing_preprocess.exit47_crit_edge: ; preds = %if.end.i7.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_symbol_timing_preprocess.exit47

if.then5.i17.i46:                                 ; preds = %if.end.i7.i36
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i8.i37 = zext i16 %27 to i32
  %mul.i9.i38 = mul i32 %conv7.i8.i37, %unit
  %div.i10.i39 = udiv i32 %mul.i9.i38, 1000
  %conv8.i11.i40 = trunc i32 %div.i10.i39 to i16
  %29 = ptrtoint ptr %space.i31 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv8.i11.i40, ptr %space.i31, align 2
  %30 = ptrtoint ptr %max.i3.i32 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %max.i3.i32, align 2
  %conv11.i12.i41 = zext i16 %31 to i32
  %mul12.i13.i42 = mul i32 %conv11.i12.i41, %unit
  %add.i14.i43 = add i32 %mul12.i13.i42, 999
  %div13.i15.i44 = udiv i32 %add.i14.i43, 1000
  %conv14.i16.i45 = trunc i32 %div13.i15.i44 to i16
  store i16 %conv14.i16.i45, ptr %max.i3.i32, align 2
  br label %img_ir_symbol_timing_preprocess.exit47

img_ir_symbol_timing_preprocess.exit47:           ; preds = %if.then5.i17.i46, %if.end.i7.i36.img_ir_symbol_timing_preprocess.exit47_crit_edge
  %s01 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 2
  %max.i.i48 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 2, i32 0, i32 1
  %32 = ptrtoint ptr %max.i.i48 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %max.i.i48, align 2
  %34 = ptrtoint ptr %s01 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %s01, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %35)
  %cmp.i.i49 = icmp ult i16 %33, %35
  br i1 %cmp.i.i49, label %if.then.i.i50, label %img_ir_symbol_timing_preprocess.exit47.if.end.i.i52_crit_edge

img_ir_symbol_timing_preprocess.exit47.if.end.i.i52_crit_edge: ; preds = %img_ir_symbol_timing_preprocess.exit47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i52

if.then.i.i50:                                    ; preds = %img_ir_symbol_timing_preprocess.exit47
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %max.i.i48 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %max.i.i48, align 2
  br label %if.end.i.i52

if.end.i.i52:                                     ; preds = %if.then.i.i50, %img_ir_symbol_timing_preprocess.exit47.if.end.i.i52_crit_edge
  br i1 %tobool.not.i.i, label %if.end.i.i52.img_ir_timing_preprocess.exit.i66_crit_edge, label %if.then5.i.i62

if.end.i.i52.img_ir_timing_preprocess.exit.i66_crit_edge: ; preds = %if.end.i.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_timing_preprocess.exit.i66

if.then5.i.i62:                                   ; preds = %if.end.i.i52
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i53 = zext i16 %35 to i32
  %mul.i.i54 = mul i32 %conv7.i.i53, %unit
  %div.i.i55 = udiv i32 %mul.i.i54, 1000
  %conv8.i.i56 = trunc i32 %div.i.i55 to i16
  %37 = ptrtoint ptr %s01 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv8.i.i56, ptr %s01, align 2
  %38 = ptrtoint ptr %max.i.i48 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %max.i.i48, align 2
  %conv11.i.i57 = zext i16 %39 to i32
  %mul12.i.i58 = mul i32 %conv11.i.i57, %unit
  %add.i.i59 = add i32 %mul12.i.i58, 999
  %div13.i.i60 = udiv i32 %add.i.i59, 1000
  %conv14.i.i61 = trunc i32 %div13.i.i60 to i16
  store i16 %conv14.i.i61, ptr %max.i.i48, align 2
  br label %img_ir_timing_preprocess.exit.i66

img_ir_timing_preprocess.exit.i66:                ; preds = %if.then5.i.i62, %if.end.i.i52.img_ir_timing_preprocess.exit.i66_crit_edge
  %space.i63 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 2, i32 1
  %max.i3.i64 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 2, i32 1, i32 1
  %40 = ptrtoint ptr %max.i3.i64 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %max.i3.i64, align 2
  %42 = ptrtoint ptr %space.i63 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %space.i63, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %43)
  %cmp.i4.i65 = icmp ult i16 %41, %43
  br i1 %cmp.i4.i65, label %if.then.i5.i67, label %img_ir_timing_preprocess.exit.i66.if.end.i7.i68_crit_edge

img_ir_timing_preprocess.exit.i66.if.end.i7.i68_crit_edge: ; preds = %img_ir_timing_preprocess.exit.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i7.i68

if.then.i5.i67:                                   ; preds = %img_ir_timing_preprocess.exit.i66
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %max.i3.i64 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %max.i3.i64, align 2
  br label %if.end.i7.i68

if.end.i7.i68:                                    ; preds = %if.then.i5.i67, %img_ir_timing_preprocess.exit.i66.if.end.i7.i68_crit_edge
  br i1 %tobool.not.i.i, label %if.end.i7.i68.img_ir_symbol_timing_preprocess.exit79_crit_edge, label %if.then5.i17.i78

if.end.i7.i68.img_ir_symbol_timing_preprocess.exit79_crit_edge: ; preds = %if.end.i7.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_symbol_timing_preprocess.exit79

if.then5.i17.i78:                                 ; preds = %if.end.i7.i68
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i8.i69 = zext i16 %43 to i32
  %mul.i9.i70 = mul i32 %conv7.i8.i69, %unit
  %div.i10.i71 = udiv i32 %mul.i9.i70, 1000
  %conv8.i11.i72 = trunc i32 %div.i10.i71 to i16
  %45 = ptrtoint ptr %space.i63 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv8.i11.i72, ptr %space.i63, align 2
  %46 = ptrtoint ptr %max.i3.i64 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %max.i3.i64, align 2
  %conv11.i12.i73 = zext i16 %47 to i32
  %mul12.i13.i74 = mul i32 %conv11.i12.i73, %unit
  %add.i14.i75 = add i32 %mul12.i13.i74, 999
  %div13.i15.i76 = udiv i32 %add.i14.i75, 1000
  %conv14.i16.i77 = trunc i32 %div13.i15.i76 to i16
  store i16 %conv14.i16.i77, ptr %max.i3.i64, align 2
  br label %img_ir_symbol_timing_preprocess.exit79

img_ir_symbol_timing_preprocess.exit79:           ; preds = %if.then5.i17.i78, %if.end.i7.i68.img_ir_symbol_timing_preprocess.exit79_crit_edge
  %s10 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 3
  %max.i.i80 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 3, i32 0, i32 1
  %48 = ptrtoint ptr %max.i.i80 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %max.i.i80, align 2
  %50 = ptrtoint ptr %s10 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %s10, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %51)
  %cmp.i.i81 = icmp ult i16 %49, %51
  br i1 %cmp.i.i81, label %if.then.i.i82, label %img_ir_symbol_timing_preprocess.exit79.if.end.i.i84_crit_edge

img_ir_symbol_timing_preprocess.exit79.if.end.i.i84_crit_edge: ; preds = %img_ir_symbol_timing_preprocess.exit79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i84

if.then.i.i82:                                    ; preds = %img_ir_symbol_timing_preprocess.exit79
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %max.i.i80 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %max.i.i80, align 2
  br label %if.end.i.i84

if.end.i.i84:                                     ; preds = %if.then.i.i82, %img_ir_symbol_timing_preprocess.exit79.if.end.i.i84_crit_edge
  br i1 %tobool.not.i.i, label %if.end.i.i84.img_ir_timing_preprocess.exit.i98_crit_edge, label %if.then5.i.i94

if.end.i.i84.img_ir_timing_preprocess.exit.i98_crit_edge: ; preds = %if.end.i.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_timing_preprocess.exit.i98

if.then5.i.i94:                                   ; preds = %if.end.i.i84
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i85 = zext i16 %51 to i32
  %mul.i.i86 = mul i32 %conv7.i.i85, %unit
  %div.i.i87 = udiv i32 %mul.i.i86, 1000
  %conv8.i.i88 = trunc i32 %div.i.i87 to i16
  %53 = ptrtoint ptr %s10 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv8.i.i88, ptr %s10, align 2
  %54 = ptrtoint ptr %max.i.i80 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %max.i.i80, align 2
  %conv11.i.i89 = zext i16 %55 to i32
  %mul12.i.i90 = mul i32 %conv11.i.i89, %unit
  %add.i.i91 = add i32 %mul12.i.i90, 999
  %div13.i.i92 = udiv i32 %add.i.i91, 1000
  %conv14.i.i93 = trunc i32 %div13.i.i92 to i16
  store i16 %conv14.i.i93, ptr %max.i.i80, align 2
  br label %img_ir_timing_preprocess.exit.i98

img_ir_timing_preprocess.exit.i98:                ; preds = %if.then5.i.i94, %if.end.i.i84.img_ir_timing_preprocess.exit.i98_crit_edge
  %space.i95 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 3, i32 1
  %max.i3.i96 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 3, i32 1, i32 1
  %56 = ptrtoint ptr %max.i3.i96 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %max.i3.i96, align 2
  %58 = ptrtoint ptr %space.i95 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %space.i95, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %59)
  %cmp.i4.i97 = icmp ult i16 %57, %59
  br i1 %cmp.i4.i97, label %if.then.i5.i99, label %img_ir_timing_preprocess.exit.i98.if.end.i7.i100_crit_edge

img_ir_timing_preprocess.exit.i98.if.end.i7.i100_crit_edge: ; preds = %img_ir_timing_preprocess.exit.i98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i7.i100

if.then.i5.i99:                                   ; preds = %img_ir_timing_preprocess.exit.i98
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %max.i3.i96 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %max.i3.i96, align 2
  br label %if.end.i7.i100

if.end.i7.i100:                                   ; preds = %if.then.i5.i99, %img_ir_timing_preprocess.exit.i98.if.end.i7.i100_crit_edge
  br i1 %tobool.not.i.i, label %if.end.i7.i100.img_ir_symbol_timing_preprocess.exit111_crit_edge, label %if.then5.i17.i110

if.end.i7.i100.img_ir_symbol_timing_preprocess.exit111_crit_edge: ; preds = %if.end.i7.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_symbol_timing_preprocess.exit111

if.then5.i17.i110:                                ; preds = %if.end.i7.i100
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i8.i101 = zext i16 %59 to i32
  %mul.i9.i102 = mul i32 %conv7.i8.i101, %unit
  %div.i10.i103 = udiv i32 %mul.i9.i102, 1000
  %conv8.i11.i104 = trunc i32 %div.i10.i103 to i16
  %61 = ptrtoint ptr %space.i95 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv8.i11.i104, ptr %space.i95, align 2
  %62 = ptrtoint ptr %max.i3.i96 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %max.i3.i96, align 2
  %conv11.i12.i105 = zext i16 %63 to i32
  %mul12.i13.i106 = mul i32 %conv11.i12.i105, %unit
  %add.i14.i107 = add i32 %mul12.i13.i106, 999
  %div13.i15.i108 = udiv i32 %add.i14.i107, 1000
  %conv14.i16.i109 = trunc i32 %div13.i15.i108 to i16
  store i16 %conv14.i16.i109, ptr %max.i3.i96, align 2
  br label %img_ir_symbol_timing_preprocess.exit111

img_ir_symbol_timing_preprocess.exit111:          ; preds = %if.then5.i17.i110, %if.end.i7.i100.img_ir_symbol_timing_preprocess.exit111_crit_edge
  %s11 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 4
  %max.i.i112 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 4, i32 0, i32 1
  %64 = ptrtoint ptr %max.i.i112 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %max.i.i112, align 2
  %66 = ptrtoint ptr %s11 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %s11, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %65, i16 %67)
  %cmp.i.i113 = icmp ult i16 %65, %67
  br i1 %cmp.i.i113, label %if.then.i.i114, label %img_ir_symbol_timing_preprocess.exit111.if.end.i.i116_crit_edge

img_ir_symbol_timing_preprocess.exit111.if.end.i.i116_crit_edge: ; preds = %img_ir_symbol_timing_preprocess.exit111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i116

if.then.i.i114:                                   ; preds = %img_ir_symbol_timing_preprocess.exit111
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %max.i.i112 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %max.i.i112, align 2
  br label %if.end.i.i116

if.end.i.i116:                                    ; preds = %if.then.i.i114, %img_ir_symbol_timing_preprocess.exit111.if.end.i.i116_crit_edge
  br i1 %tobool.not.i.i, label %if.end.i.i116.img_ir_timing_preprocess.exit.i130_crit_edge, label %if.then5.i.i126

if.end.i.i116.img_ir_timing_preprocess.exit.i130_crit_edge: ; preds = %if.end.i.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_ir_timing_preprocess.exit.i130

if.then5.i.i126:                                  ; preds = %if.end.i.i116
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i117 = zext i16 %67 to i32
  %mul.i.i118 = mul i32 %conv7.i.i117, %unit
  %div.i.i119 = udiv i32 %mul.i.i118, 1000
  %conv8.i.i120 = trunc i32 %div.i.i119 to i16
  %69 = ptrtoint ptr %s11 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv8.i.i120, ptr %s11, align 2
  %70 = ptrtoint ptr %max.i.i112 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %max.i.i112, align 2
  %conv11.i.i121 = zext i16 %71 to i32
  %mul12.i.i122 = mul i32 %conv11.i.i121, %unit
  %add.i.i123 = add i32 %mul12.i.i122, 999
  %div13.i.i124 = udiv i32 %add.i.i123, 1000
  %conv14.i.i125 = trunc i32 %div13.i.i124 to i16
  store i16 %conv14.i.i125, ptr %max.i.i112, align 2
  br label %img_ir_timing_preprocess.exit.i130

img_ir_timing_preprocess.exit.i130:               ; preds = %if.then5.i.i126, %if.end.i.i116.img_ir_timing_preprocess.exit.i130_crit_edge
  %space.i127 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 4, i32 1
  %max.i3.i128 = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 4, i32 1, i32 1
  %72 = ptrtoint ptr %max.i3.i128 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %max.i3.i128, align 2
  %74 = ptrtoint ptr %space.i127 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %space.i127, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %75)
  %cmp.i4.i129 = icmp ult i16 %73, %75
  br i1 %cmp.i4.i129, label %if.then.i5.i131, label %img_ir_timing_preprocess.exit.i130.if.end.i7.i132_crit_edge

img_ir_timing_preprocess.exit.i130.if.end.i7.i132_crit_edge: ; preds = %img_ir_timing_preprocess.exit.i130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i7.i132

if.then.i5.i131:                                  ; preds = %img_ir_timing_preprocess.exit.i130
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %max.i3.i128 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %max.i3.i128, align 2
  br label %if.end.i7.i132

if.end.i7.i132:                                   ; preds = %if.then.i5.i131, %img_ir_timing_preprocess.exit.i130.if.end.i7.i132_crit_edge
  br i1 %tobool.not.i.i, label %if.end.i7.i132.if.end_crit_edge, label %if.then

if.end.i7.i132.if.end_crit_edge:                  ; preds = %if.end.i7.i132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %if.end.i7.i132
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i8.i133 = zext i16 %75 to i32
  %mul.i9.i134 = mul i32 %conv7.i8.i133, %unit
  %div.i10.i135 = udiv i32 %mul.i9.i134, 1000
  %conv8.i11.i136 = trunc i32 %div.i10.i135 to i16
  %77 = ptrtoint ptr %space.i127 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv8.i11.i136, ptr %space.i127, align 2
  %78 = ptrtoint ptr %max.i3.i128 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %max.i3.i128, align 2
  %conv11.i12.i137 = zext i16 %79 to i32
  %mul12.i13.i138 = mul i32 %conv11.i12.i137, %unit
  %add.i14.i139 = add i32 %mul12.i13.i138, 999
  %div13.i15.i140 = udiv i32 %add.i14.i139, 1000
  %conv14.i16.i141 = trunc i32 %div13.i15.i140 to i16
  store i16 %conv14.i16.i141, ptr %max.i3.i128, align 2
  %ft_min = getelementptr inbounds %struct.img_ir_timings, ptr %timings, i32 0, i32 5, i32 2
  %80 = ptrtoint ptr %ft_min to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %ft_min, align 2
  %conv = zext i16 %81 to i32
  %mul = mul i32 %conv, %unit
  %add = add i32 %mul, 999
  %div = udiv i32 %add, 1000
  %conv1 = trunc i32 %div to i16
  store i16 %conv1, ptr %ft_min, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i7.i132.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @img_ir_change_frequency(ptr noundef %priv, ptr nocapture noundef readonly %change) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_ir_change_frequency.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_ir_change_frequency, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !89

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %old_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %change, i32 0, i32 1
  %2 = ptrtoint ptr %old_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %old_rate, align 4
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %change, i32 0, i32 2
  %4 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %new_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_ir_change_frequency.__UNIQUE_ID_ddebug242, ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %3, i32 noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %clk_hz = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 7
  %6 = ptrtoint ptr %clk_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_hz, align 8
  %new_rate4 = getelementptr inbounds %struct.clk_notifier_data, ptr %change, i32 0, i32 2
  %8 = ptrtoint ptr %new_rate4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %new_rate4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %do.end.unlock_crit_edge, label %if.end6

do.end.unlock_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end6:                                          ; preds = %do.end
  %10 = ptrtoint ptr %clk_hz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %clk_hz, align 8
  %decoder = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 5
  %11 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %decoder, align 8
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.end6.unlock_crit_edge, label %if.then10

if.end6.unlock_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then10:                                        ; preds = %if.end6
  %reg_timings = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 8
  tail call fastcc void @img_ir_decoder_convert(ptr noundef nonnull %12, ptr noundef %reg_timings, i32 noundef %9)
  %mode = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 11
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %14, label %if.then10.unlock_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb16
  ]

if.then10.unlock_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

sw.bb:                                            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %timings = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 8, i32 1
  tail call fastcc void @img_ir_write_timings(ptr noundef %priv, ptr noundef %timings, i32 noundef 0)
  br label %unlock

sw.bb14:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %rtimings = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 8, i32 2
  tail call fastcc void @img_ir_write_timings(ptr noundef %priv, ptr noundef %rtimings, i32 noundef 0)
  br label %unlock

sw.bb16:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %timings18 = getelementptr inbounds %struct.img_ir_priv, ptr %priv, i32 0, i32 7, i32 8, i32 1
  tail call fastcc void @img_ir_write_timings(ptr noundef %priv, ptr noundef %timings18, i32 noundef 1)
  br label %unlock

unlock:                                           ; preds = %sw.bb16, %sw.bb14, %sw.bb, %if.then10.unlock_crit_edge, %if.end6.unlock_crit_edge, %do.end.unlock_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @img_ir_set_filter(ptr nocapture noundef readonly %dev, i32 noundef %type, ptr noundef %sc_filter) unnamed_addr #0 align 64 {
entry:
  %filter = alloca %struct.img_ir_filter, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %filter) #6
  %2 = call ptr @memset(ptr %filter, i32 255, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_ir_set_filter.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_ir_set_filter, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !89

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  %cond = select i1 %cmp, ptr @.str.34, ptr @.str.35
  %5 = ptrtoint ptr %sc_filter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sc_filter, align 4
  %mask = getelementptr inbounds %struct.rc_scancode_filter, ptr %sc_filter, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_ir_set_filter.__UNIQUE_ID_ddebug235, ptr noundef %4, ptr noundef nonnull @.str.33, ptr noundef nonnull %cond, i32 noundef %6, i32 noundef %8) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %mask6 = getelementptr inbounds %struct.rc_scancode_filter, ptr %sc_filter, i32 0, i32 1
  %9 = ptrtoint ptr %mask6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %do.end.set_unlock_crit_edge, label %if.end9

do.end.set_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_unlock

if.end9:                                          ; preds = %do.end
  %decoder = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 7, i32 5
  %11 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %decoder, align 8
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %if.end9.unlock_crit_edge, label %lor.lhs.false

if.end9.unlock_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

lor.lhs.false:                                    ; preds = %if.end9
  %filter12 = getelementptr inbounds %struct.img_ir_decoder, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %filter12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %filter12, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %lor.lhs.false.unlock_crit_edge, label %if.end15

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end15:                                         ; preds = %lor.lhs.false
  %minlen = getelementptr inbounds %struct.img_ir_filter, ptr %filter, i32 0, i32 2
  %15 = ptrtoint ptr %minlen to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %minlen, align 8
  %maxlen = getelementptr inbounds %struct.img_ir_filter, ptr %filter, i32 0, i32 3
  %16 = ptrtoint ptr %maxlen to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %maxlen, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp16 = icmp eq i32 %type, 0
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %enabled_protocols = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 17
  %17 = ptrtoint ptr %enabled_protocols to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %enabled_protocols, align 8
  br label %if.end24

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %wakeup_protocol = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 19
  %19 = ptrtoint ptr %wakeup_protocol to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wakeup_protocol, align 8
  %sh_prom = zext i32 %20 to i64
  %shl = shl nuw i64 1, %sh_prom
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then17
  %shl.sink = phi i64 [ %shl, %if.else ], [ %18, %if.then17 ]
  %call23 = call i32 %14(ptr noundef %sc_filter, ptr noundef nonnull %filter, i64 noundef %shl.sink) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool25.not = icmp eq i32 %call23, 0
  br i1 %tobool25.not, label %do.body28, label %if.end24.unlock_crit_edge

if.end24.unlock_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

do.body28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_ir_set_filter.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_ir_set_filter, %if.then40)) #6
          to label %set_unlock [label %if.then40], !srcloc !89

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp42 = icmp eq i32 %type, 1
  %cond43 = select i1 %cmp42, ptr @.str.34, ptr @.str.35
  %23 = ptrtoint ptr %filter to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %filter, align 8
  %mask45 = getelementptr inbounds %struct.img_ir_filter, ptr %filter, i32 0, i32 1
  %25 = ptrtoint ptr %mask45 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %mask45, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_ir_set_filter.__UNIQUE_ID_ddebug236, ptr noundef %22, ptr noundef nonnull @.str.36, ptr noundef nonnull %cond43, i64 noundef %24, i64 noundef %26) #6
  br label %set_unlock

set_unlock:                                       ; preds = %if.then40, %do.body28, %do.end.set_unlock_crit_edge
  %filter_ptr.0 = phi ptr [ %filter, %if.then40 ], [ null, %do.end.set_unlock_crit_edge ], [ %filter, %do.body28 ]
  %27 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %type, label %set_unlock.unlock_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb49
  ]

set_unlock.unlock_crit_edge:                      ; preds = %set_unlock
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

sw.bb:                                            ; preds = %set_unlock
  %reg_base.i.i = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 64
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %tobool.not.i = icmp eq ptr %filter_ptr.0, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %filters.i = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 7, i32 10
  %31 = call ptr @memcpy(ptr %filters.i, ptr %filter_ptr.0, i32 24)
  %flags.i = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 7, i32 9
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %33, 1
  store i32 %or.i, ptr %flags.i, align 8
  br label %_img_ir_set_filter.exit

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %flags2.i = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 7, i32 9
  %34 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags2.i, align 8
  %and3.i = and i32 %35, -2
  store i32 %and3.i, ptr %flags2.i, align 8
  br label %_img_ir_set_filter.exit

_img_ir_set_filter.exit:                          ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ -5, %if.else.i ], [ -4, %if.then.i ]
  %irq_on.0.i = phi i32 [ 3, %if.else.i ], [ 4, %if.then.i ]
  %36 = call i32 @llvm.bswap.i32(i32 %30) #6
  %and4.i = and i32 %.sink.i, %36
  %or5.i = or i32 %irq_on.0.i, %and4.i
  call fastcc void @img_ir_write_filter(ptr noundef %1, ptr noundef %filter_ptr.0) #6
  %37 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_base.i.i, align 8
  %add.ptr.i19.i = getelementptr i8, ptr %38, i32 72
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  call void @arm_heavy_mb() #6
  %39 = shl nuw nsw i32 %irq_on.0.i, 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %39) #6, !srcloc !88
  %40 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base.i.i, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %41, i32 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  call void @arm_heavy_mb() #6
  %42 = call i32 @llvm.bswap.i32(i32 %or5.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %42) #6, !srcloc !88
  br label %unlock

sw.bb49:                                          ; preds = %set_unlock
  %tobool.not.i74 = icmp eq ptr %filter_ptr.0, null
  br i1 %tobool.not.i74, label %if.else.i79, label %if.then.i77

if.then.i77:                                      ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.img_ir_priv, ptr %1, i32 0, i32 7, i32 10, i32 1
  %43 = call ptr @memcpy(ptr %arrayidx.i, ptr %filter_ptr.0, i32 24)
  %flags.i75 = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 7, i32 9
  %44 = ptrtoint ptr %flags.i75 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i75, align 8
  %or.i76 = or i32 %45, 2
  store i32 %or.i76, ptr %flags.i75, align 8
  br label %unlock

if.else.i79:                                      ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  %flags2.i78 = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 7, i32 9
  %46 = ptrtoint ptr %flags2.i78 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags2.i78, align 8
  %and.i = and i32 %47, -3
  store i32 %and.i, ptr %flags2.i78, align 8
  br label %unlock

unlock:                                           ; preds = %if.else.i79, %if.then.i77, %_img_ir_set_filter.exit, %set_unlock.unlock_crit_edge, %if.end24.unlock_crit_edge, %lor.lhs.false.unlock_crit_edge, %if.end9.unlock_crit_edge
  %ret.2 = phi i32 [ %call23, %if.end24.unlock_crit_edge ], [ 0, %_img_ir_set_filter.exit ], [ -22, %lor.lhs.false.unlock_crit_edge ], [ -22, %if.end9.unlock_crit_edge ], [ -22, %set_unlock.unlock_crit_edge ], [ 0, %if.then.i77 ], [ 0, %if.else.i79 ]
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %filter) #6
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !50, !52, !53, !54, !56, !57, !59, !60, !62, !64, !65, !66, !68, !69, !70, !71, !72, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @img_ir_probe_hw.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 1054, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @img_ir_probe_hw.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 1055, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 1064, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @img_ir_probe_hw._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @img_ir_probe_hw._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 1074, i32 3}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @img_ir_probe_hw._entry.8, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @img_ir_probe_hw._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 1079, i32 19}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 1081, i32 22}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 1088, i32 3}
!25 = !{ptr @img_ir_probe_hw._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @img_ir_probe_hw._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 831, i32 2}
!29 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @img_ir_handle_data.__UNIQUE_ID_ddebug237, !28, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 834, i32 3}
!34 = !{ptr @img_ir_handle_data.__UNIQUE_ID_ddebug238, !33, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 841, i32 4}
!37 = !{ptr @img_ir_handle_data.__UNIQUE_ID_ddebug239, !36, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 844, i32 4}
!40 = !{ptr @img_ir_handle_data.__UNIQUE_ID_ddebug240, !39, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 847, i32 3}
!43 = !{ptr @img_ir_handle_data.__UNIQUE_ID_ddebug241, !42, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 389, i32 2}
!46 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @img_ir_write_timings.__UNIQUE_ID_ddebug232, !45, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!48 = !{ptr @img_ir_decoders, !49, !"img_ir_decoders", i1 false, i1 false}
!49 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 25, i32 31}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 397, i32 3}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @img_ir_write_filter.__UNIQUE_ID_ddebug233, !51, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 407, i32 3}
!56 = !{ptr @img_ir_write_filter.__UNIQUE_ID_ddebug234, !55, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 22, i32 8}
!59 = !{ptr @img_ir_decoders_lock, !58, !"img_ir_decoders_lock", i1 false, i1 false}
!60 = distinct !{null, !61, !"img_ir_decoders_preprocessed", i1 false, i1 false}
!61 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 24, i32 13}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 904, i32 2}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @img_ir_change_frequency.__UNIQUE_ID_ddebug242, !63, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 465, i32 2}
!68 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @img_ir_set_filter.__UNIQUE_ID_ddebug235, !67, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!70 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/rc/img-ir/img-ir-hw.c", i32 498, i32 2}
!74 = !{ptr @img_ir_set_filter.__UNIQUE_ID_ddebug236, !73, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 4261414}
!85 = !{i64 2151801763}
!86 = !{i8 0, i8 2}
!87 = !{i64 2151803118}
!88 = !{i64 4260996}
!89 = !{i64 2148753283, i64 2148753288, i64 2148753301, i64 2148753345, i64 2148753379, i64 2148753400}
