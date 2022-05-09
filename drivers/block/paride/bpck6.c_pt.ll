; ModuleID = '/llk/IR_all_yes/drivers/block/paride/bpck6.c_pt.bc'
source_filename = "../drivers/block/paride/bpck6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_protocol = type { [8 x i8], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pi_adapter = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ppc_storage = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@bpck6 = internal global { %struct.pi_protocol, [48 x i8] } { %struct.pi_protocol { [8 x i8] c"bpck6\00\00\00", i32 0, i32 5, i32 2, i32 0, i32 255, ptr @bpck6_write_regr, ptr @bpck6_read_regr, ptr @bpck6_write_block, ptr @bpck6_read_block, ptr @bpck6_connect, ptr @bpck6_disconnect, ptr @bpck6_test_port, ptr @bpck6_probe_unit, ptr null, ptr @bpck6_log_adapter, ptr @bpck6_init_proto, ptr @bpck6_release_proto, ptr null }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file223 = internal constant [38 x i8] c"bpck6.file=drivers/block/paride/bpck6\00", section ".modinfo", align 1
@__UNIQUE_ID_license224 = internal constant [18 x i8] c"bpck6.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author225 = internal constant [34 x i8] c"bpck6.author=Micro Solutions Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [67 x i8] c"bpck6.description=BACKPACK Protocol module, compatible with PARIDE\00", section ".modinfo", align 1
@__param_str_verbose = internal constant [14 x i8] c"bpck6.verbose\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype227 = internal constant [28 x i8] c"bpck6.parmtype=verbose:bool\00", section ".modinfo", align 1
@__initcall__kmod_bpck6__228_266_bpck6_init6 = internal global ptr @bpck6_init, section ".initcall6.init", align 4
@__exitcall_bpck6_exit = internal global ptr @bpck6_exit, section ".exitcall.exit", align 4
@bpck6_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\017connect\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bpck6_connect\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/block/paride/bpck6.c\00", [35 x i8] zeroinitializer }, align 32
@bpck6_connect._entry_ptr = internal global ptr @bpck6_connect._entry, section ".printk_index", align 4
@bpck6_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"disconnect\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bpck6_disconnect\00", [47 x i8] zeroinitializer }, align 32
@bpck6_disconnect._entry_ptr = internal global ptr @bpck6_disconnect._entry, section ".printk_index", align 4
@bpck6_test_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017PARPORT indicates modes=%x for lp=0x%lx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bpck6_test_port\00", [16 x i8] zeroinitializer }, align 32
@bpck6_test_port._entry_ptr = internal global ptr @bpck6_test_port._entry, section ".printk_index", align 4
@bpck6_probe_unit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017PROBE UNIT %x on port:%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bpck6_probe_unit\00", [47 x i8] zeroinitializer }, align 32
@bpck6_probe_unit._entry_ptr = internal global ptr @bpck6_probe_unit._entry, section ".printk_index", align 4
@bpck6_probe_unit._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017ppc_open returned %2x\0A\00", [39 x i8] zeroinitializer }, align 32
@bpck6_probe_unit._entry_ptr.11 = internal global ptr @bpck6_probe_unit._entry.9, section ".printk_index", align 4
@bpck6_probe_unit._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017leaving probe\0A\00", [47 x i8] zeroinitializer }, align 32
@bpck6_probe_unit._entry_ptr.14 = internal global ptr @bpck6_probe_unit._entry.12, section ".printk_index", align 4
@bpck6_probe_unit._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017Failed open\0A\00", [17 x i8] zeroinitializer }, align 32
@bpck6_probe_unit._entry_ptr.17 = internal global ptr @bpck6_probe_unit._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EPP-8\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP-16\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP-32\00", [25 x i8] zeroinitializer }, align 32
@__const.bpck6_log_adapter.mode_string = private unnamed_addr constant [5 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], align 4
@bpck6_log_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: BACKPACK Protocol Driver V2.0.2\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bpck6_log_adapter\00", [46 x i8] zeroinitializer }, align 32
@bpck6_log_adapter._entry_ptr = internal global ptr @bpck6_log_adapter._entry, section ".printk_index", align 4
@bpck6_log_adapter._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: Copyright 2001 by Micro Solutions, Inc., DeKalb IL.\0A\00", [39 x i8] zeroinitializer }, align 32
@bpck6_log_adapter._entry_ptr.27 = internal global ptr @bpck6_log_adapter._entry.25, section ".printk_index", align 4
@bpck6_log_adapter._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: BACKPACK %s, Micro Solutions BACKPACK Drive at 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@bpck6_log_adapter._entry_ptr.30 = internal global ptr @bpck6_log_adapter._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.0.2\00", [26 x i8] zeroinitializer }, align 32
@bpck6_log_adapter._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.24, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Unit: %d Mode:%d (%s) Delay %d\0A\00", [60 x i8] zeroinitializer }, align 32
@bpck6_log_adapter._entry_ptr.34 = internal global ptr @bpck6_log_adapter._entry.32, section ".printk_index", align 4
@bpck6_init_proto._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: ERROR COULDN'T ALLOCATE MEMORY\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bpck6_init_proto\00", [47 x i8] zeroinitializer }, align 32
@bpck6_init_proto._entry_ptr = internal global ptr @bpck6_init_proto._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bpck6_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016bpck6: BACKPACK Protocol Driver V2.0.2\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bpck6_init\00", [21 x i8] zeroinitializer }, align 32
@bpck6_init._entry_ptr = internal global ptr @bpck6_init._entry, section ".printk_index", align 4
@bpck6_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016bpck6: Copyright 2001 by Micro Solutions, Inc., DeKalb IL. USA\0A\00", [62 x i8] zeroinitializer }, align 32
@bpck6_init._entry_ptr.41 = internal global ptr @bpck6_init._entry.39, section ".printk_index", align 4
@bpck6_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017bpck6: verbose debug enabled.\0A\00", [63 x i8] zeroinitializer }, align 32
@bpck6_init._entry_ptr.44 = internal global ptr @bpck6_init._entry.42, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.45 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.46 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.47 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.48 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.49 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.50 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.51 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.52 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.53 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.54 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.55 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.56 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.57 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.58 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.59 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.60 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.61 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.62 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.63 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.64 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.65 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.66 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.67 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.68 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.69 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"bpck6\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 229, i32 27 }
@___asan_gen_.73 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 37, i32 13 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 95, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 119, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 129, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 163, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 176, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 184, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 192, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 201, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 201, i32 12 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 201, i32 20 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 201, i32 28 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 201, i32 37 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 203, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 204, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 205, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 207, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 220, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 250, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 251, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.206 = private constant [32 x i8] c"../drivers/block/paride/bpck6.c\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 253, i32 3 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file223, ptr @__UNIQUE_ID_license224, ptr @__UNIQUE_ID_verbosetype227, ptr @__exitcall_bpck6_exit, ptr @__initcall__kmod_bpck6__228_266_bpck6_init6, ptr @__param_verbose, ptr @bpck6_connect._entry, ptr @bpck6_connect._entry_ptr, ptr @bpck6_disconnect._entry, ptr @bpck6_disconnect._entry_ptr, ptr @bpck6_exit, ptr @bpck6_init._entry, ptr @bpck6_init._entry.39, ptr @bpck6_init._entry.42, ptr @bpck6_init._entry_ptr, ptr @bpck6_init._entry_ptr.41, ptr @bpck6_init._entry_ptr.44, ptr @bpck6_init_proto._entry, ptr @bpck6_init_proto._entry_ptr, ptr @bpck6_log_adapter._entry, ptr @bpck6_log_adapter._entry.25, ptr @bpck6_log_adapter._entry.28, ptr @bpck6_log_adapter._entry.32, ptr @bpck6_log_adapter._entry_ptr, ptr @bpck6_log_adapter._entry_ptr.27, ptr @bpck6_log_adapter._entry_ptr.30, ptr @bpck6_log_adapter._entry_ptr.34, ptr @bpck6_probe_unit._entry, ptr @bpck6_probe_unit._entry.12, ptr @bpck6_probe_unit._entry.15, ptr @bpck6_probe_unit._entry.9, ptr @bpck6_probe_unit._entry_ptr, ptr @bpck6_probe_unit._entry_ptr.11, ptr @bpck6_probe_unit._entry_ptr.14, ptr @bpck6_probe_unit._entry_ptr.17, ptr @bpck6_test_port._entry, ptr @bpck6_test_port._entry_ptr, ptr @bpck6, ptr @verbose, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck6 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck6_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck6_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck6_test_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck6_probe_unit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck6_probe_unit._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck6_probe_unit._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck6_probe_unit._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck6_log_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck6_log_adapter._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck6_log_adapter._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck6_log_adapter._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck6_init_proto._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck6_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck6_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck6_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bpck6_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @paride_unregister(ptr noundef nonnull @bpck6) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @paride_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bpck6_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #9
  %0 = load i8, ptr @verbose, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end6

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #9
  br label %if.end

if.end:                                           ; preds = %do.end6, %entry.if.end_crit_edge
  %call9 = tail call i32 @paride_register(ptr noundef nonnull @bpck6) #6
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpck6_write_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %reg)
  %0 = icmp ult i32 %reg, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cont)
  %1 = icmp ult i32 %cont, 2
  %2 = and i1 %1, %0
  br i1 %2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %private, align 4
  %5 = inttoptr i32 %4 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cont)
  %tobool.not = icmp eq i32 %cont, 0
  %or = or i32 %reg, 8
  %cond = select i1 %tobool.not, i32 %reg, i32 %or
  %conv = trunc i32 %cond to i8
  %conv6 = trunc i32 %val to i8
  %6 = or i8 %conv, 96
  %mode.i.i = getelementptr inbounds %struct.ppc_storage, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mode.i.i, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %if.then.ppc6_send_cmd.exit.i_crit_edge [
    i8 0, label %if.then.do.body.i.i_crit_edge
    i8 1, label %if.then.do.body.i.i_crit_edge14
    i8 2, label %if.then.do.body.i.i_crit_edge15
    i8 3, label %if.then.do.body.i.i_crit_edge16
    i8 4, label %if.then.do.body14.i.i_crit_edge
    i8 5, label %if.then.do.body14.i.i_crit_edge17
    i8 6, label %if.then.do.body14.i.i_crit_edge18
  ]

if.then.do.body14.i.i_crit_edge18:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i.i

if.then.do.body14.i.i_crit_edge17:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i.i

if.then.do.body14.i.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i.i

if.then.do.body.i.i_crit_edge16:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

if.then.do.body.i.i_crit_edge15:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

if.then.do.body.i.i_crit_edge14:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

if.then.do.body.i.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

if.then.ppc6_send_cmd.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_send_cmd.exit.i

do.body.i.i:                                      ; preds = %if.then.do.body.i.i_crit_edge, %if.then.do.body.i.i_crit_edge14, %if.then.do.body.i.i_crit_edge15, %if.then.do.body.i.i_crit_edge16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %5, align 2
  %conv1.i.i = zext i16 %11 to i32
  %add.i.i = or i32 %conv1.i.i, -18874368
  %12 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %6) #6, !srcloc !109
  %cur_ctrl.i.i = getelementptr inbounds %struct.ppc_storage, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %cur_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cur_ctrl.i.i, align 1
  %15 = xor i8 %14, 2
  store i8 %15, ptr %cur_ctrl.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %cur_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cur_ctrl.i.i, align 1
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %5, align 2
  %conv8.i.i = zext i16 %19 to i32
  %add11.i.i = add nuw nsw i32 %conv8.i.i, -18874366
  %20 = inttoptr i32 %add11.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %17) #6, !srcloc !109
  br label %ppc6_send_cmd.exitthread-pre-split.i

do.body14.i.i:                                    ; preds = %if.then.do.body14.i.i_crit_edge, %if.then.do.body14.i.i_crit_edge17, %if.then.do.body14.i.i_crit_edge18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %5, align 2
  %conv17.i.i = zext i16 %22 to i32
  %add20.i.i = add nuw nsw i32 %conv17.i.i, -18874365
  %23 = inttoptr i32 %add20.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %6) #6, !srcloc !109
  br label %ppc6_send_cmd.exitthread-pre-split.i

ppc6_send_cmd.exitthread-pre-split.i:             ; preds = %do.body14.i.i, %do.body.i.i
  %24 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %.pr.i = load i8, ptr %mode.i.i, align 1
  br label %ppc6_send_cmd.exit.i

ppc6_send_cmd.exit.i:                             ; preds = %ppc6_send_cmd.exitthread-pre-split.i, %if.then.ppc6_send_cmd.exit.i_crit_edge
  %25 = phi i8 [ %.pr.i, %ppc6_send_cmd.exitthread-pre-split.i ], [ %8, %if.then.ppc6_send_cmd.exit.i_crit_edge ]
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %25, label %ppc6_send_cmd.exit.i.if.end_crit_edge [
    i8 0, label %ppc6_send_cmd.exit.i.do.body.i10.i_crit_edge
    i8 1, label %ppc6_send_cmd.exit.i.do.body.i10.i_crit_edge19
    i8 2, label %ppc6_send_cmd.exit.i.do.body.i10.i_crit_edge20
    i8 3, label %ppc6_send_cmd.exit.i.do.body.i10.i_crit_edge21
    i8 4, label %ppc6_send_cmd.exit.i.do.body14.i13.i_crit_edge
    i8 5, label %ppc6_send_cmd.exit.i.do.body14.i13.i_crit_edge22
    i8 6, label %ppc6_send_cmd.exit.i.do.body14.i13.i_crit_edge23
  ]

ppc6_send_cmd.exit.i.do.body14.i13.i_crit_edge23: ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i13.i

ppc6_send_cmd.exit.i.do.body14.i13.i_crit_edge22: ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i13.i

ppc6_send_cmd.exit.i.do.body14.i13.i_crit_edge:   ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i13.i

ppc6_send_cmd.exit.i.do.body.i10.i_crit_edge21:   ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i10.i

ppc6_send_cmd.exit.i.do.body.i10.i_crit_edge20:   ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i10.i

ppc6_send_cmd.exit.i.do.body.i10.i_crit_edge19:   ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i10.i

ppc6_send_cmd.exit.i.do.body.i10.i_crit_edge:     ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i10.i

ppc6_send_cmd.exit.i.if.end_crit_edge:            ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body.i10.i:                                    ; preds = %ppc6_send_cmd.exit.i.do.body.i10.i_crit_edge, %ppc6_send_cmd.exit.i.do.body.i10.i_crit_edge19, %ppc6_send_cmd.exit.i.do.body.i10.i_crit_edge20, %ppc6_send_cmd.exit.i.do.body.i10.i_crit_edge21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %5, align 2
  %conv1.i5.i = zext i16 %28 to i32
  %add.i6.i = or i32 %conv1.i5.i, -18874368
  %29 = inttoptr i32 %add.i6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %conv6) #6, !srcloc !109
  %cur_ctrl.i7.i = getelementptr inbounds %struct.ppc_storage, ptr %5, i32 0, i32 6
  %30 = ptrtoint ptr %cur_ctrl.i7.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cur_ctrl.i7.i, align 1
  %32 = xor i8 %31, 4
  store i8 %32, ptr %cur_ctrl.i7.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %cur_ctrl.i7.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cur_ctrl.i7.i, align 1
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %5, align 2
  %conv8.i8.i = zext i16 %36 to i32
  %add11.i9.i = add nuw nsw i32 %conv8.i8.i, -18874366
  %37 = inttoptr i32 %add11.i9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %34) #6, !srcloc !109
  br label %if.end

do.body14.i13.i:                                  ; preds = %ppc6_send_cmd.exit.i.do.body14.i13.i_crit_edge, %ppc6_send_cmd.exit.i.do.body14.i13.i_crit_edge22, %ppc6_send_cmd.exit.i.do.body14.i13.i_crit_edge23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %5, align 2
  %conv17.i11.i = zext i16 %39 to i32
  %add20.i12.i = add nuw nsw i32 %conv17.i11.i, -18874364
  %40 = inttoptr i32 %add20.i12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %conv6) #6, !srcloc !109
  br label %if.end

if.end:                                           ; preds = %do.body14.i13.i, %do.body.i10.i, %ppc6_send_cmd.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpck6_read_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %reg)
  %0 = icmp ugt i32 %reg, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cont)
  %1 = icmp ugt i32 %cont, 2
  %2 = or i1 %1, %0
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %private, align 4
  %5 = inttoptr i32 %4 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cont)
  %tobool.not = icmp eq i32 %cont, 0
  %or = or i32 %reg, 8
  %cond = select i1 %tobool.not, i32 %reg, i32 %or
  %conv = trunc i32 %cond to i8
  %6 = or i8 %conv, 64
  %mode.i.i = getelementptr inbounds %struct.ppc_storage, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mode.i.i, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %8, label %if.end.ppc6_rd_port.exit_crit_edge [
    i8 0, label %if.end.do.body.i.i_crit_edge
    i8 1, label %if.end.do.body.i.i_crit_edge14
    i8 2, label %if.end.do.body.i.i_crit_edge15
    i8 3, label %if.end.do.body.i.i_crit_edge16
    i8 4, label %if.end.do.body14.i.i_crit_edge
    i8 5, label %if.end.do.body14.i.i_crit_edge17
    i8 6, label %if.end.do.body14.i.i_crit_edge18
  ]

if.end.do.body14.i.i_crit_edge18:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i.i

if.end.do.body14.i.i_crit_edge17:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i.i

if.end.do.body14.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i.i

if.end.do.body.i.i_crit_edge16:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

if.end.do.body.i.i_crit_edge15:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

if.end.do.body.i.i_crit_edge14:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

if.end.do.body.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

if.end.ppc6_rd_port.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_rd_port.exit

do.body.i.i:                                      ; preds = %if.end.do.body.i.i_crit_edge, %if.end.do.body.i.i_crit_edge14, %if.end.do.body.i.i_crit_edge15, %if.end.do.body.i.i_crit_edge16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %5, align 2
  %conv1.i.i = zext i16 %11 to i32
  %add.i.i = or i32 %conv1.i.i, -18874368
  %12 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %6) #6, !srcloc !109
  %cur_ctrl.i.i = getelementptr inbounds %struct.ppc_storage, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %cur_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cur_ctrl.i.i, align 1
  %15 = xor i8 %14, 2
  store i8 %15, ptr %cur_ctrl.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %cur_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cur_ctrl.i.i, align 1
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %5, align 2
  %conv8.i.i = zext i16 %19 to i32
  %add11.i.i = add nuw nsw i32 %conv8.i.i, -18874366
  %20 = inttoptr i32 %add11.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %17) #6, !srcloc !109
  br label %ppc6_rd_port.exit

do.body14.i.i:                                    ; preds = %if.end.do.body14.i.i_crit_edge, %if.end.do.body14.i.i_crit_edge17, %if.end.do.body14.i.i_crit_edge18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %5, align 2
  %conv17.i.i = zext i16 %22 to i32
  %add20.i.i = add nuw nsw i32 %conv17.i.i, -18874365
  %23 = inttoptr i32 %add20.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %6) #6, !srcloc !109
  br label %ppc6_rd_port.exit

ppc6_rd_port.exit:                                ; preds = %do.body14.i.i, %do.body.i.i, %if.end.ppc6_rd_port.exit_crit_edge
  %call.i = tail call fastcc zeroext i8 @ppc6_rd_data_byte(ptr noundef %5) #6
  %conv6 = zext i8 %call.i to i32
  br label %cleanup

cleanup:                                          ; preds = %ppc6_rd_port.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv6, %ppc6_rd_port.exit ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpck6_write_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  %shr = and i32 %len, -2
  %mode.i.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mode.i.i, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %4, label %entry.ppc6_send_cmd.exit.i_crit_edge [
    i8 0, label %entry.do.body.i.i_crit_edge
    i8 1, label %entry.do.body.i.i_crit_edge1
    i8 2, label %entry.do.body.i.i_crit_edge2
    i8 3, label %entry.do.body.i.i_crit_edge3
    i8 4, label %entry.do.body14.i.i_crit_edge
    i8 5, label %entry.do.body14.i.i_crit_edge4
    i8 6, label %entry.do.body14.i.i_crit_edge5
  ]

entry.do.body14.i.i_crit_edge5:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i.i

entry.do.body14.i.i_crit_edge4:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i.i

entry.do.body14.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i.i

entry.do.body.i.i_crit_edge3:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

entry.do.body.i.i_crit_edge2:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

entry.do.body.i.i_crit_edge1:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

entry.do.body.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

entry.ppc6_send_cmd.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_send_cmd.exit.i

do.body.i.i:                                      ; preds = %entry.do.body.i.i_crit_edge, %entry.do.body.i.i_crit_edge1, %entry.do.body.i.i_crit_edge2, %entry.do.body.i.i_crit_edge3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %2, align 2
  %conv1.i.i = zext i16 %7 to i32
  %add.i.i = or i32 %conv1.i.i, -18874368
  %8 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 40) #6, !srcloc !109
  %cur_ctrl.i.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  %9 = ptrtoint ptr %cur_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cur_ctrl.i.i, align 1
  %11 = xor i8 %10, 2
  store i8 %11, ptr %cur_ctrl.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %cur_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cur_ctrl.i.i, align 1
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %2, align 2
  %conv8.i.i = zext i16 %15 to i32
  %add11.i.i = add nuw nsw i32 %conv8.i.i, -18874366
  %16 = inttoptr i32 %add11.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %13) #6, !srcloc !109
  br label %ppc6_send_cmd.exitthread-pre-split.i

do.body14.i.i:                                    ; preds = %entry.do.body14.i.i_crit_edge, %entry.do.body14.i.i_crit_edge4, %entry.do.body14.i.i_crit_edge5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %2, align 2
  %conv17.i.i = zext i16 %18 to i32
  %add20.i.i = add nuw nsw i32 %conv17.i.i, -18874365
  %19 = inttoptr i32 %add20.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 40) #6, !srcloc !109
  br label %ppc6_send_cmd.exitthread-pre-split.i

ppc6_send_cmd.exitthread-pre-split.i:             ; preds = %do.body14.i.i, %do.body.i.i
  %20 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %.pr.i = load i8, ptr %mode.i.i, align 1
  br label %ppc6_send_cmd.exit.i

ppc6_send_cmd.exit.i:                             ; preds = %ppc6_send_cmd.exitthread-pre-split.i, %entry.ppc6_send_cmd.exit.i_crit_edge
  %21 = phi i8 [ %.pr.i, %ppc6_send_cmd.exitthread-pre-split.i ], [ %4, %entry.ppc6_send_cmd.exit.i_crit_edge ]
  %conv.i = trunc i32 %shr to i8
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %21, label %ppc6_send_cmd.exit.i.ppc6_wr_data_byte.exit.i_crit_edge [
    i8 0, label %ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge
    i8 1, label %ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge6
    i8 2, label %ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge7
    i8 3, label %ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge8
    i8 4, label %ppc6_send_cmd.exit.i.do.body14.i10.i_crit_edge
    i8 5, label %ppc6_send_cmd.exit.i.do.body14.i10.i_crit_edge9
    i8 6, label %ppc6_send_cmd.exit.i.do.body14.i10.i_crit_edge10
  ]

ppc6_send_cmd.exit.i.do.body14.i10.i_crit_edge10: ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i10.i

ppc6_send_cmd.exit.i.do.body14.i10.i_crit_edge9:  ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i10.i

ppc6_send_cmd.exit.i.do.body14.i10.i_crit_edge:   ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i10.i

ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge8:     ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i7.i

ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge7:     ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i7.i

ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge6:     ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i7.i

ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge:      ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i7.i

ppc6_send_cmd.exit.i.ppc6_wr_data_byte.exit.i_crit_edge: ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_wr_data_byte.exit.i

do.body.i7.i:                                     ; preds = %ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge, %ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge6, %ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge7, %ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %2, align 2
  %conv1.i2.i = zext i16 %24 to i32
  %add.i3.i = or i32 %conv1.i2.i, -18874368
  %25 = inttoptr i32 %add.i3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %conv.i) #6, !srcloc !109
  %cur_ctrl.i4.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  %26 = ptrtoint ptr %cur_ctrl.i4.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cur_ctrl.i4.i, align 1
  %28 = xor i8 %27, 4
  store i8 %28, ptr %cur_ctrl.i4.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %cur_ctrl.i4.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cur_ctrl.i4.i, align 1
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %2, align 2
  %conv8.i5.i = zext i16 %32 to i32
  %add11.i6.i = add nuw nsw i32 %conv8.i5.i, -18874366
  %33 = inttoptr i32 %add11.i6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %30) #6, !srcloc !109
  br label %ppc6_wr_data_byte.exit.i

do.body14.i10.i:                                  ; preds = %ppc6_send_cmd.exit.i.do.body14.i10.i_crit_edge, %ppc6_send_cmd.exit.i.do.body14.i10.i_crit_edge9, %ppc6_send_cmd.exit.i.do.body14.i10.i_crit_edge10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %2, align 2
  %conv17.i8.i = zext i16 %35 to i32
  %add20.i9.i = add nuw nsw i32 %conv17.i8.i, -18874364
  %36 = inttoptr i32 %add20.i9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %conv.i) #6, !srcloc !109
  br label %ppc6_wr_data_byte.exit.i

ppc6_wr_data_byte.exit.i:                         ; preds = %do.body14.i10.i, %do.body.i7.i, %ppc6_send_cmd.exit.i.ppc6_wr_data_byte.exit.i_crit_edge
  %37 = lshr i32 %len, 8
  %conv1.i = trunc i32 %37 to i8
  %38 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %mode.i.i, align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %39, label %ppc6_wr_data_byte.exit.i.ppc6_wr_data_byte.exit21.i_crit_edge [
    i8 0, label %ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge
    i8 1, label %ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge11
    i8 2, label %ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge12
    i8 3, label %ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge13
    i8 4, label %ppc6_wr_data_byte.exit.i.do.body14.i20.i_crit_edge
    i8 5, label %ppc6_wr_data_byte.exit.i.do.body14.i20.i_crit_edge14
    i8 6, label %ppc6_wr_data_byte.exit.i.do.body14.i20.i_crit_edge15
  ]

ppc6_wr_data_byte.exit.i.do.body14.i20.i_crit_edge15: ; preds = %ppc6_wr_data_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i20.i

ppc6_wr_data_byte.exit.i.do.body14.i20.i_crit_edge14: ; preds = %ppc6_wr_data_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i20.i

ppc6_wr_data_byte.exit.i.do.body14.i20.i_crit_edge: ; preds = %ppc6_wr_data_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i20.i

ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge13: ; preds = %ppc6_wr_data_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i17.i

ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge12: ; preds = %ppc6_wr_data_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i17.i

ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge11: ; preds = %ppc6_wr_data_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i17.i

ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge: ; preds = %ppc6_wr_data_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i17.i

ppc6_wr_data_byte.exit.i.ppc6_wr_data_byte.exit21.i_crit_edge: ; preds = %ppc6_wr_data_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_wr_data_byte.exit21.i

do.body.i17.i:                                    ; preds = %ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge, %ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge11, %ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge12, %ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %2, align 2
  %conv1.i12.i = zext i16 %42 to i32
  %add.i13.i = or i32 %conv1.i12.i, -18874368
  %43 = inttoptr i32 %add.i13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %conv1.i) #6, !srcloc !109
  %cur_ctrl.i14.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  %44 = ptrtoint ptr %cur_ctrl.i14.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %cur_ctrl.i14.i, align 1
  %46 = xor i8 %45, 4
  store i8 %46, ptr %cur_ctrl.i14.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %cur_ctrl.i14.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cur_ctrl.i14.i, align 1
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %2, align 2
  %conv8.i15.i = zext i16 %50 to i32
  %add11.i16.i = add nuw nsw i32 %conv8.i15.i, -18874366
  %51 = inttoptr i32 %add11.i16.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %48) #6, !srcloc !109
  br label %ppc6_wr_data_byte.exit21thread-pre-split.i

do.body14.i20.i:                                  ; preds = %ppc6_wr_data_byte.exit.i.do.body14.i20.i_crit_edge, %ppc6_wr_data_byte.exit.i.do.body14.i20.i_crit_edge14, %ppc6_wr_data_byte.exit.i.do.body14.i20.i_crit_edge15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %2, align 2
  %conv17.i18.i = zext i16 %53 to i32
  %add20.i19.i = add nuw nsw i32 %conv17.i18.i, -18874364
  %54 = inttoptr i32 %add20.i19.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 %conv1.i) #6, !srcloc !109
  br label %ppc6_wr_data_byte.exit21thread-pre-split.i

ppc6_wr_data_byte.exit21thread-pre-split.i:       ; preds = %do.body14.i20.i, %do.body.i17.i
  %55 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %.pr73.i = load i8, ptr %mode.i.i, align 1
  br label %ppc6_wr_data_byte.exit21.i

ppc6_wr_data_byte.exit21.i:                       ; preds = %ppc6_wr_data_byte.exit21thread-pre-split.i, %ppc6_wr_data_byte.exit.i.ppc6_wr_data_byte.exit21.i_crit_edge
  %56 = phi i8 [ %.pr73.i, %ppc6_wr_data_byte.exit21thread-pre-split.i ], [ %39, %ppc6_wr_data_byte.exit.i.ppc6_wr_data_byte.exit21.i_crit_edge ]
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %56, label %ppc6_wr_data_byte.exit21.i.ppc6_wr_data_byte.exit32.i_crit_edge [
    i8 0, label %ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge
    i8 1, label %ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge16
    i8 2, label %ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge17
    i8 3, label %ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge18
    i8 4, label %ppc6_wr_data_byte.exit21.i.do.body14.i31.i_crit_edge
    i8 5, label %ppc6_wr_data_byte.exit21.i.do.body14.i31.i_crit_edge19
    i8 6, label %ppc6_wr_data_byte.exit21.i.do.body14.i31.i_crit_edge20
  ]

ppc6_wr_data_byte.exit21.i.do.body14.i31.i_crit_edge20: ; preds = %ppc6_wr_data_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i31.i

ppc6_wr_data_byte.exit21.i.do.body14.i31.i_crit_edge19: ; preds = %ppc6_wr_data_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i31.i

ppc6_wr_data_byte.exit21.i.do.body14.i31.i_crit_edge: ; preds = %ppc6_wr_data_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i31.i

ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge18: ; preds = %ppc6_wr_data_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i28.i

ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge17: ; preds = %ppc6_wr_data_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i28.i

ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge16: ; preds = %ppc6_wr_data_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i28.i

ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge: ; preds = %ppc6_wr_data_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i28.i

ppc6_wr_data_byte.exit21.i.ppc6_wr_data_byte.exit32.i_crit_edge: ; preds = %ppc6_wr_data_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_wr_data_byte.exit32.i

do.body.i28.i:                                    ; preds = %ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge, %ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge16, %ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge17, %ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %2, align 2
  %conv1.i23.i = zext i16 %59 to i32
  %add.i24.i = or i32 %conv1.i23.i, -18874368
  %60 = inttoptr i32 %add.i24.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 0) #6, !srcloc !109
  %cur_ctrl.i25.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  %61 = ptrtoint ptr %cur_ctrl.i25.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %cur_ctrl.i25.i, align 1
  %63 = xor i8 %62, 4
  store i8 %63, ptr %cur_ctrl.i25.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %cur_ctrl.i25.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %cur_ctrl.i25.i, align 1
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %2, align 2
  %conv8.i26.i = zext i16 %67 to i32
  %add11.i27.i = add nuw nsw i32 %conv8.i26.i, -18874366
  %68 = inttoptr i32 %add11.i27.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 %65) #6, !srcloc !109
  br label %ppc6_wr_data_byte.exit32.i

do.body14.i31.i:                                  ; preds = %ppc6_wr_data_byte.exit21.i.do.body14.i31.i_crit_edge, %ppc6_wr_data_byte.exit21.i.do.body14.i31.i_crit_edge19, %ppc6_wr_data_byte.exit21.i.do.body14.i31.i_crit_edge20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %69 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %2, align 2
  %conv17.i29.i = zext i16 %70 to i32
  %add20.i30.i = add nuw nsw i32 %conv17.i29.i, -18874364
  %71 = inttoptr i32 %add20.i30.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 0) #6, !srcloc !109
  br label %ppc6_wr_data_byte.exit32.i

ppc6_wr_data_byte.exit32.i:                       ; preds = %do.body14.i31.i, %do.body.i28.i, %ppc6_wr_data_byte.exit21.i.ppc6_wr_data_byte.exit32.i_crit_edge
  %72 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %mode.i.i, align 1
  %74 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %73, label %ppc6_wr_data_byte.exit32.i.ppc6_send_cmd.exit43.i_crit_edge [
    i8 0, label %ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge
    i8 1, label %ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge21
    i8 2, label %ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge22
    i8 3, label %ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge23
    i8 4, label %ppc6_wr_data_byte.exit32.i.do.body14.i42.i_crit_edge
    i8 5, label %ppc6_wr_data_byte.exit32.i.do.body14.i42.i_crit_edge24
    i8 6, label %ppc6_wr_data_byte.exit32.i.do.body14.i42.i_crit_edge25
  ]

ppc6_wr_data_byte.exit32.i.do.body14.i42.i_crit_edge25: ; preds = %ppc6_wr_data_byte.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i42.i

ppc6_wr_data_byte.exit32.i.do.body14.i42.i_crit_edge24: ; preds = %ppc6_wr_data_byte.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i42.i

ppc6_wr_data_byte.exit32.i.do.body14.i42.i_crit_edge: ; preds = %ppc6_wr_data_byte.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i42.i

ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge23: ; preds = %ppc6_wr_data_byte.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i39.i

ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge22: ; preds = %ppc6_wr_data_byte.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i39.i

ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge21: ; preds = %ppc6_wr_data_byte.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i39.i

ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge: ; preds = %ppc6_wr_data_byte.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i39.i

ppc6_wr_data_byte.exit32.i.ppc6_send_cmd.exit43.i_crit_edge: ; preds = %ppc6_wr_data_byte.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_send_cmd.exit43.i

do.body.i39.i:                                    ; preds = %ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge, %ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge21, %ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge22, %ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %75 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %2, align 2
  %conv1.i34.i = zext i16 %76 to i32
  %add.i35.i = or i32 %conv1.i34.i, -18874368
  %77 = inttoptr i32 %add.i35.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 -23) #6, !srcloc !109
  %cur_ctrl.i36.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  %78 = ptrtoint ptr %cur_ctrl.i36.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %cur_ctrl.i36.i, align 1
  %80 = xor i8 %79, 2
  store i8 %80, ptr %cur_ctrl.i36.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %81 = ptrtoint ptr %cur_ctrl.i36.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %cur_ctrl.i36.i, align 1
  %83 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %2, align 2
  %conv8.i37.i = zext i16 %84 to i32
  %add11.i38.i = add nuw nsw i32 %conv8.i37.i, -18874366
  %85 = inttoptr i32 %add11.i38.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 %82) #6, !srcloc !109
  br label %ppc6_send_cmd.exit43thread-pre-split.i

do.body14.i42.i:                                  ; preds = %ppc6_wr_data_byte.exit32.i.do.body14.i42.i_crit_edge, %ppc6_wr_data_byte.exit32.i.do.body14.i42.i_crit_edge24, %ppc6_wr_data_byte.exit32.i.do.body14.i42.i_crit_edge25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %86 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %2, align 2
  %conv17.i40.i = zext i16 %87 to i32
  %add20.i41.i = add nuw nsw i32 %conv17.i40.i, -18874365
  %88 = inttoptr i32 %add20.i41.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 -23) #6, !srcloc !109
  br label %ppc6_send_cmd.exit43thread-pre-split.i

ppc6_send_cmd.exit43thread-pre-split.i:           ; preds = %do.body14.i42.i, %do.body.i39.i
  %89 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %.pr74.i = load i8, ptr %mode.i.i, align 1
  br label %ppc6_send_cmd.exit43.i

ppc6_send_cmd.exit43.i:                           ; preds = %ppc6_send_cmd.exit43thread-pre-split.i, %ppc6_wr_data_byte.exit32.i.ppc6_send_cmd.exit43.i_crit_edge
  %90 = phi i8 [ %.pr74.i, %ppc6_send_cmd.exit43thread-pre-split.i ], [ %73, %ppc6_wr_data_byte.exit32.i.ppc6_send_cmd.exit43.i_crit_edge ]
  %91 = zext i8 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %90, label %ppc6_send_cmd.exit43.i.ppc6_send_cmd.exit54.i_crit_edge [
    i8 0, label %ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge
    i8 1, label %ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge26
    i8 2, label %ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge27
    i8 3, label %ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge28
    i8 4, label %ppc6_send_cmd.exit43.i.do.body14.i53.i_crit_edge
    i8 5, label %ppc6_send_cmd.exit43.i.do.body14.i53.i_crit_edge29
    i8 6, label %ppc6_send_cmd.exit43.i.do.body14.i53.i_crit_edge30
  ]

ppc6_send_cmd.exit43.i.do.body14.i53.i_crit_edge30: ; preds = %ppc6_send_cmd.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i53.i

ppc6_send_cmd.exit43.i.do.body14.i53.i_crit_edge29: ; preds = %ppc6_send_cmd.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i53.i

ppc6_send_cmd.exit43.i.do.body14.i53.i_crit_edge: ; preds = %ppc6_send_cmd.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i53.i

ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge28: ; preds = %ppc6_send_cmd.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i50.i

ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge27: ; preds = %ppc6_send_cmd.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i50.i

ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge26: ; preds = %ppc6_send_cmd.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i50.i

ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge:   ; preds = %ppc6_send_cmd.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i50.i

ppc6_send_cmd.exit43.i.ppc6_send_cmd.exit54.i_crit_edge: ; preds = %ppc6_send_cmd.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_send_cmd.exit54.i

do.body.i50.i:                                    ; preds = %ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge, %ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge26, %ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge27, %ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %2, align 2
  %conv1.i45.i = zext i16 %93 to i32
  %add.i46.i = or i32 %conv1.i45.i, -18874368
  %94 = inttoptr i32 %add.i46.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 96) #6, !srcloc !109
  %cur_ctrl.i47.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  %95 = ptrtoint ptr %cur_ctrl.i47.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %cur_ctrl.i47.i, align 1
  %97 = xor i8 %96, 2
  store i8 %97, ptr %cur_ctrl.i47.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %98 = ptrtoint ptr %cur_ctrl.i47.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %cur_ctrl.i47.i, align 1
  %100 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %2, align 2
  %conv8.i48.i = zext i16 %101 to i32
  %add11.i49.i = add nuw nsw i32 %conv8.i48.i, -18874366
  %102 = inttoptr i32 %add11.i49.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 %99) #6, !srcloc !109
  br label %ppc6_send_cmd.exit54.i

do.body14.i53.i:                                  ; preds = %ppc6_send_cmd.exit43.i.do.body14.i53.i_crit_edge, %ppc6_send_cmd.exit43.i.do.body14.i53.i_crit_edge29, %ppc6_send_cmd.exit43.i.do.body14.i53.i_crit_edge30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %103 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %2, align 2
  %conv17.i51.i = zext i16 %104 to i32
  %add20.i52.i = add nuw nsw i32 %conv17.i51.i, -18874365
  %105 = inttoptr i32 %add20.i52.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %105, i8 96) #6, !srcloc !109
  br label %ppc6_send_cmd.exit54.i

ppc6_send_cmd.exit54.i:                           ; preds = %do.body14.i53.i, %do.body.i50.i, %ppc6_send_cmd.exit43.i.ppc6_send_cmd.exit54.i_crit_edge
  %106 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %mode.i.i, align 1
  %108 = zext i8 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %107, label %ppc6_send_cmd.exit54.i.ppc6_wr_data_blk.exit.i_crit_edge [
    i8 0, label %ppc6_send_cmd.exit54.i.sw.bb.i.i_crit_edge
    i8 2, label %ppc6_send_cmd.exit54.i.sw.bb.i.i_crit_edge31
    i8 6, label %while.cond126.preheader.i.i
    i8 5, label %while.cond96.preheader.i.i
    i8 4, label %while.cond80.preheader.i.i
    i8 3, label %ppc6_send_cmd.exit54.i.do.body.i.i.i_crit_edge
    i8 1, label %ppc6_send_cmd.exit54.i.do.body.i.i.i_crit_edge32
  ]

ppc6_send_cmd.exit54.i.do.body.i.i.i_crit_edge32: ; preds = %ppc6_send_cmd.exit54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i

ppc6_send_cmd.exit54.i.do.body.i.i.i_crit_edge:   ; preds = %ppc6_send_cmd.exit54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i

ppc6_send_cmd.exit54.i.sw.bb.i.i_crit_edge31:     ; preds = %ppc6_send_cmd.exit54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

ppc6_send_cmd.exit54.i.sw.bb.i.i_crit_edge:       ; preds = %ppc6_send_cmd.exit54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

ppc6_send_cmd.exit54.i.ppc6_wr_data_blk.exit.i_crit_edge: ; preds = %ppc6_send_cmd.exit54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_wr_data_blk.exit.i

while.cond80.preheader.i.i:                       ; preds = %ppc6_send_cmd.exit54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool81.not221.i.i = icmp eq i32 %shr, 0
  br i1 %tobool81.not221.i.i, label %while.cond80.preheader.i.i.while.end94.i.i_crit_edge, label %while.cond80.preheader.i.i.do.body83.i.i_crit_edge

while.cond80.preheader.i.i.do.body83.i.i_crit_edge: ; preds = %while.cond80.preheader.i.i
  br label %do.body83.i.i

while.cond80.preheader.i.i.while.end94.i.i_crit_edge: ; preds = %while.cond80.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end94.i.i

while.cond96.preheader.i.i:                       ; preds = %ppc6_send_cmd.exit54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp97224.i.i = icmp sgt i32 %shr, 1
  br i1 %cmp97224.i.i, label %while.cond96.preheader.i.i.do.body100.i.i_crit_edge, label %while.cond96.preheader.i.i.while.cond110.preheader.i.i_crit_edge

while.cond96.preheader.i.i.while.cond110.preheader.i.i_crit_edge: ; preds = %while.cond96.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond110.preheader.i.i

while.cond96.preheader.i.i.do.body100.i.i_crit_edge: ; preds = %while.cond96.preheader.i.i
  br label %do.body100.i.i

while.cond126.preheader.i.i:                      ; preds = %ppc6_send_cmd.exit54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr)
  %cmp127231.i.i = icmp sgt i32 %shr, 3
  br i1 %cmp127231.i.i, label %while.cond126.preheader.i.i.do.body130.i.i_crit_edge, label %while.cond126.preheader.i.i.while.cond142.preheader.i.i_crit_edge

while.cond126.preheader.i.i.while.cond142.preheader.i.i_crit_edge: ; preds = %while.cond126.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond142.preheader.i.i

while.cond126.preheader.i.i.do.body130.i.i_crit_edge: ; preds = %while.cond126.preheader.i.i
  br label %do.body130.i.i

sw.bb.i.i:                                        ; preds = %ppc6_send_cmd.exit54.i.sw.bb.i.i_crit_edge, %ppc6_send_cmd.exit54.i.sw.bb.i.i_crit_edge31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool.not239.i.i = icmp eq i32 %shr, 0
  br i1 %tobool.not239.i.i, label %sw.bb.i.i.ppc6_wr_data_blk.exitthread-pre-split.i_crit_edge, label %do.body.lr.ph.i.i

sw.bb.i.i.ppc6_wr_data_blk.exitthread-pre-split.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_wr_data_blk.exitthread-pre-split.i

do.body.lr.ph.i.i:                                ; preds = %sw.bb.i.i
  %cur_ctrl.i56.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  br label %do.body.i61.i

do.body.i61.i:                                    ; preds = %do.body.i61.i.do.body.i61.i_crit_edge, %do.body.lr.ph.i.i
  %count.addr.0241.i.i = phi i32 [ %shr, %do.body.lr.ph.i.i ], [ %dec.i.i, %do.body.i61.i.do.body.i61.i_crit_edge ]
  %data.addr.0240.i.i = phi ptr [ %buf, %do.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %do.body.i61.i.do.body.i61.i_crit_edge ]
  %dec.i.i = add i32 %count.addr.0241.i.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %incdec.ptr.i.i = getelementptr i8, ptr %data.addr.0240.i.i, i32 1
  %109 = ptrtoint ptr %data.addr.0240.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %data.addr.0240.i.i, align 1
  %111 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %2, align 2
  %conv1.i57.i = zext i16 %112 to i32
  %add.i58.i = or i32 %conv1.i57.i, -18874368
  %113 = inttoptr i32 %add.i58.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %113, i8 %110) #6, !srcloc !109
  %114 = ptrtoint ptr %cur_ctrl.i56.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %cur_ctrl.i56.i, align 1
  %116 = xor i8 %115, 4
  store i8 %116, ptr %cur_ctrl.i56.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %117 = ptrtoint ptr %cur_ctrl.i56.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %cur_ctrl.i56.i, align 1
  %119 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %2, align 2
  %conv8.i59.i = zext i16 %120 to i32
  %add11.i60.i = add nuw nsw i32 %conv8.i59.i, -18874366
  %121 = inttoptr i32 %add11.i60.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %121, i8 %118) #6, !srcloc !109
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i61.i.ppc6_wr_data_blk.exitthread-pre-split.i_crit_edge, label %do.body.i61.i.do.body.i61.i_crit_edge

do.body.i61.i.do.body.i61.i_crit_edge:            ; preds = %do.body.i61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i61.i

do.body.i61.i.ppc6_wr_data_blk.exitthread-pre-split.i_crit_edge: ; preds = %do.body.i61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_wr_data_blk.exitthread-pre-split.i

do.body.i.i.i:                                    ; preds = %ppc6_send_cmd.exit54.i.do.body.i.i.i_crit_edge, %ppc6_send_cmd.exit54.i.do.body.i.i.i_crit_edge32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %122 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %2, align 2
  %conv1.i.i.i = zext i16 %123 to i32
  %add.i.i.i = or i32 %conv1.i.i.i, -18874368
  %124 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 -28) #6, !srcloc !109
  %cur_ctrl.i.i.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  %125 = ptrtoint ptr %cur_ctrl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %cur_ctrl.i.i.i, align 1
  %127 = xor i8 %126, 2
  store i8 %127, ptr %cur_ctrl.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %128 = ptrtoint ptr %cur_ctrl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %cur_ctrl.i.i.i, align 1
  %130 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %2, align 2
  %conv8.i.i.i = zext i16 %131 to i32
  %add11.i.i.i = add nuw nsw i32 %conv8.i.i.i, -18874366
  %132 = inttoptr i32 %add11.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %132, i8 %129) #6, !srcloc !109
  %133 = ptrtoint ptr %cur_ctrl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %cur_ctrl.i.i.i, align 1
  %135 = or i8 %134, 1
  store i8 %135, ptr %cur_ctrl.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %136 = ptrtoint ptr %cur_ctrl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %cur_ctrl.i.i.i, align 1
  %138 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %2, align 2
  %conv21.i.i = zext i16 %139 to i32
  %add24.i.i = add nuw nsw i32 %conv21.i.i, -18874366
  %140 = inttoptr i32 %add24.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %140, i8 %137) #6, !srcloc !109
  %141 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %buf, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %143 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %2, align 2
  %conv30.i.i = zext i16 %144 to i32
  %add32.i.i = or i32 %conv30.i.i, -18874368
  %145 = inttoptr i32 %add32.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %145, i8 %142) #6, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool35.not217.i.i = icmp eq i32 %shr, 0
  br i1 %tobool35.not217.i.i, label %do.body.i.i.i.while.end64.i.i_crit_edge, label %do.body.i.i.i.while.body36.i.i_crit_edge

do.body.i.i.i.while.body36.i.i_crit_edge:         ; preds = %do.body.i.i.i
  br label %while.body36.i.i

do.body.i.i.i.while.end64.i.i_crit_edge:          ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end64.i.i

while.body36.i.i:                                 ; preds = %if.end.i.i.while.body36.i.i_crit_edge, %do.body.i.i.i.while.body36.i.i_crit_edge
  %last.0220.i.i = phi i8 [ %last.1.i.i, %if.end.i.i.while.body36.i.i_crit_edge ], [ %142, %do.body.i.i.i.while.body36.i.i_crit_edge ]
  %count.addr.1219.i.i = phi i32 [ %dec38.i.i, %if.end.i.i.while.body36.i.i_crit_edge ], [ %shr, %do.body.i.i.i.while.body36.i.i_crit_edge ]
  %data.addr.1218.i.i = phi ptr [ %incdec.ptr37.i.i, %if.end.i.i.while.body36.i.i_crit_edge ], [ %buf, %do.body.i.i.i.while.body36.i.i_crit_edge ]
  %incdec.ptr37.i.i = getelementptr i8, ptr %data.addr.1218.i.i, i32 1
  %146 = ptrtoint ptr %data.addr.1218.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %data.addr.1218.i.i, align 1
  %dec38.i.i = add i32 %count.addr.1219.i.i, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %147, i8 %last.0220.i.i)
  %cmp.i.i = icmp eq i8 %147, %last.0220.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %do.body56.i.i

if.then.i.i:                                      ; preds = %while.body36.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %148 = ptrtoint ptr %cur_ctrl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %cur_ctrl.i.i.i, align 1
  %150 = xor i8 %149, 4
  store i8 %150, ptr %cur_ctrl.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %151 = ptrtoint ptr %cur_ctrl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %cur_ctrl.i.i.i, align 1
  %153 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %2, align 2
  %conv51.i.i = zext i16 %154 to i32
  %add54.i.i = add nuw nsw i32 %conv51.i.i, -18874366
  %155 = inttoptr i32 %add54.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %155, i8 %152) #6, !srcloc !109
  br label %if.end.i.i

do.body56.i.i:                                    ; preds = %while.body36.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %156 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %2, align 2
  %conv60.i.i = zext i16 %157 to i32
  %add62.i.i = or i32 %conv60.i.i, -18874368
  %158 = inttoptr i32 %add62.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %158, i8 %147) #6, !srcloc !109
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body56.i.i, %if.then.i.i
  %last.1.i.i = phi i8 [ %last.0220.i.i, %if.then.i.i ], [ %147, %do.body56.i.i ]
  %tobool35.not.i.i = icmp eq i32 %dec38.i.i, 0
  br i1 %tobool35.not.i.i, label %if.end.i.i.while.end64.i.i_crit_edge, label %if.end.i.i.while.body36.i.i_crit_edge

if.end.i.i.while.body36.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body36.i.i

if.end.i.i.while.end64.i.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end64.i.i

while.end64.i.i:                                  ; preds = %if.end.i.i.while.end64.i.i_crit_edge, %do.body.i.i.i.while.end64.i.i_crit_edge
  %159 = ptrtoint ptr %cur_ctrl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %cur_ctrl.i.i.i, align 1
  %161 = and i8 %160, -2
  store i8 %161, ptr %cur_ctrl.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %162 = ptrtoint ptr %cur_ctrl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %cur_ctrl.i.i.i, align 1
  %164 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %2, align 2
  %conv74.i.i = zext i16 %165 to i32
  %add77.i.i = add nuw nsw i32 %conv74.i.i, -18874366
  %166 = inttoptr i32 %add77.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %166, i8 %163) #6, !srcloc !109
  %167 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %mode.i.i, align 1
  %169 = zext i8 %168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %168, label %while.end64.i.i.ppc6_wr_data_blk.exit.i_crit_edge [
    i8 0, label %while.end64.i.i.do.body.i212.i.i_crit_edge
    i8 1, label %while.end64.i.i.do.body.i212.i.i_crit_edge33
    i8 2, label %while.end64.i.i.do.body.i212.i.i_crit_edge34
    i8 3, label %while.end64.i.i.do.body.i212.i.i_crit_edge35
    i8 4, label %while.end64.i.i.do.body14.i215.i.i_crit_edge
    i8 5, label %while.end64.i.i.do.body14.i215.i.i_crit_edge36
    i8 6, label %while.end64.i.i.do.body14.i215.i.i_crit_edge37
  ]

while.end64.i.i.do.body14.i215.i.i_crit_edge37:   ; preds = %while.end64.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i215.i.i

while.end64.i.i.do.body14.i215.i.i_crit_edge36:   ; preds = %while.end64.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i215.i.i

while.end64.i.i.do.body14.i215.i.i_crit_edge:     ; preds = %while.end64.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i215.i.i

while.end64.i.i.do.body.i212.i.i_crit_edge35:     ; preds = %while.end64.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i212.i.i

while.end64.i.i.do.body.i212.i.i_crit_edge34:     ; preds = %while.end64.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i212.i.i

while.end64.i.i.do.body.i212.i.i_crit_edge33:     ; preds = %while.end64.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i212.i.i

while.end64.i.i.do.body.i212.i.i_crit_edge:       ; preds = %while.end64.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i212.i.i

while.end64.i.i.ppc6_wr_data_blk.exit.i_crit_edge: ; preds = %while.end64.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_wr_data_blk.exit.i

do.body.i212.i.i:                                 ; preds = %while.end64.i.i.do.body.i212.i.i_crit_edge, %while.end64.i.i.do.body.i212.i.i_crit_edge33, %while.end64.i.i.do.body.i212.i.i_crit_edge34, %while.end64.i.i.do.body.i212.i.i_crit_edge35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %170 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %2, align 2
  %conv1.i207.i.i = zext i16 %171 to i32
  %add.i208.i.i = or i32 %conv1.i207.i.i, -18874368
  %172 = inttoptr i32 %add.i208.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %172, i8 -60) #6, !srcloc !109
  %173 = ptrtoint ptr %cur_ctrl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %cur_ctrl.i.i.i, align 1
  %175 = xor i8 %174, 2
  store i8 %175, ptr %cur_ctrl.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %176 = ptrtoint ptr %cur_ctrl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %cur_ctrl.i.i.i, align 1
  %178 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %2, align 2
  %conv8.i210.i.i = zext i16 %179 to i32
  %add11.i211.i.i = add nuw nsw i32 %conv8.i210.i.i, -18874366
  %180 = inttoptr i32 %add11.i211.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %180, i8 %177) #6, !srcloc !109
  br label %ppc6_wr_data_blk.exitthread-pre-split.i

do.body14.i215.i.i:                               ; preds = %while.end64.i.i.do.body14.i215.i.i_crit_edge, %while.end64.i.i.do.body14.i215.i.i_crit_edge36, %while.end64.i.i.do.body14.i215.i.i_crit_edge37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %181 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %2, align 2
  %conv17.i213.i.i = zext i16 %182 to i32
  %add20.i214.i.i = add nuw nsw i32 %conv17.i213.i.i, -18874365
  %183 = inttoptr i32 %add20.i214.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %183, i8 -60) #6, !srcloc !109
  br label %ppc6_wr_data_blk.exitthread-pre-split.i

do.body83.i.i:                                    ; preds = %do.body83.i.i.do.body83.i.i_crit_edge, %while.cond80.preheader.i.i.do.body83.i.i_crit_edge
  %count.addr.2223.i.i = phi i32 [ %dec93.i.i, %do.body83.i.i.do.body83.i.i_crit_edge ], [ %shr, %while.cond80.preheader.i.i.do.body83.i.i_crit_edge ]
  %data.addr.2222.i.i = phi ptr [ %incdec.ptr86.i.i, %do.body83.i.i.do.body83.i.i_crit_edge ], [ %buf, %while.cond80.preheader.i.i.do.body83.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %incdec.ptr86.i.i = getelementptr i8, ptr %data.addr.2222.i.i, i32 1
  %184 = ptrtoint ptr %data.addr.2222.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %data.addr.2222.i.i, align 1
  %186 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %2, align 2
  %conv88.i.i = zext i16 %187 to i32
  %add91.i.i = add nuw nsw i32 %conv88.i.i, -18874364
  %188 = inttoptr i32 %add91.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %188, i8 %185) #6, !srcloc !109
  %dec93.i.i = add i32 %count.addr.2223.i.i, -1
  %tobool81.not.i.i = icmp eq i32 %dec93.i.i, 0
  br i1 %tobool81.not.i.i, label %do.body83.i.i.while.end94.i.i_crit_edge, label %do.body83.i.i.do.body83.i.i_crit_edge

do.body83.i.i.do.body83.i.i_crit_edge:            ; preds = %do.body83.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body83.i.i

do.body83.i.i.while.end94.i.i_crit_edge:          ; preds = %do.body83.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end94.i.i

while.end94.i.i:                                  ; preds = %do.body83.i.i.while.end94.i.i_crit_edge, %while.cond80.preheader.i.i.while.end94.i.i_crit_edge
  tail call fastcc void @ppc6_wait_for_fifo(ptr noundef %2) #6
  br label %ppc6_wr_data_blk.exitthread-pre-split.i

while.cond110.preheader.i.i:                      ; preds = %do.body100.i.i.while.cond110.preheader.i.i_crit_edge, %while.cond96.preheader.i.i.while.cond110.preheader.i.i_crit_edge
  %data.addr.3.lcssa.i.i = phi ptr [ %buf, %while.cond96.preheader.i.i.while.cond110.preheader.i.i_crit_edge ], [ %add.ptr.i.i, %do.body100.i.i.while.cond110.preheader.i.i_crit_edge ]
  %count.addr.3.lcssa.i.i = phi i32 [ %shr, %while.cond96.preheader.i.i.while.cond110.preheader.i.i_crit_edge ], [ %sub.i.i, %do.body100.i.i.while.cond110.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.3.lcssa.i.i)
  %tobool111.not228.i.i = icmp eq i32 %count.addr.3.lcssa.i.i, 0
  br i1 %tobool111.not228.i.i, label %while.cond110.preheader.i.i.while.end124.i.i_crit_edge, label %while.cond110.preheader.i.i.do.body113.i.i_crit_edge

while.cond110.preheader.i.i.do.body113.i.i_crit_edge: ; preds = %while.cond110.preheader.i.i
  br label %do.body113.i.i

while.cond110.preheader.i.i.while.end124.i.i_crit_edge: ; preds = %while.cond110.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end124.i.i

do.body100.i.i:                                   ; preds = %do.body100.i.i.do.body100.i.i_crit_edge, %while.cond96.preheader.i.i.do.body100.i.i_crit_edge
  %count.addr.3226.i.i = phi i32 [ %sub.i.i, %do.body100.i.i.do.body100.i.i_crit_edge ], [ %shr, %while.cond96.preheader.i.i.do.body100.i.i_crit_edge ]
  %data.addr.3225.i.i = phi ptr [ %add.ptr.i.i, %do.body100.i.i.do.body100.i.i_crit_edge ], [ %buf, %while.cond96.preheader.i.i.do.body100.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %189 = ptrtoint ptr %data.addr.3225.i.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %data.addr.3225.i.i, align 2
  %191 = tail call i16 @llvm.bswap.i16(i16 %190) #6
  %192 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %2, align 2
  %conv104.i.i = zext i16 %193 to i32
  %add107.i.i = add nuw nsw i32 %conv104.i.i, -18874364
  %194 = inttoptr i32 %add107.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %194, i16 %191) #6, !srcloc !124
  %add.ptr.i.i = getelementptr i8, ptr %data.addr.3225.i.i, i32 2
  %sub.i.i = add nsw i32 %count.addr.3226.i.i, -2
  %cmp97.i.i = icmp ugt i32 %count.addr.3226.i.i, 3
  br i1 %cmp97.i.i, label %do.body100.i.i.do.body100.i.i_crit_edge, label %do.body100.i.i.while.cond110.preheader.i.i_crit_edge

do.body100.i.i.while.cond110.preheader.i.i_crit_edge: ; preds = %do.body100.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond110.preheader.i.i

do.body100.i.i.do.body100.i.i_crit_edge:          ; preds = %do.body100.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body100.i.i

do.body113.i.i:                                   ; preds = %do.body113.i.i.do.body113.i.i_crit_edge, %while.cond110.preheader.i.i.do.body113.i.i_crit_edge
  %count.addr.4230.i.i = phi i32 [ %dec123.i.i, %do.body113.i.i.do.body113.i.i_crit_edge ], [ %count.addr.3.lcssa.i.i, %while.cond110.preheader.i.i.do.body113.i.i_crit_edge ]
  %data.addr.4229.i.i = phi ptr [ %incdec.ptr116.i.i, %do.body113.i.i.do.body113.i.i_crit_edge ], [ %data.addr.3.lcssa.i.i, %while.cond110.preheader.i.i.do.body113.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %incdec.ptr116.i.i = getelementptr i8, ptr %data.addr.4229.i.i, i32 1
  %195 = ptrtoint ptr %data.addr.4229.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %data.addr.4229.i.i, align 1
  %197 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %2, align 2
  %conv118.i.i = zext i16 %198 to i32
  %add121.i.i = add nuw nsw i32 %conv118.i.i, -18874364
  %199 = inttoptr i32 %add121.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %199, i8 %196) #6, !srcloc !109
  %dec123.i.i = add i32 %count.addr.4230.i.i, -1
  %tobool111.not.i.i = icmp eq i32 %dec123.i.i, 0
  br i1 %tobool111.not.i.i, label %do.body113.i.i.while.end124.i.i_crit_edge, label %do.body113.i.i.do.body113.i.i_crit_edge

do.body113.i.i.do.body113.i.i_crit_edge:          ; preds = %do.body113.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body113.i.i

do.body113.i.i.while.end124.i.i_crit_edge:        ; preds = %do.body113.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end124.i.i

while.end124.i.i:                                 ; preds = %do.body113.i.i.while.end124.i.i_crit_edge, %while.cond110.preheader.i.i.while.end124.i.i_crit_edge
  tail call fastcc void @ppc6_wait_for_fifo(ptr noundef %2) #6
  br label %ppc6_wr_data_blk.exitthread-pre-split.i

while.cond142.preheader.i.i:                      ; preds = %do.body130.i.i.while.cond142.preheader.i.i_crit_edge, %while.cond126.preheader.i.i.while.cond142.preheader.i.i_crit_edge
  %data.addr.5.lcssa.i.i = phi ptr [ %buf, %while.cond126.preheader.i.i.while.cond142.preheader.i.i_crit_edge ], [ %add.ptr139.i.i, %do.body130.i.i.while.cond142.preheader.i.i_crit_edge ]
  %count.addr.5.lcssa.i.i = phi i32 [ %shr, %while.cond126.preheader.i.i.while.cond142.preheader.i.i_crit_edge ], [ %sub140.i.i, %do.body130.i.i.while.cond142.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.5.lcssa.i.i)
  %tobool143.not236.i.i = icmp eq i32 %count.addr.5.lcssa.i.i, 0
  br i1 %tobool143.not236.i.i, label %while.cond142.preheader.i.i.while.end156.i.i_crit_edge, label %while.cond142.preheader.i.i.do.body145.i.i_crit_edge

while.cond142.preheader.i.i.do.body145.i.i_crit_edge: ; preds = %while.cond142.preheader.i.i
  br label %do.body145.i.i

while.cond142.preheader.i.i.while.end156.i.i_crit_edge: ; preds = %while.cond142.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end156.i.i

do.body130.i.i:                                   ; preds = %do.body130.i.i.do.body130.i.i_crit_edge, %while.cond126.preheader.i.i.do.body130.i.i_crit_edge
  %count.addr.5233.i.i = phi i32 [ %sub140.i.i, %do.body130.i.i.do.body130.i.i_crit_edge ], [ %shr, %while.cond126.preheader.i.i.do.body130.i.i_crit_edge ]
  %data.addr.5232.i.i = phi ptr [ %add.ptr139.i.i, %do.body130.i.i.do.body130.i.i_crit_edge ], [ %buf, %while.cond126.preheader.i.i.do.body130.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  tail call void @arm_heavy_mb() #6
  %200 = ptrtoint ptr %data.addr.5232.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %data.addr.5232.i.i, align 4
  %202 = tail call i32 @llvm.bswap.i32(i32 %201) #6
  %203 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %2, align 2
  %conv134.i.i = zext i16 %204 to i32
  %add137.i.i = add nuw nsw i32 %conv134.i.i, -18874364
  %205 = inttoptr i32 %add137.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %205, i32 %202) #6, !srcloc !127
  %add.ptr139.i.i = getelementptr i8, ptr %data.addr.5232.i.i, i32 4
  %sub140.i.i = add nsw i32 %count.addr.5233.i.i, -4
  %cmp127.i.i = icmp ugt i32 %count.addr.5233.i.i, 7
  br i1 %cmp127.i.i, label %do.body130.i.i.do.body130.i.i_crit_edge, label %do.body130.i.i.while.cond142.preheader.i.i_crit_edge

do.body130.i.i.while.cond142.preheader.i.i_crit_edge: ; preds = %do.body130.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond142.preheader.i.i

do.body130.i.i.do.body130.i.i_crit_edge:          ; preds = %do.body130.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body130.i.i

do.body145.i.i:                                   ; preds = %do.body145.i.i.do.body145.i.i_crit_edge, %while.cond142.preheader.i.i.do.body145.i.i_crit_edge
  %count.addr.6238.i.i = phi i32 [ %dec155.i.i, %do.body145.i.i.do.body145.i.i_crit_edge ], [ %count.addr.5.lcssa.i.i, %while.cond142.preheader.i.i.do.body145.i.i_crit_edge ]
  %data.addr.6237.i.i = phi ptr [ %incdec.ptr148.i.i, %do.body145.i.i.do.body145.i.i_crit_edge ], [ %data.addr.5.lcssa.i.i, %while.cond142.preheader.i.i.do.body145.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  %incdec.ptr148.i.i = getelementptr i8, ptr %data.addr.6237.i.i, i32 1
  %206 = ptrtoint ptr %data.addr.6237.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %data.addr.6237.i.i, align 1
  %208 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %2, align 2
  %conv150.i.i = zext i16 %209 to i32
  %add153.i.i = add nuw nsw i32 %conv150.i.i, -18874364
  %210 = inttoptr i32 %add153.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %210, i8 %207) #6, !srcloc !109
  %dec155.i.i = add i32 %count.addr.6238.i.i, -1
  %tobool143.not.i.i = icmp eq i32 %dec155.i.i, 0
  br i1 %tobool143.not.i.i, label %do.body145.i.i.while.end156.i.i_crit_edge, label %do.body145.i.i.do.body145.i.i_crit_edge

do.body145.i.i.do.body145.i.i_crit_edge:          ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body145.i.i

do.body145.i.i.while.end156.i.i_crit_edge:        ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end156.i.i

while.end156.i.i:                                 ; preds = %do.body145.i.i.while.end156.i.i_crit_edge, %while.cond142.preheader.i.i.while.end156.i.i_crit_edge
  tail call fastcc void @ppc6_wait_for_fifo(ptr noundef %2) #6
  br label %ppc6_wr_data_blk.exitthread-pre-split.i

ppc6_wr_data_blk.exitthread-pre-split.i:          ; preds = %while.end156.i.i, %while.end124.i.i, %while.end94.i.i, %do.body14.i215.i.i, %do.body.i212.i.i, %do.body.i61.i.ppc6_wr_data_blk.exitthread-pre-split.i_crit_edge, %sw.bb.i.i.ppc6_wr_data_blk.exitthread-pre-split.i_crit_edge
  %211 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %.pr75.i = load i8, ptr %mode.i.i, align 1
  br label %ppc6_wr_data_blk.exit.i

ppc6_wr_data_blk.exit.i:                          ; preds = %ppc6_wr_data_blk.exitthread-pre-split.i, %while.end64.i.i.ppc6_wr_data_blk.exit.i_crit_edge, %ppc6_send_cmd.exit54.i.ppc6_wr_data_blk.exit.i_crit_edge
  %212 = phi i8 [ %.pr75.i, %ppc6_wr_data_blk.exitthread-pre-split.i ], [ %107, %ppc6_send_cmd.exit54.i.ppc6_wr_data_blk.exit.i_crit_edge ], [ %168, %while.end64.i.i.ppc6_wr_data_blk.exit.i_crit_edge ]
  %213 = zext i8 %212 to i64
  call void @__sanitizer_cov_trace_switch(i64 %213, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %212, label %ppc6_wr_data_blk.exit.i.ppc6_wr_port16_blk.exit_crit_edge [
    i8 0, label %ppc6_wr_data_blk.exit.i.do.body.i68.i_crit_edge
    i8 1, label %ppc6_wr_data_blk.exit.i.do.body.i68.i_crit_edge38
    i8 2, label %ppc6_wr_data_blk.exit.i.do.body.i68.i_crit_edge39
    i8 3, label %ppc6_wr_data_blk.exit.i.do.body.i68.i_crit_edge40
    i8 4, label %ppc6_wr_data_blk.exit.i.do.body14.i71.i_crit_edge
    i8 5, label %ppc6_wr_data_blk.exit.i.do.body14.i71.i_crit_edge41
    i8 6, label %ppc6_wr_data_blk.exit.i.do.body14.i71.i_crit_edge42
  ]

ppc6_wr_data_blk.exit.i.do.body14.i71.i_crit_edge42: ; preds = %ppc6_wr_data_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i71.i

ppc6_wr_data_blk.exit.i.do.body14.i71.i_crit_edge41: ; preds = %ppc6_wr_data_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i71.i

ppc6_wr_data_blk.exit.i.do.body14.i71.i_crit_edge: ; preds = %ppc6_wr_data_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i71.i

ppc6_wr_data_blk.exit.i.do.body.i68.i_crit_edge40: ; preds = %ppc6_wr_data_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i68.i

ppc6_wr_data_blk.exit.i.do.body.i68.i_crit_edge39: ; preds = %ppc6_wr_data_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i68.i

ppc6_wr_data_blk.exit.i.do.body.i68.i_crit_edge38: ; preds = %ppc6_wr_data_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i68.i

ppc6_wr_data_blk.exit.i.do.body.i68.i_crit_edge:  ; preds = %ppc6_wr_data_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i68.i

ppc6_wr_data_blk.exit.i.ppc6_wr_port16_blk.exit_crit_edge: ; preds = %ppc6_wr_data_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_wr_port16_blk.exit

do.body.i68.i:                                    ; preds = %ppc6_wr_data_blk.exit.i.do.body.i68.i_crit_edge, %ppc6_wr_data_blk.exit.i.do.body.i68.i_crit_edge38, %ppc6_wr_data_blk.exit.i.do.body.i68.i_crit_edge39, %ppc6_wr_data_blk.exit.i.do.body.i68.i_crit_edge40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %214 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %2, align 2
  %conv1.i63.i = zext i16 %215 to i32
  %add.i64.i = or i32 %conv1.i63.i, -18874368
  %216 = inttoptr i32 %add.i64.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %216, i8 -55) #6, !srcloc !109
  %cur_ctrl.i65.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  %217 = ptrtoint ptr %cur_ctrl.i65.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %cur_ctrl.i65.i, align 1
  %219 = xor i8 %218, 2
  store i8 %219, ptr %cur_ctrl.i65.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %220 = ptrtoint ptr %cur_ctrl.i65.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %cur_ctrl.i65.i, align 1
  %222 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %2, align 2
  %conv8.i66.i = zext i16 %223 to i32
  %add11.i67.i = add nuw nsw i32 %conv8.i66.i, -18874366
  %224 = inttoptr i32 %add11.i67.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %224, i8 %221) #6, !srcloc !109
  br label %ppc6_wr_port16_blk.exit

do.body14.i71.i:                                  ; preds = %ppc6_wr_data_blk.exit.i.do.body14.i71.i_crit_edge, %ppc6_wr_data_blk.exit.i.do.body14.i71.i_crit_edge41, %ppc6_wr_data_blk.exit.i.do.body14.i71.i_crit_edge42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %225 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %2, align 2
  %conv17.i69.i = zext i16 %226 to i32
  %add20.i70.i = add nuw nsw i32 %conv17.i69.i, -18874365
  %227 = inttoptr i32 %add20.i70.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %227, i8 -55) #6, !srcloc !109
  br label %ppc6_wr_port16_blk.exit

ppc6_wr_port16_blk.exit:                          ; preds = %do.body14.i71.i, %do.body.i68.i, %ppc6_wr_data_blk.exit.i.ppc6_wr_port16_blk.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpck6_read_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef writeonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  %shr = and i32 %len, -2
  %mode.i.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mode.i.i, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %4, label %entry.ppc6_send_cmd.exit.i_crit_edge [
    i8 0, label %entry.do.body.i.i_crit_edge
    i8 1, label %entry.do.body.i.i_crit_edge1
    i8 2, label %entry.do.body.i.i_crit_edge2
    i8 3, label %entry.do.body.i.i_crit_edge3
    i8 4, label %entry.do.body14.i.i_crit_edge
    i8 5, label %entry.do.body14.i.i_crit_edge4
    i8 6, label %entry.do.body14.i.i_crit_edge5
  ]

entry.do.body14.i.i_crit_edge5:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i.i

entry.do.body14.i.i_crit_edge4:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i.i

entry.do.body14.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i.i

entry.do.body.i.i_crit_edge3:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

entry.do.body.i.i_crit_edge2:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

entry.do.body.i.i_crit_edge1:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

entry.do.body.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

entry.ppc6_send_cmd.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_send_cmd.exit.i

do.body.i.i:                                      ; preds = %entry.do.body.i.i_crit_edge, %entry.do.body.i.i_crit_edge1, %entry.do.body.i.i_crit_edge2, %entry.do.body.i.i_crit_edge3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %2, align 2
  %conv1.i.i = zext i16 %7 to i32
  %add.i.i = or i32 %conv1.i.i, -18874368
  %8 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 40) #6, !srcloc !109
  %cur_ctrl.i.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  %9 = ptrtoint ptr %cur_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cur_ctrl.i.i, align 1
  %11 = xor i8 %10, 2
  store i8 %11, ptr %cur_ctrl.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %cur_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cur_ctrl.i.i, align 1
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %2, align 2
  %conv8.i.i = zext i16 %15 to i32
  %add11.i.i = add nuw nsw i32 %conv8.i.i, -18874366
  %16 = inttoptr i32 %add11.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %13) #6, !srcloc !109
  br label %ppc6_send_cmd.exitthread-pre-split.i

do.body14.i.i:                                    ; preds = %entry.do.body14.i.i_crit_edge, %entry.do.body14.i.i_crit_edge4, %entry.do.body14.i.i_crit_edge5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %2, align 2
  %conv17.i.i = zext i16 %18 to i32
  %add20.i.i = add nuw nsw i32 %conv17.i.i, -18874365
  %19 = inttoptr i32 %add20.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 40) #6, !srcloc !109
  br label %ppc6_send_cmd.exitthread-pre-split.i

ppc6_send_cmd.exitthread-pre-split.i:             ; preds = %do.body14.i.i, %do.body.i.i
  %20 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %.pr.i = load i8, ptr %mode.i.i, align 1
  br label %ppc6_send_cmd.exit.i

ppc6_send_cmd.exit.i:                             ; preds = %ppc6_send_cmd.exitthread-pre-split.i, %entry.ppc6_send_cmd.exit.i_crit_edge
  %21 = phi i8 [ %.pr.i, %ppc6_send_cmd.exitthread-pre-split.i ], [ %4, %entry.ppc6_send_cmd.exit.i_crit_edge ]
  %conv.i = trunc i32 %shr to i8
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %21, label %ppc6_send_cmd.exit.i.ppc6_wr_data_byte.exit.i_crit_edge [
    i8 0, label %ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge
    i8 1, label %ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge6
    i8 2, label %ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge7
    i8 3, label %ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge8
    i8 4, label %ppc6_send_cmd.exit.i.do.body14.i10.i_crit_edge
    i8 5, label %ppc6_send_cmd.exit.i.do.body14.i10.i_crit_edge9
    i8 6, label %ppc6_send_cmd.exit.i.do.body14.i10.i_crit_edge10
  ]

ppc6_send_cmd.exit.i.do.body14.i10.i_crit_edge10: ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i10.i

ppc6_send_cmd.exit.i.do.body14.i10.i_crit_edge9:  ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i10.i

ppc6_send_cmd.exit.i.do.body14.i10.i_crit_edge:   ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i10.i

ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge8:     ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i7.i

ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge7:     ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i7.i

ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge6:     ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i7.i

ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge:      ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i7.i

ppc6_send_cmd.exit.i.ppc6_wr_data_byte.exit.i_crit_edge: ; preds = %ppc6_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_wr_data_byte.exit.i

do.body.i7.i:                                     ; preds = %ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge, %ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge6, %ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge7, %ppc6_send_cmd.exit.i.do.body.i7.i_crit_edge8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %2, align 2
  %conv1.i2.i = zext i16 %24 to i32
  %add.i3.i = or i32 %conv1.i2.i, -18874368
  %25 = inttoptr i32 %add.i3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %conv.i) #6, !srcloc !109
  %cur_ctrl.i4.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  %26 = ptrtoint ptr %cur_ctrl.i4.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cur_ctrl.i4.i, align 1
  %28 = xor i8 %27, 4
  store i8 %28, ptr %cur_ctrl.i4.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %cur_ctrl.i4.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cur_ctrl.i4.i, align 1
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %2, align 2
  %conv8.i5.i = zext i16 %32 to i32
  %add11.i6.i = add nuw nsw i32 %conv8.i5.i, -18874366
  %33 = inttoptr i32 %add11.i6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %30) #6, !srcloc !109
  br label %ppc6_wr_data_byte.exit.i

do.body14.i10.i:                                  ; preds = %ppc6_send_cmd.exit.i.do.body14.i10.i_crit_edge, %ppc6_send_cmd.exit.i.do.body14.i10.i_crit_edge9, %ppc6_send_cmd.exit.i.do.body14.i10.i_crit_edge10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %2, align 2
  %conv17.i8.i = zext i16 %35 to i32
  %add20.i9.i = add nuw nsw i32 %conv17.i8.i, -18874364
  %36 = inttoptr i32 %add20.i9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %conv.i) #6, !srcloc !109
  br label %ppc6_wr_data_byte.exit.i

ppc6_wr_data_byte.exit.i:                         ; preds = %do.body14.i10.i, %do.body.i7.i, %ppc6_send_cmd.exit.i.ppc6_wr_data_byte.exit.i_crit_edge
  %37 = lshr i32 %len, 8
  %conv1.i = trunc i32 %37 to i8
  %38 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %mode.i.i, align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %39, label %ppc6_wr_data_byte.exit.i.ppc6_wr_data_byte.exit21.i_crit_edge [
    i8 0, label %ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge
    i8 1, label %ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge11
    i8 2, label %ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge12
    i8 3, label %ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge13
    i8 4, label %ppc6_wr_data_byte.exit.i.do.body14.i20.i_crit_edge
    i8 5, label %ppc6_wr_data_byte.exit.i.do.body14.i20.i_crit_edge14
    i8 6, label %ppc6_wr_data_byte.exit.i.do.body14.i20.i_crit_edge15
  ]

ppc6_wr_data_byte.exit.i.do.body14.i20.i_crit_edge15: ; preds = %ppc6_wr_data_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i20.i

ppc6_wr_data_byte.exit.i.do.body14.i20.i_crit_edge14: ; preds = %ppc6_wr_data_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i20.i

ppc6_wr_data_byte.exit.i.do.body14.i20.i_crit_edge: ; preds = %ppc6_wr_data_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i20.i

ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge13: ; preds = %ppc6_wr_data_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i17.i

ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge12: ; preds = %ppc6_wr_data_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i17.i

ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge11: ; preds = %ppc6_wr_data_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i17.i

ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge: ; preds = %ppc6_wr_data_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i17.i

ppc6_wr_data_byte.exit.i.ppc6_wr_data_byte.exit21.i_crit_edge: ; preds = %ppc6_wr_data_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_wr_data_byte.exit21.i

do.body.i17.i:                                    ; preds = %ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge, %ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge11, %ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge12, %ppc6_wr_data_byte.exit.i.do.body.i17.i_crit_edge13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %2, align 2
  %conv1.i12.i = zext i16 %42 to i32
  %add.i13.i = or i32 %conv1.i12.i, -18874368
  %43 = inttoptr i32 %add.i13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %conv1.i) #6, !srcloc !109
  %cur_ctrl.i14.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  %44 = ptrtoint ptr %cur_ctrl.i14.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %cur_ctrl.i14.i, align 1
  %46 = xor i8 %45, 4
  store i8 %46, ptr %cur_ctrl.i14.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %cur_ctrl.i14.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cur_ctrl.i14.i, align 1
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %2, align 2
  %conv8.i15.i = zext i16 %50 to i32
  %add11.i16.i = add nuw nsw i32 %conv8.i15.i, -18874366
  %51 = inttoptr i32 %add11.i16.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %48) #6, !srcloc !109
  br label %ppc6_wr_data_byte.exit21thread-pre-split.i

do.body14.i20.i:                                  ; preds = %ppc6_wr_data_byte.exit.i.do.body14.i20.i_crit_edge, %ppc6_wr_data_byte.exit.i.do.body14.i20.i_crit_edge14, %ppc6_wr_data_byte.exit.i.do.body14.i20.i_crit_edge15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %2, align 2
  %conv17.i18.i = zext i16 %53 to i32
  %add20.i19.i = add nuw nsw i32 %conv17.i18.i, -18874364
  %54 = inttoptr i32 %add20.i19.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 %conv1.i) #6, !srcloc !109
  br label %ppc6_wr_data_byte.exit21thread-pre-split.i

ppc6_wr_data_byte.exit21thread-pre-split.i:       ; preds = %do.body14.i20.i, %do.body.i17.i
  %55 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %.pr68.i = load i8, ptr %mode.i.i, align 1
  br label %ppc6_wr_data_byte.exit21.i

ppc6_wr_data_byte.exit21.i:                       ; preds = %ppc6_wr_data_byte.exit21thread-pre-split.i, %ppc6_wr_data_byte.exit.i.ppc6_wr_data_byte.exit21.i_crit_edge
  %56 = phi i8 [ %.pr68.i, %ppc6_wr_data_byte.exit21thread-pre-split.i ], [ %39, %ppc6_wr_data_byte.exit.i.ppc6_wr_data_byte.exit21.i_crit_edge ]
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %56, label %ppc6_wr_data_byte.exit21.i.ppc6_wr_data_byte.exit32.i_crit_edge [
    i8 0, label %ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge
    i8 1, label %ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge16
    i8 2, label %ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge17
    i8 3, label %ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge18
    i8 4, label %ppc6_wr_data_byte.exit21.i.do.body14.i31.i_crit_edge
    i8 5, label %ppc6_wr_data_byte.exit21.i.do.body14.i31.i_crit_edge19
    i8 6, label %ppc6_wr_data_byte.exit21.i.do.body14.i31.i_crit_edge20
  ]

ppc6_wr_data_byte.exit21.i.do.body14.i31.i_crit_edge20: ; preds = %ppc6_wr_data_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i31.i

ppc6_wr_data_byte.exit21.i.do.body14.i31.i_crit_edge19: ; preds = %ppc6_wr_data_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i31.i

ppc6_wr_data_byte.exit21.i.do.body14.i31.i_crit_edge: ; preds = %ppc6_wr_data_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i31.i

ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge18: ; preds = %ppc6_wr_data_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i28.i

ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge17: ; preds = %ppc6_wr_data_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i28.i

ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge16: ; preds = %ppc6_wr_data_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i28.i

ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge: ; preds = %ppc6_wr_data_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i28.i

ppc6_wr_data_byte.exit21.i.ppc6_wr_data_byte.exit32.i_crit_edge: ; preds = %ppc6_wr_data_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_wr_data_byte.exit32.i

do.body.i28.i:                                    ; preds = %ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge, %ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge16, %ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge17, %ppc6_wr_data_byte.exit21.i.do.body.i28.i_crit_edge18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %2, align 2
  %conv1.i23.i = zext i16 %59 to i32
  %add.i24.i = or i32 %conv1.i23.i, -18874368
  %60 = inttoptr i32 %add.i24.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 0) #6, !srcloc !109
  %cur_ctrl.i25.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  %61 = ptrtoint ptr %cur_ctrl.i25.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %cur_ctrl.i25.i, align 1
  %63 = xor i8 %62, 4
  store i8 %63, ptr %cur_ctrl.i25.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %cur_ctrl.i25.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %cur_ctrl.i25.i, align 1
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %2, align 2
  %conv8.i26.i = zext i16 %67 to i32
  %add11.i27.i = add nuw nsw i32 %conv8.i26.i, -18874366
  %68 = inttoptr i32 %add11.i27.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 %65) #6, !srcloc !109
  br label %ppc6_wr_data_byte.exit32.i

do.body14.i31.i:                                  ; preds = %ppc6_wr_data_byte.exit21.i.do.body14.i31.i_crit_edge, %ppc6_wr_data_byte.exit21.i.do.body14.i31.i_crit_edge19, %ppc6_wr_data_byte.exit21.i.do.body14.i31.i_crit_edge20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %69 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %2, align 2
  %conv17.i29.i = zext i16 %70 to i32
  %add20.i30.i = add nuw nsw i32 %conv17.i29.i, -18874364
  %71 = inttoptr i32 %add20.i30.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 0) #6, !srcloc !109
  br label %ppc6_wr_data_byte.exit32.i

ppc6_wr_data_byte.exit32.i:                       ; preds = %do.body14.i31.i, %do.body.i28.i, %ppc6_wr_data_byte.exit21.i.ppc6_wr_data_byte.exit32.i_crit_edge
  %72 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %mode.i.i, align 1
  %74 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %73, label %ppc6_wr_data_byte.exit32.i.ppc6_send_cmd.exit43.i_crit_edge [
    i8 0, label %ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge
    i8 1, label %ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge21
    i8 2, label %ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge22
    i8 3, label %ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge23
    i8 4, label %ppc6_wr_data_byte.exit32.i.do.body14.i42.i_crit_edge
    i8 5, label %ppc6_wr_data_byte.exit32.i.do.body14.i42.i_crit_edge24
    i8 6, label %ppc6_wr_data_byte.exit32.i.do.body14.i42.i_crit_edge25
  ]

ppc6_wr_data_byte.exit32.i.do.body14.i42.i_crit_edge25: ; preds = %ppc6_wr_data_byte.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i42.i

ppc6_wr_data_byte.exit32.i.do.body14.i42.i_crit_edge24: ; preds = %ppc6_wr_data_byte.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i42.i

ppc6_wr_data_byte.exit32.i.do.body14.i42.i_crit_edge: ; preds = %ppc6_wr_data_byte.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i42.i

ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge23: ; preds = %ppc6_wr_data_byte.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i39.i

ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge22: ; preds = %ppc6_wr_data_byte.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i39.i

ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge21: ; preds = %ppc6_wr_data_byte.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i39.i

ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge: ; preds = %ppc6_wr_data_byte.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i39.i

ppc6_wr_data_byte.exit32.i.ppc6_send_cmd.exit43.i_crit_edge: ; preds = %ppc6_wr_data_byte.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_send_cmd.exit43.i

do.body.i39.i:                                    ; preds = %ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge, %ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge21, %ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge22, %ppc6_wr_data_byte.exit32.i.do.body.i39.i_crit_edge23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %75 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %2, align 2
  %conv1.i34.i = zext i16 %76 to i32
  %add.i35.i = or i32 %conv1.i34.i, -18874368
  %77 = inttoptr i32 %add.i35.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 -23) #6, !srcloc !109
  %cur_ctrl.i36.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  %78 = ptrtoint ptr %cur_ctrl.i36.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %cur_ctrl.i36.i, align 1
  %80 = xor i8 %79, 2
  store i8 %80, ptr %cur_ctrl.i36.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %81 = ptrtoint ptr %cur_ctrl.i36.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %cur_ctrl.i36.i, align 1
  %83 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %2, align 2
  %conv8.i37.i = zext i16 %84 to i32
  %add11.i38.i = add nuw nsw i32 %conv8.i37.i, -18874366
  %85 = inttoptr i32 %add11.i38.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 %82) #6, !srcloc !109
  br label %ppc6_send_cmd.exit43thread-pre-split.i

do.body14.i42.i:                                  ; preds = %ppc6_wr_data_byte.exit32.i.do.body14.i42.i_crit_edge, %ppc6_wr_data_byte.exit32.i.do.body14.i42.i_crit_edge24, %ppc6_wr_data_byte.exit32.i.do.body14.i42.i_crit_edge25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %86 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %2, align 2
  %conv17.i40.i = zext i16 %87 to i32
  %add20.i41.i = add nuw nsw i32 %conv17.i40.i, -18874365
  %88 = inttoptr i32 %add20.i41.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 -23) #6, !srcloc !109
  br label %ppc6_send_cmd.exit43thread-pre-split.i

ppc6_send_cmd.exit43thread-pre-split.i:           ; preds = %do.body14.i42.i, %do.body.i39.i
  %89 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %.pr69.i = load i8, ptr %mode.i.i, align 1
  br label %ppc6_send_cmd.exit43.i

ppc6_send_cmd.exit43.i:                           ; preds = %ppc6_send_cmd.exit43thread-pre-split.i, %ppc6_wr_data_byte.exit32.i.ppc6_send_cmd.exit43.i_crit_edge
  %90 = phi i8 [ %.pr69.i, %ppc6_send_cmd.exit43thread-pre-split.i ], [ %73, %ppc6_wr_data_byte.exit32.i.ppc6_send_cmd.exit43.i_crit_edge ]
  %91 = zext i8 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %90, label %ppc6_send_cmd.exit43.i.ppc6_send_cmd.exit54.i_crit_edge [
    i8 0, label %ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge
    i8 1, label %ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge26
    i8 2, label %ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge27
    i8 3, label %ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge28
    i8 4, label %ppc6_send_cmd.exit43.i.do.body14.i53.i_crit_edge
    i8 5, label %ppc6_send_cmd.exit43.i.do.body14.i53.i_crit_edge29
    i8 6, label %ppc6_send_cmd.exit43.i.do.body14.i53.i_crit_edge30
  ]

ppc6_send_cmd.exit43.i.do.body14.i53.i_crit_edge30: ; preds = %ppc6_send_cmd.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i53.i

ppc6_send_cmd.exit43.i.do.body14.i53.i_crit_edge29: ; preds = %ppc6_send_cmd.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i53.i

ppc6_send_cmd.exit43.i.do.body14.i53.i_crit_edge: ; preds = %ppc6_send_cmd.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i53.i

ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge28: ; preds = %ppc6_send_cmd.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i50.i

ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge27: ; preds = %ppc6_send_cmd.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i50.i

ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge26: ; preds = %ppc6_send_cmd.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i50.i

ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge:   ; preds = %ppc6_send_cmd.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i50.i

ppc6_send_cmd.exit43.i.ppc6_send_cmd.exit54.i_crit_edge: ; preds = %ppc6_send_cmd.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_send_cmd.exit54.i

do.body.i50.i:                                    ; preds = %ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge, %ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge26, %ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge27, %ppc6_send_cmd.exit43.i.do.body.i50.i_crit_edge28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %2, align 2
  %conv1.i45.i = zext i16 %93 to i32
  %add.i46.i = or i32 %conv1.i45.i, -18874368
  %94 = inttoptr i32 %add.i46.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 64) #6, !srcloc !109
  %cur_ctrl.i47.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  %95 = ptrtoint ptr %cur_ctrl.i47.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %cur_ctrl.i47.i, align 1
  %97 = xor i8 %96, 2
  store i8 %97, ptr %cur_ctrl.i47.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %98 = ptrtoint ptr %cur_ctrl.i47.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %cur_ctrl.i47.i, align 1
  %100 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %2, align 2
  %conv8.i48.i = zext i16 %101 to i32
  %add11.i49.i = add nuw nsw i32 %conv8.i48.i, -18874366
  %102 = inttoptr i32 %add11.i49.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 %99) #6, !srcloc !109
  br label %ppc6_send_cmd.exit54.i

do.body14.i53.i:                                  ; preds = %ppc6_send_cmd.exit43.i.do.body14.i53.i_crit_edge, %ppc6_send_cmd.exit43.i.do.body14.i53.i_crit_edge29, %ppc6_send_cmd.exit43.i.do.body14.i53.i_crit_edge30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %103 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %2, align 2
  %conv17.i51.i = zext i16 %104 to i32
  %add20.i52.i = add nuw nsw i32 %conv17.i51.i, -18874365
  %105 = inttoptr i32 %add20.i52.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %105, i8 64) #6, !srcloc !109
  br label %ppc6_send_cmd.exit54.i

ppc6_send_cmd.exit54.i:                           ; preds = %do.body14.i53.i, %do.body.i50.i, %ppc6_send_cmd.exit43.i.ppc6_send_cmd.exit54.i_crit_edge
  %106 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %mode.i.i, align 1
  %108 = zext i8 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %107, label %ppc6_send_cmd.exit54.i.ppc6_rd_data_blk.exit.i_crit_edge [
    i8 0, label %ppc6_send_cmd.exit54.i.sw.bb.i.i_crit_edge
    i8 1, label %ppc6_send_cmd.exit54.i.sw.bb.i.i_crit_edge31
    i8 2, label %ppc6_send_cmd.exit54.i.sw.bb49.i.i_crit_edge
    i8 3, label %ppc6_send_cmd.exit54.i.sw.bb49.i.i_crit_edge32
    i8 4, label %do.body125.i.i
    i8 5, label %do.body164.i.i
    i8 6, label %do.body216.i.i
  ]

ppc6_send_cmd.exit54.i.sw.bb49.i.i_crit_edge32:   ; preds = %ppc6_send_cmd.exit54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb49.i.i

ppc6_send_cmd.exit54.i.sw.bb49.i.i_crit_edge:     ; preds = %ppc6_send_cmd.exit54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb49.i.i

ppc6_send_cmd.exit54.i.sw.bb.i.i_crit_edge31:     ; preds = %ppc6_send_cmd.exit54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

ppc6_send_cmd.exit54.i.sw.bb.i.i_crit_edge:       ; preds = %ppc6_send_cmd.exit54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

ppc6_send_cmd.exit54.i.ppc6_rd_data_blk.exit.i_crit_edge: ; preds = %ppc6_send_cmd.exit54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_rd_data_blk.exit.i

sw.bb.i.i:                                        ; preds = %ppc6_send_cmd.exit54.i.sw.bb.i.i_crit_edge, %ppc6_send_cmd.exit54.i.sw.bb.i.i_crit_edge31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool.not356.i.i = icmp eq i32 %shr, 0
  br i1 %tobool.not356.i.i, label %sw.bb.i.i.ppc6_rd_data_blk.exitthread-pre-split.i_crit_edge, label %while.body.lr.ph.i.i

sw.bb.i.i.ppc6_rd_data_blk.exitthread-pre-split.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_rd_data_blk.exitthread-pre-split.i

while.body.lr.ph.i.i:                             ; preds = %sw.bb.i.i
  %cur_ctrl.i56.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %data.addr.0358.i.i = phi ptr [ %buf, %while.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %count.addr.0357.i.i = phi i32 [ %shr, %while.body.lr.ph.i.i ], [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %109 = ptrtoint ptr %cur_ctrl.i56.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %cur_ctrl.i56.i, align 1
  %111 = and i8 %110, -2
  %112 = xor i8 %111, 4
  store i8 %112, ptr %cur_ctrl.i56.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %113 = ptrtoint ptr %cur_ctrl.i56.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %cur_ctrl.i56.i, align 1
  %115 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %2, align 2
  %conv5.i.i = zext i16 %116 to i32
  %add7.i.i = add nuw nsw i32 %conv5.i.i, -18874366
  %117 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %117, i8 %114) #6, !srcloc !109
  %118 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %2, align 2
  %conv9.i.i = zext i16 %119 to i32
  %add12.i.i = add nuw nsw i32 %conv9.i.i, -18874367
  %120 = inttoptr i32 %add12.i.i to ptr
  %121 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %120) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  %and16.i.i = lshr i8 %121, 1
  %122 = and i8 %and16.i.i, 64
  %and18.i.i = lshr i8 %121, 3
  %123 = and i8 %and18.i.i, 7
  %or.i.i = or i8 %122, %123
  %124 = ptrtoint ptr %cur_ctrl.i56.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %cur_ctrl.i56.i, align 1
  %126 = or i8 %125, 1
  store i8 %126, ptr %cur_ctrl.i56.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  tail call void @arm_heavy_mb() #6
  %127 = ptrtoint ptr %cur_ctrl.i56.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %cur_ctrl.i56.i, align 1
  %129 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %2, align 2
  %conv30.i.i = zext i16 %130 to i32
  %add33.i.i = add nuw nsw i32 %conv30.i.i, -18874366
  %131 = inttoptr i32 %add33.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %131, i8 %128) #6, !srcloc !109
  %132 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %2, align 2
  %conv37.i.i = zext i16 %133 to i32
  %add40.i.i = add nuw nsw i32 %conv37.i.i, -18874367
  %134 = inttoptr i32 %add40.i.i to ptr
  %135 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %134) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  %136 = and i8 %135, -72
  %or47334.i.i = or i8 %or.i.i, %136
  %incdec.ptr.i.i = getelementptr i8, ptr %data.addr.0358.i.i, i32 1
  %137 = ptrtoint ptr %data.addr.0358.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %or47334.i.i, ptr %data.addr.0358.i.i, align 1
  %dec.i.i = add i32 %count.addr.0357.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.ppc6_rd_data_blk.exitthread-pre-split.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i.ppc6_rd_data_blk.exitthread-pre-split.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_rd_data_blk.exitthread-pre-split.i

sw.bb49.i.i:                                      ; preds = %ppc6_send_cmd.exit54.i.sw.bb49.i.i_crit_edge, %ppc6_send_cmd.exit54.i.sw.bb49.i.i_crit_edge32
  %cur_ctrl50.i.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  %138 = ptrtoint ptr %cur_ctrl50.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %cur_ctrl50.i.i, align 1
  %140 = or i8 %139, 32
  store i8 %140, ptr %cur_ctrl50.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  tail call void @arm_heavy_mb() #6
  %141 = ptrtoint ptr %cur_ctrl50.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %cur_ctrl50.i.i, align 1
  %143 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %2, align 2
  %conv59.i.i = zext i16 %144 to i32
  %add62.i.i = add nuw nsw i32 %conv59.i.i, -18874366
  %145 = inttoptr i32 %add62.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %145, i8 %142) #6, !srcloc !109
  %146 = ptrtoint ptr %cur_ctrl50.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %cur_ctrl50.i.i, align 1
  %148 = or i8 %147, 1
  store i8 %148, ptr %cur_ctrl50.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool69.not353.i.i = icmp eq i32 %shr, 0
  br i1 %tobool69.not353.i.i, label %sw.bb49.i.i.while.end95.i.i_crit_edge, label %sw.bb49.i.i.while.body70.i.i_crit_edge

sw.bb49.i.i.while.body70.i.i_crit_edge:           ; preds = %sw.bb49.i.i
  br label %while.body70.i.i

sw.bb49.i.i.while.end95.i.i_crit_edge:            ; preds = %sw.bb49.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end95.i.i

while.body70.i.i:                                 ; preds = %while.body70.i.i.while.body70.i.i_crit_edge, %sw.bb49.i.i.while.body70.i.i_crit_edge
  %data.addr.1355.i.i = phi ptr [ %incdec.ptr93.i.i, %while.body70.i.i.while.body70.i.i_crit_edge ], [ %buf, %sw.bb49.i.i.while.body70.i.i_crit_edge ]
  %count.addr.1354.i.i = phi i32 [ %dec94.i.i, %while.body70.i.i.while.body70.i.i_crit_edge ], [ %shr, %sw.bb49.i.i.while.body70.i.i_crit_edge ]
  %149 = ptrtoint ptr %cur_ctrl50.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %cur_ctrl50.i.i, align 1
  %151 = xor i8 %150, 4
  store i8 %151, ptr %cur_ctrl50.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  tail call void @arm_heavy_mb() #6
  %152 = ptrtoint ptr %cur_ctrl50.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %cur_ctrl50.i.i, align 1
  %154 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %2, align 2
  %conv80.i.i = zext i16 %155 to i32
  %add83.i.i = add nuw nsw i32 %conv80.i.i, -18874366
  %156 = inttoptr i32 %add83.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %156, i8 %153) #6, !srcloc !109
  %157 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %2, align 2
  %conv87.i.i = zext i16 %158 to i32
  %add89.i.i = or i32 %conv87.i.i, -18874368
  %159 = inttoptr i32 %add89.i.i to ptr
  %160 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %159) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  %incdec.ptr93.i.i = getelementptr i8, ptr %data.addr.1355.i.i, i32 1
  %161 = ptrtoint ptr %data.addr.1355.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %data.addr.1355.i.i, align 1
  %dec94.i.i = add i32 %count.addr.1354.i.i, -1
  %tobool69.not.i.i = icmp eq i32 %dec94.i.i, 0
  br i1 %tobool69.not.i.i, label %while.body70.i.i.while.end95.i.i_crit_edge, label %while.body70.i.i.while.body70.i.i_crit_edge

while.body70.i.i.while.body70.i.i_crit_edge:      ; preds = %while.body70.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body70.i.i

while.body70.i.i.while.end95.i.i_crit_edge:       ; preds = %while.body70.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end95.i.i

while.end95.i.i:                                  ; preds = %while.body70.i.i.while.end95.i.i_crit_edge, %sw.bb49.i.i.while.end95.i.i_crit_edge
  %162 = ptrtoint ptr %cur_ctrl50.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %cur_ctrl50.i.i, align 1
  %164 = and i8 %163, -2
  store i8 %164, ptr %cur_ctrl50.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  tail call void @arm_heavy_mb() #6
  %165 = ptrtoint ptr %cur_ctrl50.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %cur_ctrl50.i.i, align 1
  %167 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %2, align 2
  %conv105.i.i = zext i16 %168 to i32
  %add108.i.i = add nuw nsw i32 %conv105.i.i, -18874366
  %169 = inttoptr i32 %add108.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %169, i8 %166) #6, !srcloc !109
  %170 = ptrtoint ptr %cur_ctrl50.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %cur_ctrl50.i.i, align 1
  %172 = and i8 %171, -33
  store i8 %172, ptr %cur_ctrl50.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  tail call void @arm_heavy_mb() #6
  %173 = ptrtoint ptr %cur_ctrl50.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %cur_ctrl50.i.i, align 1
  %175 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %2, align 2
  %conv119.i.i = zext i16 %176 to i32
  %add122.i.i = add nuw nsw i32 %conv119.i.i, -18874366
  %177 = inttoptr i32 %add122.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %177, i8 %174) #6, !srcloc !109
  br label %ppc6_rd_data_blk.exitthread-pre-split.i

do.body125.i.i:                                   ; preds = %ppc6_send_cmd.exit54.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  tail call void @arm_heavy_mb() #6
  %cur_ctrl128.i.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  %178 = ptrtoint ptr %cur_ctrl128.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %cur_ctrl128.i.i, align 1
  %180 = or i8 %179, 32
  %181 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %2, align 2
  %conv133.i.i = zext i16 %182 to i32
  %add136.i.i = add nuw nsw i32 %conv133.i.i, -18874366
  %183 = inttoptr i32 %add136.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %183, i8 %180) #6, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool139.not350.i.i = icmp eq i32 %shr, 0
  br i1 %tobool139.not350.i.i, label %do.body125.i.i.do.body153.i.i_crit_edge, label %do.body125.i.i.while.body140.i.i_crit_edge

do.body125.i.i.while.body140.i.i_crit_edge:       ; preds = %do.body125.i.i
  br label %while.body140.i.i

do.body125.i.i.do.body153.i.i_crit_edge:          ; preds = %do.body125.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body153.i.i

while.body140.i.i:                                ; preds = %while.body140.i.i.while.body140.i.i_crit_edge, %do.body125.i.i.while.body140.i.i_crit_edge
  %data.addr.2352.i.i = phi ptr [ %incdec.ptr150.i.i, %while.body140.i.i.while.body140.i.i_crit_edge ], [ %buf, %do.body125.i.i.while.body140.i.i_crit_edge ]
  %count.addr.2351.i.i = phi i32 [ %dec151.i.i, %while.body140.i.i.while.body140.i.i_crit_edge ], [ %shr, %do.body125.i.i.while.body140.i.i_crit_edge ]
  %184 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %2, align 2
  %conv143.i.i = zext i16 %185 to i32
  %add146.i.i = add nuw nsw i32 %conv143.i.i, -18874364
  %186 = inttoptr i32 %add146.i.i to ptr
  %187 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %186) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  %incdec.ptr150.i.i = getelementptr i8, ptr %data.addr.2352.i.i, i32 1
  %188 = ptrtoint ptr %data.addr.2352.i.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %data.addr.2352.i.i, align 1
  %dec151.i.i = add i32 %count.addr.2351.i.i, -1
  %tobool139.not.i.i = icmp eq i32 %dec151.i.i, 0
  br i1 %tobool139.not.i.i, label %while.body140.i.i.do.body153.i.i_crit_edge, label %while.body140.i.i.while.body140.i.i_crit_edge

while.body140.i.i.while.body140.i.i_crit_edge:    ; preds = %while.body140.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body140.i.i

while.body140.i.i.do.body153.i.i_crit_edge:       ; preds = %while.body140.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body153.i.i

do.body153.i.i:                                   ; preds = %while.body140.i.i.do.body153.i.i_crit_edge, %do.body125.i.i.do.body153.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  tail call void @arm_heavy_mb() #6
  %189 = ptrtoint ptr %cur_ctrl128.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %cur_ctrl128.i.i, align 1
  %191 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %2, align 2
  %conv158.i.i = zext i16 %192 to i32
  %add161.i.i = add nuw nsw i32 %conv158.i.i, -18874366
  %193 = inttoptr i32 %add161.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %193, i8 %190) #6, !srcloc !109
  br label %ppc6_rd_data_blk.exitthread-pre-split.i

do.body164.i.i:                                   ; preds = %ppc6_send_cmd.exit54.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  tail call void @arm_heavy_mb() #6
  %cur_ctrl167.i.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  %194 = ptrtoint ptr %cur_ctrl167.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %cur_ctrl167.i.i, align 1
  %196 = or i8 %195, 32
  %197 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %2, align 2
  %conv172.i.i = zext i16 %198 to i32
  %add175.i.i = add nuw nsw i32 %conv172.i.i, -18874366
  %199 = inttoptr i32 %add175.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %199, i8 %196) #6, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp342.i.i = icmp sgt i32 %shr, 1
  br i1 %cmp342.i.i, label %do.body164.i.i.while.body179.i.i_crit_edge, label %do.body164.i.i.while.cond190.preheader.i.i_crit_edge

do.body164.i.i.while.cond190.preheader.i.i_crit_edge: ; preds = %do.body164.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond190.preheader.i.i

do.body164.i.i.while.body179.i.i_crit_edge:       ; preds = %do.body164.i.i
  br label %while.body179.i.i

while.cond190.preheader.i.i:                      ; preds = %while.body179.i.i.while.cond190.preheader.i.i_crit_edge, %do.body164.i.i.while.cond190.preheader.i.i_crit_edge
  %count.addr.3.lcssa.i.i = phi i32 [ %shr, %do.body164.i.i.while.cond190.preheader.i.i_crit_edge ], [ %sub.i.i, %while.body179.i.i.while.cond190.preheader.i.i_crit_edge ]
  %data.addr.3.lcssa.i.i = phi ptr [ %buf, %do.body164.i.i.while.cond190.preheader.i.i_crit_edge ], [ %add.ptr.i.i, %while.body179.i.i.while.cond190.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.3.lcssa.i.i)
  %tobool191.not347.i.i = icmp eq i32 %count.addr.3.lcssa.i.i, 0
  br i1 %tobool191.not347.i.i, label %while.cond190.preheader.i.i.do.body205.i.i_crit_edge, label %while.cond190.preheader.i.i.while.body192.i.i_crit_edge

while.cond190.preheader.i.i.while.body192.i.i_crit_edge: ; preds = %while.cond190.preheader.i.i
  br label %while.body192.i.i

while.cond190.preheader.i.i.do.body205.i.i_crit_edge: ; preds = %while.cond190.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body205.i.i

while.body179.i.i:                                ; preds = %while.body179.i.i.while.body179.i.i_crit_edge, %do.body164.i.i.while.body179.i.i_crit_edge
  %data.addr.3344.i.i = phi ptr [ %add.ptr.i.i, %while.body179.i.i.while.body179.i.i_crit_edge ], [ %buf, %do.body164.i.i.while.body179.i.i_crit_edge ]
  %count.addr.3343.i.i = phi i32 [ %sub.i.i, %while.body179.i.i.while.body179.i.i_crit_edge ], [ %shr, %do.body164.i.i.while.body179.i.i_crit_edge ]
  %200 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %2, align 2
  %conv182.i.i = zext i16 %201 to i32
  %add185.i.i = add nuw nsw i32 %conv182.i.i, -18874364
  %202 = inttoptr i32 %add185.i.i to ptr
  %203 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %202) #6, !srcloc !143
  %204 = tail call i16 @llvm.bswap.i16(i16 %203) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %205 = ptrtoint ptr %data.addr.3344.i.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %204, ptr %data.addr.3344.i.i, align 2
  %add.ptr.i.i = getelementptr i8, ptr %data.addr.3344.i.i, i32 2
  %sub.i.i = add nsw i32 %count.addr.3343.i.i, -2
  %cmp.i.i = icmp ugt i32 %count.addr.3343.i.i, 3
  br i1 %cmp.i.i, label %while.body179.i.i.while.body179.i.i_crit_edge, label %while.body179.i.i.while.cond190.preheader.i.i_crit_edge

while.body179.i.i.while.cond190.preheader.i.i_crit_edge: ; preds = %while.body179.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond190.preheader.i.i

while.body179.i.i.while.body179.i.i_crit_edge:    ; preds = %while.body179.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body179.i.i

while.body192.i.i:                                ; preds = %while.body192.i.i.while.body192.i.i_crit_edge, %while.cond190.preheader.i.i.while.body192.i.i_crit_edge
  %data.addr.4349.i.i = phi ptr [ %incdec.ptr202.i.i, %while.body192.i.i.while.body192.i.i_crit_edge ], [ %data.addr.3.lcssa.i.i, %while.cond190.preheader.i.i.while.body192.i.i_crit_edge ]
  %count.addr.4348.i.i = phi i32 [ %dec203.i.i, %while.body192.i.i.while.body192.i.i_crit_edge ], [ %count.addr.3.lcssa.i.i, %while.cond190.preheader.i.i.while.body192.i.i_crit_edge ]
  %206 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %2, align 2
  %conv195.i.i = zext i16 %207 to i32
  %add198.i.i = add nuw nsw i32 %conv195.i.i, -18874364
  %208 = inttoptr i32 %add198.i.i to ptr
  %209 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %208) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  %incdec.ptr202.i.i = getelementptr i8, ptr %data.addr.4349.i.i, i32 1
  %210 = ptrtoint ptr %data.addr.4349.i.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %209, ptr %data.addr.4349.i.i, align 1
  %dec203.i.i = add i32 %count.addr.4348.i.i, -1
  %tobool191.not.i.i = icmp eq i32 %dec203.i.i, 0
  br i1 %tobool191.not.i.i, label %while.body192.i.i.do.body205.i.i_crit_edge, label %while.body192.i.i.while.body192.i.i_crit_edge

while.body192.i.i.while.body192.i.i_crit_edge:    ; preds = %while.body192.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body192.i.i

while.body192.i.i.do.body205.i.i_crit_edge:       ; preds = %while.body192.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body205.i.i

do.body205.i.i:                                   ; preds = %while.body192.i.i.do.body205.i.i_crit_edge, %while.cond190.preheader.i.i.do.body205.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %211 = ptrtoint ptr %cur_ctrl167.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %cur_ctrl167.i.i, align 1
  %213 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %2, align 2
  %conv210.i.i = zext i16 %214 to i32
  %add213.i.i = add nuw nsw i32 %conv210.i.i, -18874366
  %215 = inttoptr i32 %add213.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %215, i8 %212) #6, !srcloc !109
  br label %ppc6_rd_data_blk.exitthread-pre-split.i

do.body216.i.i:                                   ; preds = %ppc6_send_cmd.exit54.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  tail call void @arm_heavy_mb() #6
  %cur_ctrl219.i.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  %216 = ptrtoint ptr %cur_ctrl219.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %cur_ctrl219.i.i, align 1
  %218 = or i8 %217, 32
  %219 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %2, align 2
  %conv224.i.i = zext i16 %220 to i32
  %add227.i.i = add nuw nsw i32 %conv224.i.i, -18874366
  %221 = inttoptr i32 %add227.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %221, i8 %218) #6, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr)
  %cmp230335.i.i = icmp sgt i32 %shr, 3
  br i1 %cmp230335.i.i, label %do.body216.i.i.while.body232.i.i_crit_edge, label %do.body216.i.i.while.cond245.preheader.i.i_crit_edge

do.body216.i.i.while.cond245.preheader.i.i_crit_edge: ; preds = %do.body216.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond245.preheader.i.i

do.body216.i.i.while.body232.i.i_crit_edge:       ; preds = %do.body216.i.i
  br label %while.body232.i.i

while.cond245.preheader.i.i:                      ; preds = %while.body232.i.i.while.cond245.preheader.i.i_crit_edge, %do.body216.i.i.while.cond245.preheader.i.i_crit_edge
  %count.addr.5.lcssa.i.i = phi i32 [ %shr, %do.body216.i.i.while.cond245.preheader.i.i_crit_edge ], [ %sub243.i.i, %while.body232.i.i.while.cond245.preheader.i.i_crit_edge ]
  %data.addr.5.lcssa.i.i = phi ptr [ %buf, %do.body216.i.i.while.cond245.preheader.i.i_crit_edge ], [ %add.ptr242.i.i, %while.body232.i.i.while.cond245.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.5.lcssa.i.i)
  %tobool246.not339.i.i = icmp eq i32 %count.addr.5.lcssa.i.i, 0
  br i1 %tobool246.not339.i.i, label %while.cond245.preheader.i.i.do.body260.i.i_crit_edge, label %while.cond245.preheader.i.i.while.body247.i.i_crit_edge

while.cond245.preheader.i.i.while.body247.i.i_crit_edge: ; preds = %while.cond245.preheader.i.i
  br label %while.body247.i.i

while.cond245.preheader.i.i.do.body260.i.i_crit_edge: ; preds = %while.cond245.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body260.i.i

while.body232.i.i:                                ; preds = %while.body232.i.i.while.body232.i.i_crit_edge, %do.body216.i.i.while.body232.i.i_crit_edge
  %data.addr.5337.i.i = phi ptr [ %add.ptr242.i.i, %while.body232.i.i.while.body232.i.i_crit_edge ], [ %buf, %do.body216.i.i.while.body232.i.i_crit_edge ]
  %count.addr.5336.i.i = phi i32 [ %sub243.i.i, %while.body232.i.i.while.body232.i.i_crit_edge ], [ %shr, %do.body216.i.i.while.body232.i.i_crit_edge ]
  %222 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %2, align 2
  %conv235.i.i = zext i16 %223 to i32
  %add238.i.i = add nuw nsw i32 %conv235.i.i, -18874364
  %224 = inttoptr i32 %add238.i.i to ptr
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %224) #6, !srcloc !148
  %226 = tail call i32 @llvm.bswap.i32(i32 %225) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  %227 = ptrtoint ptr %data.addr.5337.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %data.addr.5337.i.i, align 4
  %add.ptr242.i.i = getelementptr i8, ptr %data.addr.5337.i.i, i32 4
  %sub243.i.i = add nsw i32 %count.addr.5336.i.i, -4
  %cmp230.i.i = icmp ugt i32 %count.addr.5336.i.i, 7
  br i1 %cmp230.i.i, label %while.body232.i.i.while.body232.i.i_crit_edge, label %while.body232.i.i.while.cond245.preheader.i.i_crit_edge

while.body232.i.i.while.cond245.preheader.i.i_crit_edge: ; preds = %while.body232.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond245.preheader.i.i

while.body232.i.i.while.body232.i.i_crit_edge:    ; preds = %while.body232.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body232.i.i

while.body247.i.i:                                ; preds = %while.body247.i.i.while.body247.i.i_crit_edge, %while.cond245.preheader.i.i.while.body247.i.i_crit_edge
  %data.addr.6341.i.i = phi ptr [ %incdec.ptr257.i.i, %while.body247.i.i.while.body247.i.i_crit_edge ], [ %data.addr.5.lcssa.i.i, %while.cond245.preheader.i.i.while.body247.i.i_crit_edge ]
  %count.addr.6340.i.i = phi i32 [ %dec258.i.i, %while.body247.i.i.while.body247.i.i_crit_edge ], [ %count.addr.5.lcssa.i.i, %while.cond245.preheader.i.i.while.body247.i.i_crit_edge ]
  %228 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %2, align 2
  %conv250.i.i = zext i16 %229 to i32
  %add253.i.i = add nuw nsw i32 %conv250.i.i, -18874364
  %230 = inttoptr i32 %add253.i.i to ptr
  %231 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %230) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  %incdec.ptr257.i.i = getelementptr i8, ptr %data.addr.6341.i.i, i32 1
  %232 = ptrtoint ptr %data.addr.6341.i.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %231, ptr %data.addr.6341.i.i, align 1
  %dec258.i.i = add i32 %count.addr.6340.i.i, -1
  %tobool246.not.i.i = icmp eq i32 %dec258.i.i, 0
  br i1 %tobool246.not.i.i, label %while.body247.i.i.do.body260.i.i_crit_edge, label %while.body247.i.i.while.body247.i.i_crit_edge

while.body247.i.i.while.body247.i.i_crit_edge:    ; preds = %while.body247.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body247.i.i

while.body247.i.i.do.body260.i.i_crit_edge:       ; preds = %while.body247.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body260.i.i

do.body260.i.i:                                   ; preds = %while.body247.i.i.do.body260.i.i_crit_edge, %while.cond245.preheader.i.i.do.body260.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  tail call void @arm_heavy_mb() #6
  %233 = ptrtoint ptr %cur_ctrl219.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %cur_ctrl219.i.i, align 1
  %235 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %2, align 2
  %conv265.i.i = zext i16 %236 to i32
  %add268.i.i = add nuw nsw i32 %conv265.i.i, -18874366
  %237 = inttoptr i32 %add268.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %237, i8 %234) #6, !srcloc !109
  br label %ppc6_rd_data_blk.exitthread-pre-split.i

ppc6_rd_data_blk.exitthread-pre-split.i:          ; preds = %do.body260.i.i, %do.body205.i.i, %do.body153.i.i, %while.end95.i.i, %while.body.i.i.ppc6_rd_data_blk.exitthread-pre-split.i_crit_edge, %sw.bb.i.i.ppc6_rd_data_blk.exitthread-pre-split.i_crit_edge
  %238 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %.pr70.i = load i8, ptr %mode.i.i, align 1
  br label %ppc6_rd_data_blk.exit.i

ppc6_rd_data_blk.exit.i:                          ; preds = %ppc6_rd_data_blk.exitthread-pre-split.i, %ppc6_send_cmd.exit54.i.ppc6_rd_data_blk.exit.i_crit_edge
  %239 = phi i8 [ %.pr70.i, %ppc6_rd_data_blk.exitthread-pre-split.i ], [ %107, %ppc6_send_cmd.exit54.i.ppc6_rd_data_blk.exit.i_crit_edge ]
  %240 = zext i8 %239 to i64
  call void @__sanitizer_cov_trace_switch(i64 %240, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %239, label %ppc6_rd_data_blk.exit.i.ppc6_rd_port16_blk.exit_crit_edge [
    i8 0, label %ppc6_rd_data_blk.exit.i.do.body.i63.i_crit_edge
    i8 1, label %ppc6_rd_data_blk.exit.i.do.body.i63.i_crit_edge33
    i8 2, label %ppc6_rd_data_blk.exit.i.do.body.i63.i_crit_edge34
    i8 3, label %ppc6_rd_data_blk.exit.i.do.body.i63.i_crit_edge35
    i8 4, label %ppc6_rd_data_blk.exit.i.do.body14.i66.i_crit_edge
    i8 5, label %ppc6_rd_data_blk.exit.i.do.body14.i66.i_crit_edge36
    i8 6, label %ppc6_rd_data_blk.exit.i.do.body14.i66.i_crit_edge37
  ]

ppc6_rd_data_blk.exit.i.do.body14.i66.i_crit_edge37: ; preds = %ppc6_rd_data_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i66.i

ppc6_rd_data_blk.exit.i.do.body14.i66.i_crit_edge36: ; preds = %ppc6_rd_data_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i66.i

ppc6_rd_data_blk.exit.i.do.body14.i66.i_crit_edge: ; preds = %ppc6_rd_data_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i66.i

ppc6_rd_data_blk.exit.i.do.body.i63.i_crit_edge35: ; preds = %ppc6_rd_data_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i63.i

ppc6_rd_data_blk.exit.i.do.body.i63.i_crit_edge34: ; preds = %ppc6_rd_data_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i63.i

ppc6_rd_data_blk.exit.i.do.body.i63.i_crit_edge33: ; preds = %ppc6_rd_data_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i63.i

ppc6_rd_data_blk.exit.i.do.body.i63.i_crit_edge:  ; preds = %ppc6_rd_data_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i63.i

ppc6_rd_data_blk.exit.i.ppc6_rd_port16_blk.exit_crit_edge: ; preds = %ppc6_rd_data_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_rd_port16_blk.exit

do.body.i63.i:                                    ; preds = %ppc6_rd_data_blk.exit.i.do.body.i63.i_crit_edge, %ppc6_rd_data_blk.exit.i.do.body.i63.i_crit_edge33, %ppc6_rd_data_blk.exit.i.do.body.i63.i_crit_edge34, %ppc6_rd_data_blk.exit.i.do.body.i63.i_crit_edge35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %241 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %2, align 2
  %conv1.i58.i = zext i16 %242 to i32
  %add.i59.i = or i32 %conv1.i58.i, -18874368
  %243 = inttoptr i32 %add.i59.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %243, i8 -55) #6, !srcloc !109
  %cur_ctrl.i60.i = getelementptr inbounds %struct.ppc_storage, ptr %2, i32 0, i32 6
  %244 = ptrtoint ptr %cur_ctrl.i60.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %cur_ctrl.i60.i, align 1
  %246 = xor i8 %245, 2
  store i8 %246, ptr %cur_ctrl.i60.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %247 = ptrtoint ptr %cur_ctrl.i60.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %cur_ctrl.i60.i, align 1
  %249 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %2, align 2
  %conv8.i61.i = zext i16 %250 to i32
  %add11.i62.i = add nuw nsw i32 %conv8.i61.i, -18874366
  %251 = inttoptr i32 %add11.i62.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %251, i8 %248) #6, !srcloc !109
  br label %ppc6_rd_port16_blk.exit

do.body14.i66.i:                                  ; preds = %ppc6_rd_data_blk.exit.i.do.body14.i66.i_crit_edge, %ppc6_rd_data_blk.exit.i.do.body14.i66.i_crit_edge36, %ppc6_rd_data_blk.exit.i.do.body14.i66.i_crit_edge37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %252 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %2, align 2
  %conv17.i64.i = zext i16 %253 to i32
  %add20.i65.i = add nuw nsw i32 %conv17.i64.i, -18874365
  %254 = inttoptr i32 %add20.i65.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %254, i8 -55) #6, !srcloc !109
  br label %ppc6_rd_port16_blk.exit

ppc6_rd_port16_blk.exit:                          ; preds = %do.body14.i66.i, %do.body.i63.i, %ppc6_rd_data_blk.exit.i.ppc6_rd_port16_blk.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpck6_connect(ptr nocapture noundef readonly %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @verbose, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = trunc i32 %2 to i8
  %conv = add i8 %3, 2
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private, align 4
  %6 = inttoptr i32 %5 to ptr
  %mode3 = getelementptr inbounds %struct.ppc_storage, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %mode3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %mode3, align 1
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp5 = icmp eq i32 %2, 1
  %private8 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %8 = ptrtoint ptr %private8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private8, align 4
  %10 = inttoptr i32 %9 to ptr
  %mode9 = getelementptr inbounds %struct.ppc_storage, ptr %10, i32 0, i32 2
  br i1 %cmp5, label %if.then7, label %if.else10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %mode9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %mode9, align 1
  br label %if.end14

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %mode9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %mode9, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.else10, %if.then7, %if.then1
  %private15 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %13 = ptrtoint ptr %private15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %private15, align 4
  %15 = inttoptr i32 %14 to ptr
  %call16 = tail call fastcc i32 @ppc6_open(ptr noundef %15)
  %16 = ptrtoint ptr %private15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %private15, align 4
  %18 = inttoptr i32 %17 to ptr
  tail call fastcc void @ppc6_wr_extout(ptr noundef %18, i8 noundef zeroext 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpck6_disconnect(ptr nocapture noundef readonly %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @verbose, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %1 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %private, align 4
  %3 = inttoptr i32 %2 to ptr
  tail call fastcc void @ppc6_wr_extout(ptr noundef %3, i8 noundef zeroext 0)
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private, align 4
  %6 = inttoptr i32 %5 to ptr
  %mode.i.i = getelementptr inbounds %struct.ppc_storage, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mode.i.i, align 1
  %9 = and i8 %8, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  %cur_ctrl3.i.i = getelementptr inbounds %struct.ppc_storage, ptr %6, i32 0, i32 6
  %10 = ptrtoint ptr %cur_ctrl3.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cur_ctrl3.i.i, align 1
  %..i.i = select i1 %tobool.not.i.i, i8 8, i8 4
  %12 = or i8 %..i.i, %11
  store i8 %12, ptr %cur_ctrl3.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %cur_ctrl3.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cur_ctrl3.i.i, align 1
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %6, align 2
  %conv8.i.i = zext i16 %16 to i32
  %add10.i.i = add nuw nsw i32 %conv8.i.i, -18874366
  %17 = inttoptr i32 %add10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %14) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  tail call void @arm_heavy_mb() #6
  %org_data.i.i = getelementptr inbounds %struct.ppc_storage, ptr %6, i32 0, i32 4
  %18 = ptrtoint ptr %org_data.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %org_data.i.i, align 1
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %6, align 2
  %conv14.i.i = zext i16 %21 to i32
  %add16.i.i = or i32 %conv14.i.i, -18874368
  %22 = inttoptr i32 %add16.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %19) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  tail call void @arm_heavy_mb() #6
  %org_ctrl.i.i = getelementptr inbounds %struct.ppc_storage, ptr %6, i32 0, i32 5
  %23 = ptrtoint ptr %org_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %org_ctrl.i.i, align 2
  %25 = or i8 %24, 8
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %6, align 2
  %conv24.i.i = zext i16 %27 to i32
  %add27.i.i = add nuw nsw i32 %conv24.i.i, -18874366
  %28 = inttoptr i32 %add27.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %25) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %org_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %org_ctrl.i.i, align 2
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %6, align 2
  %conv33.i.i = zext i16 %32 to i32
  %add36.i.i = add nuw nsw i32 %conv33.i.i, -18874366
  %33 = inttoptr i32 %add36.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %30) #6, !srcloc !109
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpck6_test_port(ptr nocapture noundef readonly %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @verbose, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pardev = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 12
  %1 = ptrtoint ptr %pardev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pardev, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %modes = getelementptr inbounds %struct.parport, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %modes, align 8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %6, i32 noundef %8) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %unit = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 6
  %9 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %unit, align 4
  %conv = trunc i32 %10 to i8
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %11 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %private, align 4
  %13 = inttoptr i32 %12 to ptr
  %ppc_id = getelementptr inbounds %struct.ppc_storage, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ppc_id to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %ppc_id, align 2
  %port3 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %15 = ptrtoint ptr %port3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port3, align 4
  %conv4 = trunc i32 %16 to i16
  %17 = load i32, ptr %private, align 4
  %18 = inttoptr i32 %17 to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv4, ptr %18, align 2
  %pardev6 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 12
  %20 = ptrtoint ptr %pardev6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pardev6, align 4
  %port7 = getelementptr inbounds %struct.pardevice, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %port7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port7, align 4
  %modes8 = getelementptr inbounds %struct.parport, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %modes8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %modes8, align 8
  %and = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %and14 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %. = select i1 %tobool15.not, i32 1, i32 2
  %retval.0 = select i1 %tobool9.not, i32 %., i32 5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpck6_probe_unit(ptr nocapture noundef readonly %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @verbose, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %unit = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 6
  %1 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %unit, align 4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %2, i32 noundef %4) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %unit1 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 6
  %5 = ptrtoint ptr %unit1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %unit1, align 4
  %conv = trunc i32 %6 to i8
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %7 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %private, align 4
  %9 = inttoptr i32 %8 to ptr
  %ppc_id = getelementptr inbounds %struct.ppc_storage, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ppc_id to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %ppc_id, align 2
  %11 = load i32, ptr %private, align 4
  %12 = inttoptr i32 %11 to ptr
  %mode = getelementptr inbounds %struct.ppc_storage, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %mode, align 1
  %14 = load i32, ptr %private, align 4
  %15 = inttoptr i32 %14 to ptr
  %call4 = tail call fastcc i32 @ppc6_open(ptr noundef %15)
  %16 = load i8, ptr @verbose, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool5.not = icmp eq i8 %16, 0
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %do.end9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call4) #9
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %if.end.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool13.not = icmp eq i32 %call4, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  %17 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %private, align 4
  %19 = inttoptr i32 %18 to ptr
  %mode.i.i = getelementptr inbounds %struct.ppc_storage, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mode.i.i, align 1
  %22 = and i8 %21, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  %cur_ctrl3.i.i = getelementptr inbounds %struct.ppc_storage, ptr %19, i32 0, i32 6
  %23 = ptrtoint ptr %cur_ctrl3.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cur_ctrl3.i.i, align 1
  %..i.i = select i1 %tobool.not.i.i, i8 8, i8 4
  %25 = or i8 %..i.i, %24
  store i8 %25, ptr %cur_ctrl3.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %cur_ctrl3.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cur_ctrl3.i.i, align 1
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %19, align 2
  %conv8.i.i = zext i16 %29 to i32
  %add10.i.i = add nuw nsw i32 %conv8.i.i, -18874366
  %30 = inttoptr i32 %add10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %27) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  tail call void @arm_heavy_mb() #6
  %org_data.i.i = getelementptr inbounds %struct.ppc_storage, ptr %19, i32 0, i32 4
  %31 = ptrtoint ptr %org_data.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %org_data.i.i, align 1
  %33 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %19, align 2
  %conv14.i.i = zext i16 %34 to i32
  %add16.i.i = or i32 %conv14.i.i, -18874368
  %35 = inttoptr i32 %add16.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %32) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  tail call void @arm_heavy_mb() #6
  %org_ctrl.i.i = getelementptr inbounds %struct.ppc_storage, ptr %19, i32 0, i32 5
  %36 = ptrtoint ptr %org_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %org_ctrl.i.i, align 2
  %38 = or i8 %37, 8
  %39 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %19, align 2
  %conv24.i.i = zext i16 %40 to i32
  %add27.i.i = add nuw nsw i32 %conv24.i.i, -18874366
  %41 = inttoptr i32 %add27.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %38) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %42 = ptrtoint ptr %org_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %org_ctrl.i.i, align 2
  %44 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %19, align 2
  %conv33.i.i = zext i16 %45 to i32
  %add36.i.i = add nuw nsw i32 %conv33.i.i, -18874366
  %46 = inttoptr i32 %add36.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 %43) #6, !srcloc !109
  %47 = load i8, ptr @verbose, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool16.not = icmp eq i8 %47, 0
  br i1 %tobool16.not, label %if.then14.cleanup_crit_edge, label %if.then14.cleanup.sink.split_crit_edge

if.then14.cleanup.sink.split_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.end12
  %48 = load i8, ptr @verbose, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool24.not = icmp eq i8 %48, 0
  br i1 %tobool24.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.then14.cleanup.sink.split_crit_edge
  %.str.16.sink = phi ptr [ @.str.13, %if.then14.cleanup.sink.split_crit_edge ], [ @.str.16, %if.else.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 1, %if.then14.cleanup.sink.split_crit_edge ], [ 0, %if.else.cleanup.sink.split_crit_edge ]
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.16.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then14.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then14.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpck6_log_adapter(ptr nocapture noundef readonly %pi, ptr nocapture noundef readnone %scratch, i32 noundef %verbose) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 5
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1) #9
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %3) #9
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %5, ptr noundef nonnull @.str.31, i32 noundef %7) #9
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %unit = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 6
  %10 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %unit, align 4
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @__const.bpck6_log_adapter.mode_string, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %16 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %delay, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %9, i32 noundef %11, i32 noundef %13, ptr noundef %15, i32 noundef %17) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpck6_init_proto(ptr nocapture noundef %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call7.i.i to i32
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %2 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %private, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 5
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %4) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpck6_release_proto(ptr nocapture noundef readonly %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call void @kfree(ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @ppc6_rd_data_byte(ptr nocapture noundef %ppc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.ppc_storage, ptr %ppc, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 0, label %entry.sw.bb_crit_edge
    i8 1, label %entry.sw.bb_crit_edge181
    i8 2, label %entry.sw.bb49_crit_edge
    i8 3, label %entry.sw.bb49_crit_edge182
    i8 4, label %entry.do.body117_crit_edge
    i8 5, label %entry.do.body117_crit_edge183
    i8 6, label %entry.do.body117_crit_edge184
  ]

entry.do.body117_crit_edge184:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body117

entry.do.body117_crit_edge183:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body117

entry.do.body117_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body117

entry.sw.bb49_crit_edge182:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb49

entry.sw.bb49_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb49

entry.sw.bb_crit_edge181:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge181
  %cur_ctrl = getelementptr inbounds %struct.ppc_storage, ptr %ppc, i32 0, i32 6
  %3 = ptrtoint ptr %cur_ctrl to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cur_ctrl, align 1
  %5 = and i8 %4, -2
  %6 = xor i8 %5, 4
  store i8 %6, ptr %cur_ctrl, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %cur_ctrl to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cur_ctrl, align 1
  %9 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ppc, align 2
  %conv5 = zext i16 %10 to i32
  %add7 = add nuw nsw i32 %conv5, -18874366
  %11 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %8) #6, !srcloc !109
  %12 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ppc, align 2
  %conv9 = zext i16 %13 to i32
  %add12 = add nuw nsw i32 %conv9, -18874367
  %14 = inttoptr i32 %add12 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  %and16 = lshr i8 %15, 1
  %16 = and i8 %and16, 64
  %and18 = lshr i8 %15, 3
  %17 = and i8 %and18, 7
  %or = or i8 %16, %17
  %18 = ptrtoint ptr %cur_ctrl to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cur_ctrl, align 1
  %20 = or i8 %19, 1
  store i8 %20, ptr %cur_ctrl, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %cur_ctrl to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cur_ctrl, align 1
  %23 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ppc, align 2
  %conv30 = zext i16 %24 to i32
  %add33 = add nuw nsw i32 %conv30, -18874366
  %25 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %22) #6, !srcloc !109
  %26 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ppc, align 2
  %conv37 = zext i16 %27 to i32
  %add40 = add nuw nsw i32 %conv37, -18874367
  %28 = inttoptr i32 %add40 to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !159
  %30 = and i8 %29, -72
  %or47180 = or i8 %or, %30
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry.sw.bb49_crit_edge, %entry.sw.bb49_crit_edge182
  %cur_ctrl50 = getelementptr inbounds %struct.ppc_storage, ptr %ppc, i32 0, i32 6
  %31 = ptrtoint ptr %cur_ctrl50 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cur_ctrl50, align 1
  %33 = or i8 %32, 32
  store i8 %33, ptr %cur_ctrl50, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !160
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %cur_ctrl50 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cur_ctrl50, align 1
  %36 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ppc, align 2
  %conv59 = zext i16 %37 to i32
  %add62 = add nuw nsw i32 %conv59, -18874366
  %38 = inttoptr i32 %add62 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %35) #6, !srcloc !109
  %39 = ptrtoint ptr %cur_ctrl50 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cur_ctrl50, align 1
  %41 = and i8 %40, -2
  %42 = xor i8 %41, 5
  store i8 %42, ptr %cur_ctrl50, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !161
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %cur_ctrl50 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cur_ctrl50, align 1
  %45 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ppc, align 2
  %conv75 = zext i16 %46 to i32
  %add78 = add nuw nsw i32 %conv75, -18874366
  %47 = inttoptr i32 %add78 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %44) #6, !srcloc !109
  %48 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ppc, align 2
  %conv82 = zext i16 %49 to i32
  %add84 = or i32 %conv82, -18874368
  %50 = inttoptr i32 %add84 to ptr
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %50) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %52 = ptrtoint ptr %cur_ctrl50 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %cur_ctrl50, align 1
  %54 = and i8 %53, -2
  store i8 %54, ptr %cur_ctrl50, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %cur_ctrl50 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %cur_ctrl50, align 1
  %57 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ppc, align 2
  %conv97 = zext i16 %58 to i32
  %add100 = add nuw nsw i32 %conv97, -18874366
  %59 = inttoptr i32 %add100 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 %56) #6, !srcloc !109
  %60 = ptrtoint ptr %cur_ctrl50 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cur_ctrl50, align 1
  %62 = and i8 %61, -33
  store i8 %62, ptr %cur_ctrl50, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  tail call void @arm_heavy_mb() #6
  %63 = ptrtoint ptr %cur_ctrl50 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %cur_ctrl50, align 1
  %65 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %ppc, align 2
  %conv111 = zext i16 %66 to i32
  %add114 = add nuw nsw i32 %conv111, -18874366
  %67 = inttoptr i32 %add114 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 %64) #6, !srcloc !109
  br label %sw.epilog

do.body117:                                       ; preds = %entry.do.body117_crit_edge, %entry.do.body117_crit_edge183, %entry.do.body117_crit_edge184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !165
  tail call void @arm_heavy_mb() #6
  %cur_ctrl120 = getelementptr inbounds %struct.ppc_storage, ptr %ppc, i32 0, i32 6
  %68 = ptrtoint ptr %cur_ctrl120 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %cur_ctrl120, align 1
  %70 = or i8 %69, 32
  %71 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %ppc, align 2
  %conv125 = zext i16 %72 to i32
  %add128 = add nuw nsw i32 %conv125, -18874366
  %73 = inttoptr i32 %add128 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 %70) #6, !srcloc !109
  %74 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %ppc, align 2
  %conv132 = zext i16 %75 to i32
  %add135 = add nuw nsw i32 %conv132, -18874364
  %76 = inttoptr i32 %add135 to ptr
  %77 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %76) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !167
  tail call void @arm_heavy_mb() #6
  %78 = ptrtoint ptr %cur_ctrl120 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %cur_ctrl120, align 1
  %80 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %ppc, align 2
  %conv144 = zext i16 %81 to i32
  %add147 = add nuw nsw i32 %conv144, -18874366
  %82 = inttoptr i32 %add147 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 %79) #6, !srcloc !109
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body117, %sw.bb49, %sw.bb, %entry.sw.epilog_crit_edge
  %data.0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ %77, %do.body117 ], [ %51, %sw.bb49 ], [ %or47180, %sw.bb ]
  ret i8 %data.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ppc6_wait_for_fifo(ptr nocapture noundef readonly %ppc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ppc_flags = getelementptr inbounds %struct.ppc_storage, ptr %ppc, i32 0, i32 3
  %0 = ptrtoint ptr %ppc_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ppc_flags, align 2
  %2 = and i8 %1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.body.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ppc, align 2
  %conv2 = zext i16 %4 to i32
  %add4 = add nuw nsw i32 %conv2, -18874367
  %5 = inttoptr i32 %add4 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %7 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ppc, align 2
  %conv2.1 = zext i16 %8 to i32
  %add4.1 = add nuw nsw i32 %conv2.1, -18874367
  %9 = inttoptr i32 %add4.1 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %11 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ppc, align 2
  %conv2.2 = zext i16 %12 to i32
  %add4.2 = add nuw nsw i32 %conv2.2, -18874367
  %13 = inttoptr i32 %add4.2 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %15 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ppc, align 2
  %conv2.3 = zext i16 %16 to i32
  %add4.3 = add nuw nsw i32 %conv2.3, -18874367
  %17 = inttoptr i32 %add4.3 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %19 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ppc, align 2
  %conv2.4 = zext i16 %20 to i32
  %add4.4 = add nuw nsw i32 %conv2.4, -18874367
  %21 = inttoptr i32 %add4.4 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %23 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ppc, align 2
  %conv2.5 = zext i16 %24 to i32
  %add4.5 = add nuw nsw i32 %conv2.5, -18874367
  %25 = inttoptr i32 %add4.5 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %27 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ppc, align 2
  %conv2.6 = zext i16 %28 to i32
  %add4.6 = add nuw nsw i32 %conv2.6, -18874367
  %29 = inttoptr i32 %add4.6 to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %31 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ppc, align 2
  %conv2.7 = zext i16 %32 to i32
  %add4.7 = add nuw nsw i32 %conv2.7, -18874367
  %33 = inttoptr i32 %add4.7 to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %35 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ppc, align 2
  %conv2.8 = zext i16 %36 to i32
  %add4.8 = add nuw nsw i32 %conv2.8, -18874367
  %37 = inttoptr i32 %add4.8 to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %39 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %ppc, align 2
  %conv2.9 = zext i16 %40 to i32
  %add4.9 = add nuw nsw i32 %conv2.9, -18874367
  %41 = inttoptr i32 %add4.9 to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %43 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ppc, align 2
  %conv2.10 = zext i16 %44 to i32
  %add4.10 = add nuw nsw i32 %conv2.10, -18874367
  %45 = inttoptr i32 %add4.10 to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %47 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %ppc, align 2
  %conv2.11 = zext i16 %48 to i32
  %add4.11 = add nuw nsw i32 %conv2.11, -18874367
  %49 = inttoptr i32 %add4.11 to ptr
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %51 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %ppc, align 2
  %conv2.12 = zext i16 %52 to i32
  %add4.12 = add nuw nsw i32 %conv2.12, -18874367
  %53 = inttoptr i32 %add4.12 to ptr
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %53) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %55 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %ppc, align 2
  %conv2.13 = zext i16 %56 to i32
  %add4.13 = add nuw nsw i32 %conv2.13, -18874367
  %57 = inttoptr i32 %add4.13 to ptr
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %57) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %59 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %ppc, align 2
  %conv2.14 = zext i16 %60 to i32
  %add4.14 = add nuw nsw i32 %conv2.14, -18874367
  %61 = inttoptr i32 %add4.14 to ptr
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %61) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %63 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %ppc, align 2
  %conv2.15 = zext i16 %64 to i32
  %add4.15 = add nuw nsw i32 %conv2.15, -18874367
  %65 = inttoptr i32 %add4.15 to ptr
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %65) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %67 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %ppc, align 2
  %conv2.16 = zext i16 %68 to i32
  %add4.16 = add nuw nsw i32 %conv2.16, -18874367
  %69 = inttoptr i32 %add4.16 to ptr
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %69) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %71 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %ppc, align 2
  %conv2.17 = zext i16 %72 to i32
  %add4.17 = add nuw nsw i32 %conv2.17, -18874367
  %73 = inttoptr i32 %add4.17 to ptr
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %73) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %75 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %ppc, align 2
  %conv2.18 = zext i16 %76 to i32
  %add4.18 = add nuw nsw i32 %conv2.18, -18874367
  %77 = inttoptr i32 %add4.18 to ptr
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %77) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %79 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %ppc, align 2
  %conv2.19 = zext i16 %80 to i32
  %add4.19 = add nuw nsw i32 %conv2.19, -18874367
  %81 = inttoptr i32 %add4.19 to ptr
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %81) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ppc6_open(ptr noundef %ppc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ppc, align 2
  %conv.i = zext i16 %1 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874367
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %do.body.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ppc, align 2
  %conv6.i = zext i16 %6 to i32
  %add9.i = add nuw nsw i32 %conv6.i, -18874367
  %7 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %3) #6, !srcloc !109
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %entry.if.end.i_crit_edge
  %8 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ppc, align 2
  %conv13.i = zext i16 %9 to i32
  %add15.i = or i32 %conv13.i, -18874368
  %10 = inttoptr i32 %add15.i to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !171
  %org_data.i = getelementptr inbounds %struct.ppc_storage, ptr %ppc, i32 0, i32 4
  %12 = ptrtoint ptr %org_data.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %org_data.i, align 1
  %13 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ppc, align 2
  %conv21.i = zext i16 %14 to i32
  %add24.i = add nuw nsw i32 %conv21.i, -18874366
  %15 = inttoptr i32 %add24.i to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !172
  %17 = and i8 %16, 95
  %org_ctrl.i = getelementptr inbounds %struct.ppc_storage, ptr %ppc, i32 0, i32 5
  %18 = ptrtoint ptr %org_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %org_ctrl.i, align 2
  %cur_ctrl.i = getelementptr inbounds %struct.ppc_storage, ptr %ppc, i32 0, i32 6
  %19 = or i8 %17, 8
  %20 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %cur_ctrl.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cur_ctrl.i, align 1
  %23 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ppc, align 2
  %conv40.i = zext i16 %24 to i32
  %add43.i = add nuw nsw i32 %conv40.i, -18874366
  %25 = inttoptr i32 %add43.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %22) #6, !srcloc !109
  %26 = ptrtoint ptr %org_data.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %org_data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 98, i8 %27)
  %cmp.i = icmp eq i8 %27, 98
  br i1 %cmp.i, label %do.body49.i, label %if.end.i.do.body58.i_crit_edge

if.end.i.do.body58.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body58.i

do.body49.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ppc, align 2
  %conv53.i = zext i16 %29 to i32
  %add55.i = or i32 %conv53.i, -18874368
  %30 = inttoptr i32 %add55.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 120) #6, !srcloc !109
  br label %do.body58.i

do.body58.i:                                      ; preds = %do.body49.i, %if.end.i.do.body58.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ppc, align 2
  %conv62.i = zext i16 %32 to i32
  %add64.i = or i32 %conv62.i, -18874368
  %33 = inttoptr i32 %add64.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 98) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ppc, align 2
  %conv70.i = zext i16 %35 to i32
  %add72.i = or i32 %conv70.i, -18874368
  %36 = inttoptr i32 %add72.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 112) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !177
  tail call void @arm_heavy_mb() #6
  %ppc_id.i = getelementptr inbounds %struct.ppc_storage, ptr %ppc, i32 0, i32 1
  %37 = ptrtoint ptr %ppc_id.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ppc_id.i, align 2
  %39 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %ppc, align 2
  %conv78.i = zext i16 %40 to i32
  %add80.i = or i32 %conv78.i, -18874368
  %41 = inttoptr i32 %add80.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %38) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !178
  tail call void @arm_heavy_mb() #6
  %42 = ptrtoint ptr %ppc_id.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ppc_id.i, align 2
  %neg.i = xor i8 %43, -1
  %44 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ppc, align 2
  %conv89.i = zext i16 %45 to i32
  %add91.i = or i32 %conv89.i, -18874368
  %46 = inttoptr i32 %add91.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 %neg.i) #6, !srcloc !109
  %47 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cur_ctrl.i, align 1
  %49 = and i8 %48, -9
  store i8 %49, ptr %cur_ctrl.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  tail call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cur_ctrl.i, align 1
  %52 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %ppc, align 2
  %conv102.i = zext i16 %53 to i32
  %add105.i = add nuw nsw i32 %conv102.i, -18874366
  %54 = inttoptr i32 %add105.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 %51) #6, !srcloc !109
  %55 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %cur_ctrl.i, align 1
  %57 = and i8 %56, 16
  %58 = or i8 %57, 4
  store i8 %58, ptr %cur_ctrl.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !180
  tail call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %cur_ctrl.i, align 1
  %61 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %ppc, align 2
  %conv118.i = zext i16 %62 to i32
  %add121.i = add nuw nsw i32 %conv118.i, -18874366
  %63 = inttoptr i32 %add121.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 %60) #6, !srcloc !109
  %mode.i = getelementptr inbounds %struct.ppc_storage, ptr %ppc, i32 0, i32 2
  %64 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %mode.i, align 1
  %and124.i = and i8 %65, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and124.i)
  %cmp127.i = icmp eq i8 %and124.i, 0
  %66 = and i8 %65, 2
  %67 = or i8 %66, 1
  %i.0.i = select i1 %cmp127.i, i8 %67, i8 %and124.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @arm_heavy_mb() #6
  %68 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %ppc, align 2
  %conv140.i = zext i16 %69 to i32
  %add142.i = or i32 %conv140.i, -18874368
  %70 = inttoptr i32 %add142.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 %i.0.i) #6, !srcloc !109
  %71 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %cur_ctrl.i, align 1
  %73 = or i8 %72, 8
  store i8 %73, ptr %cur_ctrl.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  tail call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %cur_ctrl.i, align 1
  %76 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %ppc, align 2
  %conv153.i = zext i16 %77 to i32
  %add156.i = add nuw nsw i32 %conv153.i, -18874366
  %78 = inttoptr i32 %add156.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 %75) #6, !srcloc !109
  %79 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %cur_ctrl.i, align 1
  %81 = or i8 %80, 2
  store i8 %81, ptr %cur_ctrl.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !183
  tail call void @arm_heavy_mb() #6
  %82 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %cur_ctrl.i, align 1
  %84 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %ppc, align 2
  %conv167.i = zext i16 %85 to i32
  %add170.i = add nuw nsw i32 %conv167.i, -18874366
  %86 = inttoptr i32 %add170.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 %83) #6, !srcloc !109
  %and173.i = shl nuw i8 %i.0.i, 4
  %shl.i = and i8 %and173.i, -128
  %and175.i = shl nuw nsw i8 %i.0.i, 3
  %shl176.i = and i8 %and175.i, 56
  %or177.i = or i8 %shl.i, %shl176.i
  %87 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %ppc, align 2
  %conv181.i = zext i16 %88 to i32
  %add184.i = add nuw nsw i32 %conv181.i, -18874367
  %89 = inttoptr i32 %add184.i to ptr
  %90 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %89) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  %91 = and i8 %90, -72
  call void @__sanitizer_cov_trace_cmp1(i8 %or177.i, i8 %91)
  %cmp193.i = icmp eq i8 %or177.i, %91
  br i1 %cmp193.i, label %if.then195.i, label %do.body58.i.ppc6_select.exit.thread_crit_edge

do.body58.i.ppc6_select.exit.thread_crit_edge:    ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_select.exit.thread

if.then195.i:                                     ; preds = %do.body58.i
  %92 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %cur_ctrl.i, align 1
  %94 = and i8 %93, -3
  store i8 %94, ptr %cur_ctrl.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  tail call void @arm_heavy_mb() #6
  %95 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %cur_ctrl.i, align 1
  %97 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %ppc, align 2
  %conv205.i = zext i16 %98 to i32
  %add208.i = add nuw nsw i32 %conv205.i, -18874366
  %99 = inttoptr i32 %add208.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %99, i8 %96) #6, !srcloc !109
  %100 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %ppc, align 2
  %conv212.i = zext i16 %101 to i32
  %add215.i = add nuw nsw i32 %conv212.i, -18874367
  %102 = inttoptr i32 %add215.i to ptr
  %103 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %102) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !186
  %104 = and i8 %103, -72
  %105 = xor i8 %104, -72
  call void @__sanitizer_cov_trace_cmp1(i8 %or177.i, i8 %105)
  %cmp224.i = icmp eq i8 %or177.i, %105
  br i1 %cmp224.i, label %if.end, label %if.then195.i.ppc6_select.exit.thread_crit_edge

if.then195.i.ppc6_select.exit.thread_crit_edge:   ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_select.exit.thread

ppc6_select.exit.thread:                          ; preds = %if.then195.i.ppc6_select.exit.thread_crit_edge, %do.body58.i.ppc6_select.exit.thread_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !187
  tail call void @arm_heavy_mb() #6
  %106 = ptrtoint ptr %org_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %org_ctrl.i, align 2
  %108 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %ppc, align 2
  %conv257.i = zext i16 %109 to i32
  %add260.i = add nuw nsw i32 %conv257.i, -18874366
  %110 = inttoptr i32 %add260.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %110, i8 %107) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !188
  tail call void @arm_heavy_mb() #6
  %111 = ptrtoint ptr %org_data.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %org_data.i, align 1
  %113 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %ppc, align 2
  %conv267.i = zext i16 %114 to i32
  %add269.i = or i32 %conv267.i, -18874368
  %115 = inttoptr i32 %add269.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 %112) #6, !srcloc !109
  br label %cleanup

if.end:                                           ; preds = %if.then195.i
  %116 = and i8 %i.0.i, 4
  %117 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %cur_ctrl.i, align 1
  %119 = xor i8 %116, -9
  %120 = and i8 %118, %119
  store i8 %120, ptr %cur_ctrl.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !189
  tail call void @arm_heavy_mb() #6
  %121 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %cur_ctrl.i, align 1
  %123 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %ppc, align 2
  %conv245.i = zext i16 %124 to i32
  %add248.i = add nuw nsw i32 %conv245.i, -18874366
  %125 = inttoptr i32 %add248.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %125, i8 %122) #6, !srcloc !109
  %ppc_flags = getelementptr inbounds %struct.ppc_storage, ptr %ppc, i32 0, i32 3
  %126 = ptrtoint ptr %ppc_flags to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %ppc_flags, align 2
  %128 = and i8 %127, -17
  store i8 %128, ptr %ppc_flags, align 2
  %129 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %mode.i, align 1
  %131 = zext i8 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %130, label %if.end.ppc6_send_cmd.exit_crit_edge [
    i8 0, label %if.end.do.body.i22_crit_edge
    i8 1, label %if.end.do.body.i22_crit_edge47
    i8 2, label %if.end.do.body.i22_crit_edge48
    i8 3, label %if.end.do.body.i22_crit_edge49
    i8 4, label %if.end.do.body14.i_crit_edge
    i8 5, label %if.end.do.body14.i_crit_edge50
    i8 6, label %if.end.do.body14.i_crit_edge51
  ]

if.end.do.body14.i_crit_edge51:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i

if.end.do.body14.i_crit_edge50:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i

if.end.do.body14.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i

if.end.do.body.i22_crit_edge49:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i22

if.end.do.body.i22_crit_edge48:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i22

if.end.do.body.i22_crit_edge47:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i22

if.end.do.body.i22_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i22

if.end.ppc6_send_cmd.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_send_cmd.exit

do.body.i22:                                      ; preds = %if.end.do.body.i22_crit_edge, %if.end.do.body.i22_crit_edge47, %if.end.do.body.i22_crit_edge48, %if.end.do.body.i22_crit_edge49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %132 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %ppc, align 2
  %conv1.i = zext i16 %133 to i32
  %add.i = or i32 %conv1.i, -18874368
  %134 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %134, i8 35) #6, !srcloc !109
  %135 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %cur_ctrl.i, align 1
  %137 = xor i8 %136, 2
  store i8 %137, ptr %cur_ctrl.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %138 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %cur_ctrl.i, align 1
  %140 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %ppc, align 2
  %conv8.i = zext i16 %141 to i32
  %add11.i = add nuw nsw i32 %conv8.i, -18874366
  %142 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %142, i8 %139) #6, !srcloc !109
  br label %ppc6_send_cmd.exitthread-pre-split

do.body14.i:                                      ; preds = %if.end.do.body14.i_crit_edge, %if.end.do.body14.i_crit_edge50, %if.end.do.body14.i_crit_edge51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %143 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %ppc, align 2
  %conv17.i = zext i16 %144 to i32
  %add20.i = add nuw nsw i32 %conv17.i, -18874365
  %145 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %145, i8 35) #6, !srcloc !109
  br label %ppc6_send_cmd.exitthread-pre-split

ppc6_send_cmd.exitthread-pre-split:               ; preds = %do.body14.i, %do.body.i22
  %146 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %.pr = load i8, ptr %mode.i, align 1
  br label %ppc6_send_cmd.exit

ppc6_send_cmd.exit:                               ; preds = %ppc6_send_cmd.exitthread-pre-split, %if.end.ppc6_send_cmd.exit_crit_edge
  %147 = phi i8 [ %.pr, %ppc6_send_cmd.exitthread-pre-split ], [ %130, %if.end.ppc6_send_cmd.exit_crit_edge ]
  %148 = zext i8 %147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %147, label %ppc6_send_cmd.exit.ppc6_wr_data_byte.exit_crit_edge [
    i8 0, label %ppc6_send_cmd.exit.do.body.i29_crit_edge
    i8 1, label %ppc6_send_cmd.exit.do.body.i29_crit_edge52
    i8 2, label %ppc6_send_cmd.exit.do.body.i29_crit_edge53
    i8 3, label %ppc6_send_cmd.exit.do.body.i29_crit_edge54
    i8 4, label %ppc6_send_cmd.exit.do.body14.i32_crit_edge
    i8 5, label %ppc6_send_cmd.exit.do.body14.i32_crit_edge55
    i8 6, label %ppc6_send_cmd.exit.do.body14.i32_crit_edge56
  ]

ppc6_send_cmd.exit.do.body14.i32_crit_edge56:     ; preds = %ppc6_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i32

ppc6_send_cmd.exit.do.body14.i32_crit_edge55:     ; preds = %ppc6_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i32

ppc6_send_cmd.exit.do.body14.i32_crit_edge:       ; preds = %ppc6_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i32

ppc6_send_cmd.exit.do.body.i29_crit_edge54:       ; preds = %ppc6_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i29

ppc6_send_cmd.exit.do.body.i29_crit_edge53:       ; preds = %ppc6_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i29

ppc6_send_cmd.exit.do.body.i29_crit_edge52:       ; preds = %ppc6_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i29

ppc6_send_cmd.exit.do.body.i29_crit_edge:         ; preds = %ppc6_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i29

ppc6_send_cmd.exit.ppc6_wr_data_byte.exit_crit_edge: ; preds = %ppc6_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_wr_data_byte.exit

do.body.i29:                                      ; preds = %ppc6_send_cmd.exit.do.body.i29_crit_edge, %ppc6_send_cmd.exit.do.body.i29_crit_edge52, %ppc6_send_cmd.exit.do.body.i29_crit_edge53, %ppc6_send_cmd.exit.do.body.i29_crit_edge54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %149 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %ppc, align 2
  %conv1.i24 = zext i16 %150 to i32
  %add.i25 = or i32 %conv1.i24, -18874368
  %151 = inttoptr i32 %add.i25 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %151, i8 2) #6, !srcloc !109
  %152 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %cur_ctrl.i, align 1
  %154 = xor i8 %153, 4
  store i8 %154, ptr %cur_ctrl.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %155 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %cur_ctrl.i, align 1
  %157 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %ppc, align 2
  %conv8.i27 = zext i16 %158 to i32
  %add11.i28 = add nuw nsw i32 %conv8.i27, -18874366
  %159 = inttoptr i32 %add11.i28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %159, i8 %156) #6, !srcloc !109
  br label %ppc6_wr_data_byte.exit

do.body14.i32:                                    ; preds = %ppc6_send_cmd.exit.do.body14.i32_crit_edge, %ppc6_send_cmd.exit.do.body14.i32_crit_edge55, %ppc6_send_cmd.exit.do.body14.i32_crit_edge56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %160 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %ppc, align 2
  %conv17.i30 = zext i16 %161 to i32
  %add20.i31 = add nuw nsw i32 %conv17.i30, -18874364
  %162 = inttoptr i32 %add20.i31 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %162, i8 2) #6, !srcloc !109
  br label %ppc6_wr_data_byte.exit

ppc6_wr_data_byte.exit:                           ; preds = %do.body14.i32, %do.body.i29, %ppc6_send_cmd.exit.ppc6_wr_data_byte.exit_crit_edge
  %163 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %mode.i, align 1
  %165 = zext i8 %164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %164, label %ppc6_wr_data_byte.exit.ppc6_send_cmd.exit43_crit_edge [
    i8 0, label %ppc6_wr_data_byte.exit.do.body.i39_crit_edge
    i8 1, label %ppc6_wr_data_byte.exit.do.body.i39_crit_edge57
    i8 2, label %ppc6_wr_data_byte.exit.do.body.i39_crit_edge58
    i8 3, label %ppc6_wr_data_byte.exit.do.body.i39_crit_edge59
    i8 4, label %ppc6_wr_data_byte.exit.do.body14.i42_crit_edge
    i8 5, label %ppc6_wr_data_byte.exit.do.body14.i42_crit_edge60
    i8 6, label %ppc6_wr_data_byte.exit.do.body14.i42_crit_edge61
  ]

ppc6_wr_data_byte.exit.do.body14.i42_crit_edge61: ; preds = %ppc6_wr_data_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i42

ppc6_wr_data_byte.exit.do.body14.i42_crit_edge60: ; preds = %ppc6_wr_data_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i42

ppc6_wr_data_byte.exit.do.body14.i42_crit_edge:   ; preds = %ppc6_wr_data_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i42

ppc6_wr_data_byte.exit.do.body.i39_crit_edge59:   ; preds = %ppc6_wr_data_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i39

ppc6_wr_data_byte.exit.do.body.i39_crit_edge58:   ; preds = %ppc6_wr_data_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i39

ppc6_wr_data_byte.exit.do.body.i39_crit_edge57:   ; preds = %ppc6_wr_data_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i39

ppc6_wr_data_byte.exit.do.body.i39_crit_edge:     ; preds = %ppc6_wr_data_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i39

ppc6_wr_data_byte.exit.ppc6_send_cmd.exit43_crit_edge: ; preds = %ppc6_wr_data_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_send_cmd.exit43

do.body.i39:                                      ; preds = %ppc6_wr_data_byte.exit.do.body.i39_crit_edge, %ppc6_wr_data_byte.exit.do.body.i39_crit_edge57, %ppc6_wr_data_byte.exit.do.body.i39_crit_edge58, %ppc6_wr_data_byte.exit.do.body.i39_crit_edge59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %166 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %ppc, align 2
  %conv1.i34 = zext i16 %167 to i32
  %add.i35 = or i32 %conv1.i34, -18874368
  %168 = inttoptr i32 %add.i35 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %168, i8 1) #6, !srcloc !109
  %169 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %cur_ctrl.i, align 1
  %171 = xor i8 %170, 2
  store i8 %171, ptr %cur_ctrl.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %172 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %cur_ctrl.i, align 1
  %174 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %ppc, align 2
  %conv8.i37 = zext i16 %175 to i32
  %add11.i38 = add nuw nsw i32 %conv8.i37, -18874366
  %176 = inttoptr i32 %add11.i38 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %176, i8 %173) #6, !srcloc !109
  br label %ppc6_send_cmd.exit43

do.body14.i42:                                    ; preds = %ppc6_wr_data_byte.exit.do.body14.i42_crit_edge, %ppc6_wr_data_byte.exit.do.body14.i42_crit_edge60, %ppc6_wr_data_byte.exit.do.body14.i42_crit_edge61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %177 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %ppc, align 2
  %conv17.i40 = zext i16 %178 to i32
  %add20.i41 = add nuw nsw i32 %conv17.i40, -18874365
  %179 = inttoptr i32 %add20.i41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %179, i8 1) #6, !srcloc !109
  br label %ppc6_send_cmd.exit43

ppc6_send_cmd.exit43:                             ; preds = %do.body14.i42, %do.body.i39, %ppc6_wr_data_byte.exit.ppc6_send_cmd.exit43_crit_edge
  %call2 = tail call fastcc zeroext i8 @ppc6_rd_data_byte(ptr noundef %ppc)
  %180 = and i8 %call2, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %180)
  %cmp5 = icmp eq i8 %180, 12
  br i1 %cmp5, label %if.then7, label %ppc6_send_cmd.exit43.cleanup_crit_edge

ppc6_send_cmd.exit43.cleanup_crit_edge:           ; preds = %ppc6_send_cmd.exit43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %ppc6_send_cmd.exit43
  call void @__sanitizer_cov_trace_pc() #8
  %181 = ptrtoint ptr %ppc_flags to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %ppc_flags, align 2
  %183 = or i8 %182, 16
  store i8 %183, ptr %ppc_flags, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %ppc6_send_cmd.exit43.cleanup_crit_edge, %ppc6_select.exit.thread
  %retval.0.i46 = phi i32 [ 0, %ppc6_select.exit.thread ], [ 1, %ppc6_send_cmd.exit43.cleanup_crit_edge ], [ 1, %if.then7 ]
  ret i32 %retval.0.i46
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ppc6_wr_extout(ptr nocapture noundef %ppc, i8 noundef zeroext %regdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode.i = getelementptr inbounds %struct.ppc_storage, ptr %ppc, i32 0, i32 2
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode.i, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %1, label %entry.ppc6_send_cmd.exit_crit_edge [
    i8 0, label %entry.do.body.i_crit_edge
    i8 1, label %entry.do.body.i_crit_edge13
    i8 2, label %entry.do.body.i_crit_edge14
    i8 3, label %entry.do.body.i_crit_edge15
    i8 4, label %entry.do.body14.i_crit_edge
    i8 5, label %entry.do.body14.i_crit_edge16
    i8 6, label %entry.do.body14.i_crit_edge17
  ]

entry.do.body14.i_crit_edge17:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i

entry.do.body14.i_crit_edge16:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i

entry.do.body14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i

entry.do.body.i_crit_edge15:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

entry.do.body.i_crit_edge14:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

entry.do.body.i_crit_edge13:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

entry.ppc6_send_cmd.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_send_cmd.exit

do.body.i:                                        ; preds = %entry.do.body.i_crit_edge, %entry.do.body.i_crit_edge13, %entry.do.body.i_crit_edge14, %entry.do.body.i_crit_edge15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ppc, align 2
  %conv1.i = zext i16 %4 to i32
  %add.i = or i32 %conv1.i, -18874368
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 33) #6, !srcloc !109
  %cur_ctrl.i = getelementptr inbounds %struct.ppc_storage, ptr %ppc, i32 0, i32 6
  %6 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cur_ctrl.i, align 1
  %8 = xor i8 %7, 2
  store i8 %8, ptr %cur_ctrl.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %cur_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cur_ctrl.i, align 1
  %11 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ppc, align 2
  %conv8.i = zext i16 %12 to i32
  %add11.i = add nuw nsw i32 %conv8.i, -18874366
  %13 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %10) #6, !srcloc !109
  br label %ppc6_send_cmd.exitthread-pre-split

do.body14.i:                                      ; preds = %entry.do.body14.i_crit_edge, %entry.do.body14.i_crit_edge16, %entry.do.body14.i_crit_edge17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ppc, align 2
  %conv17.i = zext i16 %15 to i32
  %add20.i = add nuw nsw i32 %conv17.i, -18874365
  %16 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 33) #6, !srcloc !109
  br label %ppc6_send_cmd.exitthread-pre-split

ppc6_send_cmd.exitthread-pre-split:               ; preds = %do.body14.i, %do.body.i
  %17 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %.pr = load i8, ptr %mode.i, align 1
  br label %ppc6_send_cmd.exit

ppc6_send_cmd.exit:                               ; preds = %ppc6_send_cmd.exitthread-pre-split, %entry.ppc6_send_cmd.exit_crit_edge
  %18 = phi i8 [ %.pr, %ppc6_send_cmd.exitthread-pre-split ], [ %1, %entry.ppc6_send_cmd.exit_crit_edge ]
  %19 = shl i8 %regdata, 6
  %20 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %18, label %ppc6_send_cmd.exit.ppc6_wr_data_byte.exit_crit_edge [
    i8 0, label %ppc6_send_cmd.exit.do.body.i9_crit_edge
    i8 1, label %ppc6_send_cmd.exit.do.body.i9_crit_edge18
    i8 2, label %ppc6_send_cmd.exit.do.body.i9_crit_edge19
    i8 3, label %ppc6_send_cmd.exit.do.body.i9_crit_edge20
    i8 4, label %ppc6_send_cmd.exit.do.body14.i12_crit_edge
    i8 5, label %ppc6_send_cmd.exit.do.body14.i12_crit_edge21
    i8 6, label %ppc6_send_cmd.exit.do.body14.i12_crit_edge22
  ]

ppc6_send_cmd.exit.do.body14.i12_crit_edge22:     ; preds = %ppc6_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i12

ppc6_send_cmd.exit.do.body14.i12_crit_edge21:     ; preds = %ppc6_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i12

ppc6_send_cmd.exit.do.body14.i12_crit_edge:       ; preds = %ppc6_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i12

ppc6_send_cmd.exit.do.body.i9_crit_edge20:        ; preds = %ppc6_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i9

ppc6_send_cmd.exit.do.body.i9_crit_edge19:        ; preds = %ppc6_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i9

ppc6_send_cmd.exit.do.body.i9_crit_edge18:        ; preds = %ppc6_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i9

ppc6_send_cmd.exit.do.body.i9_crit_edge:          ; preds = %ppc6_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i9

ppc6_send_cmd.exit.ppc6_wr_data_byte.exit_crit_edge: ; preds = %ppc6_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ppc6_wr_data_byte.exit

do.body.i9:                                       ; preds = %ppc6_send_cmd.exit.do.body.i9_crit_edge, %ppc6_send_cmd.exit.do.body.i9_crit_edge18, %ppc6_send_cmd.exit.do.body.i9_crit_edge19, %ppc6_send_cmd.exit.do.body.i9_crit_edge20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ppc, align 2
  %conv1.i4 = zext i16 %22 to i32
  %add.i5 = or i32 %conv1.i4, -18874368
  %23 = inttoptr i32 %add.i5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %19) #6, !srcloc !109
  %cur_ctrl.i6 = getelementptr inbounds %struct.ppc_storage, ptr %ppc, i32 0, i32 6
  %24 = ptrtoint ptr %cur_ctrl.i6 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cur_ctrl.i6, align 1
  %26 = xor i8 %25, 4
  store i8 %26, ptr %cur_ctrl.i6, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %cur_ctrl.i6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cur_ctrl.i6, align 1
  %29 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ppc, align 2
  %conv8.i7 = zext i16 %30 to i32
  %add11.i8 = add nuw nsw i32 %conv8.i7, -18874366
  %31 = inttoptr i32 %add11.i8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %28) #6, !srcloc !109
  br label %ppc6_wr_data_byte.exit

do.body14.i12:                                    ; preds = %ppc6_send_cmd.exit.do.body14.i12_crit_edge, %ppc6_send_cmd.exit.do.body14.i12_crit_edge21, %ppc6_send_cmd.exit.do.body14.i12_crit_edge22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %ppc to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ppc, align 2
  %conv17.i10 = zext i16 %33 to i32
  %add20.i11 = add nuw nsw i32 %conv17.i10, -18874364
  %34 = inttoptr i32 %add20.i11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %19) #6, !srcloc !109
  br label %ppc6_wr_data_byte.exit

ppc6_wr_data_byte.exit:                           ; preds = %do.body14.i12, %do.body.i9, %ppc6_send_cmd.exit.ppc6_wr_data_byte.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @paride_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__UNIQUE_ID_file223, !1, !"__UNIQUE_ID_file223", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/bpck6.c", i32 262, i32 1}
!2 = !{ptr @__UNIQUE_ID_license224, !1, !"__UNIQUE_ID_license224", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author225, !4, !"__UNIQUE_ID_author225", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/bpck6.c", i32 263, i32 1}
!5 = !{ptr @__UNIQUE_ID_description226, !6, !"__UNIQUE_ID_description226", i1 false, i1 false}
!6 = !{!"../drivers/block/paride/bpck6.c", i32 264, i32 1}
!7 = !{ptr @__param_verbose, !8, !"__param_verbose", i1 false, i1 false}
!8 = !{!"../drivers/block/paride/bpck6.c", i32 265, i32 1}
!9 = !{ptr @__UNIQUE_ID_verbosetype227, !8, !"__UNIQUE_ID_verbosetype227", i1 false, i1 false}
!10 = !{ptr @__initcall__kmod_bpck6__228_266_bpck6_init6, !11, !"__initcall__kmod_bpck6__228_266_bpck6_init6", i1 false, i1 false}
!11 = !{!"../drivers/block/paride/bpck6.c", i32 266, i32 1}
!12 = !{ptr @__exitcall_bpck6_exit, !13, !"__exitcall_bpck6_exit", i1 false, i1 false}
!13 = !{!"../drivers/block/paride/bpck6.c", i32 267, i32 1}
!14 = !{ptr @verbose, !15, !"verbose", i1 false, i1 false}
!15 = !{!"../drivers/block/paride/bpck6.c", i32 37, i32 13}
!16 = !{ptr @bpck6, !17, !"bpck6", i1 false, i1 false}
!17 = !{!"../drivers/block/paride/bpck6.c", i32 229, i32 27}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/block/paride/bpck6.c", i32 95, i32 3}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bpck6_connect._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @bpck6_connect._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/block/paride/bpck6.c", i32 119, i32 3}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @bpck6_disconnect._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @bpck6_disconnect._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/block/paride/bpck6.c", i32 129, i32 3}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @bpck6_test_port._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @bpck6_test_port._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/block/paride/bpck6.c", i32 163, i32 3}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @bpck6_probe_unit._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @bpck6_probe_unit._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/block/paride/bpck6.c", i32 176, i32 3}
!41 = !{ptr @bpck6_probe_unit._entry.9, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @bpck6_probe_unit._entry_ptr.11, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/block/paride/bpck6.c", i32 184, i32 4}
!45 = !{ptr @bpck6_probe_unit._entry.12, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @bpck6_probe_unit._entry_ptr.14, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/block/paride/bpck6.c", i32 192, i32 4}
!49 = !{ptr @bpck6_probe_unit._entry.15, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @bpck6_probe_unit._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/block/paride/bpck6.c", i32 201, i32 4}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/block/paride/bpck6.c", i32 201, i32 12}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/block/paride/bpck6.c", i32 201, i32 20}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/block/paride/bpck6.c", i32 201, i32 28}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/block/paride/bpck6.c", i32 201, i32 37}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/block/paride/bpck6.c", i32 203, i32 2}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @bpck6_log_adapter._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @bpck6_log_adapter._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/block/paride/bpck6.c", i32 204, i32 2}
!68 = !{ptr @bpck6_log_adapter._entry.25, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @bpck6_log_adapter._entry_ptr.27, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/block/paride/bpck6.c", i32 205, i32 2}
!72 = !{ptr @bpck6_log_adapter._entry.28, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @bpck6_log_adapter._entry_ptr.30, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/block/paride/bpck6.c", i32 207, i32 2}
!77 = !{ptr @bpck6_log_adapter._entry.32, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @bpck6_log_adapter._entry_ptr.34, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/block/paride/bpck6.c", i32 220, i32 2}
!81 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @bpck6_init_proto._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @bpck6_init_proto._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @__param_str_verbose, !8, !"__param_str_verbose", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/block/paride/bpck6.c", i32 250, i32 2}
!87 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @bpck6_init._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @bpck6_init._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/block/paride/bpck6.c", i32 251, i32 2}
!92 = !{ptr @bpck6_init._entry.39, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @bpck6_init._entry_ptr.41, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/block/paride/bpck6.c", i32 253, i32 3}
!96 = !{ptr @bpck6_init._entry.42, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @bpck6_init._entry_ptr.44, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i8 0, i8 2}
!108 = !{i64 2153510838}
!109 = !{i64 4931877}
!110 = !{i64 2153511199}
!111 = !{i64 2153511549}
!112 = !{i64 2153511898}
!113 = !{i64 2153512260}
!114 = !{i64 2153512611}
!115 = !{i64 2153524821}
!116 = !{i64 2153525183}
!117 = !{i64 2153525553}
!118 = !{i64 2153525894}
!119 = !{i64 2153526256}
!120 = !{i64 2153526597}
!121 = !{i64 2153526949}
!122 = !{i64 2153527309}
!123 = !{i64 2153527702}
!124 = !{i64 4931454}
!125 = !{i64 2153528167}
!126 = !{i64 2153528560}
!127 = !{i64 4932074}
!128 = !{i64 2153529025}
!129 = !{i64 2153517078}
!130 = !{i64 4932272}
!131 = !{i64 2153517499}
!132 = !{i64 2153517729}
!133 = !{i64 2153518150}
!134 = !{i64 2153518387}
!135 = !{i64 2153518755}
!136 = !{i64 2153519168}
!137 = !{i64 2153519398}
!138 = !{i64 2153519757}
!139 = !{i64 2153520128}
!140 = !{i64 2153520549}
!141 = !{i64 2153520777}
!142 = !{i64 2153521148}
!143 = !{i64 4931654}
!144 = !{i64 2153521952}
!145 = !{i64 2153522247}
!146 = !{i64 2153522475}
!147 = !{i64 2153522846}
!148 = !{i64 4932492}
!149 = !{i64 2153523650}
!150 = !{i64 2153523945}
!151 = !{i64 2153524173}
!152 = !{i64 2153509427}
!153 = !{i64 2153509777}
!154 = !{i64 2153510136}
!155 = !{i64 2153510490}
!156 = !{i64 2153512983}
!157 = !{i64 2153513404}
!158 = !{i64 2153513634}
!159 = !{i64 2153514055}
!160 = !{i64 2153514292}
!161 = !{i64 2153514660}
!162 = !{i64 2153515073}
!163 = !{i64 2153515303}
!164 = !{i64 2153515662}
!165 = !{i64 2153516037}
!166 = !{i64 2153516458}
!167 = !{i64 2153516686}
!168 = !{i64 2153524599}
!169 = !{i64 2153502451}
!170 = !{i64 2153502667}
!171 = !{i64 2153503080}
!172 = !{i64 2153503375}
!173 = !{i64 2153503605}
!174 = !{i64 2153503945}
!175 = !{i64 2153504281}
!176 = !{i64 2153504617}
!177 = !{i64 2153504961}
!178 = !{i64 2153505306}
!179 = !{i64 2153505658}
!180 = !{i64 2153506017}
!181 = !{i64 2153506355}
!182 = !{i64 2153506707}
!183 = !{i64 2153507063}
!184 = !{i64 2153507484}
!185 = !{i64 2153507714}
!186 = !{i64 2153508135}
!187 = !{i64 2153508723}
!188 = !{i64 2153509073}
!189 = !{i64 2153508369}
