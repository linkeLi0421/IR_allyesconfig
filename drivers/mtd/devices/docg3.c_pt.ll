; ModuleID = '/llk/IR_all_yes/drivers/mtd/devices/docg3.c_pt.bc'
source_filename = "../drivers/mtd/devices/docg3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.1, %struct.trace_event, ptr, ptr, %union.anon.4, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.1 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.4 = type { ptr }
%union.anon.103 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.77 }
%union.anon.77 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.cpumask = type { [1 x i32] }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_docg3_io = type { %struct.trace_entry, i32, i8, i16, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.docg3_cascade = type { [4 x ptr], ptr, ptr, %struct.mutex }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.102 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.102 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.docg3 = type { ptr, ptr, i8, i32, ptr, i64, i32, [16 x i8] }
%struct.erase_info = type { i64, i64, i64 }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.mtd_oob_region = type { i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.98, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.99, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.100, ptr, %struct.address_space, %struct.list_head, %union.anon.101, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.99 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.101 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__tpstrtab_docg3_io = internal constant [9 x i8] c"docg3_io\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_docg3_io = dso_local global %struct.static_call_key { ptr @__traceiter_docg3_io }, align 4
@__tracepoint_docg3_io = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_docg3_io, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_docg3_io, ptr null, ptr @__traceiter_docg3_io, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_docg3_io = internal constant ptr @__tracepoint_docg3_io, section "__tracepoints_ptrs", align 4
@str__docg3__trace_system_name = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"docg3\00", [26 x i8] zeroinitializer }, align 32
@trace_event_fields_docg3_io = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.0 { %struct.anon { ptr @.str.3, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.0 { %struct.anon { ptr @.str.5, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_docg3_io = internal global %struct.trace_event_class { ptr @str__docg3__trace_system_name, ptr @trace_event_raw_event_docg3_io, ptr @perf_trace_docg3_io, ptr @trace_event_reg, ptr @trace_event_fields_docg3_io, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_docg3_io, i64 24), ptr getelementptr (i8, ptr @event_class_docg3_io, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_docg3_io = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_docg3_io, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_docg3_io = internal global { [95 x i8], [33 x i8] } { [95 x i8] c"\22docg3: %s%02d reg=%04x, val=%04x\22, REC->op ? \22write\22 : \22read\22, REC->width, REC->reg, REC->val\00", [33 x i8] zeroinitializer }, align 32
@event_docg3_io = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_docg3_io, %union.anon.1 { ptr @__tracepoint_docg3_io }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_docg3_io }, ptr @print_fmt_docg3_io, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_docg3_io = internal global ptr @event_docg3_io, section "_ftrace_events", align 4
@__bpf_trace_tp_map_docg3_io = internal global %union.anon.103 { %struct.bpf_raw_event_map { ptr @__tracepoint_docg3_io, ptr @__bpf_trace_docg3_io, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__param_str_reliable_mode = internal constant [20 x i8] c"docg3.reliable_mode\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@reliable_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_reliable_mode = internal constant %struct.kernel_param { ptr @__param_str_reliable_mode, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.77 { ptr @reliable_mode } }, section "__param", align 4
@__UNIQUE_ID_reliable_modetype260 = internal constant [34 x i8] c"docg3.parmtype=reliable_mode:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_reliable_mode261 = internal constant [122 x i8] c"docg3.parm=reliable_mode:Set the docg3 mode (0=normal MLC, 1=fast, 2=reliable) : MLC normal operations are in normal mode\00", section ".modinfo", align 1
@__initcall__kmod_docg3__295_2069_g3_driver_init6 = internal global ptr @g3_driver_init, section ".initcall6.init", align 4
@g3_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @docg3_release, ptr null, ptr @docg3_suspend, ptr @docg3_resume, %struct.device_driver { ptr @.str.25, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @docg3_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_g3_driver_exit = internal global ptr @g3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file296 = internal constant [37 x i8] c"docg3.file=drivers/mtd/devices/docg3\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [18 x i8] c"docg3.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [53 x i8] c"docg3.author=Robert Jarzmik <robert.jarzmik@free.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [47 x i8] c"docg3.description=MTD driver for DiskOnChip G3\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"op\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned char\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"width\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"val\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"docg3: %s%02d reg=%04x, val=%04x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@docg3_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 1974, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No I/O memory resource defined\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"docg3_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mtd/devices/docg3.c\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@docg3_probe._entry_ptr = internal global ptr @docg3_probe._entry, section ".printk_index", align 4
@docg3_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cascade->lock\00", [17 x i8] zeroinitializer }, align 32
@part_probes = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.81, ptr @.str.82, ptr null], [20 x i8] zeroinitializer }, align 32
@docg3_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.12, i32 2021, ptr @.str.18, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No supported DiskOnChip found\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@docg3_probe._entry_ptr.19 = internal global ptr @docg3_probe._entry.16, section ".printk_index", align 4
@doc_probe_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.12, i32 1838, ptr @.str.18, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Found a G3 DiskOnChip at addr %p, floor %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"doc_probe_device\00", [47 x i8] zeroinitializer }, align 32
@doc_probe_device._entry_ptr = internal global ptr @doc_probe_device._entry, section ".printk_index", align 4
@doc_probe_device._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.12, i32 1841, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Chip id %04x is not a DiskOnChip G3 chip\0A\00", [54 x i8] zeroinitializer }, align 32
@doc_probe_device._entry_ptr.24 = internal global ptr @doc_probe_device._entry.22, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@doc_set_device_id.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.12, ptr @.str.27, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"docg3\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"doc_set_device_id\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"doc_set_device_id(%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mtd/devices/docg3.h\00", [36 x i8] zeroinitializer }, align 32
@trace_docg3_io.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@doc_set_asic_mode.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.31, ptr @.str.12, ptr @.str.32, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"doc_set_asic_mode\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"doc_set_asic_mode(%02x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"docg3.%d\00", [23 x i8] zeroinitializer }, align 32
@nand_ooblayout_docg3_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @docg3_ooblayout_ecc, ptr @docg3_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@doc_erase.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.34, ptr @.str.12, ptr @.str.35, i8 1, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"doc_erase\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"doc_erase(from=%lld, len=%lld\0A\00", [33 x i8] zeroinitializer }, align 32
@doc_set_reliable_mode.strmode = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fast\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reliable\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@doc_set_reliable_mode.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.40, ptr @.str.12, ptr @.str.41, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"doc_set_reliable_mode\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"doc_set_reliable_mode(%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@doc_set_reliable_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.12, i32 335, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"doc_set_reliable_mode(): invalid mode\0A\00", [57 x i8] zeroinitializer }, align 32
@doc_set_reliable_mode._entry_ptr = internal global ptr @doc_set_reliable_mode._entry, section ".printk_index", align 4
@doc_erase_block.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.43, ptr @.str.12, ptr @.str.44, i8 1, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"doc_erase_block\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"doc_erase_block(blocks=(%d,%d))\0A\00", [63 x i8] zeroinitializer }, align 32
@doc_erase_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.12, i32 1158, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Erase blocks %d,%d error\0A\00", [38 x i8] zeroinitializer }, align 32
@doc_erase_block._entry_ptr = internal global ptr @doc_erase_block._entry, section ".printk_index", align 4
@doc_reset_seq.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.46, ptr @.str.12, ptr @.str.47, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"doc_reset_seq\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"doc_reset_seq() -> isReady=%s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@doc_write_erase_wait_status.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.50, ptr @.str.12, ptr @.str.51, i8 1, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"doc_write_erase_wait_status\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Timeout reached and the chip is still not ready\0A\00", [47 x i8] zeroinitializer }, align 32
@doc_write_erase_wait_status.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.50, ptr @.str.12, ptr @.str.52, i8 1, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Erase/Write failed on (a) plane(s), status = %x\0A\00", [47 x i8] zeroinitializer }, align 32
@doc_read_data_area.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.53, ptr @.str.12, ptr @.str.54, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"doc_read_data_area\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"doc_read_data_area(buf=%p, len=%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@doc_read_oob.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.55, ptr @.str.12, ptr @.str.56, i8 0, i8 -34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"doc_read_oob\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"doc_read_oob(from=%lld, mode=%d, data=(%p:%zu), oob=(%p:%zu))\0A\00", [33 x i8] zeroinitializer }, align 32
@doc_read_oob.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.55, ptr @.str.12, ptr @.str.57, i8 0, i8 -24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"OOB - INFO: %*phC\0A\00", [45 x i8] zeroinitializer }, align 32
@doc_read_oob.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.55, ptr @.str.12, ptr @.str.58, i8 0, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"OOB - HAMMING: %02x\0A\00", [43 x i8] zeroinitializer }, align 32
@doc_read_oob.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.55, ptr @.str.12, ptr @.str.59, i8 0, i8 -24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"OOB - BCH_ECC: %*phC\0A\00", [42 x i8] zeroinitializer }, align 32
@doc_read_oob.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.55, ptr @.str.12, ptr @.str.60, i8 0, i8 -24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OOB - UNUSED: %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@doc_read_oob.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.55, ptr @.str.12, ptr @.str.61, i8 0, i8 -23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ECC checks: ECCConf1=%x\0A\00", [39 x i8] zeroinitializer }, align 32
@doc_read_oob.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.55, ptr @.str.12, ptr @.str.62, i8 0, i8 -23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ECC HW_ECC: %*phC\0A\00", [45 x i8] zeroinitializer }, align 32
@doc_read_page_prepare.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.63, ptr @.str.12, ptr @.str.64, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"doc_read_page_prepare\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"doc_read_page_prepare(blocks=(%d,%d), page=%d, ofsInPage=%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@doc_read_seek.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.65, ptr @.str.12, ptr @.str.66, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"doc_read_seek\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"doc_seek(blocks=(%d,%d), page=%d, ofs=%d, wear=%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@doc_set_extra_page_mode.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.67, ptr @.str.12, ptr @.str.68, i8 0, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"doc_set_extra_page_mode\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"doc_set_extra_page_mode()\0A\00", [37 x i8] zeroinitializer }, align 32
@doc_ecc_bch_fix_data.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.69, ptr @.str.12, ptr @.str.70, i8 0, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"doc_ecc_bch_fix_data\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"doc_ecc_bch_fix_data: flipped %d bits\0A\00", [57 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@doc_write_oob.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.71, ptr @.str.12, ptr @.str.72, i8 1, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"doc_write_oob\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"doc_write_oob(from=%lld, mode=%d, data=(%p:%zu), oob=(%p:%zu))\0A\00", [32 x i8] zeroinitializer }, align 32
@doc_write_page.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.73, ptr @.str.12, ptr @.str.74, i8 1, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"doc_write_page\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"doc_write_page(to=%lld)\0A\00", [39 x i8] zeroinitializer }, align 32
@doc_write_seek.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.75, ptr @.str.12, ptr @.str.76, i8 0, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"doc_write_seek\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"doc_write_seek(blocks=(%d,%d), page=%d, ofs=%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@doc_write_data_area.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.77, ptr @.str.12, ptr @.str.78, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"doc_write_data_area\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"doc_write_data_area(buf=%p, len=%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@doc_block_isbad.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.79, ptr @.str.12, ptr @.str.80, i8 0, i8 -3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"doc_block_isbad\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"doc_block_isbad(from=%lld) => block=(%d,%d), page=%d, ofs=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cmdlinepart\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"saftlpart\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"docg3_flashcontrol\00", [45 x i8] zeroinitializer }, align 32
@flashcontrol_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @flashcontrol_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"docg3_asic_mode\00", [16 x i8] zeroinitializer }, align 32
@asic_mode_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @asic_mode_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"docg3_device_id\00", [16 x i8] zeroinitializer }, align 32
@device_id_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @device_id_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"docg3_protection\00", [47 x i8] zeroinitializer }, align 32
@protection_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @protection_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"FlashControl : 0x%02x (%s,CE# %s,%s,%s,flash %s)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"protocol violation\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inactive\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"protection error\00", [47 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sequence error\00", [17 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ready\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"not ready\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%04x : RAM_WE=%d,RSTIN_RESET=%d,BDETCT_RESET=%d,WRITE_ENABLE=%d,POWERDOWN=%d,MODE=%d%d (\00", [39 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c")\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DeviceId = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Protection = 0x%02x (\00", [42 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FOUNDRY_OTP_LOCK,\00", [46 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CUSTOMER_OTP_LOCK,\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LOCK_INPUT,\00", [20 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"STICKY_LOCK,\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PROTECTION ON,\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IPL_DOWNLOAD_LOCK,\00", [45 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PROTECT_ERR,\00", [19 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NO_PROTECT_ERR\00", [17 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"DPS0 = 0x%02x : Protected area [0x%x - 0x%x] : OTP=%d, READ=%d, WRITE=%d, HW_LOCK=%d, KEY_OK=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"DPS1 = 0x%02x : Protected area [0x%x - 0x%x] : OTP=%d, READ=%d, WRITE=%d, HW_LOCK=%d, KEY_OK=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@doc_sys_attrs = internal global { [4 x [4 x %struct.device_attribute]], [96 x i8] } { [4 x [4 x %struct.device_attribute]] [[4 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.112, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dps0_is_key_locked, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dps1_is_key_locked, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @dps0_insert_key }, %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @dps1_insert_key }], [4 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.116, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dps0_is_key_locked, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dps1_is_key_locked, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @dps0_insert_key }, %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @dps1_insert_key }], [4 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.120, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dps0_is_key_locked, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dps1_is_key_locked, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @dps0_insert_key }, %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @dps1_insert_key }], [4 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.124, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dps0_is_key_locked, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dps1_is_key_locked, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @dps0_insert_key }, %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @dps1_insert_key }]], [96 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"f0_dps0_is_keylocked\00", [43 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"f0_dps1_is_keylocked\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"f0_dps0_protection_key\00", [41 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"f0_dps1_protection_key\00", [41 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"f1_dps0_is_keylocked\00", [43 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"f1_dps1_is_keylocked\00", [43 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"f1_dps0_protection_key\00", [41 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"f1_dps1_protection_key\00", [41 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"f2_dps0_is_keylocked\00", [43 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"f2_dps1_is_keylocked\00", [43 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"f2_dps0_protection_key\00", [41 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"f2_dps1_protection_key\00", [41 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"f3_dps0_is_keylocked\00", [43 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"f3_dps1_is_keylocked\00", [43 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"f3_dps0_protection_key\00", [41 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"f3_dps1_protection_key\00", [41 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@docg3_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"m-systems,diskonchip-g3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@docg3_suspend.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.129, ptr @.str.12, ptr @.str.130, i8 1, i8 -28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"docg3_suspend\00", [18 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"docg3_suspend(): floor %d powerdown ok\0A\00", [56 x i8] zeroinitializer }, align 32
@docg3_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.12, i32 1942, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"docg3_suspend(): floor %d powerdown failed\0A\00", [52 x i8] zeroinitializer }, align 32
@docg3_suspend._entry_ptr = internal global ptr @docg3_suspend._entry, section ".printk_index", align 4
@docg3_resume.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.132, ptr @.str.12, ptr @.str.133, i8 1, i8 -39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"docg3_resume\00", [19 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"docg3_resume()\0A\00", [16 x i8] zeroinitializer }, align 32
@switch.table.doc_write_oob = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 1, i32 0], [20 x i8] zeroinitializer }, align 32
@switch.table.doc_write_oob.134 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 1, i32 0], [20 x i8] zeroinitializer }, align 32
@switch.table.asic_mode_show = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.97, ptr @.str.36, ptr @.str.98], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.135 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.136 = private unnamed_addr constant [30 x i8] c"str__docg3__trace_system_name\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 36, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant [28 x i8] c"trace_event_fields_docg3_io\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_docg3_io\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [19 x i8] c"print_fmt_docg3_io\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [15 x i8] c"event_docg3_io\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [14 x i8] c"reliable_mode\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 51, i32 21 }
@___asan_gen_.154 = private unnamed_addr constant [10 x i8] c"g3_driver\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2059, i32 31 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1974, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1985, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [12 x i8] c"part_probes\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 135, i32 27 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2021, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1837, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1841, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 377, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant [33 x i8] c"../drivers/mtd/devices/./docg3.h\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 319, i32 1 }
@___asan_gen_.254 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 108, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 359, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1756, i32 54 }
@___asan_gen_.265 = private unnamed_addr constant [25 x i8] c"nand_ooblayout_docg3_ops\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 87, i32 39 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1182, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [8 x i8] c"strmode\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 319, i32 15 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 319, i32 29 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 319, i32 39 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 319, i32 47 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 319, i32 59 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 321, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 335, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1138, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1158, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 218, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1106, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1113, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 238, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 888, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 928, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 929, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 930, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 931, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 933, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 934, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 700, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 461, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 401, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 664, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1396, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1229, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 510, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 282, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1012, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 135, i32 45 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 135, i32 60 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1730, i32 22 }
@___asan_gen_.427 = private unnamed_addr constant [18 x i8] c"flashcontrol_fops\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1612, i32 1 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1732, i32 22 }
@___asan_gen_.433 = private unnamed_addr constant [15 x i8] c"asic_mode_fops\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1649, i32 1 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1734, i32 22 }
@___asan_gen_.439 = private unnamed_addr constant [15 x i8] c"device_id_fops\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1663, i32 1 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1736, i32 22 }
@___asan_gen_.445 = private unnamed_addr constant [16 x i8] c"protection_fops\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1715, i32 1 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1602, i32 16 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1604, i32 35 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1604, i32 58 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1605, i32 28 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1605, i32 39 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1606, i32 42 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1607, i32 40 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1608, i32 36 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1608, i32 46 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1626, i32 6 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1637, i32 15 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1643, i32 15 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1646, i32 14 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1660, i32 16 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1680, i32 16 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1682, i32 15 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1684, i32 15 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1686, i32 15 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1688, i32 15 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1690, i32 15 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1692, i32 15 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1694, i32 15 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1696, i32 15 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1699, i32 16 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1706, i32 16 }
@___asan_gen_.523 = private unnamed_addr constant [14 x i8] c"doc_sys_attrs\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1543, i32 32 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1544, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1544, i32 18 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1544, i32 34 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1544, i32 50 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1480, i32 22 }
@___asan_gen_.577 = private unnamed_addr constant [13 x i8] c"docg3_dt_ids\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2052, i32 34 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1938, i32 4 }
@___asan_gen_.586 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1941, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.596 = private constant [31 x i8] c"../drivers/mtd/devices/docg3.c\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1895, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant [27 x i8] c"switch.table.doc_write_oob\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [31 x i8] c"switch.table.doc_write_oob.134\00", align 1
@___asan_gen_.600 = private unnamed_addr constant [28 x i8] c"switch.table.asic_mode_show\00", align 1
@llvm.compiler.used = appending global [179 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__UNIQUE_ID_reliable_mode261, ptr @__UNIQUE_ID_reliable_modetype260, ptr @__bpf_trace_tp_map_docg3_io, ptr @__event_docg3_io, ptr @__exitcall_g3_driver_exit, ptr @__initcall__kmod_docg3__295_2069_g3_driver_init6, ptr @__param_reliable_mode, ptr @__tracepoint_docg3_io, ptr @__tracepoint_ptr_docg3_io, ptr @doc_erase_block._entry, ptr @doc_erase_block._entry_ptr, ptr @doc_probe_device._entry, ptr @doc_probe_device._entry.22, ptr @doc_probe_device._entry_ptr, ptr @doc_probe_device._entry_ptr.24, ptr @doc_set_reliable_mode._entry, ptr @doc_set_reliable_mode._entry_ptr, ptr @docg3_probe._entry, ptr @docg3_probe._entry.16, ptr @docg3_probe._entry_ptr, ptr @docg3_probe._entry_ptr.19, ptr @docg3_suspend._entry, ptr @docg3_suspend._entry_ptr, ptr @event_class_docg3_io, ptr @event_docg3_io, ptr @g3_driver_exit, ptr @str__docg3__trace_system_name, ptr @trace_event_fields_docg3_io, ptr @trace_event_type_funcs_docg3_io, ptr @print_fmt_docg3_io, ptr @reliable_mode, ptr @g3_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @docg3_probe.__key, ptr @.str.15, ptr @part_probes, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @nand_ooblayout_docg3_ops, ptr @.str.34, ptr @.str.35, ptr @doc_set_reliable_mode.strmode, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @flashcontrol_fops, ptr @.str.84, ptr @asic_mode_fops, ptr @.str.85, ptr @device_id_fops, ptr @.str.86, ptr @protection_fops, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @doc_sys_attrs, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @docg3_dt_ids, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @switch.table.doc_write_oob, ptr @switch.table.doc_write_oob.134, ptr @switch.table.asic_mode_show], section "llvm.metadata"
@0 = internal global [157 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__docg3__trace_system_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_docg3_io to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_docg3_io to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_docg3_io to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_docg3_io to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reliable_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g3_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @docg3_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @docg3_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @part_probes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @docg3_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc_probe_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc_probe_device._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_ooblayout_docg3_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc_set_reliable_mode.strmode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc_set_reliable_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc_erase_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flashcontrol_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic_mode_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_id_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @protection_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doc_sys_attrs to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @docg3_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @docg3_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.doc_write_oob to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.doc_write_oob.134 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.asic_mode_show to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_docg3_io(ptr nocapture readnone %__data, i32 noundef %op, i32 noundef %width, i16 noundef zeroext %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_docg3_io, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %op, i32 noundef %width, i16 noundef zeroext %reg, i32 noundef %val) #13
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_docg3_io(ptr noundef %__data, i32 noundef %op, i32 noundef %width, i16 noundef zeroext %reg, i32 noundef %val) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #13
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !314

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !315

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #13
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #13
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %op6 = getelementptr inbounds %struct.trace_event_raw_docg3_io, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %op6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %op, ptr %op6, align 4
  %conv = trunc i32 %width to i8
  %width7 = getelementptr inbounds %struct.trace_event_raw_docg3_io, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %width7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %width7, align 4
  %reg8 = getelementptr inbounds %struct.trace_event_raw_docg3_io, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %reg8 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %reg, ptr %reg8, align 2
  %val9 = getelementptr inbounds %struct.trace_event_raw_docg3_io, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %val9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %val, ptr %val9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_docg3_io(ptr noundef %__data, i32 noundef %op, i32 noundef %width, i16 noundef zeroext %reg, i32 noundef %val) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #13
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !316
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #13
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !316
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !304) #13
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #13
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #13
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !304) #13
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %op17 = getelementptr inbounds %struct.trace_event_raw_docg3_io, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %op17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %op, ptr %op17, align 4
  %conv = trunc i32 %width to i8
  %width18 = getelementptr inbounds %struct.trace_event_raw_docg3_io, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %width18 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %width18, align 4
  %reg19 = getelementptr inbounds %struct.trace_event_raw_docg3_io, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %reg19 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %reg, ptr %reg19, align 2
  %val20 = getelementptr inbounds %struct.trace_event_raw_docg3_io, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %val20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %val, ptr %val20, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_docg3_io(ptr noundef %__data, i32 noundef %op, i32 noundef %width, i16 noundef zeroext %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i32 %op to i64
  %conv4 = zext i32 %width to i64
  %conv8 = zext i16 %reg to i64
  %conv12 = zext i32 %val to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @g3_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @g3_driver, ptr noundef nonnull @docg3_probe, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @g3_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @platform_driver_unregister(ptr noundef nonnull @g3_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_docg3_io(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %op = getelementptr inbounds %struct.trace_event_raw_docg3_io, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.9, ptr @.str.8
  %width = getelementptr inbounds %struct.trace_event_raw_docg3_io, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %width, align 4
  %conv = zext i8 %5 to i32
  %reg = getelementptr inbounds %struct.trace_event_raw_docg3_io, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg, align 2
  %conv1 = zext i16 %7 to i32
  %val = getelementptr inbounds %struct.trace_event_raw_docg3_io, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond, i32 noundef %conv, i32 noundef %conv1, i32 noundef %9) #13
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @docg3_probe(ptr noundef %pdev) #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %call2 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %1, i32 noundef 8192) #13
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 464, i32 noundef 3520) #13
  %tobool4.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %base7 = getelementptr inbounds %struct.docg3_cascade, ptr %call5.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %base7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %base7, align 4
  %lock = getelementptr inbounds %struct.docg3_cascade, ptr %call5.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @docg3_probe.__key) #13
  %call11 = tail call ptr @bch_init(i32 noundef 14, i32 noundef 4, i32 noundef 17475, i1 noundef zeroext false) #13
  %bch = getelementptr inbounds %struct.docg3_cascade, ptr %call5.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %bch to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %bch, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end6.cleanup_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6.for.body_crit_edge
  %floor.0102 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %call16 = tail call fastcc ptr @doc_probe_device(ptr noundef nonnull %call5.i.i, i32 noundef %floor.0102, ptr noundef %dev1) #17
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end20

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %call16 to i32
  br label %err_probe

if.end20:                                         ; preds = %for.body
  %tobool21.not = icmp eq ptr %call16, null
  br i1 %tobool21.not, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %floor.0102)
  %cmp23 = icmp eq i32 %floor.0102, 0
  br i1 %cmp23, label %notfound, label %if.then22.for.inc_crit_edge

if.then22.for.inc_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end25:                                         ; preds = %if.end20
  %arrayidx = getelementptr [4 x ptr], ptr %call5.i.i, i32 0, i32 %floor.0102
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call16, ptr %arrayidx, align 4
  %call26 = tail call i32 @mtd_device_parse_register(ptr noundef nonnull %call16, ptr noundef nonnull @part_probes, ptr noundef null, ptr noundef null, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.err_probe_crit_edge

if.end25.err_probe_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_probe

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @doc_dbg_register(ptr noundef %7) #17
  br label %for.inc

for.inc:                                          ; preds = %if.end29, %if.then22.for.inc_crit_edge
  %inc = add nuw nsw i32 %floor.0102, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  %8 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call5.i.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.end.if.end35_crit_edge, label %for.body4.preheader.i

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

for.body4.preheader.i:                            ; preds = %for.end
  %call.i = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @doc_sys_attrs) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %for.inc.i, label %for.body4.preheader.i.do.body.preheader.i_crit_edge

for.body4.preheader.i.do.body.preheader.i_crit_edge: ; preds = %for.body4.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader.i

do.body.preheader.i:                              ; preds = %for.inc.2.3.i.do.body.preheader.i_crit_edge, %for.inc.1.3.i.do.body.preheader.i_crit_edge, %for.inc.353.i.do.body.preheader.i_crit_edge, %for.body4.preheader.3.i.do.body.preheader.i_crit_edge, %for.inc.2.2.i.do.body.preheader.i_crit_edge, %for.inc.1.2.i.do.body.preheader.i_crit_edge, %for.inc.249.i.do.body.preheader.i_crit_edge, %for.body4.preheader.2.i.do.body.preheader.i_crit_edge, %for.inc.2.1.i.do.body.preheader.i_crit_edge, %for.inc.1.1.i.do.body.preheader.i_crit_edge, %for.inc.145.i.do.body.preheader.i_crit_edge, %for.body4.preheader.1.i.do.body.preheader.i_crit_edge, %for.inc.2.i.do.body.preheader.i_crit_edge, %for.inc.1.i.do.body.preheader.i_crit_edge, %for.inc.i.do.body.preheader.i_crit_edge, %for.body4.preheader.i.do.body.preheader.i_crit_edge
  %floor.034.lcssa41.i = phi i32 [ 0, %for.body4.preheader.i.do.body.preheader.i_crit_edge ], [ 0, %for.inc.i.do.body.preheader.i_crit_edge ], [ 0, %for.inc.1.i.do.body.preheader.i_crit_edge ], [ 0, %for.inc.2.i.do.body.preheader.i_crit_edge ], [ 1, %for.body4.preheader.1.i.do.body.preheader.i_crit_edge ], [ 1, %for.inc.145.i.do.body.preheader.i_crit_edge ], [ 1, %for.inc.1.1.i.do.body.preheader.i_crit_edge ], [ 1, %for.inc.2.1.i.do.body.preheader.i_crit_edge ], [ 2, %for.body4.preheader.2.i.do.body.preheader.i_crit_edge ], [ 2, %for.inc.249.i.do.body.preheader.i_crit_edge ], [ 2, %for.inc.1.2.i.do.body.preheader.i_crit_edge ], [ 2, %for.inc.2.2.i.do.body.preheader.i_crit_edge ], [ 3, %for.body4.preheader.3.i.do.body.preheader.i_crit_edge ], [ 3, %for.inc.353.i.do.body.preheader.i_crit_edge ], [ 3, %for.inc.1.3.i.do.body.preheader.i_crit_edge ], [ 3, %for.inc.2.3.i.do.body.preheader.i_crit_edge ]
  %i.033.lcssa.i = phi i32 [ 0, %for.body4.preheader.i.do.body.preheader.i_crit_edge ], [ 1, %for.inc.i.do.body.preheader.i_crit_edge ], [ 2, %for.inc.1.i.do.body.preheader.i_crit_edge ], [ 3, %for.inc.2.i.do.body.preheader.i_crit_edge ], [ 0, %for.body4.preheader.1.i.do.body.preheader.i_crit_edge ], [ 1, %for.inc.145.i.do.body.preheader.i_crit_edge ], [ 2, %for.inc.1.1.i.do.body.preheader.i_crit_edge ], [ 3, %for.inc.2.1.i.do.body.preheader.i_crit_edge ], [ 0, %for.body4.preheader.2.i.do.body.preheader.i_crit_edge ], [ 1, %for.inc.249.i.do.body.preheader.i_crit_edge ], [ 2, %for.inc.1.2.i.do.body.preheader.i_crit_edge ], [ 3, %for.inc.2.2.i.do.body.preheader.i_crit_edge ], [ 0, %for.body4.preheader.3.i.do.body.preheader.i_crit_edge ], [ 1, %for.inc.353.i.do.body.preheader.i_crit_edge ], [ 2, %for.inc.1.3.i.do.body.preheader.i_crit_edge ], [ 3, %for.inc.2.3.i.do.body.preheader.i_crit_edge ]
  %call.lcssa.i = phi i32 [ %call.i, %for.body4.preheader.i.do.body.preheader.i_crit_edge ], [ %call.1.i, %for.inc.i.do.body.preheader.i_crit_edge ], [ %call.2.i, %for.inc.1.i.do.body.preheader.i_crit_edge ], [ %call.3.i, %for.inc.2.i.do.body.preheader.i_crit_edge ], [ %call.143.i, %for.body4.preheader.1.i.do.body.preheader.i_crit_edge ], [ %call.1.1.i, %for.inc.145.i.do.body.preheader.i_crit_edge ], [ %call.2.1.i, %for.inc.1.1.i.do.body.preheader.i_crit_edge ], [ %call.3.1.i, %for.inc.2.1.i.do.body.preheader.i_crit_edge ], [ %call.247.i, %for.body4.preheader.2.i.do.body.preheader.i_crit_edge ], [ %call.1.2.i, %for.inc.249.i.do.body.preheader.i_crit_edge ], [ %call.2.2.i, %for.inc.1.2.i.do.body.preheader.i_crit_edge ], [ %call.3.2.i, %for.inc.2.2.i.do.body.preheader.i_crit_edge ], [ %call.351.i, %for.body4.preheader.3.i.do.body.preheader.i_crit_edge ], [ %call.1.3.i, %for.inc.353.i.do.body.preheader.i_crit_edge ], [ %call.2.3.i, %for.inc.1.3.i.do.body.preheader.i_crit_edge ], [ %call.3.3.i, %for.inc.2.3.i.do.body.preheader.i_crit_edge ]
  br label %do.body.i

for.inc.i:                                        ; preds = %for.body4.preheader.i
  %call.1.i = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 0, i32 1)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool7.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool7.not.1.i, label %for.inc.1.i, label %for.inc.i.do.body.preheader.i_crit_edge

for.inc.i.do.body.preheader.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 0, i32 2)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool7.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool7.not.2.i, label %for.inc.2.i, label %for.inc.1.i.do.body.preheader.i_crit_edge

for.inc.1.i.do.body.preheader.i_crit_edge:        ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call.3.i = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 0, i32 3)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool7.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool7.not.3.i, label %for.inc.3.i, label %for.inc.2.i.do.body.preheader.i_crit_edge

for.inc.2.i.do.body.preheader.i_crit_edge:        ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.1.i = getelementptr [4 x ptr], ptr %call5.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %11, null
  br i1 %tobool.not.1.i, label %for.inc.3.i.if.end35_crit_edge, label %for.body4.preheader.1.i

for.inc.3.i.if.end35_crit_edge:                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

for.body4.preheader.1.i:                          ; preds = %for.inc.3.i
  %call.143.i = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 1, i32 0)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.143.i)
  %tobool7.not.144.i = icmp eq i32 %call.143.i, 0
  br i1 %tobool7.not.144.i, label %for.inc.145.i, label %for.body4.preheader.1.i.do.body.preheader.i_crit_edge

for.body4.preheader.1.i.do.body.preheader.i_crit_edge: ; preds = %for.body4.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader.i

for.inc.145.i:                                    ; preds = %for.body4.preheader.1.i
  %call.1.1.i = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 1, i32 1)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.1.i)
  %tobool7.not.1.1.i = icmp eq i32 %call.1.1.i, 0
  br i1 %tobool7.not.1.1.i, label %for.inc.1.1.i, label %for.inc.145.i.do.body.preheader.i_crit_edge

for.inc.145.i.do.body.preheader.i_crit_edge:      ; preds = %for.inc.145.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader.i

for.inc.1.1.i:                                    ; preds = %for.inc.145.i
  %call.2.1.i = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 1, i32 2)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.1.i)
  %tobool7.not.2.1.i = icmp eq i32 %call.2.1.i, 0
  br i1 %tobool7.not.2.1.i, label %for.inc.2.1.i, label %for.inc.1.1.i.do.body.preheader.i_crit_edge

for.inc.1.1.i.do.body.preheader.i_crit_edge:      ; preds = %for.inc.1.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader.i

for.inc.2.1.i:                                    ; preds = %for.inc.1.1.i
  %call.3.1.i = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 1, i32 3)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.1.i)
  %tobool7.not.3.1.i = icmp eq i32 %call.3.1.i, 0
  br i1 %tobool7.not.3.1.i, label %for.inc.3.1.i, label %for.inc.2.1.i.do.body.preheader.i_crit_edge

for.inc.2.1.i.do.body.preheader.i_crit_edge:      ; preds = %for.inc.2.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader.i

for.inc.3.1.i:                                    ; preds = %for.inc.2.1.i
  %arrayidx.2.i = getelementptr [4 x ptr], ptr %call5.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %13, null
  br i1 %tobool.not.2.i, label %for.inc.3.1.i.if.end35_crit_edge, label %for.body4.preheader.2.i

for.inc.3.1.i.if.end35_crit_edge:                 ; preds = %for.inc.3.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

for.body4.preheader.2.i:                          ; preds = %for.inc.3.1.i
  %call.247.i = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 2, i32 0)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.247.i)
  %tobool7.not.248.i = icmp eq i32 %call.247.i, 0
  br i1 %tobool7.not.248.i, label %for.inc.249.i, label %for.body4.preheader.2.i.do.body.preheader.i_crit_edge

for.body4.preheader.2.i.do.body.preheader.i_crit_edge: ; preds = %for.body4.preheader.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader.i

for.inc.249.i:                                    ; preds = %for.body4.preheader.2.i
  %call.1.2.i = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 2, i32 1)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.2.i)
  %tobool7.not.1.2.i = icmp eq i32 %call.1.2.i, 0
  br i1 %tobool7.not.1.2.i, label %for.inc.1.2.i, label %for.inc.249.i.do.body.preheader.i_crit_edge

for.inc.249.i.do.body.preheader.i_crit_edge:      ; preds = %for.inc.249.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader.i

for.inc.1.2.i:                                    ; preds = %for.inc.249.i
  %call.2.2.i = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 2, i32 2)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.2.i)
  %tobool7.not.2.2.i = icmp eq i32 %call.2.2.i, 0
  br i1 %tobool7.not.2.2.i, label %for.inc.2.2.i, label %for.inc.1.2.i.do.body.preheader.i_crit_edge

for.inc.1.2.i.do.body.preheader.i_crit_edge:      ; preds = %for.inc.1.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader.i

for.inc.2.2.i:                                    ; preds = %for.inc.1.2.i
  %call.3.2.i = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 2, i32 3)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.2.i)
  %tobool7.not.3.2.i = icmp eq i32 %call.3.2.i, 0
  br i1 %tobool7.not.3.2.i, label %for.inc.3.2.i, label %for.inc.2.2.i.do.body.preheader.i_crit_edge

for.inc.2.2.i.do.body.preheader.i_crit_edge:      ; preds = %for.inc.2.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader.i

for.inc.3.2.i:                                    ; preds = %for.inc.2.2.i
  %arrayidx.3.i = getelementptr [4 x ptr], ptr %call5.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %15, null
  br i1 %tobool.not.3.i, label %for.inc.3.2.i.if.end35_crit_edge, label %for.body4.preheader.3.i

for.inc.3.2.i.if.end35_crit_edge:                 ; preds = %for.inc.3.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

for.body4.preheader.3.i:                          ; preds = %for.inc.3.2.i
  %call.351.i = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 3, i32 0)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.351.i)
  %tobool7.not.352.i = icmp eq i32 %call.351.i, 0
  br i1 %tobool7.not.352.i, label %for.inc.353.i, label %for.body4.preheader.3.i.do.body.preheader.i_crit_edge

for.body4.preheader.3.i.do.body.preheader.i_crit_edge: ; preds = %for.body4.preheader.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader.i

for.inc.353.i:                                    ; preds = %for.body4.preheader.3.i
  %call.1.3.i = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 3, i32 1)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.3.i)
  %tobool7.not.1.3.i = icmp eq i32 %call.1.3.i, 0
  br i1 %tobool7.not.1.3.i, label %for.inc.1.3.i, label %for.inc.353.i.do.body.preheader.i_crit_edge

for.inc.353.i.do.body.preheader.i_crit_edge:      ; preds = %for.inc.353.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader.i

for.inc.1.3.i:                                    ; preds = %for.inc.353.i
  %call.2.3.i = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 3, i32 2)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.3.i)
  %tobool7.not.2.3.i = icmp eq i32 %call.2.3.i, 0
  br i1 %tobool7.not.2.3.i, label %for.inc.2.3.i, label %for.inc.1.3.i.do.body.preheader.i_crit_edge

for.inc.1.3.i.do.body.preheader.i_crit_edge:      ; preds = %for.inc.1.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader.i

for.inc.2.3.i:                                    ; preds = %for.inc.1.3.i
  %call.3.3.i = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 3, i32 3)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.3.i)
  %tobool7.not.3.3.i = icmp eq i32 %call.3.3.i, 0
  br i1 %tobool7.not.3.3.i, label %for.inc.2.3.i.if.end35_crit_edge, label %for.inc.2.3.i.do.body.preheader.i_crit_edge

for.inc.2.3.i.do.body.preheader.i_crit_edge:      ; preds = %for.inc.2.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader.i

for.inc.2.3.i.if.end35_crit_edge:                 ; preds = %for.inc.2.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %do.body.preheader.i
  %floor.1.i = phi i32 [ %dec14.i, %while.end.i.do.body.i_crit_edge ], [ %floor.034.lcssa41.i, %do.body.preheader.i ]
  %i.1.i = phi i32 [ 4, %while.end.i.do.body.i_crit_edge ], [ %i.033.lcssa.i, %do.body.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1.i)
  %cmp1136.not.i = icmp eq i32 %i.1.i, 0
  br i1 %cmp1136.not.i, label %do.body.i.while.end.i_crit_edge, label %do.body.i.while.body.i_crit_edge

do.body.i.while.body.i_crit_edge:                 ; preds = %do.body.i
  br label %while.body.i

do.body.i.while.end.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.body.i.while.body.i_crit_edge
  %dec37.in.i = phi i32 [ %dec37.i, %while.body.i.while.body.i_crit_edge ], [ %i.1.i, %do.body.i.while.body.i_crit_edge ]
  %dec37.i = add nsw i32 %dec37.in.i, -1
  %arrayidx13.i = getelementptr [4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 %floor.1.i, i32 %dec37.i
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef %arrayidx13.i) #13
  %cmp11.i = icmp ugt i32 %dec37.in.i, 1
  br i1 %cmp11.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %do.body.i.while.end.i_crit_edge
  %dec14.i = add nsw i32 %floor.1.i, -1
  %cmp15.i = icmp sgt i32 %floor.1.i, 0
  br i1 %cmp15.i, label %while.end.i.do.body.i_crit_edge, label %doc_register_sysfs.exit

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

doc_register_sysfs.exit:                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.lcssa.i)
  %tobool33.not = icmp eq i32 %call.lcssa.i, 0
  br i1 %tobool33.not, label %doc_register_sysfs.exit.if.end35_crit_edge, label %doc_register_sysfs.exit.err_probe_crit_edge

doc_register_sysfs.exit.err_probe_crit_edge:      ; preds = %doc_register_sysfs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_probe

doc_register_sysfs.exit.if.end35_crit_edge:       ; preds = %doc_register_sysfs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.end35:                                         ; preds = %doc_register_sysfs.exit.if.end35_crit_edge, %for.inc.2.3.i.if.end35_crit_edge, %for.inc.3.2.i.if.end35_crit_edge, %for.inc.3.1.i.if.end35_crit_edge, %for.inc.3.i.if.end35_crit_edge, %for.end.if.end35_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

notfound:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.17) #16
  br label %err_probe

err_probe:                                        ; preds = %notfound, %doc_register_sysfs.exit.err_probe_crit_edge, %if.end25.err_probe_crit_edge, %if.then18
  %ret.0 = phi i32 [ %4, %if.then18 ], [ -19, %notfound ], [ %call.lcssa.i, %doc_register_sysfs.exit.err_probe_crit_edge ], [ %call26, %if.end25.err_probe_crit_edge ]
  %17 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bch, align 4
  tail call void @bch_free(ptr noundef %18) #13
  br label %for.body42

for.body42:                                       ; preds = %for.inc50.for.body42_crit_edge, %err_probe
  %floor.1104 = phi i32 [ 0, %err_probe ], [ %inc51, %for.inc50.for.body42_crit_edge ]
  %arrayidx44 = getelementptr [4 x ptr], ptr %call5.i.i, i32 0, i32 %floor.1104
  %19 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx44, align 4
  %tobool45.not = icmp eq ptr %20, null
  br i1 %tobool45.not, label %for.body42.for.inc50_crit_edge, label %if.then46

for.body42.for.inc50_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc50

if.then46:                                        ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #15
  %priv.i = getelementptr inbounds %struct.mtd_info, ptr %20, i32 0, i32 54
  %21 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv.i, align 8
  %call.i97 = tail call i32 @mtd_device_unregister(ptr noundef nonnull %20) #13
  %bbt.i = getelementptr inbounds %struct.docg3, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %bbt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bbt.i, align 8
  tail call void @kfree(ptr noundef %24) #13
  tail call void @kfree(ptr noundef %22) #13
  tail call void @kfree(ptr noundef nonnull %20) #13
  br label %for.inc50

for.inc50:                                        ; preds = %if.then46, %for.body42.for.inc50_crit_edge
  %inc51 = add nuw nsw i32 %floor.1104, 1
  %exitcond108.not = icmp eq i32 %inc51, 4
  br i1 %exitcond108.not, label %for.inc50.cleanup_crit_edge, label %for.inc50.for.body42_crit_edge

for.inc50.for.body42_crit_edge:                   ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body42

for.inc50.cleanup_crit_edge:                      ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc50.cleanup_crit_edge, %if.end35, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end35 ], [ -6, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ %ret.0, %for.inc50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bch_init(i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @doc_probe_device(ptr noundef %cascade, i32 noundef %floor, ptr noundef %dev) unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 56) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cond.true_crit_edge, label %if.end

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i85 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1408) #18
  %tobool2.not = icmp eq ptr %call7.i.i85, null
  br i1 %tobool2.not, label %nomem1.thread97, label %if.end4

nomem1.thread97:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cond.true

if.end4:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i85, i32 0, i32 54
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %priv, align 8
  %parent = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i85, i32 0, i32 56, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %parent, align 8
  %max_block = getelementptr inbounds %struct.docg3, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %max_block to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_block, align 4
  %sub = add i32 %5, 4096
  %div = sdiv i32 %sub, 4096
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div, i32 512) #13
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !315

kcalloc.exit.thread:                              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %bbt87 = getelementptr inbounds %struct.docg3, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %bbt87 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bbt87, align 8
  br label %nomem1

if.end7.i.i:                                      ; preds = %if.end4
  %9 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #19
  %bbt = getelementptr inbounds %struct.docg3, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %bbt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i.i, ptr %bbt, align 8
  %tobool9.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool9.not, label %if.end7.i.i.nomem1_crit_edge, label %if.end11

if.end7.i.i.nomem1_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nomem1

if.end11:                                         ; preds = %if.end7.i.i
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %call7.i.i, align 8
  %device_id = getelementptr inbounds %struct.docg3, ptr %call7.i.i, i32 0, i32 2
  %12 = trunc i32 %floor to i8
  %13 = ptrtoint ptr %device_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %device_id, align 8
  %bf.shl = shl i8 %12, 4
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %device_id, align 8
  %cascade13 = getelementptr inbounds %struct.docg3, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %cascade13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cascade, ptr %cascade13, align 4
  %bf.lshr = and i32 %floor, 15
  tail call fastcc void @doc_set_device_id(ptr noundef nonnull %call7.i.i, i32 noundef %bf.lshr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %floor)
  %tobool16.not = icmp eq i32 %floor, 0
  br i1 %tobool16.not, label %if.then17, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @doc_set_asic_mode(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 0)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end11.if.end18_crit_edge
  tail call fastcc void @doc_set_asic_mode(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 1)
  %call19 = tail call fastcc i32 @doc_register_readw(ptr noundef nonnull %call7.i.i, i32 noundef 4096)
  %call20 = tail call fastcc i32 @doc_register_readw(ptr noundef nonnull %call7.i.i, i32 noundef 4212)
  %conv22 = and i32 %call19, 65535
  %conv24 = and i32 %call20, 65535
  %conv25 = xor i32 %conv24, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv22, i32 %conv25)
  %cmp.not = icmp eq i32 %conv22, %conv25
  br i1 %cmp.not, label %if.end28, label %if.end18.nomem4_crit_edge

if.end18.nomem4_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %nomem4

if.end28:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %conv22)
  %cond51 = icmp eq i32 %conv22, 512
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  br i1 %cond51, label %do.end, label %do.end34

do.end:                                           ; preds = %if.end28
  %17 = ptrtoint ptr %cascade13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cascade13, align 4
  %base = getelementptr inbounds %struct.docg3_cascade, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.20, ptr noundef %20, i32 noundef %floor) #16
  %call38 = tail call fastcc i32 @doc_set_driver_info(ptr noundef nonnull %call7.i.i85) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %do.end.nomem4_crit_edge

do.end.nomem4_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %nomem4

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.23, i32 noundef %conv22) #16
  br label %nomem4

if.end41:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @doc_hamming_ecc_init(ptr noundef nonnull %call7.i.i)
  tail call fastcc void @doc_reload_bbt(ptr noundef nonnull %call7.i.i)
  br label %cleanup

nomem4:                                           ; preds = %do.end34, %do.end.nomem4_crit_edge, %if.end18.nomem4_crit_edge
  %ret.0 = phi i32 [ 0, %if.end18.nomem4_crit_edge ], [ %call38, %do.end.nomem4_crit_edge ], [ 0, %do.end34 ]
  %21 = ptrtoint ptr %bbt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bbt, align 8
  tail call void @kfree(ptr noundef %22) #13
  br label %nomem1

nomem1:                                           ; preds = %nomem4, %if.end7.i.i.nomem1_crit_edge, %kcalloc.exit.thread
  %ret.1 = phi i32 [ %ret.0, %nomem4 ], [ -12, %if.end7.i.i.nomem1_crit_edge ], [ -12, %kcalloc.exit.thread ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i85) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool44.not = icmp eq i32 %ret.1, 0
  br i1 %tobool44.not, label %nomem1.cleanup_crit_edge, label %nomem1.cond.true_crit_edge

nomem1.cond.true_crit_edge:                       ; preds = %nomem1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true

nomem1.cleanup_crit_edge:                         ; preds = %nomem1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.true:                                        ; preds = %nomem1.cond.true_crit_edge, %nomem1.thread97, %entry.cond.true_crit_edge
  %ret.396 = phi i32 [ %ret.1, %nomem1.cond.true_crit_edge ], [ -12, %nomem1.thread97 ], [ -12, %entry.cond.true_crit_edge ]
  %23 = inttoptr i32 %ret.396 to ptr
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %nomem1.cleanup_crit_edge, %if.end41
  %retval.0 = phi ptr [ %call7.i.i85, %if.end41 ], [ %23, %cond.true ], [ null, %nomem1.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @doc_dbg_register(ptr nocapture noundef readonly %floor) unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg = getelementptr inbounds %struct.mtd_info, ptr %floor, i32 0, i32 58
  %0 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %priv = getelementptr inbounds %struct.mtd_info, ptr %floor, i32 0, i32 54
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.83, i16 noundef zeroext 256, ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull @flashcontrol_fops) #13
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.84, i16 noundef zeroext 256, ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull @asic_mode_fops) #13
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.85, i16 noundef zeroext 256, ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull @device_id_fops) #13
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.86, i16 noundef zeroext 256, ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull @protection_fops) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @doc_set_device_id(ptr nocapture noundef readonly %docg3, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_set_device_id.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_set_device_id, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !317

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %docg3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %docg3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_set_device_id.__UNIQUE_ID_ddebug267, ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %id) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv = trunc i32 %id to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %cascade.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %2 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cascade.i, align 4
  %base.i = getelementptr inbounds %struct.docg3_cascade, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4106
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv) #13, !srcloc !319
  %conv1.i = and i32 %id, 255
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4106, i32 noundef %conv1.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cascade.i, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 14352) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4152) #13
  %10 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cascade.i, align 4
  %base.i6.i = getelementptr inbounds %struct.docg3_cascade, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %13, i32 4152
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i = zext i8 %14 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4152, i32 noundef %conv2.i.i) #13
  %15 = and i8 %14, -49
  %conv8 = or i8 %15, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cascade.i, align 4
  %base.i16 = getelementptr inbounds %struct.docg3_cascade, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %base.i16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i16, align 4
  %add.ptr.i17 = getelementptr i8, ptr %19, i32 4152
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17, i8 %conv8) #13, !srcloc !319
  %conv1.i18 = zext i8 %conv8 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4152, i32 noundef %conv1.i18) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @doc_set_asic_mode(ptr nocapture noundef readonly %docg3, i8 noundef zeroext %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cascade.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.023 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cascade.i, align 4
  %base.i = getelementptr inbounds %struct.docg3_cascade, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i = zext i8 %4 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 0, i32 noundef %conv2.i) #13
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %5 = or i8 %mode, 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_set_asic_mode.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_set_asic_mode, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !317

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %docg3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %docg3, align 8
  %conv5 = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_set_asic_mode.__UNIQUE_ID_ddebug266, ptr noundef %7, ptr noundef nonnull @.str.32, i32 noundef %conv5) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cascade.i, align 4
  %base.i17 = getelementptr inbounds %struct.docg3_cascade, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %base.i17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i17, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4108
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %5) #13, !srcloc !319
  %conv1.i = zext i8 %5 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4108, i32 noundef %conv1.i) #13
  %neg = xor i8 %5, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cascade.i, align 4
  %base.i19 = getelementptr inbounds %struct.docg3_cascade, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %base.i19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i19, align 4
  %add.ptr.i20 = getelementptr i8, ptr %15, i32 4210
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i20, i8 %neg) #13, !srcloc !319
  %conv1.i21 = zext i8 %neg to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4210, i32 noundef %conv1.i21) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cascade.i, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @doc_register_readw(ptr nocapture noundef readonly %docg3, i32 noundef %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %reg to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv) #13
  %cascade.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %1 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cascade.i, align 4
  %base.i = getelementptr inbounds %struct.docg3_cascade, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %0) #13, !srcloc !321
  %conv1.i = and i32 %reg, 65535
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef %conv1.i) #13
  %5 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cascade.i, align 4
  %base.i6 = getelementptr inbounds %struct.docg3_cascade, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %base.i6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i6, align 4
  %add.ptr.i7 = getelementptr i8, ptr %8, i32 %conv1.i
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i7) #13, !srcloc !324
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %conv2.i = zext i16 %10 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 16, i16 noundef zeroext %conv, i32 noundef %conv2.i) #13
  ret i32 %conv2.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @doc_set_driver_info(ptr nocapture noundef %mtd) unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc i32 @doc_register_readb(ptr noundef %1, i32 noundef 4110)
  %if_cfg = getelementptr inbounds %struct.docg3, ptr %1, i32 0, i32 2
  %2 = trunc i32 %call to i8
  %3 = ptrtoint ptr %if_cfg to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %if_cfg, align 8
  %4 = lshr i8 %2, 4
  %bf.shl = and i8 %4, 8
  %bf.clear = and i8 %bf.load, -15
  %bf.set = or i8 %bf.shl, %bf.clear
  %5 = load i32, ptr @reliable_mode, align 4
  %6 = trunc i32 %5 to i8
  %bf.value2 = shl i8 %6, 1
  %bf.shl3 = and i8 %bf.value2, 6
  %bf.set5 = or i8 %bf.shl3, %bf.set
  store i8 %bf.set5, ptr %if_cfg, align 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.cast = zext i8 %bf.lshr to i32
  %call8 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %8, i32 noundef 3264, ptr noundef nonnull @.str.33, i32 noundef %bf.cast) #13
  %name = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %name, align 8
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_block = getelementptr inbounds %struct.docg3, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %max_block to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2047, ptr %max_block, align 4
  %11 = ptrtoint ptr %mtd to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %mtd, align 8
  %flags = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1024, ptr %flags, align 4
  %13 = load i32, ptr %max_block, align 4
  %add = shl i32 %13, 15
  %mul = add i32 %add, 32768
  %conv = sext i32 %mul to i64
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %size, align 8
  %15 = ptrtoint ptr %if_cfg to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load13 = load i8, ptr %if_cfg, align 8
  %16 = and i8 %bf.load13, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %16)
  %cmp = icmp eq i8 %16, 4
  br i1 %cmp, label %if.then18, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %div1 = lshr exact i64 %conv, 1
  %17 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %div1, ptr %size, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end.if.end20_crit_edge
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %18 = ptrtoint ptr %erasesize to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 65536, ptr %erasesize, align 8
  %19 = ptrtoint ptr %if_cfg to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load22 = load i8, ptr %if_cfg, align 8
  %20 = and i8 %bf.load22, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %cmp26 = icmp eq i8 %20, 4
  %spec.store.select = select i1 %cmp26, i32 32768, i32 65536
  %21 = ptrtoint ptr %erasesize to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.store.select, ptr %erasesize, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %22 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 512, ptr %writesize, align 4
  %writebufsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 5
  %23 = ptrtoint ptr %writebufsize to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 512, ptr %writebufsize, align 8
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %24 = ptrtoint ptr %oobsize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16, ptr %oobsize, align 4
  %_erase = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 21
  %25 = ptrtoint ptr %_erase to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @doc_erase, ptr %_erase, align 8
  %_read_oob = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 27
  %26 = ptrtoint ptr %_read_oob to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @doc_read_oob, ptr %_read_oob, align 8
  %_write_oob = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 28
  %27 = ptrtoint ptr %_write_oob to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @doc_write_oob, ptr %_write_oob, align 4
  %_block_isbad = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 42
  %28 = ptrtoint ptr %_block_isbad to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @doc_block_isbad, ptr %_block_isbad, align 4
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 15
  %29 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @nand_ooblayout_docg3_ops, ptr %ooblayout1.i, align 8
  %oobavail = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 7
  %30 = ptrtoint ptr %oobavail to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %oobavail, align 8
  %ecc_strength = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 18
  %31 = ptrtoint ptr %ecc_strength to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %ecc_strength, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @doc_hamming_ecc_init(ptr nocapture noundef readonly %docg3) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %cascade.i.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %0 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 16912) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4162) #13
  %4 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cascade.i.i, align 4
  %base.i6.i = getelementptr inbounds %struct.docg3_cascade, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %7, i32 4162
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i = zext i8 %8 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4162, i32 noundef %conv2.i.i) #13
  %9 = and i8 %8, -16
  %conv5 = or i8 %9, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cascade.i.i, align 4
  %base.i = getelementptr inbounds %struct.docg3_cascade, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 4162
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv5) #13, !srcloc !319
  %conv1.i = zext i8 %conv5 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4162, i32 noundef %conv1.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @doc_reload_bbt(ptr nocapture noundef readonly %docg3) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %max_block = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 3
  %0 = ptrtoint ptr %max_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_block, align 4
  %sub = add i32 %1, 4096
  %div = sdiv i32 %sub, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479552, i32 %1)
  %cmp4 = icmp ult i32 %1, 2147479552
  br i1 %cmp4, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bbt = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 4
  %2 = ptrtoint ptr %bbt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bbt, align 8
  %cascade.i.i.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.body.lr.ph
  %buf.06 = phi ptr [ %3, %for.body.lr.ph ], [ %add.ptr, %if.end9.for.body_crit_edge ]
  %page.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end9.for.body_crit_edge ]
  %add3 = add nuw nsw i32 %page.05, 4
  %call = tail call fastcc i32 @doc_read_page_prepare(ptr noundef %docg3, i32 noundef 0, i32 noundef 1, i32 noundef %add3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end:                                           ; preds = %for.body
  %call5 = tail call fastcc i32 @doc_read_page_ecc_init(ptr noundef %docg3, i32 noundef 512)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end9:                                          ; preds = %if.end
  tail call fastcc void @doc_read_data_area(ptr noundef %docg3, ptr noundef %buf.06, i32 noundef 512, i32 noundef 1) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i.i.1.i = getelementptr inbounds %struct.docg3_cascade, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %base.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i.1.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %11, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.1.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  %add.ptr = getelementptr i8, ptr %buf.06, i32 512
  %inc = add nuw nsw i32 %page.05, 1
  %cmp = icmp slt i32 %inc, %div
  br i1 %cmp, label %if.end9.for.body_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call fastcc void @doc_read_page_finish(ptr noundef %docg3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @doc_register_readb(ptr nocapture noundef readonly %docg3, i32 noundef %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %reg to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv) #13
  %cascade.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %1 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cascade.i, align 4
  %base.i = getelementptr inbounds %struct.docg3_cascade, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %0) #13, !srcloc !321
  %conv1.i = and i32 %reg, 65535
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef %conv1.i) #13
  %5 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cascade.i, align 4
  %base.i6 = getelementptr inbounds %struct.docg3_cascade, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %base.i6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i6, align 4
  %add.ptr.i7 = getelementptr i8, ptr %8, i32 %conv1.i
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i = zext i8 %9 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext %conv, i32 noundef %conv2.i) #13
  ret i32 %conv2.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_docg3_io(i32 noundef %op, i32 noundef %width, i16 noundef zeroext %reg, i32 noundef %val) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_docg3_io, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_docg3_io, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !317

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !304) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !314

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !304) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !326
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_docg3_io, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %op, i32 noundef %width, i16 noundef zeroext %reg, i32 noundef %val) #13
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !327
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !327
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !304) #13
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !304) #13
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !314

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !304) #13
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !328
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_docg3_io, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_docg3_io.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_docg3_io.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 335, ptr noundef nonnull @.str.29) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !329
  %38 = tail call i32 @llvm.read_register.i32(metadata !304) #13
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @doc_erase(ptr nocapture noundef readonly %mtd, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_erase.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_erase, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !317

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %info, align 8
  %len3 = getelementptr inbounds %struct.erase_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %len3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %len3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_erase.__UNIQUE_ID_ddebug290, ptr noundef %3, ptr noundef nonnull @.str.35, i64 noundef %5, i64 noundef %7) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %info, align 8
  %len5 = getelementptr inbounds %struct.erase_info, ptr %info, i32 0, i32 1
  %10 = ptrtoint ptr %len5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %len5, align 8
  %add = add i64 %11, %9
  %reliable = getelementptr inbounds %struct.docg3, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %reliable to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %reliable, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 3
  %bf.cast = zext i8 %bf.clear to i32
  %13 = add nsw i32 %bf.cast, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %14 = icmp ult i32 %13, 2
  %div2.i = sdiv i64 %add, 512
  %conv.i = trunc i64 %div2.i to i32
  %15 = select i1 %14, i32 62, i32 126
  %rem.i = and i32 %15, %conv.i
  %rem13.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem13.i)
  %tobool.not.i = icmp ne i32 %rem13.i, 0
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %17)
  %cmp = icmp ugt i64 %add, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool9.not = icmp ne i32 %rem.i, 0
  %or.cond71 = select i1 %cmp, i1 true, i1 %tobool9.not
  %brmerge = select i1 %or.cond71, i1 true, i1 %tobool.not.i
  br i1 %brmerge, label %do.end.cleanup_crit_edge, label %if.end13

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %cascade = getelementptr inbounds %struct.docg3, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cascade, align 4
  %lock = getelementptr inbounds %struct.docg3_cascade, ptr %19, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %20 = ptrtoint ptr %reliable to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load20 = load i8, ptr %reliable, align 8
  %bf.lshr21 = lshr i8 %bf.load20, 4
  %bf.cast22 = zext i8 %bf.lshr21 to i32
  tail call fastcc void @doc_set_device_id(ptr noundef %1, i32 noundef %bf.cast22)
  tail call fastcc void @doc_set_reliable_mode(ptr noundef %1)
  %21 = ptrtoint ptr %len5 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %len5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %cmp25.not72 = icmp eq i64 %22, 0
  br i1 %cmp25.not72, label %if.end13.for.end_crit_edge, label %for.body.lr.ph

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %div2.i56 = sdiv i64 %9, 512
  %conv.i57 = trunc i64 %div2.i56 to i32
  %23 = select i1 %14, i32 6, i32 7
  %div329.i58 = lshr i32 %conv.i57, %23
  %mul.i59 = shl nuw nsw i32 %div329.i58, 1
  %add.i60 = or i32 %mul.i59, 1
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %len.075 = phi i64 [ %22, %for.body.lr.ph ], [ %sub, %for.body.for.body_crit_edge ]
  %block1.074 = phi i32 [ %add.i60, %for.body.lr.ph ], [ %add28, %for.body.for.body_crit_edge ]
  %block0.073 = phi i32 [ %mul.i59, %for.body.lr.ph ], [ %add27, %for.body.for.body_crit_edge ]
  %call26 = tail call fastcc i32 @doc_erase_block(ptr noundef %1, i32 noundef %block0.073, i32 noundef %block1.074)
  %add27 = add i32 %block0.073, 2
  %add28 = add i32 %block1.074, 2
  %24 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %erasesize, align 8
  %conv = zext i32 %25 to i64
  %sub = sub i64 %len.075, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool24.not = icmp ne i32 %call26, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp25.not = icmp eq i64 %sub, 0
  %or.cond = select i1 %tobool24.not, i1 true, i1 %cmp25.not
  br i1 %or.cond, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end13.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %if.end13.for.end_crit_edge ], [ %call26, %for.body.for.end_crit_edge ]
  %26 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cascade, align 4
  %lock30 = getelementptr inbounds %struct.docg3_cascade, ptr %27, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock30) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.lcssa, %for.end ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @doc_read_oob(ptr nocapture noundef %mtd, i64 noundef %from, ptr nocapture noundef %ops) #0 align 64 {
entry:
  %hwecc = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %oobbuf1 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %2 = ptrtoint ptr %oobbuf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oobbuf1, align 4
  %datbuf = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %4 = ptrtoint ptr %datbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %datbuf, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %hwecc) #13
  %tobool.not = icmp eq ptr %5, null
  %6 = call ptr @memset(ptr %hwecc, i32 255, i32 7)
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %len2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %7 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.0 = phi i32 [ %8, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.do.body_crit_edge, label %land.lhs.true

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %ooblen5 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %9 = ptrtoint ptr %ooblen5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ooblen5, align 4
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then9, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %ooboffs = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %13 = ptrtoint ptr %ooboffs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ooboffs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %14
  br label %do.body

do.body:                                          ; preds = %if.then9, %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  %ooblen.0389 = phi i32 [ %10, %if.then9 ], [ %10, %land.lhs.true.do.body_crit_edge ], [ 0, %if.end.do.body_crit_edge ]
  %oobbuf.0 = phi ptr [ %add.ptr, %if.then9 ], [ %3, %land.lhs.true.do.body_crit_edge ], [ null, %if.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_read_oob.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_read_oob, %if.then14)) #13
          to label %do.end [label %if.then14], !srcloc !317

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ops, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_read_oob.__UNIQUE_ID_ddebug273, ptr noundef %16, ptr noundef nonnull @.str.56, i64 noundef %from, i32 noundef %18, ptr noundef %5, i32 noundef %len.0, ptr noundef %oobbuf.0, i32 noundef %ooblen.0389) #13
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %rem = and i32 %ooblen.0389, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool17.not = icmp eq i32 %rem, 0
  br i1 %tobool17.not, label %if.end19, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %do.end
  %oobretlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %19 = ptrtoint ptr %oobretlen to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %oobretlen, align 4
  %retlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %20 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %retlen, align 4
  %cascade = getelementptr inbounds %struct.docg3, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cascade, align 4
  %lock = getelementptr inbounds %struct.docg3_cascade, ptr %22, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %reliable = getelementptr inbounds %struct.docg3, ptr %1, i32 0, i32 2
  %ecc_stats216 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52
  %failed = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %cmp23.not409 = icmp eq i32 %len.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ooblen.0389)
  %cmp25.not410 = icmp eq i32 %ooblen.0389, 0
  %or.cond411 = select i1 %cmp23.not409, i1 %cmp25.not410, i1 false
  br i1 %or.cond411, label %if.end19.out_crit_edge, label %while.body.lr.ph

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

while.body.lr.ph:                                 ; preds = %if.end19
  %rem20 = srem i64 %from, 512
  %conv = trunc i64 %rem20 to i32
  br label %while.body

land.rhs:                                         ; preds = %if.end226
  %sub234 = sub i32 %ooblen.1402422, %30
  %sub233 = sub i32 %len.1403421, %29
  %add.ptr231 = getelementptr i8, ptr %buf.0404419, i32 %29
  %add.ptr232 = getelementptr i8, ptr %oobbuf.1405414, i32 %30
  %add235 = add i64 %from.addr.0408412, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub233)
  %cmp23.not = icmp eq i32 %sub233, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub234)
  %cmp25.not = icmp eq i32 %sub234, 0
  %or.cond = select i1 %cmp23.not, i1 %cmp25.not, i1 false
  br i1 %or.cond, label %land.rhs.out_crit_edge, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %while.body.lr.ph
  %max_bitflips.0401423 = phi i32 [ 0, %while.body.lr.ph ], [ %max_bitflips.1, %land.rhs.while.body_crit_edge ]
  %ooblen.1402422 = phi i32 [ %ooblen.0389, %while.body.lr.ph ], [ %sub234, %land.rhs.while.body_crit_edge ]
  %len.1403421 = phi i32 [ %len.0, %while.body.lr.ph ], [ %sub233, %land.rhs.while.body_crit_edge ]
  %buf.0404419 = phi ptr [ %5, %while.body.lr.ph ], [ %add.ptr231, %land.rhs.while.body_crit_edge ]
  %oobbuf.1405414 = phi ptr [ %oobbuf.0, %while.body.lr.ph ], [ %add.ptr232, %land.rhs.while.body_crit_edge ]
  %skip.0406413 = phi i32 [ %conv, %while.body.lr.ph ], [ 0, %land.rhs.while.body_crit_edge ]
  %from.addr.0408412 = phi i64 [ %from, %while.body.lr.ph ], [ %add235, %land.rhs.while.body_crit_edge ]
  %conv27 = sext i32 %skip.0406413 to i64
  %sub = sub i64 %from.addr.0408412, %conv27
  %23 = ptrtoint ptr %reliable to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %reliable, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 3
  %bf.cast = zext i8 %bf.clear to i32
  %24 = add nsw i32 %bf.cast, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %25 = icmp ult i32 %24, 2
  %div2.i = sdiv i64 %sub, 512
  %conv.i = trunc i64 %div2.i to i32
  %26 = select i1 %25, i32 6, i32 7
  %div329.i = lshr i32 %conv.i, %26
  %mul.i = shl nuw nsw i32 %div329.i, 1
  %add.i = or i32 %mul.i, 1
  %27 = select i1 %25, i32 62, i32 126
  %rem.i = and i32 %27, %conv.i
  %28 = add nsw i32 %bf.cast, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %28)
  %switch.i = icmp ult i32 %28, -2
  %div427.i = zext i1 %switch.i to i32
  %spec.select.i = lshr exact i32 %rem.i, %div427.i
  %rem13.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem13.i)
  %tobool.not.i = icmp eq i32 %rem13.i, 0
  %..i = select i1 %tobool.not.i, i32 0, i32 528
  %sub28 = sub nsw i32 512, %skip.0406413
  %29 = call i32 @llvm.umin.i32(i32 %len.1403421, i32 %sub28)
  %30 = call i32 @llvm.umin.i32(i32 %ooblen.1402422, i32 16)
  %call39 = call fastcc i32 @doc_read_page_prepare(ptr noundef %1, i32 noundef %mul.i, i32 noundef %add.i, i32 noundef %spec.select.i, i32 noundef %..i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %while.body.out_crit_edge, label %if.end43

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end43:                                         ; preds = %while.body
  %call44 = call fastcc i32 @doc_read_page_ecc_init(ptr noundef %1, i32 noundef 527)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end43.err_in_read_crit_edge, label %if.end53

if.end43.err_in_read_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_in_read

if.end53:                                         ; preds = %if.end43
  call fastcc void @doc_read_data_area(ptr noundef %1, ptr noundef null, i32 noundef %skip.0406413, i32 noundef 1) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %31 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cascade, align 4
  %base.i.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %34, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %35 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cascade, align 4
  %base.i.i.1.i = getelementptr inbounds %struct.docg3_cascade, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %base.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i.1.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %38, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.1.i, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  %rem54.lhs.trunc = trunc i32 %skip.0406413 to i16
  %rem54400 = srem i16 %rem54.lhs.trunc, 2
  %rem54.sext = sext i16 %rem54400 to i32
  %call55 = call fastcc i32 @doc_read_page_getbytes(ptr noundef %1, i32 noundef %29, ptr noundef %buf.0404419, i32 noundef 0, i32 noundef %rem54.sext)
  %39 = add nsw i32 %29, %skip.0406413
  %sub61 = sub nsw i32 512, %39
  %rem62 = and i32 %39, 1
  %call63 = call fastcc i32 @doc_read_page_getbytes(ptr noundef %1, i32 noundef %sub61, ptr noundef null, i32 noundef 0, i32 noundef %rem62)
  call fastcc void @doc_read_data_area(ptr noundef %1, ptr noundef %oobbuf.1405414, i32 noundef %30, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %40 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cascade, align 4
  %base.i.i.i373 = getelementptr inbounds %struct.docg3_cascade, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %base.i.i.i373 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i.i373, align 4
  %add.ptr.i.i.i374 = getelementptr i8, ptr %43, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i374, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %44 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cascade, align 4
  %base.i.i.1.i375 = getelementptr inbounds %struct.docg3_cascade, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %base.i.i.1.i375 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i.1.i375, align 4
  %add.ptr.i.i.1.i376 = getelementptr i8, ptr %47, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.1.i376, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  %sub69 = sub nuw nsw i32 16, %30
  %rem70 = and i32 %30, 1
  %call71 = call fastcc i32 @doc_read_page_getbytes(ptr noundef %1, i32 noundef %sub69, ptr noundef null, i32 noundef 0, i32 noundef %rem70)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end53
  %i.04.i = phi i32 [ 0, %if.end53 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.i378 = add nuw nsw i32 %i.04.i, 4168
  %conv.i.i = trunc i32 %add.i378 to i16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  call void @arm_heavy_mb() #13
  %48 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #13
  %49 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cascade, align 4
  %base.i.i.i379 = getelementptr inbounds %struct.docg3_cascade, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %base.i.i.i379 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i.i379, align 4
  %add.ptr.i.i.i380 = getelementptr i8, ptr %52, i32 4122
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i380, i16 %48) #13, !srcloc !321
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef %add.i378) #13
  %53 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cascade, align 4
  %base.i6.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %base.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i6.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %56, i32 %add.i378
  %57 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i.i) #13, !srcloc !322
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i.i = zext i8 %57 to i32
  call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext %conv.i.i, i32 noundef %conv2.i.i.i) #13
  %arrayidx.i = getelementptr i8, ptr %hwecc, i32 %i.04.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.not.i, label %doc_get_bch_hw_ecc.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

doc_get_bch_hw_ecc.exit:                          ; preds = %for.body.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  call void @arm_heavy_mb() #13
  %59 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cascade, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 4122
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 16912) #13, !srcloc !321
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4162) #13
  %63 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cascade, align 4
  %base.i6.i = getelementptr inbounds %struct.docg3_cascade, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %66, i32 4162
  %67 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i) #13, !srcloc !322
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i = zext i8 %67 to i32
  call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4162, i32 noundef %conv2.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %30)
  %cmp74 = icmp ugt i32 %30, 15
  br i1 %cmp74, label %do.body77, label %doc_get_bch_hw_ecc.exit.do.body150_crit_edge

doc_get_bch_hw_ecc.exit.do.body150_crit_edge:     ; preds = %doc_get_bch_hw_ecc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body150

do.body77:                                        ; preds = %doc_get_bch_hw_ecc.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_read_oob.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_read_oob, %if.then89)) #13
          to label %do.body94 [label %if.then89], !srcloc !317

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #15
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_read_oob.__UNIQUE_ID_ddebug278, ptr noundef %69, ptr noundef nonnull @.str.57, i32 noundef 7, ptr noundef %oobbuf.1405414) #13
  br label %do.body94

do.body94:                                        ; preds = %if.then89, %do.body77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_read_oob.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_read_oob, %if.then106)) #13
          to label %do.body112 [label %if.then106], !srcloc !317

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr i8, ptr %oobbuf.1405414, i32 7
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx, align 1
  %conv108 = zext i8 %73 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_read_oob.__UNIQUE_ID_ddebug279, ptr noundef %71, ptr noundef nonnull @.str.58, i32 noundef %conv108) #13
  br label %do.body112

do.body112:                                       ; preds = %if.then106, %do.body94
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_read_oob.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_read_oob, %if.then124)) #13
          to label %do.body130 [label %if.then124], !srcloc !317

if.then124:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 8
  %add.ptr126 = getelementptr i8, ptr %oobbuf.1405414, i32 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_read_oob.__UNIQUE_ID_ddebug280, ptr noundef %75, ptr noundef nonnull @.str.59, i32 noundef 7, ptr noundef %add.ptr126) #13
  br label %do.body130

do.body130:                                       ; preds = %if.then124, %do.body112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_read_oob.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_read_oob, %if.then142)) #13
          to label %do.body150 [label %if.then142], !srcloc !317

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 8
  %arrayidx144 = getelementptr i8, ptr %oobbuf.1405414, i32 15
  %78 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %79 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_read_oob.__UNIQUE_ID_ddebug281, ptr noundef %77, ptr noundef nonnull @.str.60, i32 noundef %conv145) #13
  br label %do.body150

do.body150:                                       ; preds = %if.then142, %do.body130, %doc_get_bch_hw_ecc.exit.do.body150_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_read_oob.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_read_oob, %if.then162)) #13
          to label %do.body168 [label %if.then162], !srcloc !317

if.then162:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #15
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_read_oob.__UNIQUE_ID_ddebug282, ptr noundef %81, ptr noundef nonnull @.str.61, i32 noundef %conv2.i.i) #13
  br label %do.body168

do.body168:                                       ; preds = %if.then162, %do.body150
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_read_oob.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_read_oob, %if.then180)) #13
          to label %do.end185 [label %if.then180], !srcloc !317

if.then180:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_read_oob.__UNIQUE_ID_ddebug283, ptr noundef %83, ptr noundef nonnull @.str.62, i32 noundef 7, ptr noundef nonnull %hwecc) #13
  br label %do.end185

do.end185:                                        ; preds = %if.then180, %do.body168
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  call void @arm_heavy_mb() #13
  %84 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cascade, align 4
  %base.i.i.i382 = getelementptr inbounds %struct.docg3_cascade, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %base.i.i.i382 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i.i.i382, align 4
  %add.ptr.i.i.i383 = getelementptr i8, ptr %87, i32 4122
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i383, i16 14352) #13, !srcloc !321
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4152) #13
  %88 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cascade, align 4
  %base.i6.i.i384 = getelementptr inbounds %struct.docg3_cascade, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %base.i6.i.i384 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i6.i.i384, align 4
  %add.ptr.i7.i.i385 = getelementptr i8, ptr %91, i32 4152
  %92 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i.i385) #13, !srcloc !322
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i.i386 = zext i8 %92 to i32
  call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4152, i32 noundef %conv2.i.i.i386) #13
  %and.i = and i32 %conv2.i.i.i386, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool187.not = icmp eq i32 %and.i, 0
  br i1 %tobool187.not, label %if.end189, label %do.end185.err_in_read_crit_edge

do.end185.err_in_read_crit_edge:                  ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_in_read

if.end189:                                        ; preds = %do.end185
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div329.i)
  %cmp190 = icmp ult i32 %div329.i, 3
  %93 = and i32 %conv2.i.i, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %93)
  %94 = icmp ne i32 %93, 160
  %95 = or i1 %cmp190, %94
  br i1 %95, label %if.end189.if.end226_crit_edge, label %land.lhs.true199

if.end189.if.end226_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end226

land.lhs.true199:                                 ; preds = %if.end189
  %96 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp201.not = icmp ne i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %29)
  %cmp204 = icmp eq i32 %29, 512
  %or.cond352 = select i1 %cmp201.not, i1 %cmp204, i1 false
  br i1 %or.cond352, label %if.then206, label %land.lhs.true199.if.end226_crit_edge

land.lhs.true199.if.end226_crit_edge:             ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end226

if.then206:                                       ; preds = %land.lhs.true199
  %call208 = call fastcc i32 @doc_ecc_bch_fix_data(ptr noundef %1, ptr noundef %buf.0404419, ptr noundef nonnull %hwecc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %cmp209 = icmp slt i32 %call208, 0
  br i1 %cmp209, label %if.end212.thread, label %if.end212

if.end212.thread:                                 ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #15
  %98 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %failed, align 4
  %inc = add i32 %99, 1
  store i32 %inc, ptr %failed, align 4
  br label %if.end226

if.end212:                                        ; preds = %if.then206
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %cmp213.not = icmp eq i32 %call208, 0
  br i1 %cmp213.not, label %if.end212.if.end226_crit_edge, label %if.then215

if.end212.if.end226_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end226

if.then215:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #15
  %100 = ptrtoint ptr %ecc_stats216 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ecc_stats216, align 4
  %add217 = add i32 %101, %call208
  store i32 %add217, ptr %ecc_stats216, align 4
  %102 = call i32 @llvm.smax.i32(i32 %max_bitflips.0401423, i32 %call208)
  br label %if.end226

if.end226:                                        ; preds = %if.then215, %if.end212.if.end226_crit_edge, %if.end212.thread, %land.lhs.true199.if.end226_crit_edge, %if.end189.if.end226_crit_edge
  %max_bitflips.1 = phi i32 [ %102, %if.then215 ], [ %max_bitflips.0401423, %if.end212.if.end226_crit_edge ], [ %max_bitflips.0401423, %land.lhs.true199.if.end226_crit_edge ], [ %max_bitflips.0401423, %if.end189.if.end226_crit_edge ], [ %max_bitflips.0401423, %if.end212.thread ]
  %ret.2 = phi i32 [ %102, %if.then215 ], [ 0, %if.end212.if.end226_crit_edge ], [ 0, %land.lhs.true199.if.end226_crit_edge ], [ 0, %if.end189.if.end226_crit_edge ], [ -74, %if.end212.thread ]
  call fastcc void @doc_read_page_finish(ptr noundef %1)
  %103 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %retlen, align 4
  %add228 = add i32 %104, %29
  store i32 %add228, ptr %retlen, align 4
  %105 = ptrtoint ptr %oobretlen to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %oobretlen, align 4
  %add230 = add i32 %106, %30
  store i32 %add230, ptr %oobretlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.2)
  %cmp21 = icmp sgt i32 %ret.2, -1
  br i1 %cmp21, label %land.rhs, label %if.end226.out_crit_edge

if.end226.out_crit_edge:                          ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %err_in_read, %if.end226.out_crit_edge, %while.body.out_crit_edge, %land.rhs.out_crit_edge, %if.end19.out_crit_edge
  %ret.3 = phi i32 [ %ret.4, %err_in_read ], [ 0, %if.end19.out_crit_edge ], [ %ret.2, %land.rhs.out_crit_edge ], [ %ret.2, %if.end226.out_crit_edge ], [ %call39, %while.body.out_crit_edge ]
  %107 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cascade, align 4
  %lock237 = getelementptr inbounds %struct.docg3_cascade, ptr %108, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %lock237) #13
  br label %cleanup

err_in_read:                                      ; preds = %do.end185.err_in_read_crit_edge, %if.end43.err_in_read_crit_edge
  %ret.4 = phi i32 [ %call44, %if.end43.err_in_read_crit_edge ], [ -5, %do.end185.err_in_read_crit_edge ]
  call fastcc void @doc_read_page_finish(ptr noundef %1)
  br label %out

cleanup:                                          ; preds = %out, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %out ], [ -22, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %hwecc) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @doc_write_oob(ptr nocapture noundef readonly %mtd, i64 noundef %ofs, ptr nocapture noundef %ops) #0 align 64 {
entry:
  %oob = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %oobbuf1 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %2 = ptrtoint ptr %oobbuf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oobbuf1, align 4
  %datbuf = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %4 = ptrtoint ptr %datbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %datbuf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oob) #13
  %6 = getelementptr inbounds [16 x i8], ptr %oob, i32 0, i32 15
  %tobool.not = icmp eq ptr %5, null
  %7 = call ptr @memset(ptr %oob, i32 255, i32 16)
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %len2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %8 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.do.body_crit_edge, label %land.lhs.true

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %ooblen5 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %10 = ptrtoint ptr %ooblen5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ooblen5, align 4
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then9, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %ooboffs = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %14 = ptrtoint ptr %ooboffs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ooboffs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %15
  br label %do.body

do.body:                                          ; preds = %if.then9, %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  %ooblen.0159 = phi i32 [ %11, %if.then9 ], [ %11, %land.lhs.true.do.body_crit_edge ], [ 0, %if.end.do.body_crit_edge ]
  %oobbuf.0 = phi ptr [ %add.ptr, %if.then9 ], [ %3, %land.lhs.true.do.body_crit_edge ], [ null, %if.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_write_oob.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_write_oob, %if.then14)) #13
          to label %do.end [label %if.then14], !srcloc !317

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ops, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_write_oob.__UNIQUE_ID_ddebug292, ptr noundef %17, ptr noundef nonnull @.str.72, i64 noundef %ofs, i32 noundef %19, ptr noundef %5, i32 noundef %len.0, ptr noundef %oobbuf.0, i32 noundef %ooblen.0159) #13
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ops, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %do.end.cleanup_crit_edge [
    i32 0, label %do.end.sw.bb_crit_edge
    i32 2, label %do.end.sw.bb_crit_edge178
    i32 1, label %sw.bb18
  ]

do.end.sw.bb_crit_edge178:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge178
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  br label %sw.epilog

sw.bb18:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %oobavail = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb
  %oobdelta.0.in = phi ptr [ %oobavail, %sw.bb18 ], [ %oobsize, %sw.bb ]
  %23 = ptrtoint ptr %oobdelta.0.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %oobdelta.0 = load i32, ptr %oobdelta.0.in, align 4
  %rem = and i32 %len.0, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool19.not = icmp eq i32 %rem, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.epilog
  %ooblen.0159.frozen = freeze i32 %ooblen.0159
  %oobdelta.0.frozen = freeze i32 %oobdelta.0
  %div31 = udiv i32 %ooblen.0159.frozen, %oobdelta.0.frozen
  %24 = mul i32 %div31, %oobdelta.0.frozen
  %rem20.decomposed = sub i32 %ooblen.0159.frozen, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem20.decomposed)
  %tobool21.not = icmp eq i32 %rem20.decomposed, 0
  %25 = and i64 %ofs, 511
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool24.not = icmp eq i64 %25, 0
  %or.cond = and i1 %tobool24.not, %tobool21.not
  br i1 %or.cond, label %if.end26, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %tobool27.not = icmp eq i32 %len.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ooblen.0159)
  %tobool29.not = icmp eq i32 %ooblen.0159, 0
  %or.cond153 = select i1 %tobool27.not, i1 true, i1 %tobool29.not
  %div152 = lshr i32 %len.0, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %div152, i32 %div31)
  %cmp32.not = icmp eq i32 %div152, %div31
  %or.cond177 = or i1 %or.cond153, %cmp32.not
  br i1 %or.cond177, label %if.end34, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %oobretlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %26 = ptrtoint ptr %oobretlen to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %oobretlen, align 4
  %retlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %27 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %retlen, align 4
  %or.cond154 = select i1 %tobool27.not, i1 %tobool29.not, i1 false
  br i1 %or.cond154, label %if.end34.cleanup_crit_edge, label %if.end39

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %cmp35.not = xor i1 %tobool27.not, true
  %or.cond155 = select i1 %cmp35.not, i1 true, i1 %tobool29.not
  br i1 %or.cond155, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end39
  %ooblen1.i = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %28 = ptrtoint ptr %ooblen1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ooblen1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %29)
  %cmp.not.i = icmp eq i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %30 = icmp ult i32 %21, 3
  %or.cond173 = select i1 %cmp.not.i, i1 %30, i1 false
  br i1 %or.cond173, label %switch.lookup, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.lookup:                                    ; preds = %if.then43
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.doc_write_oob, i32 0, i32 %21
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load i32, ptr %switch.gep, align 4
  %oob_write_ofs.i = getelementptr inbounds %struct.docg3, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %oob_write_ofs.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %ofs, ptr %oob_write_ofs.i, align 8
  %oob_autoecc.i = getelementptr inbounds %struct.docg3, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %oob_autoecc.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %switch.load, ptr %oob_autoecc.i, align 8
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp5.i = icmp eq i32 %35, 1
  %oob_write_buf.i = getelementptr inbounds %struct.docg3, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %oobbuf1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %oobbuf1, align 4
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  %38 = call ptr @memcpy(ptr %oob_write_buf.i, ptr %37, i32 7)
  %arrayidx.i.i = getelementptr i8, ptr %37, i32 7
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx1.i.i = getelementptr %struct.docg3, ptr %1, i32 0, i32 7, i32 15
  %41 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx1.i.i, align 1
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  %42 = call ptr @memcpy(ptr %oob_write_buf.i, ptr %37, i32 16)
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.then6.i
  %.sink.i = phi i32 [ 8, %if.then6.i ], [ 16, %if.else.i ]
  %43 = ptrtoint ptr %oobretlen to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink.i, ptr %oobretlen, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %44 = icmp ult i32 %21, 3
  br i1 %44, label %switch.lookup174, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.lookup174:                                 ; preds = %if.end45
  %switch.gep175 = getelementptr inbounds [3 x i32], ptr @switch.table.doc_write_oob.134, i32 0, i32 %21
  %45 = ptrtoint ptr %switch.gep175 to i32
  call void @__asan_load4_noabort(i32 %45)
  %switch.load176 = load i32, ptr %switch.gep175, align 4
  %cascade = getelementptr inbounds %struct.docg3, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cascade, align 4
  %lock = getelementptr inbounds %struct.docg3_cascade, ptr %47, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  br i1 %tobool27.not, label %switch.lookup174.while.end_crit_edge, label %while.body.lr.ph

switch.lookup174.while.end_crit_edge:             ; preds = %switch.lookup174
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %switch.lookup174
  %oob_write_ofs = getelementptr inbounds %struct.docg3, ptr %1, i32 0, i32 5
  %oob_write_buf = getelementptr inbounds %struct.docg3, ptr %1, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end79.while.body_crit_edge, %while.body.lr.ph
  %ofs.addr.0172 = phi i64 [ %ofs, %while.body.lr.ph ], [ %add, %if.end79.while.body_crit_edge ]
  %ooblen.1170 = phi i32 [ %ooblen.0159, %while.body.lr.ph ], [ %ooblen.2, %if.end79.while.body_crit_edge ]
  %len.1169 = phi i32 [ %len.0, %while.body.lr.ph ], [ %sub, %if.end79.while.body_crit_edge ]
  %buf.0168 = phi ptr [ %5, %while.body.lr.ph ], [ %add.ptr72, %if.end79.while.body_crit_edge ]
  %oobbuf.1166 = phi ptr [ %oobbuf.0, %while.body.lr.ph ], [ %oobbuf.2, %if.end79.while.body_crit_edge ]
  %48 = call ptr @memset(ptr %oob, i32 0, i32 16)
  %49 = ptrtoint ptr %oob_write_ofs to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %oob_write_ofs, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %ofs.addr.0172, i64 %50)
  %cmp52 = icmp eq i64 %ofs.addr.0172, %50
  br i1 %cmp52, label %if.then53, label %if.else56

if.then53:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %51 = call ptr @memcpy(ptr %oob, ptr %oob_write_buf, i32 16)
  br label %if.end69

if.else56:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ooblen.1170)
  %cmp57.not = icmp eq i32 %ooblen.1170, 0
  br i1 %cmp57.not, label %if.else56.if.end69_crit_edge, label %land.lhs.true58

if.else56.if.end69_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

land.lhs.true58:                                  ; preds = %if.else56
  %52 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp60 = icmp eq i32 %53, 1
  br i1 %cmp60, label %if.then61, label %if.then65.critedge

if.then61:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  %54 = call ptr @memcpy(ptr %oob, ptr %oobbuf.1166, i32 7)
  %arrayidx.i = getelementptr i8, ptr %oobbuf.1166, i32 7
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i, align 1
  %57 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %6, align 1
  br label %if.end69

if.then65.critedge:                               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  %58 = call ptr @memcpy(ptr %oob, ptr %oobbuf.1166, i32 16)
  br label %if.end69

if.end69:                                         ; preds = %if.then65.critedge, %if.then61, %if.else56.if.end69_crit_edge, %if.then53
  %call71 = call fastcc i32 @doc_write_page(ptr noundef %1, i64 noundef %ofs.addr.0172, ptr noundef %buf.0168, ptr noundef nonnull %oob, i32 noundef %switch.load176)
  %add = add i64 %ofs.addr.0172, 512
  %sub = add i32 %len.1169, -512
  %add.ptr72 = getelementptr i8, ptr %buf.0168, i32 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ooblen.1170)
  %tobool73.not = icmp eq i32 %ooblen.1170, 0
  br i1 %tobool73.not, label %if.end69.if.end79_crit_edge, label %if.then74

if.end69.if.end79_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then74:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr75 = getelementptr i8, ptr %oobbuf.1166, i32 %oobdelta.0
  %sub76 = sub i32 %ooblen.1170, %oobdelta.0
  %59 = ptrtoint ptr %oobretlen to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %oobretlen, align 4
  %add78 = add i32 %60, %oobdelta.0
  store i32 %add78, ptr %oobretlen, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %if.end69.if.end79_crit_edge
  %oobbuf.2 = phi ptr [ %add.ptr75, %if.then74 ], [ %oobbuf.1166, %if.end69.if.end79_crit_edge ]
  %ooblen.2 = phi i32 [ %sub76, %if.then74 ], [ 0, %if.end69.if.end79_crit_edge ]
  %61 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %retlen, align 4
  %add81 = add i32 %62, 512
  store i32 %add81, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool50.not = icmp ne i32 %call71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp51.not = icmp eq i32 %sub, 0
  %or.cond156 = select i1 %tobool50.not, i1 true, i1 %cmp51.not
  br i1 %or.cond156, label %if.end79.while.end_crit_edge, label %if.end79.while.body_crit_edge

if.end79.while.body_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end79.while.end_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end79.while.end_crit_edge, %switch.lookup174.while.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %switch.lookup174.while.end_crit_edge ], [ %call71, %if.end79.while.end_crit_edge ]
  call fastcc void @doc_set_device_id(ptr noundef %1, i32 noundef 0)
  %63 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cascade, align 4
  %lock83 = getelementptr inbounds %struct.docg3_cascade, ptr %64, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %lock83) #13
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end45.cleanup_crit_edge, %cleanup.sink.split.i, %if.then43.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.lcssa, %while.end ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %if.end34.cleanup_crit_edge ], [ -22, %if.then43.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ], [ -22, %if.end45.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oob) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @doc_block_isbad(ptr nocapture noundef readonly %mtd, i64 noundef %from) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %reliable = getelementptr inbounds %struct.docg3, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reliable to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %reliable, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 3
  %bf.cast = zext i8 %bf.clear to i32
  %3 = add nsw i32 %bf.cast, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %4 = icmp ult i32 %3, 2
  %div2.i = sdiv i64 %from, 512
  %conv.i = trunc i64 %div2.i to i32
  %5 = select i1 %4, i32 6, i32 7
  %div329.i = lshr i32 %conv.i, %5
  %mul.i = shl nuw nsw i32 %div329.i, 1
  %add.i = or i32 %mul.i, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_block_isbad.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_block_isbad, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !317

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rem13.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem13.i)
  %tobool.not.i = icmp eq i32 %rem13.i, 0
  %..i = select i1 %tobool.not.i, i32 0, i32 528
  %6 = select i1 %4, i32 62, i32 126
  %rem.i = and i32 %6, %conv.i
  %7 = add nsw i32 %bf.cast, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %7)
  %switch.i = icmp ult i32 %7, -2
  %div427.i = zext i1 %switch.i to i32
  %spec.select.i = lshr exact i32 %rem.i, %div427.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_block_isbad.__UNIQUE_ID_ddebug286, ptr noundef %9, ptr noundef nonnull @.str.80, i64 noundef %from, i32 noundef %mul.i, i32 noundef %add.i, i32 noundef %spec.select.i, i32 noundef %..i) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div329.i)
  %cmp = icmp ult i32 %div329.i, 3
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %max_block = getelementptr inbounds %struct.docg3, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %max_block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %11)
  %cmp5 = icmp sgt i32 %add.i, %11
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %bbt = getelementptr inbounds %struct.docg3, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %bbt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bbt, align 8
  %shr24 = lshr i32 %div329.i, 2
  %arrayidx = getelementptr i8, ptr %13, i32 %shr24
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i32
  %and = and i32 %mul.i, 6
  %16 = xor i32 %conv, -1
  %17 = lshr i32 %16, %and
  %18 = and i32 %17, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.end7 ], [ 0, %do.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @doc_set_reliable_mode(ptr nocapture noundef readonly %docg3) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_set_reliable_mode.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_set_reliable_mode, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !317

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %docg3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %docg3, align 8
  %reliable = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 2
  %2 = ptrtoint ptr %reliable to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %reliable, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 3
  %bf.cast = zext i8 %bf.clear to i32
  %arrayidx = getelementptr [4 x ptr], ptr @doc_set_reliable_mode.strmode, i32 0, i32 %bf.cast
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_set_reliable_mode.__UNIQUE_ID_ddebug265, ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef %4) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reliable3 = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 2
  %5 = ptrtoint ptr %reliable3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load4 = load i8, ptr %reliable3, align 8
  %bf.lshr5 = lshr i8 %bf.load4, 1
  %bf.clear6 = and i8 %bf.lshr5, 3
  %bf.cast7 = zext i8 %bf.clear6 to i32
  %6 = zext i32 %bf.cast7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %bf.cast7, label %do.end10 [
    i32 0, label %do.end.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %cascade.i.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %7 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 5) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4146, i32 noundef 5) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %11 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i22 = getelementptr inbounds %struct.docg3_cascade, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %base.i.i22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i22, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %14, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i23, i8 -94) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 162) #13
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %cascade.i.i24 = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %15 = ptrtoint ptr %cascade.i.i24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cascade.i.i24, align 4
  %base.i.i25 = getelementptr inbounds %struct.docg3_cascade, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %base.i.i25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i25, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %18, i32 4146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i26, i8 9) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4146, i32 noundef 9) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %19 = ptrtoint ptr %cascade.i.i24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cascade.i.i24, align 4
  %base.i.i28 = getelementptr inbounds %struct.docg3_cascade, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %base.i.i28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i28, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %22, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i29, i8 -94) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 162) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %cascade.i.i24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cascade.i.i24, align 4
  %base.i.i31 = getelementptr inbounds %struct.docg3_cascade, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %base.i.i31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i31, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %26, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i32, i8 34) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 34) #13
  br label %sw.epilog

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %docg3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %docg3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.42) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end10, %sw.bb8, %sw.bb, %do.end.sw.epilog_crit_edge
  %cascade.i.i33 = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %cascade.i.i33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cascade.i.i33, align 4
  %base.i.i34 = getelementptr inbounds %struct.docg3_cascade, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %base.i.i34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i34, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %32, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i35, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %33 = ptrtoint ptr %cascade.i.i33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cascade.i.i33, align 4
  %base.i.i34.1 = getelementptr inbounds %struct.docg3_cascade, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %base.i.i34.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i34.1, align 4
  %add.ptr.i.i35.1 = getelementptr i8, ptr %36, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i35.1, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @doc_erase_block(ptr nocapture noundef readonly %docg3, i32 noundef %block0, i32 noundef %block1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_erase_block.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_erase_block, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !317

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %docg3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %docg3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_erase_block.__UNIQUE_ID_ddebug289, ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %block0, i32 noundef %block1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @doc_reset_seq(ptr noundef %docg3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %do.end
  tail call fastcc void @doc_set_reliable_mode(ptr noundef %docg3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %cascade.i.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %2 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 39) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4146, i32 noundef 39) #13
  %shl = shl i32 %block0, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i37 = getelementptr inbounds %struct.docg3_cascade, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %base.i.i37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i37, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %9, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i38, i8 96) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 96) #13
  tail call fastcc void @doc_setup_addr_sector(ptr noundef %docg3, i32 noundef %shl)
  %shl7 = shl i32 %block1, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i40 = getelementptr inbounds %struct.docg3_cascade, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i40 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i40, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %13, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i41, i8 96) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 96) #13
  tail call fastcc void @doc_setup_addr_sector(ptr noundef %docg3, i32 noundef %shl7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i43 = getelementptr inbounds %struct.docg3_cascade, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %base.i.i43 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i43, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %17, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i44, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i46 = getelementptr inbounds %struct.docg3_cascade, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %base.i.i46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i46, align 4
  %add.ptr.i.i47 = getelementptr i8, ptr %21, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i47, i8 -48) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 208) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %22 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i50 = getelementptr inbounds %struct.docg3_cascade, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %base.i.i50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i50, align 4
  %add.ptr.i.i51 = getelementptr i8, ptr %25, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i51, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i50.1 = getelementptr inbounds %struct.docg3_cascade, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %base.i.i50.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i50.1, align 4
  %add.ptr.i.i51.1 = getelementptr i8, ptr %29, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i51.1, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %30 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 14352) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4152) #13
  %34 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cascade.i.i, align 4
  %base.i6.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %base.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i6.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %37, i32 4152
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i.i) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i.i = zext i8 %38 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4152, i32 noundef %conv2.i.i.i) #13
  %and.i = and i32 %conv2.i.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not = icmp eq i32 %and.i, 0
  br i1 %tobool9.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %docg3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %docg3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.45, i32 noundef %block0, i32 noundef %block1) #16
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %call16 = tail call fastcc i32 @doc_write_erase_wait_status(ptr noundef %docg3)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end13, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end13 ], [ %call16, %if.end15 ], [ -5, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @doc_reset_seq(ptr nocapture noundef readonly %docg3) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %cascade.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %0 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cascade.i, align 4
  %base.i = getelementptr inbounds %struct.docg3_cascade, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4152
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 16) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4152, i32 noundef 16) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cascade.i, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4146, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cascade.i, align 4
  %base.i.i12 = getelementptr inbounds %struct.docg3_cascade, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %base.i.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i12, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %11, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i13, i8 -1) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 255) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cascade.i, align 4
  %base.i.i15 = getelementptr inbounds %struct.docg3_cascade, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %base.i.i15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i15, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %15, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i16, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cascade.i, align 4
  %base.i.i15.1 = getelementptr inbounds %struct.docg3_cascade, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %base.i.i15.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i15.1, align 4
  %add.ptr.i.i16.1 = getelementptr i8, ptr %19, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i16.1, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  %call = tail call fastcc i32 @doc_wait_ready(ptr noundef %docg3)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_reset_seq.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_reset_seq, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !317

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %docg3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %docg3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool4.not, ptr @.str.49, ptr @.str.48
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_reset_seq.__UNIQUE_ID_ddebug262, ptr noundef %21, ptr noundef nonnull @.str.47, ptr noundef nonnull %cond) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @doc_setup_addr_sector(ptr nocapture noundef readonly %docg3, i32 noundef %sector) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cascade.i.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %0 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  %conv = trunc i32 %sector to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i13 = getelementptr inbounds %struct.docg3_cascade, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i13, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %7, i32 4150
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i14, i8 %conv) #13, !srcloc !319
  %conv1.i.i = and i32 %sector, 255
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4150, i32 noundef %conv1.i.i) #13
  %8 = lshr i32 %sector, 8
  %conv2 = trunc i32 %8 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %9 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i16 = getelementptr inbounds %struct.docg3_cascade, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %base.i.i16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i16, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %12, i32 4150
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i17, i8 %conv2) #13, !srcloc !319
  %conv1.i.i18 = and i32 %8, 255
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4150, i32 noundef %conv1.i.i18) #13
  %13 = lshr i32 %sector, 16
  %conv5 = trunc i32 %13 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i20 = getelementptr inbounds %struct.docg3_cascade, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %base.i.i20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i20, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %17, i32 4150
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i21, i8 %conv5) #13, !srcloc !319
  %conv1.i.i22 = and i32 %13, 255
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4150, i32 noundef %conv1.i.i22) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i25 = getelementptr inbounds %struct.docg3_cascade, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %base.i.i25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i25, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %21, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i26, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @doc_write_erase_wait_status(ptr nocapture noundef readonly %docg3) unnamed_addr #0 align 64 {
entry:
  %status.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cascade.i.i.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %0 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 14352) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4152) #13
  %4 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i6.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i6.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %7, i32 4152
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i.i) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i.i = zext i8 %8 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4152, i32 noundef %conv2.i.i.i) #13
  %and.i = and i32 %conv2.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0)
  %cmp = icmp ult i32 %i.0, 5
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @msleep(i32 noundef 20) #13
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %9 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i.i.i41 = getelementptr inbounds %struct.docg3_cascade, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %base.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i.i41, align 4
  %add.ptr.i.i.i42 = getelementptr i8, ptr %12, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i42, i16 14352) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4152) #13
  %13 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i6.i.i43 = getelementptr inbounds %struct.docg3_cascade, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %base.i6.i.i43 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i6.i.i43, align 4
  %add.ptr.i7.i.i44 = getelementptr i8, ptr %16, i32 4152
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i.i44) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i.i45 = zext i8 %17 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4152, i32 noundef %conv2.i.i.i45) #13
  %and.i46 = and i32 %conv2.i.i.i45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %tobool2.not = icmp eq i32 %and.i46, 0
  br i1 %tobool2.not, label %do.body, label %if.end8

do.body:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_write_erase_wait_status.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_write_erase_wait_status, %if.then7)) #13
          to label %out [label %if.then7], !srcloc !317

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %docg3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %docg3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_write_erase_wait_status.__UNIQUE_ID_ddebug287, ptr noundef %19, ptr noundef nonnull @.str.51) #13
  br label %out

if.end8:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #13
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %status.i, align 1, !annotation !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %21 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i.i.i48 = getelementptr inbounds %struct.docg3_cascade, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %base.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i.i48, align 4
  %add.ptr.i.i.i49 = getelementptr i8, ptr %24, i32 4146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i49, i8 49) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4146, i32 noundef 49) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %25 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i.i6.i = getelementptr inbounds %struct.docg3_cascade, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %base.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i6.i, align 4
  %add.ptr.i.i7.i = getelementptr i8, ptr %28, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i7.i, i8 113) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 113) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i.i9.i = getelementptr inbounds %struct.docg3_cascade, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %base.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i9.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %32, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i10.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %33 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i.i9.1.i = getelementptr inbounds %struct.docg3_cascade, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %base.i.i9.1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i9.1.i, align 4
  %add.ptr.i.i10.1.i = getelementptr i8, ptr %36, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i10.1.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %37 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i.i9.2.i = getelementptr inbounds %struct.docg3_cascade, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %base.i.i9.2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i9.2.i, align 4
  %add.ptr.i.i10.2.i = getelementptr i8, ptr %40, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i10.2.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %41 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i.i9.3.i = getelementptr inbounds %struct.docg3_cascade, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %base.i.i9.3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i9.3.i, align 4
  %add.ptr.i.i10.3.i = getelementptr i8, ptr %44, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i10.3.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %45 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i.i9.4.i = getelementptr inbounds %struct.docg3_cascade, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %base.i.i9.4.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i9.4.i, align 4
  %add.ptr.i.i10.4.i = getelementptr i8, ptr %48, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i10.4.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %49 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i.i12.i = getelementptr inbounds %struct.docg3_cascade, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %base.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i12.i, align 4
  %add.ptr.i.i13.i = getelementptr i8, ptr %52, i32 4160
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i13.i, i16 128) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4160, i32 noundef 32768) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %53 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %56, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %57 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i.i.1.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %base.i.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i.1.i.i, align 4
  %add.ptr.i.i.1.i.i = getelementptr i8, ptr %60, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.1.i.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %61 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i.i.2.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %base.i.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i.2.i.i, align 4
  %add.ptr.i.i.2.i.i = getelementptr i8, ptr %64, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.2.i.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %65 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i.i.3.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %base.i.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i.3.i.i, align 4
  %add.ptr.i.i.3.i.i = getelementptr i8, ptr %68, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.3.i.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call fastcc void @doc_read_data_area(ptr noundef %docg3, ptr noundef nonnull %status.i, i32 noundef 1, i32 noundef 1) #13
  %69 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %status.i, align 1
  %conv.i = zext i8 %70 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #13
  %and = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end8.out_crit_edge, label %do.body12

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_write_erase_wait_status.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_write_erase_wait_status, %if.then24)) #13
          to label %out [label %if.then24], !srcloc !317

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %docg3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %docg3, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_write_erase_wait_status.__UNIQUE_ID_ddebug288, ptr noundef %72, ptr noundef nonnull @.str.52, i32 noundef %conv.i) #13
  br label %out

out:                                              ; preds = %if.then24, %do.body12, %if.end8.out_crit_edge, %if.then7, %do.body
  %ret.0 = phi i32 [ 0, %if.end8.out_crit_edge ], [ -11, %if.then7 ], [ -5, %if.then24 ], [ -11, %do.body ], [ -5, %do.body12 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %73 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %76, i32 4126
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4126, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %77 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i.i.i50 = getelementptr inbounds %struct.docg3_cascade, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %base.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i.i.i50, align 4
  %add.ptr.i.i.i51 = getelementptr i8, ptr %80, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i51, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %81 = ptrtoint ptr %cascade.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cascade.i.i.i, align 4
  %base.i.i.1.i = getelementptr inbounds %struct.docg3_cascade, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %base.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i.i.1.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %84, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.1.i, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @doc_wait_ready(ptr nocapture noundef readonly %docg3) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cascade.i.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %maxWaitCycles.0 = phi i32 [ 100, %entry ], [ %dec, %land.rhs.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %0 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.1 = getelementptr inbounds %struct.docg3_cascade, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i.1, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %7, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.1, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.2 = getelementptr inbounds %struct.docg3_cascade, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %base.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i.2, align 4
  %add.ptr.i.i.2 = getelementptr i8, ptr %11, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.2, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.3 = getelementptr inbounds %struct.docg3_cascade, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %base.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i.3, align 4
  %add.ptr.i.i.3 = getelementptr i8, ptr %15, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.3, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !330
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 14352) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4152) #13
  %20 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cascade.i.i, align 4
  %base.i6.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %base.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i6.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %23, i32 4152
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i.i) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i.i = zext i8 %24 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4152, i32 noundef %conv2.i.i.i) #13
  %and.i = and i32 %conv2.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %land.rhs, label %do.body.do.end10_crit_edge

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

land.rhs:                                         ; preds = %do.body
  %dec = add nsw i32 %maxWaitCycles.0, -1
  %tobool9.not = icmp eq i32 %maxWaitCycles.0, 0
  br i1 %tobool9.not, label %land.rhs.do.end10_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.rhs.do.end10_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

do.end10:                                         ; preds = %land.rhs.do.end10_crit_edge, %do.body.do.end10_crit_edge
  %maxWaitCycles.1 = phi i32 [ %maxWaitCycles.0, %do.body.do.end10_crit_edge ], [ -1, %land.rhs.do.end10_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %25 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i16 = getelementptr inbounds %struct.docg3_cascade, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %base.i.i16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i16, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %28, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i17, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i16.1 = getelementptr inbounds %struct.docg3_cascade, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %base.i.i16.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i16.1, align 4
  %add.ptr.i.i17.1 = getelementptr i8, ptr %32, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i17.1, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxWaitCycles.1)
  %cmp = icmp sgt i32 %maxWaitCycles.1, 0
  %spec.select = select i1 %cmp, i32 0, i32 -5
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @doc_read_data_area(ptr nocapture noundef readonly %docg3, ptr noundef %buf, i32 noundef %len, i32 noundef %first) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_read_data_area.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_read_data_area, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !317

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %docg3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %docg3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_read_data_area.__UNIQUE_ID_ddebug263, ptr noundef %1, ptr noundef nonnull @.str.54, ptr noundef %buf, i32 noundef %len) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %len, 1
  %sub = and i32 %len, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first)
  %tobool3.not = icmp eq i32 %first, 0
  br i1 %tobool3.not, label %do.end.if.end5_crit_edge, label %if.then4

do.end.if.end5_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %cascade.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %2 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cascade.i, align 4
  %base.i = getelementptr inbounds %struct.docg3_cascade, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 8) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 2048) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp52 = icmp sgt i32 %sub, 0
  br i1 %cmp52, label %for.body.lr.ph, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %cascade.i41 = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %dst16.053 = phi ptr [ %buf, %for.body.lr.ph ], [ %dst16.1, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %cascade.i41 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cascade.i41, align 4
  %base.i42 = getelementptr inbounds %struct.docg3_cascade, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %base.i42 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i42, align 4
  %add.ptr.i43 = getelementptr i8, ptr %9, i32 2048
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43) #13, !srcloc !324
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %conv2.i = zext i16 %11 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 16, i16 noundef zeroext 2048, i32 noundef %conv2.i) #13
  %tobool7.not = icmp eq ptr %dst16.053, null
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %if.then8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %dst16.053 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %dst16.053, align 2
  %incdec.ptr = getelementptr i16, ptr %dst16.053, i32 1
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.body.for.inc_crit_edge
  %dst16.1 = phi ptr [ %incdec.ptr, %if.then8 ], [ null, %for.body.for.inc_crit_edge ]
  %add = add nuw nsw i32 %i.054, 2
  %cmp = icmp slt i32 %add, %sub
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge
  %dst16.0.lcssa = phi ptr [ %buf, %if.end5.for.end_crit_edge ], [ %dst16.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %for.end.if.end22_crit_edge, label %if.then11

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then11:                                        ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %cascade.i44 = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %13 = ptrtoint ptr %cascade.i44 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cascade.i44, align 4
  %base.i45 = getelementptr inbounds %struct.docg3_cascade, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %base.i45 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i45, align 4
  %add.ptr.i46 = getelementptr i8, ptr %16, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i46, i16 72) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 18432) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %cascade.i44 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cascade.i44, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  %21 = ptrtoint ptr %cascade.i44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cascade.i44, align 4
  %base.i48 = getelementptr inbounds %struct.docg3_cascade, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %base.i48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i48, align 4
  %add.ptr.i49 = getelementptr i8, ptr %24, i32 2048
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i49) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i50 = zext i8 %25 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 2048, i32 noundef %conv2.i50) #13
  %tobool16.not = icmp eq ptr %dst16.0.lcssa, null
  br i1 %tobool16.not, label %if.then11.if.end22_crit_edge, label %if.then17

if.then11.if.end22_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then17:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %dst16.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %dst16.0.lcssa, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.then11.if.end22_crit_edge, %for.end.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @doc_read_page_prepare(ptr nocapture noundef readonly %docg3, i32 noundef %block0, i32 noundef %block1, i32 noundef %page, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_read_page_prepare.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_read_page_prepare, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !317

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %docg3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %docg3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_read_page_prepare.__UNIQUE_ID_ddebug272, ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef %block0, i32 noundef %block1, i32 noundef %page, i32 noundef %offset) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %device_id = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 2
  %2 = ptrtoint ptr %device_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %device_id, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.cast = zext i8 %bf.lshr to i32
  tail call fastcc void @doc_set_device_id(ptr noundef %docg3, i32 noundef %bf.cast)
  %call9 = tail call fastcc i32 @doc_reset_seq(ptr noundef %docg3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end.err_crit_edge

do.end.err_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1055, i32 %offset)
  %cmp = icmp sgt i32 %offset, 1055
  %spec.select = zext i1 %cmp to i32
  %call13 = tail call fastcc i32 @doc_read_seek(ptr noundef %docg3, i32 noundef %block0, i32 noundef %block1, i32 noundef %page, i32 noundef %spec.select, i32 noundef %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.err_crit_edge

if.end12.err_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %cascade.i.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %3 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 48) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 48) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i51 = getelementptr inbounds %struct.docg3_cascade, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %base.i.i51 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i51, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %10, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i52, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %11 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i51.1 = getelementptr inbounds %struct.docg3_cascade, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %base.i.i51.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i51.1, align 4
  %add.ptr.i.i52.1 = getelementptr i8, ptr %14, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i52.1, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  %call17 = tail call fastcc i32 @doc_wait_ready(ptr noundef %docg3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i54 = getelementptr inbounds %struct.docg3_cascade, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %base.i.i54 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i54, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %18, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i55, i8 5) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 5) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %19 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i58 = getelementptr inbounds %struct.docg3_cascade, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %base.i.i58 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i58, align 4
  %add.ptr.i.i59 = getelementptr i8, ptr %22, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i59, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  %23 = lshr i32 %offset, 2
  %conv = trunc i32 %23 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i65 = getelementptr inbounds %struct.docg3_cascade, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %base.i.i65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i65, align 4
  %add.ptr.i.i66 = getelementptr i8, ptr %27, i32 4150
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i66, i8 %conv) #13, !srcloc !319
  %conv1.i.i = and i32 %23, 255
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4150, i32 noundef %conv1.i.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %28 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i69 = getelementptr inbounds %struct.docg3_cascade, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %base.i.i69 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i69, align 4
  %add.ptr.i.i70 = getelementptr i8, ptr %31, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i70, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  %call21 = tail call fastcc i32 @doc_wait_ready(ptr noundef %docg3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %32 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i76 = getelementptr inbounds %struct.docg3_cascade, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %base.i.i76 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i76, align 4
  %add.ptr.i.i77 = getelementptr i8, ptr %35, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i77, i8 -32) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 224) #13
  br label %cleanup

err:                                              ; preds = %if.end12.err_crit_edge, %do.end.err_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %cascade.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %36 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cascade.i, align 4
  %base.i = getelementptr inbounds %struct.docg3_cascade, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 4126
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4126, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %40 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cascade.i, align 4
  %base.i.i80 = getelementptr inbounds %struct.docg3_cascade, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %base.i.i80 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i80, align 4
  %add.ptr.i.i81 = getelementptr i8, ptr %43, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i81, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %44 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cascade.i, align 4
  %base.i.i80.1 = getelementptr inbounds %struct.docg3_cascade, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %base.i.i80.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i80.1, align 4
  %add.ptr.i.i81.1 = getelementptr i8, ptr %47, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i81.1, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end16
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -5, %err ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @doc_read_page_ecc_init(ptr nocapture noundef readonly %docg3, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %len to i16
  %1 = and i16 %0, 2047
  %conv = or i16 %1, -26624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv) #13
  %cascade.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %3 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cascade.i, align 4
  %base.i = getelementptr inbounds %struct.docg3_cascade, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4160
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %2) #13, !srcloc !321
  %conv1.i = zext i16 %conv to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4160, i32 noundef %conv1.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cascade.i, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %11 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cascade.i, align 4
  %base.i.i.1 = getelementptr inbounds %struct.docg3_cascade, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %base.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i.1, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %14, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.1, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cascade.i, align 4
  %base.i.i.2 = getelementptr inbounds %struct.docg3_cascade, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %base.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i.2, align 4
  %add.ptr.i.i.2 = getelementptr i8, ptr %18, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.2, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %19 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cascade.i, align 4
  %base.i.i.3 = getelementptr inbounds %struct.docg3_cascade, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %base.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i.3, align 4
  %add.ptr.i.i.3 = getelementptr i8, ptr %22, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.3, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cascade.i, align 4
  %base.i.i6 = getelementptr inbounds %struct.docg3_cascade, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %base.i.i6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i6, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %26, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i7, i16 14352) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4152) #13
  %27 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cascade.i, align 4
  %base.i6.i = getelementptr inbounds %struct.docg3_cascade, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %30, i32 4152
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i = zext i8 %31 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4152, i32 noundef %conv2.i.i) #13
  %call1 = tail call fastcc i32 @doc_wait_ready(ptr noundef %docg3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @doc_read_page_getbytes(ptr nocapture noundef readonly %docg3, i32 noundef returned %len, ptr noundef %buf, i32 noundef %first, i32 noundef %last_odd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_odd)
  %tobool.not = icmp ne i32 %last_odd, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp sgt i32 %len, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @doc_read_data_area(ptr noundef %docg3, ptr noundef %buf, i32 noundef 1, i32 noundef %first)
  %tobool1.not = icmp eq ptr %buf, null
  %add.ptr = getelementptr i8, ptr %buf, i32 1
  %cond = select i1 %tobool1.not, ptr null, ptr %add.ptr
  %sub = add nsw i32 %len, -1
  tail call fastcc void @doc_read_data_area(ptr noundef %docg3, ptr noundef %cond, i32 noundef %sub, i32 noundef 0)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @doc_read_data_area(ptr noundef %docg3, ptr noundef %buf, i32 noundef %len, i32 noundef %first)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cascade.i.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %0 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.1 = getelementptr inbounds %struct.docg3_cascade, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i.1, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %7, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.1, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  ret i32 %len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @doc_ecc_bch_fix_data(ptr nocapture noundef readonly %docg3, ptr noundef %buf, ptr nocapture noundef readonly %hwecc) unnamed_addr #0 align 64 {
entry:
  %ecc = alloca [7 x i8], align 1
  %errorpos = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %ecc) #13
  %0 = getelementptr inbounds [7 x i8], ptr %ecc, i32 0, i32 1
  %1 = getelementptr inbounds [7 x i8], ptr %ecc, i32 0, i32 2
  %2 = getelementptr inbounds [7 x i8], ptr %ecc, i32 0, i32 3
  %3 = getelementptr inbounds [7 x i8], ptr %ecc, i32 0, i32 4
  %4 = getelementptr inbounds [7 x i8], ptr %ecc, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i8], ptr %ecc, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %errorpos) #13
  %6 = call ptr @memset(ptr %errorpos, i32 255, i32 16)
  %7 = ptrtoint ptr %hwecc to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hwecc, align 1
  %idxprom.i = zext i8 %8 to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %11 = ptrtoint ptr %ecc to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %ecc, align 1
  %arrayidx.1 = getelementptr i8, ptr %hwecc, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1, align 1
  %idxprom.i.1 = zext i8 %13 to i32
  %arrayidx.i.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.1
  %14 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.1, align 1
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %0, align 1
  %arrayidx.2 = getelementptr i8, ptr %hwecc, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.2, align 1
  %idxprom.i.2 = zext i8 %18 to i32
  %arrayidx.i.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.2
  %19 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.2, align 1
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %1, align 1
  %arrayidx.3 = getelementptr i8, ptr %hwecc, i32 3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.3, align 1
  %idxprom.i.3 = zext i8 %23 to i32
  %arrayidx.i.3 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.3
  %24 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.3, align 1
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %2, align 1
  %arrayidx.4 = getelementptr i8, ptr %hwecc, i32 4
  %27 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.4, align 1
  %idxprom.i.4 = zext i8 %28 to i32
  %arrayidx.i.4 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.4
  %29 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i.4, align 1
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %3, align 1
  %arrayidx.5 = getelementptr i8, ptr %hwecc, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.5, align 1
  %idxprom.i.5 = zext i8 %33 to i32
  %arrayidx.i.5 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.5
  %34 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.5, align 1
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %4, align 1
  %arrayidx.6 = getelementptr i8, ptr %hwecc, i32 6
  %37 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.6, align 1
  %idxprom.i.6 = zext i8 %38 to i32
  %arrayidx.i.6 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.6
  %39 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.6, align 1
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %5, align 1
  %cascade = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %42 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cascade, align 4
  %bch = getelementptr inbounds %struct.docg3_cascade, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bch, align 4
  %call24 = call i32 @bch_decode(ptr noundef %45, ptr noundef null, i32 noundef 520, ptr noundef null, ptr noundef nonnull %ecc, ptr noundef null, ptr noundef nonnull %errorpos) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call24)
  %cmp25 = icmp eq i32 %call24, -22
  br i1 %cmp25, label %do.body28, label %do.end33, !prof !315

do.body28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/devices/docg3.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 653, 0\0A.popsection", ""() #13, !srcloc !332
  unreachable

do.end33:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24)
  %46 = icmp slt i32 %call24, 1
  br i1 %46, label %do.end33.do.body64_crit_edge, label %do.end33.for.body41_crit_edge

do.end33.for.body41_crit_edge:                    ; preds = %do.end33
  br label %for.body41

do.end33.do.body64_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body64

for.cond51.preheader:                             ; preds = %for.body41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp52108 = icmp sgt i32 %call24, 0
  br i1 %cmp52108, label %for.cond51.preheader.for.body54_crit_edge, label %for.cond51.preheader.do.body64_crit_edge

for.cond51.preheader.do.body64_crit_edge:         ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body64

for.cond51.preheader.for.body54_crit_edge:        ; preds = %for.cond51.preheader
  br label %for.body54

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %do.end33.for.body41_crit_edge
  %i.1107 = phi i32 [ %inc49, %for.body41.for.body41_crit_edge ], [ 0, %do.end33.for.body41_crit_edge ]
  %arrayidx42 = getelementptr [4 x i32], ptr %errorpos, i32 0, i32 %i.1107
  %47 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx42, align 4
  %or46 = xor i32 %48, 7
  store i32 %or46, ptr %arrayidx42, align 4
  %inc49 = add nuw nsw i32 %i.1107, 1
  %exitcond.not = icmp eq i32 %inc49, %call24
  br i1 %exitcond.not, label %for.cond51.preheader, label %for.body41.for.body41_crit_edge

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body41

for.body54:                                       ; preds = %for.inc61.for.body54_crit_edge, %for.cond51.preheader.for.body54_crit_edge
  %i.2109 = phi i32 [ %inc62, %for.inc61.for.body54_crit_edge ], [ 0, %for.cond51.preheader.for.body54_crit_edge ]
  %arrayidx55 = getelementptr [4 x i32], ptr %errorpos, i32 0, i32 %i.2109
  %49 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4160, i32 %50)
  %cmp56 = icmp slt i32 %50, 4160
  br i1 %cmp56, label %if.then58, label %for.body54.for.inc61_crit_edge

for.body54.for.inc61_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc61

if.then58:                                        ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #15
  call void @_change_bit(i32 noundef %50, ptr noundef %buf) #13
  br label %for.inc61

for.inc61:                                        ; preds = %if.then58, %for.body54.for.inc61_crit_edge
  %inc62 = add nuw nsw i32 %i.2109, 1
  %exitcond110.not = icmp eq i32 %inc62, %call24
  br i1 %exitcond110.not, label %for.inc61.do.body64_crit_edge, label %for.inc61.for.body54_crit_edge

for.inc61.for.body54_crit_edge:                   ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body54

for.inc61.do.body64_crit_edge:                    ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body64

do.body64:                                        ; preds = %for.inc61.do.body64_crit_edge, %for.cond51.preheader.do.body64_crit_edge, %do.end33.do.body64_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_ecc_bch_fix_data.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_ecc_bch_fix_data, %if.then74)) #13
          to label %do.end77 [label %if.then74], !srcloc !317

if.then74:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %docg3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %docg3, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_ecc_bch_fix_data.__UNIQUE_ID_ddebug271, ptr noundef %52, ptr noundef nonnull @.str.70, i32 noundef %call24) #13
  br label %do.end77

do.end77:                                         ; preds = %if.then74, %do.body64
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %errorpos) #13
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %ecc) #13
  ret i32 %call24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @doc_read_page_finish(ptr nocapture noundef readonly %docg3) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %cascade.i.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %0 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4126
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4126, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.1.i = getelementptr inbounds %struct.docg3_cascade, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %base.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i.1.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %11, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.1.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call fastcc void @doc_set_device_id(ptr noundef %docg3, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @doc_read_seek(ptr nocapture noundef readonly %docg3, i32 noundef %block0, i32 noundef %block1, i32 noundef %page, i32 noundef %wear, i32 noundef %ofs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_read_seek.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_read_seek, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !317

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %docg3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %docg3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_read_seek.__UNIQUE_ID_ddebug269, ptr noundef %1, ptr noundef nonnull @.str.66, i32 noundef %block0, i32 noundef %block1, i32 noundef %page, i32 noundef %ofs, i32 noundef %wear) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wear)
  %tobool3.not = icmp eq i32 %wear, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %ofs)
  %cmp = icmp slt i32 %ofs, 1024
  %or.cond = and i1 %tobool3.not, %cmp
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  tail call void @arm_heavy_mb() #13
  %cascade.i.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %2 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4146
  br i1 %or.cond, label %if.then4, label %if.else

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 14) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4146, i32 noundef 14) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i40 = getelementptr inbounds %struct.docg3_cascade, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %base.i.i40 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i40, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %9, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i41, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i43 = getelementptr inbounds %struct.docg3_cascade, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i43 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i43, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %13, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i44, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i43.1 = getelementptr inbounds %struct.docg3_cascade, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %base.i.i43.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i43.1, align 4
  %add.ptr.i.i44.1 = getelementptr i8, ptr %17, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i44.1, i8 0) #13, !srcloc !319
  br label %if.end5

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 16) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4146, i32 noundef 16) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i49 = getelementptr inbounds %struct.docg3_cascade, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %base.i.i49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i49, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %21, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i50, i8 80) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 80) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %22 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i53 = getelementptr inbounds %struct.docg3_cascade, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i53, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %25, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i54, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i53.1 = getelementptr inbounds %struct.docg3_cascade, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %base.i.i53.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i53.1, align 4
  %add.ptr.i.i54.1 = getelementptr i8, ptr %29, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i54.1, i8 0) #13, !srcloc !319
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call fastcc void @doc_set_reliable_mode(ptr noundef %docg3)
  br i1 %tobool3.not, label %if.end5.if.end12_crit_edge, label %if.end9

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end9:                                          ; preds = %if.end5
  %call8 = tail call fastcc i32 @doc_set_extra_page_mode(ptr noundef %docg3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool10.not = icmp eq i32 %call8, 0
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end12:                                         ; preds = %if.end9.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %cascade.i.i59 = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %30 = ptrtoint ptr %cascade.i.i59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cascade.i.i59, align 4
  %base.i.i60 = getelementptr inbounds %struct.docg3_cascade, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %base.i.i60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i60, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %33, i32 4146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i61, i8 18) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4146, i32 noundef 18) #13
  %shl = shl i32 %block0, 6
  %and = and i32 %page, 63
  %add = or i32 %and, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %34 = ptrtoint ptr %cascade.i.i59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cascade.i.i59, align 4
  %base.i.i63 = getelementptr inbounds %struct.docg3_cascade, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %base.i.i63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i63, align 4
  %add.ptr.i.i64 = getelementptr i8, ptr %37, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i64, i8 96) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 96) #13
  tail call fastcc void @doc_setup_addr_sector(ptr noundef %docg3, i32 noundef %add)
  %shl13 = shl i32 %block1, 6
  %add15 = or i32 %and, %shl13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %38 = ptrtoint ptr %cascade.i.i59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cascade.i.i59, align 4
  %base.i.i66 = getelementptr inbounds %struct.docg3_cascade, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i66, align 4
  %add.ptr.i.i67 = getelementptr i8, ptr %41, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i67, i8 96) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 96) #13
  tail call fastcc void @doc_setup_addr_sector(ptr noundef %docg3, i32 noundef %add15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %42 = ptrtoint ptr %cascade.i.i59 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cascade.i.i59, align 4
  %base.i.i70 = getelementptr inbounds %struct.docg3_cascade, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %base.i.i70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i70, align 4
  %add.ptr.i.i71 = getelementptr i8, ptr %45, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i71, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  br label %out

out:                                              ; preds = %if.end12, %if.end9.out_crit_edge
  %ret.079 = phi i32 [ %call8, %if.end9.out_crit_edge ], [ 0, %if.end12 ]
  ret i32 %ret.079
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @doc_set_extra_page_mode(ptr nocapture noundef readonly %docg3) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_set_extra_page_mode.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_set_extra_page_mode, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !317

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %docg3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %docg3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_set_extra_page_mode.__UNIQUE_ID_ddebug268, ptr noundef %1, ptr noundef nonnull @.str.68) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %cascade.i.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %2 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 3) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4146, i32 noundef 3) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i11 = getelementptr inbounds %struct.docg3_cascade, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %base.i.i11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i11, align 4
  %add.ptr.i.i12 = getelementptr i8, ptr %9, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i12, i8 60) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 60) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i14 = getelementptr inbounds %struct.docg3_cascade, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i14, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %13, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i15, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i14.1 = getelementptr inbounds %struct.docg3_cascade, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %base.i.i14.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i14.1, align 4
  %add.ptr.i.i15.1 = getelementptr i8, ptr %17, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i15.1, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i17 = getelementptr inbounds %struct.docg3_cascade, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %base.i.i17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i17, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %21, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i18, i16 14352) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4152) #13
  %22 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cascade.i.i, align 4
  %base.i6.i = getelementptr inbounds %struct.docg3_cascade, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %25, i32 4152
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i = zext i8 %26 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4152, i32 noundef %conv2.i.i) #13
  %and = and i32 %conv2.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %. = select i1 %tobool4.not, i32 0, i32 -5
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_decode(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @doc_write_page(ptr noundef readonly %docg3, i64 noundef %to, ptr noundef %buf, ptr noundef %oob, i32 noundef %autoecc) unnamed_addr #0 align 64 {
entry:
  %hwecc = alloca [7 x i8], align 1
  %hamming = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %hwecc) #13
  %0 = call ptr @memset(ptr %hwecc, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hamming) #13
  %1 = ptrtoint ptr %hamming to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %hamming, align 1, !annotation !316
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_write_page.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_write_page, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !317

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %docg3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %docg3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_write_page.__UNIQUE_ID_ddebug291, ptr noundef %3, ptr noundef nonnull @.str.74, i64 noundef %to) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reliable = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 2
  %4 = ptrtoint ptr %reliable to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %reliable, align 8
  %bf.lshr4 = lshr i8 %bf.load, 4
  %bf.cast5 = zext i8 %bf.lshr4 to i32
  tail call fastcc void @doc_set_device_id(ptr noundef %docg3, i32 noundef %bf.cast5)
  %call6 = tail call fastcc i32 @doc_reset_seq(ptr noundef %docg3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.err_crit_edge

do.end.err_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end9:                                          ; preds = %do.end
  %div2.i = sdiv i64 %to, 512
  %conv.i = trunc i64 %div2.i to i32
  %rem13.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem13.i)
  %tobool.not.i = icmp eq i32 %rem13.i, 0
  %..i = select i1 %tobool.not.i, i32 0, i32 528
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 3
  %bf.cast = zext i8 %bf.clear to i32
  %5 = add nsw i32 %bf.cast, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %6 = icmp ult i32 %5, 2
  %7 = select i1 %6, i32 62, i32 126
  %rem.i = and i32 %7, %conv.i
  %8 = add nsw i32 %bf.cast, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %8)
  %switch.i = icmp ult i32 %8, -2
  %div427.i = zext i1 %switch.i to i32
  %spec.select.i = lshr exact i32 %rem.i, %div427.i
  %9 = select i1 %6, i32 6, i32 7
  %div329.i = lshr i32 %conv.i, %9
  %mul.i = shl nuw nsw i32 %div329.i, 1
  %add.i = or i32 %mul.i, 1
  %call10 = tail call fastcc i32 @doc_write_seek(ptr noundef %docg3, i32 noundef %mul.i, i32 noundef %add.i, i32 noundef %spec.select.i, i32 noundef %..i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.err_crit_edge

if.end9.err_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end13:                                         ; preds = %if.end9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %cascade.i.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %10 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4160
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 3866) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4160, i32 noundef 6671) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.1.i = getelementptr inbounds %struct.docg3_cascade, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %base.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i.1.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %21, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.1.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %22 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.2.i = getelementptr inbounds %struct.docg3_cascade, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %base.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i.2.i, align 4
  %add.ptr.i.i.2.i = getelementptr i8, ptr %25, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.2.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.3.i = getelementptr inbounds %struct.docg3_cascade, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %base.i.i.3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i.3.i, align 4
  %add.ptr.i.i.3.i = getelementptr i8, ptr %29, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.3.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %30 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i2.i = getelementptr inbounds %struct.docg3_cascade, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %base.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i2.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %33, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i3.i, i16 14352) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4152) #13
  %34 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cascade.i.i, align 4
  %base.i6.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %base.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i6.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %37, i32 4152
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i.i) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i.i = zext i8 %38 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4152, i32 noundef %conv2.i.i.i) #13
  %call1.i = tail call fastcc i32 @doc_wait_ready(ptr noundef %docg3) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %39 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i70 = getelementptr inbounds %struct.docg3_cascade, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %base.i.i70 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i70, align 4
  %add.ptr.i.i71 = getelementptr i8, ptr %42, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i71, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %43 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i70.1 = getelementptr inbounds %struct.docg3_cascade, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %base.i.i70.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i70.1, align 4
  %add.ptr.i.i71.1 = getelementptr i8, ptr %46, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i71.1, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call fastcc void @doc_write_data_area(ptr noundef %docg3, ptr noundef %buf, i32 noundef 512) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %47 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.i72 = getelementptr inbounds %struct.docg3_cascade, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %base.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i.i72, align 4
  %add.ptr.i.i.i73 = getelementptr i8, ptr %50, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i73, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %51 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.1.i74 = getelementptr inbounds %struct.docg3_cascade, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %base.i.i.1.i74 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i.1.i74, align 4
  %add.ptr.i.i.1.i75 = getelementptr i8, ptr %54, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.1.i75, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  %tobool15.not = icmp eq ptr %oob, null
  br i1 %tobool15.not, label %if.end13.if.end25_crit_edge, label %land.lhs.true

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %autoecc)
  %tobool16.not = icmp eq i32 %autoecc, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end20_crit_edge, label %if.then17

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then17:                                        ; preds = %land.lhs.true
  tail call fastcc void @doc_write_data_area(ptr noundef %docg3, ptr noundef nonnull %oob, i32 noundef 7) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %55 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.i77 = getelementptr inbounds %struct.docg3_cascade, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %base.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i.i77, align 4
  %add.ptr.i.i.i78 = getelementptr i8, ptr %58, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i78, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %59 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.1.i79 = getelementptr inbounds %struct.docg3_cascade, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %base.i.i.1.i79 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i.1.i79, align 4
  %add.ptr.i.i.1.i80 = getelementptr i8, ptr %62, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.1.i80, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %63 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i83 = getelementptr inbounds %struct.docg3_cascade, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %base.i.i83 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i.i83, align 4
  %add.ptr.i.i84 = getelementptr i8, ptr %66, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i84, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %67 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i83.1 = getelementptr inbounds %struct.docg3_cascade, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %base.i.i83.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i83.1, align 4
  %add.ptr.i.i84.1 = getelementptr i8, ptr %70, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i84.1, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %71 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i90 = getelementptr inbounds %struct.docg3_cascade, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %base.i.i90 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i.i90, align 4
  %add.ptr.i.i91 = getelementptr i8, ptr %74, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i91, i16 17936) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4166) #13
  %75 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cascade.i.i, align 4
  %base.i6.i = getelementptr inbounds %struct.docg3_cascade, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %78, i32 4166
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i = zext i8 %79 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4166, i32 noundef %conv2.i.i) #13
  %80 = ptrtoint ptr %hamming to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %hamming, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %81 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i94 = getelementptr inbounds %struct.docg3_cascade, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %base.i.i94 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i.i94, align 4
  %add.ptr.i.i95 = getelementptr i8, ptr %84, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i95, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %85 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i94.1 = getelementptr inbounds %struct.docg3_cascade, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %base.i.i94.1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i.i94.1, align 4
  %add.ptr.i.i95.1 = getelementptr i8, ptr %88, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i95.1, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call fastcc void @doc_write_data_area(ptr noundef %docg3, ptr noundef nonnull %hamming, i32 noundef 1) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %89 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.i101 = getelementptr inbounds %struct.docg3_cascade, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %base.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i.i.i101, align 4
  %add.ptr.i.i.i102 = getelementptr i8, ptr %92, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i102, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %93 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.1.i103 = getelementptr inbounds %struct.docg3_cascade, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %base.i.i.1.i103 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i.i.1.i103, align 4
  %add.ptr.i.i.1.i104 = getelementptr i8, ptr %96, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.1.i104, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %97 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i107 = getelementptr inbounds %struct.docg3_cascade, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %base.i.i107 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base.i.i107, align 4
  %add.ptr.i.i108 = getelementptr i8, ptr %100, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i108, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %101 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i107.1 = getelementptr inbounds %struct.docg3_cascade, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %base.i.i107.1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i.i107.1, align 4
  %add.ptr.i.i108.1 = getelementptr i8, ptr %104, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i108.1, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  br label %for.body.i122

for.body.i122:                                    ; preds = %for.body.i122.for.body.i122_crit_edge, %if.then17
  %i.04.i = phi i32 [ %inc.i120, %for.body.i122.for.body.i122_crit_edge ], [ 0, %if.then17 ]
  %add.i114 = add nuw nsw i32 %i.04.i, 4168
  %conv.i.i = trunc i32 %add.i114 to i16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  call void @arm_heavy_mb() #13
  %105 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #13
  %106 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.i115 = getelementptr inbounds %struct.docg3_cascade, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %base.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base.i.i.i115, align 4
  %add.ptr.i.i.i116 = getelementptr i8, ptr %109, i32 4122
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i116, i16 %105) #13, !srcloc !321
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef %add.i114) #13
  %110 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cascade.i.i, align 4
  %base.i6.i.i117 = getelementptr inbounds %struct.docg3_cascade, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %base.i6.i.i117 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i6.i.i117, align 4
  %add.ptr.i7.i.i118 = getelementptr i8, ptr %113, i32 %add.i114
  %114 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i.i118) #13, !srcloc !322
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i.i119 = zext i8 %114 to i32
  call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext %conv.i.i, i32 noundef %conv2.i.i.i119) #13
  %arrayidx.i = getelementptr i8, ptr %hwecc, i32 %i.04.i
  %115 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %arrayidx.i, align 1
  %inc.i120 = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i121 = icmp eq i32 %inc.i120, 7
  br i1 %exitcond.not.i121, label %doc_get_bch_hw_ecc.exit, label %for.body.i122.for.body.i122_crit_edge

for.body.i122.for.body.i122_crit_edge:            ; preds = %for.body.i122
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i122

doc_get_bch_hw_ecc.exit:                          ; preds = %for.body.i122
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @doc_write_data_area(ptr noundef %docg3, ptr noundef nonnull %hwecc, i32 noundef 7) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %116 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.i124 = getelementptr inbounds %struct.docg3_cascade, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %base.i.i.i124 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i.i.i124, align 4
  %add.ptr.i.i.i125 = getelementptr i8, ptr %119, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i125, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %120 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.1.i126 = getelementptr inbounds %struct.docg3_cascade, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %base.i.i.1.i126 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base.i.i.1.i126, align 4
  %add.ptr.i.i.1.i127 = getelementptr i8, ptr %123, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.1.i127, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %124 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i130 = getelementptr inbounds %struct.docg3_cascade, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %base.i.i130 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base.i.i130, align 4
  %add.ptr.i.i131 = getelementptr i8, ptr %127, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i131, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %128 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i130.1 = getelementptr inbounds %struct.docg3_cascade, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %base.i.i130.1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i.i130.1, align 4
  %add.ptr.i.i131.1 = getelementptr i8, ptr %131, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i131.1, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  %add.ptr = getelementptr i8, ptr %oob, i32 15
  call fastcc void @doc_write_data_area(ptr noundef %docg3, ptr noundef %add.ptr, i32 noundef 1) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %132 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.i137 = getelementptr inbounds %struct.docg3_cascade, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %base.i.i.i137 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %base.i.i.i137, align 4
  %add.ptr.i.i.i138 = getelementptr i8, ptr %135, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i138, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %136 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.1.i139 = getelementptr inbounds %struct.docg3_cascade, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %base.i.i.1.i139 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base.i.i.1.i139, align 4
  %add.ptr.i.i.1.i140 = getelementptr i8, ptr %139, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.1.i140, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  br label %if.end20

if.end20:                                         ; preds = %doc_get_bch_hw_ecc.exit, %land.lhs.true.if.end20_crit_edge
  %oob.addr.0 = phi ptr [ %add.ptr, %doc_get_bch_hw_ecc.exit ], [ %oob, %land.lhs.true.if.end20_crit_edge ]
  %tobool21.not = icmp ne ptr %oob.addr.0, null
  %or.cond = and i1 %tobool16.not, %tobool21.not
  br i1 %or.cond, label %if.then24, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @doc_write_data_area(ptr noundef %docg3, ptr noundef nonnull %oob.addr.0, i32 noundef 16) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %140 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.i142 = getelementptr inbounds %struct.docg3_cascade, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %base.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base.i.i.i142, align 4
  %add.ptr.i.i.i143 = getelementptr i8, ptr %143, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i143, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %144 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.1.i144 = getelementptr inbounds %struct.docg3_cascade, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %base.i.i.1.i144 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base.i.i.1.i144, align 4
  %add.ptr.i.i.1.i145 = getelementptr i8, ptr %147, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.1.i145, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20.if.end25_crit_edge, %if.end13.if.end25_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %148 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i148 = getelementptr inbounds %struct.docg3_cascade, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %base.i.i148 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base.i.i148, align 4
  %add.ptr.i.i149 = getelementptr i8, ptr %151, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i149, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %152 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i148.1 = getelementptr inbounds %struct.docg3_cascade, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %base.i.i148.1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %base.i.i148.1, align 4
  %add.ptr.i.i149.1 = getelementptr i8, ptr %155, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i149.1, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %156 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i155 = getelementptr inbounds %struct.docg3_cascade, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %base.i.i155 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %base.i.i155, align 4
  %add.ptr.i.i156 = getelementptr i8, ptr %159, i32 4126
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i156, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4126, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %160 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.i157 = getelementptr inbounds %struct.docg3_cascade, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %base.i.i.i157 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %base.i.i.i157, align 4
  %add.ptr.i.i.i158 = getelementptr i8, ptr %163, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i158, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %164 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i.1.i159 = getelementptr inbounds %struct.docg3_cascade, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %base.i.i.1.i159 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %base.i.i.1.i159, align 4
  %add.ptr.i.i.1.i160 = getelementptr i8, ptr %167, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.1.i160, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %168 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i163 = getelementptr inbounds %struct.docg3_cascade, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %base.i.i163 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %base.i.i163, align 4
  %add.ptr.i.i164 = getelementptr i8, ptr %171, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i164, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %172 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i163.1 = getelementptr inbounds %struct.docg3_cascade, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %base.i.i163.1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %base.i.i163.1, align 4
  %add.ptr.i.i164.1 = getelementptr i8, ptr %175, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i164.1, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %176 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i170 = getelementptr inbounds %struct.docg3_cascade, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %base.i.i170 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base.i.i170, align 4
  %add.ptr.i.i171 = getelementptr i8, ptr %179, i32 4148
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i171, i8 16) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 16) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %180 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i174 = getelementptr inbounds %struct.docg3_cascade, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %base.i.i174 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %base.i.i174, align 4
  %add.ptr.i.i175 = getelementptr i8, ptr %183, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i175, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @arm_heavy_mb() #13
  %184 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i174.1 = getelementptr inbounds %struct.docg3_cascade, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %base.i.i174.1 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %base.i.i174.1, align 4
  %add.ptr.i.i175.1 = getelementptr i8, ptr %187, i32 4158
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i175.1, i8 0) #13, !srcloc !319
  call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  %call26 = call fastcc i32 @doc_write_erase_wait_status(ptr noundef %docg3)
  br label %cleanup

err:                                              ; preds = %if.end9.err_crit_edge, %do.end.err_crit_edge
  %ret.0 = phi i32 [ %call6, %do.end.err_crit_edge ], [ %call10, %if.end9.err_crit_edge ]
  tail call fastcc void @doc_read_page_finish(ptr noundef %docg3)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end25
  %retval.0 = phi i32 [ %ret.0, %err ], [ %call26, %if.end25 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hamming) #13
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %hwecc) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @doc_write_seek(ptr nocapture noundef readonly %docg3, i32 noundef %block0, i32 noundef %block1, i32 noundef %page, i32 noundef %ofs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_write_seek.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_write_seek, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !317

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %docg3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %docg3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_write_seek.__UNIQUE_ID_ddebug270, ptr noundef %1, ptr noundef nonnull @.str.76, i32 noundef %block0, i32 noundef %block1, i32 noundef %page, i32 noundef %ofs) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @doc_set_reliable_mode(ptr noundef %docg3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %ofs)
  %cmp = icmp slt i32 %ofs, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  tail call void @arm_heavy_mb() #13
  %cascade.i.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %2 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4146
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 14) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4146, i32 noundef 14) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i38 = getelementptr inbounds %struct.docg3_cascade, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %base.i.i38 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i38, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %9, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i39, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i41 = getelementptr inbounds %struct.docg3_cascade, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i41, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %13, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i42, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i41.1 = getelementptr inbounds %struct.docg3_cascade, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %base.i.i41.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i41.1, align 4
  %add.ptr.i.i42.1 = getelementptr i8, ptr %17, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i42.1, i8 0) #13, !srcloc !319
  br label %if.end4

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 16) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4146, i32 noundef 16) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i47 = getelementptr inbounds %struct.docg3_cascade, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %base.i.i47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i47, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %21, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i48, i8 80) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 80) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %22 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i51 = getelementptr inbounds %struct.docg3_cascade, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %base.i.i51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i51, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %25, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i52, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i51.1 = getelementptr inbounds %struct.docg3_cascade, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %base.i.i51.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i51.1, align 4
  %add.ptr.i.i52.1 = getelementptr i8, ptr %29, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i52.1, i8 0) #13, !srcloc !319
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %cascade.i.i57 = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %30 = ptrtoint ptr %cascade.i.i57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cascade.i.i57, align 4
  %base.i.i58 = getelementptr inbounds %struct.docg3_cascade, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %base.i.i58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i58, align 4
  %add.ptr.i.i59 = getelementptr i8, ptr %33, i32 4146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i59, i8 29) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4146, i32 noundef 29) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %34 = ptrtoint ptr %cascade.i.i57 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cascade.i.i57, align 4
  %base.i.i61 = getelementptr inbounds %struct.docg3_cascade, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %base.i.i61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i61, align 4
  %add.ptr.i.i62 = getelementptr i8, ptr %37, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i62, i8 -128) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 128) #13
  %shl = shl i32 %block0, 6
  %and = and i32 %page, 63
  %add = or i32 %and, %shl
  tail call fastcc void @doc_setup_writeaddr_sector(ptr noundef %docg3, i32 noundef %add, i32 noundef %ofs)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %38 = ptrtoint ptr %cascade.i.i57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cascade.i.i57, align 4
  %base.i.i64 = getelementptr inbounds %struct.docg3_cascade, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %base.i.i64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i64, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %41, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i65, i8 17) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 17) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %42 = ptrtoint ptr %cascade.i.i57 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cascade.i.i57, align 4
  %base.i.i68 = getelementptr inbounds %struct.docg3_cascade, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %base.i.i68 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i68, align 4
  %add.ptr.i.i69 = getelementptr i8, ptr %45, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i69, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %46 = ptrtoint ptr %cascade.i.i57 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cascade.i.i57, align 4
  %base.i.i68.1 = getelementptr inbounds %struct.docg3_cascade, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %base.i.i68.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i68.1, align 4
  %add.ptr.i.i69.1 = getelementptr i8, ptr %49, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i69.1, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  %call5 = tail call fastcc i32 @doc_wait_ready(ptr noundef %docg3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %50 = ptrtoint ptr %cascade.i.i57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cascade.i.i57, align 4
  %base.i.i75 = getelementptr inbounds %struct.docg3_cascade, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %base.i.i75 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i75, align 4
  %add.ptr.i.i76 = getelementptr i8, ptr %53, i32 4148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i76, i8 -128) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4148, i32 noundef 128) #13
  %shl9 = shl i32 %block1, 6
  %add11 = or i32 %and, %shl9
  tail call fastcc void @doc_setup_writeaddr_sector(ptr noundef %docg3, i32 noundef %add11, i32 noundef %ofs)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %54 = ptrtoint ptr %cascade.i.i57 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cascade.i.i57, align 4
  %base.i.i79 = getelementptr inbounds %struct.docg3_cascade, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %base.i.i79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i.i79, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %57, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i80, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  br label %out

out:                                              ; preds = %if.end8, %if.end4.out_crit_edge
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @doc_setup_writeaddr_sector(ptr nocapture noundef readonly %docg3, i32 noundef %sector, i32 noundef %ofs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cascade.i.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %0 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  %4 = lshr i32 %ofs, 2
  %conv = trunc i32 %4 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %5 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i18 = getelementptr inbounds %struct.docg3_cascade, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %base.i.i18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i18, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %8, i32 4150
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i19, i8 %conv) #13, !srcloc !319
  %conv1.i.i = and i32 %4, 255
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4150, i32 noundef %conv1.i.i) #13
  %conv2 = trunc i32 %sector to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %9 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i21 = getelementptr inbounds %struct.docg3_cascade, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %base.i.i21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i21, align 4
  %add.ptr.i.i22 = getelementptr i8, ptr %12, i32 4150
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i22, i8 %conv2) #13, !srcloc !319
  %conv1.i.i23 = and i32 %sector, 255
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4150, i32 noundef %conv1.i.i23) #13
  %13 = lshr i32 %sector, 8
  %conv5 = trunc i32 %13 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i25 = getelementptr inbounds %struct.docg3_cascade, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %base.i.i25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i25, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %17, i32 4150
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i26, i8 %conv5) #13, !srcloc !319
  %conv1.i.i27 = and i32 %13, 255
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4150, i32 noundef %conv1.i.i27) #13
  %18 = lshr i32 %sector, 16
  %conv8 = trunc i32 %18 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %19 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i29 = getelementptr inbounds %struct.docg3_cascade, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %base.i.i29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i29, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %22, i32 4150
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i30, i8 %conv8) #13, !srcloc !319
  %conv1.i.i31 = and i32 %18, 255
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4150, i32 noundef %conv1.i.i31) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %cascade.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cascade.i.i, align 4
  %base.i.i34 = getelementptr inbounds %struct.docg3_cascade, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %base.i.i34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i34, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %26, i32 4158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i35, i8 0) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4158, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @doc_write_data_area(ptr nocapture noundef readonly %docg3, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @doc_write_data_area.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@doc_write_data_area, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !317

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %docg3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %docg3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @doc_write_data_area.__UNIQUE_ID_ddebug264, ptr noundef %1, ptr noundef nonnull @.str.78, ptr noundef %buf, i32 noundef %len) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %len, 3
  %sub = and i32 %len, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %cascade.i = getelementptr inbounds %struct.docg3, ptr %docg3, i32 0, i32 1
  %2 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cascade.i, align 4
  %base.i = getelementptr inbounds %struct.docg3_cascade, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 8) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 2048) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp34 = icmp sgt i32 %sub, 0
  br i1 %cmp34, label %do.end.for.body_crit_edge, label %do.end.for.cond3.preheader_crit_edge

do.end.for.cond3.preheader_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond3.preheader

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.cond3.preheader:                              ; preds = %for.body.for.cond3.preheader_crit_edge, %do.end.for.cond3.preheader_crit_edge
  %src16.0.lcssa = phi ptr [ %buf, %do.end.for.cond3.preheader_crit_edge ], [ %incdec.ptr, %for.body.for.cond3.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp437.not = icmp eq i32 %and, 0
  br i1 %cmp437.not, label %for.cond3.preheader.for.end8_crit_edge, label %for.body5

for.cond3.preheader.for.end8_crit_edge:           ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end8

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.036 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %src16.035 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %buf, %do.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %src16.035 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %src16.035, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #13
  %9 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cascade.i, align 4
  %base.i24 = getelementptr inbounds %struct.docg3_cascade, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %base.i24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i24, align 4
  %add.ptr.i25 = getelementptr i8, ptr %12, i32 2048
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i25, i16 %8) #13, !srcloc !321
  %conv1.i = zext i16 %7 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 2048, i32 noundef %conv1.i) #13
  %incdec.ptr = getelementptr i16, ptr %src16.035, i32 1
  %add = add nuw nsw i32 %i.036, 2
  %cmp = icmp slt i32 %add, %sub
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond3.preheader_crit_edge

for.body.for.cond3.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond3.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body5:                                        ; preds = %for.cond3.preheader
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %13 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cascade.i, align 4
  %base.i27 = getelementptr inbounds %struct.docg3_cascade, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %base.i27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i27, align 4
  %add.ptr.i28 = getelementptr i8, ptr %16, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i28, i16 72) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 18432) #13
  %17 = ptrtoint ptr %src16.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %src16.0.lcssa, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %19 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cascade.i, align 4
  %base.i30 = getelementptr inbounds %struct.docg3_cascade, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %base.i30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i30, align 4
  %add.ptr.i31 = getelementptr i8, ptr %22, i32 2048
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i31, i8 %18) #13, !srcloc !319
  %conv1.i32 = zext i8 %18 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 2048, i32 noundef %conv1.i32) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %exitcond.not = icmp eq i32 %and, 1
  br i1 %exitcond.not, label %for.body5.for.end8_crit_edge, label %for.body5.1

for.body5.for.end8_crit_edge:                     ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end8

for.body5.1:                                      ; preds = %for.body5
  %incdec.ptr6 = getelementptr i8, ptr %src16.0.lcssa, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cascade.i, align 4
  %base.i27.1 = getelementptr inbounds %struct.docg3_cascade, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %base.i27.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i27.1, align 4
  %add.ptr.i28.1 = getelementptr i8, ptr %26, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i28.1, i16 72) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 18432) #13
  %27 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr6, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cascade.i, align 4
  %base.i30.1 = getelementptr inbounds %struct.docg3_cascade, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %base.i30.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i30.1, align 4
  %add.ptr.i31.1 = getelementptr i8, ptr %32, i32 2048
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i31.1, i8 %28) #13, !srcloc !319
  %conv1.i32.1 = zext i8 %28 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 2048, i32 noundef %conv1.i32.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %exitcond.not.1 = icmp eq i32 %and, 2
  br i1 %exitcond.not.1, label %for.body5.1.for.end8_crit_edge, label %for.body5.2

for.body5.1.for.end8_crit_edge:                   ; preds = %for.body5.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end8

for.body5.2:                                      ; preds = %for.body5.1
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr6.1 = getelementptr i8, ptr %src16.0.lcssa, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %33 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cascade.i, align 4
  %base.i27.2 = getelementptr inbounds %struct.docg3_cascade, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %base.i27.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i27.2, align 4
  %add.ptr.i28.2 = getelementptr i8, ptr %36, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i28.2, i16 72) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 18432) #13
  %37 = ptrtoint ptr %incdec.ptr6.1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr6.1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %39 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cascade.i, align 4
  %base.i30.2 = getelementptr inbounds %struct.docg3_cascade, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %base.i30.2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i30.2, align 4
  %add.ptr.i31.2 = getelementptr i8, ptr %42, i32 2048
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i31.2, i8 %38) #13, !srcloc !319
  %conv1.i32.2 = zext i8 %38 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 2048, i32 noundef %conv1.i32.2) #13
  br label %for.end8

for.end8:                                         ; preds = %for.body5.2, %for.body5.1.for.end8_crit_edge, %for.body5.for.end8_crit_edge, %for.cond3.preheader.for.end8_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @docg3_ooblayout_ecc(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 7, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @docg3_ooblayout_free(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %section)
  %cmp = icmp sgt i32 %section, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  %. = select i1 %tobool.not, i32 0, i32 15
  %.10 = select i1 %tobool.not, i32 7, i32 1
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %., ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.10, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -34, %entry.return_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flashcontrol_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @flashcontrol_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flashcontrol_show(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %cascade = getelementptr inbounds %struct.docg3, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cascade, align 4
  %lock = getelementptr inbounds %struct.docg3_cascade, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cascade, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 14352) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4152) #13
  %8 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cascade, align 4
  %base.i6.i = getelementptr inbounds %struct.docg3_cascade, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %11, i32 4152
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i = zext i8 %12 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4152, i32 noundef %conv2.i.i) #13
  %13 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cascade, align 4
  %lock2 = getelementptr inbounds %struct.docg3_cascade, ptr %14, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock2) #13
  %and = and i32 %conv2.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.89, ptr @.str.88
  %and6 = and i32 %conv2.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %cond8 = select i1 %tobool7.not, ptr @.str.91, ptr @.str.90
  %and10 = and i32 %conv2.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %cond12 = select i1 %tobool11.not, ptr @.str.89, ptr @.str.92
  %and14 = and i32 %conv2.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %cond16 = select i1 %tobool15.not, ptr @.str.89, ptr @.str.93
  %and18 = and i32 %conv2.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %cond20 = select i1 %tobool19.not, ptr @.str.95, ptr @.str.94
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.87, i32 noundef %conv2.i.i, ptr noundef nonnull %cond, ptr noundef nonnull %cond8, ptr noundef nonnull %cond12, ptr noundef nonnull %cond16, ptr noundef nonnull %cond20) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asic_mode_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @asic_mode_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asic_mode_show(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %cascade = getelementptr inbounds %struct.docg3, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cascade, align 4
  %lock = getelementptr inbounds %struct.docg3_cascade, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cascade, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 3088) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4108) #13
  %8 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cascade, align 4
  %base.i6.i = getelementptr inbounds %struct.docg3_cascade, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %11, i32 4108
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i = zext i8 %12 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4108, i32 noundef %conv2.i.i) #13
  %and = and i32 %conv2.i.i, 3
  %13 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cascade, align 4
  %lock2 = getelementptr inbounds %struct.docg3_cascade, ptr %14, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock2) #13
  %and3 = lshr i32 %conv2.i.i, 5
  %and3.lobit = and i32 %and3, 1
  %and4 = lshr i32 %conv2.i.i, 4
  %and4.lobit = and i32 %and4, 1
  %and7 = lshr i32 %conv2.i.i, 3
  %and7.lobit = and i32 %and7, 1
  %and10 = lshr i32 %conv2.i.i, 2
  %and10.lobit = and i32 %and10, 1
  %and13 = lshr i32 %conv2.i.i, 1
  %and13.lobit = and i32 %and13, 1
  %15 = lshr i32 %and, 1
  %and16 = and i32 %conv2.i.i, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv2.i.i, i32 noundef %and3.lobit, i32 noundef %and4.lobit, i32 noundef %and7.lobit, i32 noundef %and10.lobit, i32 noundef %and13.lobit, i32 noundef %15, i32 noundef %and16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %.not = icmp eq i32 %and, 3
  br i1 %.not, label %entry.sw.epilog_crit_edge, label %switch.lookup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.asic_mode_show, i32 0, i32 %and
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load ptr, ptr %switch.gep, align 4
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %switch.load) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.99) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_id_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @device_id_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_id_show(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %cascade = getelementptr inbounds %struct.docg3, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cascade, align 4
  %lock = getelementptr inbounds %struct.docg3_cascade, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cascade, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 2576) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4106) #13
  %8 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cascade, align 4
  %base.i6.i = getelementptr inbounds %struct.docg3_cascade, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %11, i32 4106
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i = zext i8 %12 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4106, i32 noundef %conv2.i.i) #13
  %13 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cascade, align 4
  %lock2 = getelementptr inbounds %struct.docg3_cascade, ptr %14, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock2) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.100, i32 noundef %conv2.i.i) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @protection_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @protection_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @protection_show(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %cascade = getelementptr inbounds %struct.docg3, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cascade, align 4
  %lock = getelementptr inbounds %struct.docg3_cascade, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cascade, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 22032) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4182) #13
  %8 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cascade, align 4
  %base.i6.i = getelementptr inbounds %struct.docg3_cascade, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %11, i32 4182
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i = zext i8 %12 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4182, i32 noundef %conv2.i.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %13 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cascade, align 4
  %base.i.i128 = getelementptr inbounds %struct.docg3_cascade, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %base.i.i128 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i128, align 4
  %add.ptr.i.i129 = getelementptr i8, ptr %16, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i129, i16 27664) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4204) #13
  %17 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cascade, align 4
  %base.i6.i130 = getelementptr inbounds %struct.docg3_cascade, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %base.i6.i130 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i6.i130, align 4
  %add.ptr.i7.i131 = getelementptr i8, ptr %20, i32 4204
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i131) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i132 = zext i8 %21 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4204, i32 noundef %conv2.i.i132) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %22 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cascade, align 4
  %base.i.i134 = getelementptr inbounds %struct.docg3_cascade, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %base.i.i134 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i134, align 4
  %add.ptr.i.i135 = getelementptr i8, ptr %25, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i135, i16 24592) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4192) #13
  %26 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cascade, align 4
  %base.i6.i136 = getelementptr inbounds %struct.docg3_cascade, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %base.i6.i136 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i6.i136, align 4
  %add.ptr.i7.i137 = getelementptr i8, ptr %29, i32 4192
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i7.i137) #13, !srcloc !324
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %conv2.i.i138 = zext i16 %31 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 16, i16 noundef zeroext 4192, i32 noundef %conv2.i.i138) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %32 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cascade, align 4
  %base.i.i140 = getelementptr inbounds %struct.docg3_cascade, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %base.i.i140 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i140, align 4
  %add.ptr.i.i141 = getelementptr i8, ptr %35, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i141, i16 25104) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4194) #13
  %36 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cascade, align 4
  %base.i6.i142 = getelementptr inbounds %struct.docg3_cascade, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %base.i6.i142 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i6.i142, align 4
  %add.ptr.i7.i143 = getelementptr i8, ptr %39, i32 4194
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i7.i143) #13, !srcloc !324
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %conv2.i.i144 = zext i16 %41 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 16, i16 noundef zeroext 4194, i32 noundef %conv2.i.i144) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %42 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cascade, align 4
  %base.i.i146 = getelementptr inbounds %struct.docg3_cascade, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %base.i.i146 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i146, align 4
  %add.ptr.i.i147 = getelementptr i8, ptr %45, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i147, i16 28176) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4206) #13
  %46 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cascade, align 4
  %base.i6.i148 = getelementptr inbounds %struct.docg3_cascade, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %base.i6.i148 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i6.i148, align 4
  %add.ptr.i7.i149 = getelementptr i8, ptr %49, i32 4206
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i149) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i150 = zext i8 %50 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4206, i32 noundef %conv2.i.i150) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %51 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cascade, align 4
  %base.i.i152 = getelementptr inbounds %struct.docg3_cascade, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %base.i.i152 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i152, align 4
  %add.ptr.i.i153 = getelementptr i8, ptr %54, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i153, i16 25616) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4196) #13
  %55 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cascade, align 4
  %base.i6.i154 = getelementptr inbounds %struct.docg3_cascade, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %base.i6.i154 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i6.i154, align 4
  %add.ptr.i7.i155 = getelementptr i8, ptr %58, i32 4196
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i7.i155) #13, !srcloc !324
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %conv2.i.i156 = zext i16 %60 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 16, i16 noundef zeroext 4196, i32 noundef %conv2.i.i156) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %61 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cascade, align 4
  %base.i.i158 = getelementptr inbounds %struct.docg3_cascade, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %base.i.i158 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i158, align 4
  %add.ptr.i.i159 = getelementptr i8, ptr %64, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i159, i16 26128) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4198) #13
  %65 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cascade, align 4
  %base.i6.i160 = getelementptr inbounds %struct.docg3_cascade, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %base.i6.i160 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i6.i160, align 4
  %add.ptr.i7.i161 = getelementptr i8, ptr %68, i32 4198
  %69 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i7.i161) #13, !srcloc !324
  %70 = tail call i16 @llvm.bswap.i16(i16 %69) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %conv2.i.i162 = zext i16 %70 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 16, i16 noundef zeroext 4198, i32 noundef %conv2.i.i162) #13
  %71 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cascade, align 4
  %lock8 = getelementptr inbounds %struct.docg3_cascade, ptr %72, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock8) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.101, i32 noundef %conv2.i.i) #13
  %and = and i32 %conv2.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.102) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and9 = and i32 %conv2.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.103) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  %and13 = and i32 %conv2.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.104) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12.if.end16_crit_edge
  %and17 = and i32 %conv2.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.105) #13
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %and21 = and i32 %conv2.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end24_crit_edge, label %if.then23

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.106) #13
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  %and25 = and i32 %conv2.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end28_crit_edge, label %if.then27

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.107) #13
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24.if.end28_crit_edge
  %and29 = and i32 %conv2.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %.str.109..str.108 = select i1 %tobool30.not, ptr @.str.109, ptr @.str.108
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.109..str.108) #13
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.99) #13
  %and33 = and i32 %conv2.i.i132, 1
  %and36 = lshr i32 %conv2.i.i132, 1
  %and36.lobit = and i32 %and36, 1
  %and42 = lshr i32 %conv2.i.i132, 2
  %and42.lobit = and i32 %and42, 1
  %and48 = lshr i32 %conv2.i.i132, 3
  %and48.lobit = and i32 %and48, 1
  %and54 = lshr i32 %conv2.i.i132, 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.110, i32 noundef %conv2.i.i132, i32 noundef %conv2.i.i138, i32 noundef %conv2.i.i144, i32 noundef %and33, i32 noundef %and36.lobit, i32 noundef %and42.lobit, i32 noundef %and48.lobit, i32 noundef %and54) #13
  %and60 = and i32 %conv2.i.i150, 1
  %and66 = lshr i32 %conv2.i.i150, 1
  %and66.lobit = and i32 %and66, 1
  %and72 = lshr i32 %conv2.i.i150, 2
  %and72.lobit = and i32 %and72, 1
  %and78 = lshr i32 %conv2.i.i150, 3
  %and78.lobit = and i32 %and78, 1
  %and84 = lshr i32 %conv2.i.i150, 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.111, i32 noundef %conv2.i.i150, i32 noundef %conv2.i.i156, i32 noundef %conv2.i.i162, i32 noundef %and60, i32 noundef %and66.lobit, i32 noundef %and72.lobit, i32 noundef %and78.lobit, i32 noundef %and84) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dps0_is_key_locked(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = add i8 %3, -52
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %4)
  %5 = icmp ult i8 %4, -4
  br i1 %5, label %entry.sysfs_dev2docg3.exit_crit_edge, label %if.else.i

entry.sysfs_dev2docg3.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sysfs_dev2docg3.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = zext i8 %3 to i32
  %sub.i = add nsw i32 %conv.i, -48
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx5.i = getelementptr ptr, ptr %7, i32 %sub.i
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5.i, align 4
  %priv.i = getelementptr inbounds %struct.mtd_info, ptr %9, i32 0, i32 54
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  br label %sysfs_dev2docg3.exit

sysfs_dev2docg3.exit:                             ; preds = %if.else.i, %entry.sysfs_dev2docg3.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.else.i ], [ null, %entry.sysfs_dev2docg3.exit_crit_edge ]
  %cascade = getelementptr inbounds %struct.docg3, ptr %retval.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cascade, align 4
  %lock = getelementptr inbounds %struct.docg3_cascade, ptr %13, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %device_id = getelementptr inbounds %struct.docg3, ptr %retval.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %device_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %device_id, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.cast = zext i8 %bf.lshr to i32
  tail call fastcc void @doc_set_device_id(ptr noundef %retval.0.i, i32 noundef %bf.cast)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cascade, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 27664) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4204) #13
  %19 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cascade, align 4
  %base.i6.i = getelementptr inbounds %struct.docg3_cascade, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %22, i32 4204
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i = zext i8 %23 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4204, i32 noundef %conv2.i.i) #13
  tail call fastcc void @doc_set_device_id(ptr noundef %retval.0.i, i32 noundef 0)
  %24 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cascade, align 4
  %lock3 = getelementptr inbounds %struct.docg3_cascade, ptr %25, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock3) #13
  %and = lshr i32 %conv2.i.i, 7
  %26 = xor i32 %and, 1
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.128, i32 noundef %26)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dps1_is_key_locked(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = add i8 %3, -52
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %4)
  %5 = icmp ult i8 %4, -4
  br i1 %5, label %entry.sysfs_dev2docg3.exit_crit_edge, label %if.else.i

entry.sysfs_dev2docg3.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sysfs_dev2docg3.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = zext i8 %3 to i32
  %sub.i = add nsw i32 %conv.i, -48
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx5.i = getelementptr ptr, ptr %7, i32 %sub.i
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5.i, align 4
  %priv.i = getelementptr inbounds %struct.mtd_info, ptr %9, i32 0, i32 54
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  br label %sysfs_dev2docg3.exit

sysfs_dev2docg3.exit:                             ; preds = %if.else.i, %entry.sysfs_dev2docg3.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.else.i ], [ null, %entry.sysfs_dev2docg3.exit_crit_edge ]
  %cascade = getelementptr inbounds %struct.docg3, ptr %retval.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cascade, align 4
  %lock = getelementptr inbounds %struct.docg3_cascade, ptr %13, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %device_id = getelementptr inbounds %struct.docg3, ptr %retval.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %device_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %device_id, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.cast = zext i8 %bf.lshr to i32
  tail call fastcc void @doc_set_device_id(ptr noundef %retval.0.i, i32 noundef %bf.cast)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cascade, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 28176) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4206) #13
  %19 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cascade, align 4
  %base.i6.i = getelementptr inbounds %struct.docg3_cascade, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %22, i32 4206
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i = zext i8 %23 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4206, i32 noundef %conv2.i.i) #13
  tail call fastcc void @doc_set_device_id(ptr noundef %retval.0.i, i32 noundef 0)
  %24 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cascade, align 4
  %lock3 = getelementptr inbounds %struct.docg3_cascade, ptr %25, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock3) #13
  %and = lshr i32 %conv2.i.i, 7
  %26 = xor i32 %and, 1
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.128, i32 noundef %26)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dps0_insert_key(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = add i8 %3, -52
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %4)
  %5 = icmp ult i8 %4, -4
  br i1 %5, label %entry.sysfs_dev2docg3.exit_crit_edge, label %if.else.i

entry.sysfs_dev2docg3.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sysfs_dev2docg3.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = zext i8 %3 to i32
  %sub.i = add nsw i32 %conv.i, -48
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx5.i = getelementptr ptr, ptr %7, i32 %sub.i
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5.i, align 4
  %priv.i = getelementptr inbounds %struct.mtd_info, ptr %9, i32 0, i32 54
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  br label %sysfs_dev2docg3.exit

sysfs_dev2docg3.exit:                             ; preds = %if.else.i, %entry.sysfs_dev2docg3.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.else.i ], [ null, %entry.sysfs_dev2docg3.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %count)
  %cmp.not = icmp eq i32 %count, 8
  br i1 %cmp.not, label %if.end, label %sysfs_dev2docg3.exit.cleanup_crit_edge

sysfs_dev2docg3.exit.cleanup_crit_edge:           ; preds = %sysfs_dev2docg3.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sysfs_dev2docg3.exit
  call void @__sanitizer_cov_trace_pc() #15
  %cascade = getelementptr inbounds %struct.docg3, ptr %retval.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cascade, align 4
  %lock = getelementptr inbounds %struct.docg3_cascade, ptr %13, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %device_id = getelementptr inbounds %struct.docg3, ptr %retval.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %device_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %device_id, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.cast = zext i8 %bf.lshr to i32
  tail call fastcc void @doc_set_device_id(ptr noundef %retval.0.i, i32 noundef %bf.cast)
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cascade, align 4
  %base.i = getelementptr inbounds %struct.docg3_cascade, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 4188
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %16) #13, !srcloc !319
  %conv1.i = zext i8 %16 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4188, i32 noundef %conv1.i) #13
  %arrayidx.1 = getelementptr i8, ptr %buf, i32 1
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cascade, align 4
  %base.i.1 = getelementptr inbounds %struct.docg3_cascade, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %base.i.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.1, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %26, i32 4188
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.1, i8 %22) #13, !srcloc !319
  %conv1.i.1 = zext i8 %22 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4188, i32 noundef %conv1.i.1) #13
  %arrayidx.2 = getelementptr i8, ptr %buf, i32 2
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cascade, align 4
  %base.i.2 = getelementptr inbounds %struct.docg3_cascade, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %base.i.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.2, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %32, i32 4188
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.2, i8 %28) #13, !srcloc !319
  %conv1.i.2 = zext i8 %28 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4188, i32 noundef %conv1.i.2) #13
  %arrayidx.3 = getelementptr i8, ptr %buf, i32 3
  %33 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.3, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %35 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cascade, align 4
  %base.i.3 = getelementptr inbounds %struct.docg3_cascade, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %base.i.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.3, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %38, i32 4188
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.3, i8 %34) #13, !srcloc !319
  %conv1.i.3 = zext i8 %34 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4188, i32 noundef %conv1.i.3) #13
  %arrayidx.4 = getelementptr i8, ptr %buf, i32 4
  %39 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.4, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %41 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cascade, align 4
  %base.i.4 = getelementptr inbounds %struct.docg3_cascade, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %base.i.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.4, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %44, i32 4188
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.4, i8 %40) #13, !srcloc !319
  %conv1.i.4 = zext i8 %40 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4188, i32 noundef %conv1.i.4) #13
  %arrayidx.5 = getelementptr i8, ptr %buf, i32 5
  %45 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.5, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %47 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cascade, align 4
  %base.i.5 = getelementptr inbounds %struct.docg3_cascade, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %base.i.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.5, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %50, i32 4188
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.5, i8 %46) #13, !srcloc !319
  %conv1.i.5 = zext i8 %46 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4188, i32 noundef %conv1.i.5) #13
  %arrayidx.6 = getelementptr i8, ptr %buf, i32 6
  %51 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.6, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %53 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cascade, align 4
  %base.i.6 = getelementptr inbounds %struct.docg3_cascade, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %base.i.6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.6, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %56, i32 4188
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.6, i8 %52) #13, !srcloc !319
  %conv1.i.6 = zext i8 %52 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4188, i32 noundef %conv1.i.6) #13
  %arrayidx.7 = getelementptr i8, ptr %buf, i32 7
  %57 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.7, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %59 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cascade, align 4
  %base.i.7 = getelementptr inbounds %struct.docg3_cascade, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %base.i.7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.7, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %62, i32 4188
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.7, i8 %58) #13, !srcloc !319
  %conv1.i.7 = zext i8 %58 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4188, i32 noundef %conv1.i.7) #13
  tail call fastcc void @doc_set_device_id(ptr noundef %retval.0.i, i32 noundef 0)
  %63 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cascade, align 4
  %lock3 = getelementptr inbounds %struct.docg3_cascade, ptr %64, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sysfs_dev2docg3.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %if.end ], [ -22, %sysfs_dev2docg3.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dps1_insert_key(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = add i8 %3, -52
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %4)
  %5 = icmp ult i8 %4, -4
  br i1 %5, label %entry.sysfs_dev2docg3.exit_crit_edge, label %if.else.i

entry.sysfs_dev2docg3.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sysfs_dev2docg3.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = zext i8 %3 to i32
  %sub.i = add nsw i32 %conv.i, -48
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx5.i = getelementptr ptr, ptr %7, i32 %sub.i
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5.i, align 4
  %priv.i = getelementptr inbounds %struct.mtd_info, ptr %9, i32 0, i32 54
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  br label %sysfs_dev2docg3.exit

sysfs_dev2docg3.exit:                             ; preds = %if.else.i, %entry.sysfs_dev2docg3.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.else.i ], [ null, %entry.sysfs_dev2docg3.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %count)
  %cmp.not = icmp eq i32 %count, 8
  br i1 %cmp.not, label %if.end, label %sysfs_dev2docg3.exit.cleanup_crit_edge

sysfs_dev2docg3.exit.cleanup_crit_edge:           ; preds = %sysfs_dev2docg3.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sysfs_dev2docg3.exit
  call void @__sanitizer_cov_trace_pc() #15
  %cascade = getelementptr inbounds %struct.docg3, ptr %retval.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cascade, align 4
  %lock = getelementptr inbounds %struct.docg3_cascade, ptr %13, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %device_id = getelementptr inbounds %struct.docg3, ptr %retval.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %device_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %device_id, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.cast = zext i8 %bf.lshr to i32
  tail call fastcc void @doc_set_device_id(ptr noundef %retval.0.i, i32 noundef %bf.cast)
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cascade, align 4
  %base.i = getelementptr inbounds %struct.docg3_cascade, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 4190
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %16) #13, !srcloc !319
  %conv1.i = zext i8 %16 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4190, i32 noundef %conv1.i) #13
  %arrayidx.1 = getelementptr i8, ptr %buf, i32 1
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cascade, align 4
  %base.i.1 = getelementptr inbounds %struct.docg3_cascade, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %base.i.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.1, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %26, i32 4190
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.1, i8 %22) #13, !srcloc !319
  %conv1.i.1 = zext i8 %22 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4190, i32 noundef %conv1.i.1) #13
  %arrayidx.2 = getelementptr i8, ptr %buf, i32 2
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cascade, align 4
  %base.i.2 = getelementptr inbounds %struct.docg3_cascade, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %base.i.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.2, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %32, i32 4190
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.2, i8 %28) #13, !srcloc !319
  %conv1.i.2 = zext i8 %28 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4190, i32 noundef %conv1.i.2) #13
  %arrayidx.3 = getelementptr i8, ptr %buf, i32 3
  %33 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.3, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %35 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cascade, align 4
  %base.i.3 = getelementptr inbounds %struct.docg3_cascade, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %base.i.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.3, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %38, i32 4190
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.3, i8 %34) #13, !srcloc !319
  %conv1.i.3 = zext i8 %34 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4190, i32 noundef %conv1.i.3) #13
  %arrayidx.4 = getelementptr i8, ptr %buf, i32 4
  %39 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.4, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %41 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cascade, align 4
  %base.i.4 = getelementptr inbounds %struct.docg3_cascade, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %base.i.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.4, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %44, i32 4190
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.4, i8 %40) #13, !srcloc !319
  %conv1.i.4 = zext i8 %40 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4190, i32 noundef %conv1.i.4) #13
  %arrayidx.5 = getelementptr i8, ptr %buf, i32 5
  %45 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.5, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %47 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cascade, align 4
  %base.i.5 = getelementptr inbounds %struct.docg3_cascade, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %base.i.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.5, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %50, i32 4190
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.5, i8 %46) #13, !srcloc !319
  %conv1.i.5 = zext i8 %46 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4190, i32 noundef %conv1.i.5) #13
  %arrayidx.6 = getelementptr i8, ptr %buf, i32 6
  %51 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.6, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %53 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cascade, align 4
  %base.i.6 = getelementptr inbounds %struct.docg3_cascade, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %base.i.6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.6, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %56, i32 4190
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.6, i8 %52) #13, !srcloc !319
  %conv1.i.6 = zext i8 %52 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4190, i32 noundef %conv1.i.6) #13
  %arrayidx.7 = getelementptr i8, ptr %buf, i32 7
  %57 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.7, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %59 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cascade, align 4
  %base.i.7 = getelementptr inbounds %struct.docg3_cascade, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %base.i.7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.7, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %62, i32 4190
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.7, i8 %58) #13, !srcloc !319
  %conv1.i.7 = zext i8 %58 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4190, i32 noundef %conv1.i.7) #13
  tail call fastcc void @doc_set_device_id(ptr noundef %retval.0.i, i32 noundef 0)
  %63 = ptrtoint ptr %cascade to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cascade, align 4
  %lock3 = getelementptr inbounds %struct.docg3_cascade, ptr %64, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sysfs_dev2docg3.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %if.end ], [ -22, %sysfs_dev2docg3.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @docg3_release(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %priv = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.for.inc_crit_edge, label %for.body4.preheader.i

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body4.preheader.i:                            ; preds = %entry
  tail call void @device_remove_file(ptr noundef %dev1.i, ptr noundef nonnull @doc_sys_attrs) #13
  tail call void @device_remove_file(ptr noundef %dev1.i, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 0, i32 1)) #13
  tail call void @device_remove_file(ptr noundef %dev1.i, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 0, i32 2)) #13
  tail call void @device_remove_file(ptr noundef %dev1.i, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 0, i32 3)) #13
  %arrayidx.1.i = getelementptr [4 x ptr], ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %7, null
  br i1 %tobool.not.1.i, label %for.body4.preheader.i.doc_unregister_sysfs.exit_crit_edge, label %for.body4.preheader.1.i

for.body4.preheader.i.doc_unregister_sysfs.exit_crit_edge: ; preds = %for.body4.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %doc_unregister_sysfs.exit

for.body4.preheader.1.i:                          ; preds = %for.body4.preheader.i
  tail call void @device_remove_file(ptr noundef %dev1.i, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 1, i32 0)) #13
  tail call void @device_remove_file(ptr noundef %dev1.i, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 1, i32 1)) #13
  tail call void @device_remove_file(ptr noundef %dev1.i, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 1, i32 2)) #13
  tail call void @device_remove_file(ptr noundef %dev1.i, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 1, i32 3)) #13
  %arrayidx.2.i = getelementptr [4 x ptr], ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %9, null
  br i1 %tobool.not.2.i, label %for.body4.preheader.1.i.doc_unregister_sysfs.exit_crit_edge, label %for.body4.preheader.2.i

for.body4.preheader.1.i.doc_unregister_sysfs.exit_crit_edge: ; preds = %for.body4.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %doc_unregister_sysfs.exit

for.body4.preheader.2.i:                          ; preds = %for.body4.preheader.1.i
  tail call void @device_remove_file(ptr noundef %dev1.i, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 2, i32 0)) #13
  tail call void @device_remove_file(ptr noundef %dev1.i, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 2, i32 1)) #13
  tail call void @device_remove_file(ptr noundef %dev1.i, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 2, i32 2)) #13
  tail call void @device_remove_file(ptr noundef %dev1.i, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 2, i32 3)) #13
  %arrayidx.3.i = getelementptr [4 x ptr], ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %11, null
  br i1 %tobool.not.3.i, label %for.body4.preheader.2.i.doc_unregister_sysfs.exit_crit_edge, label %for.body4.preheader.3.i

for.body4.preheader.2.i.doc_unregister_sysfs.exit_crit_edge: ; preds = %for.body4.preheader.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %doc_unregister_sysfs.exit

for.body4.preheader.3.i:                          ; preds = %for.body4.preheader.2.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @device_remove_file(ptr noundef %dev1.i, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 3, i32 0)) #13
  tail call void @device_remove_file(ptr noundef %dev1.i, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 3, i32 1)) #13
  tail call void @device_remove_file(ptr noundef %dev1.i, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 3, i32 2)) #13
  tail call void @device_remove_file(ptr noundef %dev1.i, ptr noundef getelementptr inbounds ([4 x [4 x %struct.device_attribute]], ptr @doc_sys_attrs, i32 0, i32 3, i32 3)) #13
  br label %doc_unregister_sysfs.exit

doc_unregister_sysfs.exit:                        ; preds = %for.body4.preheader.3.i, %for.body4.preheader.2.i.doc_unregister_sysfs.exit_crit_edge, %for.body4.preheader.1.i.doc_unregister_sysfs.exit_crit_edge, %for.body4.preheader.i.doc_unregister_sysfs.exit_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %.pr, null
  br i1 %tobool.not, label %doc_unregister_sysfs.exit.for.inc_crit_edge, label %if.then

doc_unregister_sysfs.exit.for.inc_crit_edge:      ; preds = %doc_unregister_sysfs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %doc_unregister_sysfs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %priv.i = getelementptr inbounds %struct.mtd_info, ptr %.pr, i32 0, i32 54
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 8
  %call.i = tail call i32 @mtd_device_unregister(ptr noundef nonnull %.pr) #13
  %bbt.i = getelementptr inbounds %struct.docg3, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %bbt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bbt.i, align 8
  tail call void @kfree(ptr noundef %16) #13
  tail call void @kfree(ptr noundef %14) #13
  tail call void @kfree(ptr noundef nonnull %.pr) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then, %doc_unregister_sysfs.exit.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx2.1 = getelementptr [4 x ptr], ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx2.1, align 4
  %tobool.not.1 = icmp eq ptr %18, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %priv.i.1 = getelementptr inbounds %struct.mtd_info, ptr %18, i32 0, i32 54
  %19 = ptrtoint ptr %priv.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i.1, align 8
  %call.i.1 = tail call i32 @mtd_device_unregister(ptr noundef nonnull %18) #13
  %bbt.i.1 = getelementptr inbounds %struct.docg3, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %bbt.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bbt.i.1, align 8
  tail call void @kfree(ptr noundef %22) #13
  tail call void @kfree(ptr noundef %20) #13
  tail call void @kfree(ptr noundef nonnull %18) #13
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx2.2 = getelementptr [4 x ptr], ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx2.2, align 4
  %tobool.not.2 = icmp eq ptr %24, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  %priv.i.2 = getelementptr inbounds %struct.mtd_info, ptr %24, i32 0, i32 54
  %25 = ptrtoint ptr %priv.i.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv.i.2, align 8
  %call.i.2 = tail call i32 @mtd_device_unregister(ptr noundef nonnull %24) #13
  %bbt.i.2 = getelementptr inbounds %struct.docg3, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %bbt.i.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bbt.i.2, align 8
  tail call void @kfree(ptr noundef %28) #13
  tail call void @kfree(ptr noundef %26) #13
  tail call void @kfree(ptr noundef nonnull %24) #13
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx2.3 = getelementptr [4 x ptr], ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx2.3, align 4
  %tobool.not.3 = icmp eq ptr %30, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  %priv.i.3 = getelementptr inbounds %struct.mtd_info, ptr %30, i32 0, i32 54
  %31 = ptrtoint ptr %priv.i.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv.i.3, align 8
  %call.i.3 = tail call i32 @mtd_device_unregister(ptr noundef nonnull %30) #13
  %bbt.i.3 = getelementptr inbounds %struct.docg3, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %bbt.i.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bbt.i.3, align 8
  tail call void @kfree(ptr noundef %34) #13
  tail call void @kfree(ptr noundef %32) #13
  tail call void @kfree(ptr noundef nonnull %30) #13
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %cascade5 = getelementptr inbounds %struct.docg3, ptr %5, i32 0, i32 1
  %35 = ptrtoint ptr %cascade5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cascade5, align 4
  %bch = getelementptr inbounds %struct.docg3_cascade, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bch, align 4
  tail call void @bch_free(ptr noundef %38) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @docg3_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc31.for.body_crit_edge, %entry
  %floor.074 = phi i32 [ 0, %entry ], [ %inc32, %for.inc31.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %1, i32 %floor.074
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc31_crit_edge, label %if.end

for.body.for.inc31_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc31

if.end:                                           ; preds = %for.body
  %priv = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %conv = trunc i32 %floor.074 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %cascade.i = getelementptr inbounds %struct.docg3, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cascade.i, align 4
  %base.i = getelementptr inbounds %struct.docg3_cascade, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4106
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv) #13, !srcloc !319
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4106, i32 noundef %floor.074) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cascade.i, align 4
  %base.i.i = getelementptr inbounds %struct.docg3_cascade, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 14352) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4152) #13
  %14 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cascade.i, align 4
  %base.i6.i = getelementptr inbounds %struct.docg3_cascade, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %17, i32 4152
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i = zext i8 %18 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4152, i32 noundef %conv2.i.i) #13
  %conv4 = and i8 %18, -49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %19 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cascade.i, align 4
  %base.i61 = getelementptr inbounds %struct.docg3_cascade, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %base.i61 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i61, align 4
  %add.ptr.i62 = getelementptr i8, ptr %22, i32 4152
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i62, i8 %conv4) #13, !srcloc !319
  %conv1.i63 = zext i8 %conv4 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 8, i16 noundef zeroext 4152, i32 noundef %conv1.i63) #13
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %if.end
  %i.072 = phi i32 [ 0, %if.end ], [ %inc, %for.body8.for.body8_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cascade.i, align 4
  %base.i.i65 = getelementptr inbounds %struct.docg3_cascade, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %base.i.i65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i65, align 4
  %add.ptr.i.i66 = getelementptr i8, ptr %26, i32 4122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i66, i16 31760) #13, !srcloc !321
  tail call fastcc void @trace_docg3_io(i32 noundef 1, i32 noundef 16, i16 noundef zeroext 4122, i32 noundef 4220) #13
  %27 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cascade.i, align 4
  %base.i6.i67 = getelementptr inbounds %struct.docg3_cascade, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %base.i6.i67 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i6.i67, align 4
  %add.ptr.i7.i68 = getelementptr i8, ptr %30, i32 4220
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i68) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i.i69 = zext i8 %31 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 4220, i32 noundef %conv2.i.i69) #13
  %and12 = and i32 %conv2.i.i69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %inc = add nuw nsw i32 %i.072, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.072)
  %cmp6 = icmp ult i32 %i.072, 9
  %or.cond = select i1 %tobool13.not, i1 %cmp6, i1 false
  br i1 %or.cond, label %for.body8.for.body8_crit_edge, label %for.end

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body8

for.end:                                          ; preds = %for.body8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %31)
  %tobool18.not = icmp sgt i8 %31, -1
  br i1 %tobool18.not, label %do.end28, label %do.body

do.body:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @docg3_suspend.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@docg3_suspend, %if.then24)) #13
          to label %for.inc31 [label %if.then24], !srcloc !317

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @docg3_suspend.__UNIQUE_ID_ddebug294, ptr noundef %33, ptr noundef nonnull @.str.130, i32 noundef %floor.074) #13
  br label %for.inc31

do.end28:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.131, i32 noundef %floor.074) #16
  br label %cleanup

for.inc31:                                        ; preds = %if.then24, %do.body, %for.body.for.inc31_crit_edge
  %inc32 = add nuw nsw i32 %floor.074, 1
  %exitcond.not = icmp eq i32 %inc32, 4
  br i1 %exitcond.not, label %for.end33, label %for.inc31.for.body_crit_edge

for.inc31.for.body_crit_edge:                     ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end33:                                        ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %priv35 = getelementptr inbounds %struct.mtd_info, ptr %37, i32 0, i32 54
  %38 = ptrtoint ptr %priv35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv35, align 8
  tail call fastcc void @doc_set_asic_mode(ptr noundef %39, i8 noundef zeroext 2)
  br label %cleanup

cleanup:                                          ; preds = %for.end33, %do.end28
  %retval.0 = phi i32 [ -5, %do.end28 ], [ 0, %for.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @docg3_resume(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %priv = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @docg3_resume.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@docg3_resume, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !317

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @docg3_resume.__UNIQUE_ID_ddebug293, ptr noundef %7, ptr noundef nonnull @.str.133) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cascade.i = getelementptr inbounds %struct.docg3, ptr %5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end
  %i.08 = phi i32 [ 0, %do.end ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %cascade.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cascade.i, align 4
  %base.i = getelementptr inbounds %struct.docg3_cascade, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #13, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  %conv2.i = zext i8 %12 to i32
  tail call fastcc void @trace_docg3_io(i32 noundef 0, i32 noundef 8, i16 noundef zeroext 0, i32 noundef %conv2.i) #13
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 157)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 157)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { cold }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !18, !19, !21, !23, !25, !26, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !48, !49, !50, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !73, !74, !75, !76, !78, !79, !81, !82, !83, !85, !87, !88, !89, !91, !93, !95, !97, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !121, !123, !124, !125, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !267, !268, !269, !271, !272, !273, !274, !276, !277, !278, !279, !281, !282, !283, !284, !286, !288, !290, !292, !293, !294, !296, !297, !298, !300, !301, !302}
!llvm.named.register.sp = !{!304}
!llvm.module.flags = !{!305, !306, !307, !308, !309, !310, !311, !312}
!llvm.ident = !{!313}

!0 = !{ptr @__tracepoint_docg3_io, !1, !"__tracepoint_docg3_io", i1 false, i1 false}
!1 = !{!"../drivers/mtd/devices/./docg3.h", i32 319, i32 1}
!2 = !{ptr @__tracepoint_ptr_docg3_io, !1, !"__tracepoint_ptr_docg3_io", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_docg3_io, !1, !"__SCK__tp_func_docg3_io", i1 false, i1 false}
!4 = !{ptr @event_class_docg3_io, !1, !"event_class_docg3_io", i1 false, i1 false}
!5 = !{ptr @event_docg3_io, !1, !"event_docg3_io", i1 false, i1 false}
!6 = !{ptr @__event_docg3_io, !1, !"__event_docg3_io", i1 false, i1 false}
!7 = !{ptr @__bpf_trace_tp_map_docg3_io, !1, !"__bpf_trace_tp_map_docg3_io", i1 false, i1 false}
!8 = !{ptr @__param_reliable_mode, !9, !"__param_reliable_mode", i1 false, i1 false}
!9 = !{!"../drivers/mtd/devices/docg3.c", i32 52, i32 1}
!10 = !{ptr @__UNIQUE_ID_reliable_modetype260, !9, !"__UNIQUE_ID_reliable_modetype260", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_reliable_mode261, !12, !"__UNIQUE_ID_reliable_mode261", i1 false, i1 false}
!12 = !{!"../drivers/mtd/devices/docg3.c", i32 53, i32 1}
!13 = !{ptr @__initcall__kmod_docg3__295_2069_g3_driver_init6, !14, !"__initcall__kmod_docg3__295_2069_g3_driver_init6", i1 false, i1 false}
!14 = !{!"../drivers/mtd/devices/docg3.c", i32 2069, i32 1}
!15 = !{ptr @__exitcall_g3_driver_exit, !14, !"__exitcall_g3_driver_exit", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_file296, !17, !"__UNIQUE_ID_file296", i1 false, i1 false}
!17 = !{!"../drivers/mtd/devices/docg3.c", i32 2071, i32 1}
!18 = !{ptr @__UNIQUE_ID_license297, !17, !"__UNIQUE_ID_license297", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_author298, !20, !"__UNIQUE_ID_author298", i1 false, i1 false}
!20 = !{!"../drivers/mtd/devices/docg3.c", i32 2072, i32 1}
!21 = !{ptr @__UNIQUE_ID_description299, !22, !"__UNIQUE_ID_description299", i1 false, i1 false}
!22 = !{!"../drivers/mtd/devices/docg3.c", i32 2073, i32 1}
!23 = !{ptr @reliable_mode, !24, !"reliable_mode", i1 false, i1 false}
!24 = !{!"../drivers/mtd/devices/docg3.c", i32 51, i32 21}
!25 = !{ptr @__tpstrtab_docg3_io, !1, !"__tpstrtab_docg3_io", i1 false, i1 false}
!26 = !{ptr @str__docg3__trace_system_name, !27, !"str__docg3__trace_system_name", i1 false, i1 false}
!27 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!28 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @trace_event_fields_docg3_io, !1, !"trace_event_fields_docg3_io", i1 false, i1 false}
!36 = !{ptr @trace_event_type_funcs_docg3_io, !1, !"trace_event_type_funcs_docg3_io", i1 false, i1 false}
!37 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @print_fmt_docg3_io, !1, !"print_fmt_docg3_io", i1 false, i1 false}
!41 = !{ptr @__param_str_reliable_mode, !9, !"__param_str_reliable_mode", i1 false, i1 false}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/devices/docg3.c", i32 1974, i32 3}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @docg3_probe._entry, !43, !"_entry", i1 false, i1 false}
!49 = !{ptr @docg3_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @docg3_probe.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/mtd/devices/docg3.c", i32 1985, i32 2}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mtd/devices/docg3.c", i32 2021, i32 2}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @docg3_probe._entry.16, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @docg3_probe._entry_ptr.19, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/devices/docg3.c", i32 1837, i32 3}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @doc_probe_device._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @doc_probe_device._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/devices/docg3.c", i32 1841, i32 3}
!65 = !{ptr @doc_probe_device._entry.22, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @doc_probe_device._entry_ptr.24, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/devices/docg3.c", i32 377, i32 2}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @doc_set_device_id.__UNIQUE_ID_ddebug267, !68, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!72 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!73 = !{ptr @.str.28, !1, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!75 = !{ptr @.str.29, !1, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!78 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/devices/docg3.c", i32 359, i32 2}
!81 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @doc_set_asic_mode.__UNIQUE_ID_ddebug266, !80, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/devices/docg3.c", i32 1756, i32 54}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mtd/devices/docg3.c", i32 1182, i32 2}
!87 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @doc_erase.__UNIQUE_ID_ddebug290, !86, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mtd/devices/docg3.c", i32 319, i32 29}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mtd/devices/docg3.c", i32 319, i32 39}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mtd/devices/docg3.c", i32 319, i32 47}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mtd/devices/docg3.c", i32 319, i32 59}
!97 = !{ptr @doc_set_reliable_mode.strmode, !98, !"strmode", i1 false, i1 false}
!98 = !{!"../drivers/mtd/devices/docg3.c", i32 319, i32 15}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/devices/docg3.c", i32 321, i32 2}
!101 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @doc_set_reliable_mode.__UNIQUE_ID_ddebug265, !100, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mtd/devices/docg3.c", i32 335, i32 3}
!105 = !{ptr @doc_set_reliable_mode._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @doc_set_reliable_mode._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mtd/devices/docg3.c", i32 1138, i32 2}
!109 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @doc_erase_block.__UNIQUE_ID_ddebug289, !108, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mtd/devices/docg3.c", i32 1158, i32 3}
!113 = !{ptr @doc_erase_block._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @doc_erase_block._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mtd/devices/docg3.c", i32 218, i32 2}
!117 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @doc_reset_seq.__UNIQUE_ID_ddebug262, !116, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!119 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mtd/devices/docg3.c", i32 1106, i32 3}
!123 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @doc_write_erase_wait_status.__UNIQUE_ID_ddebug287, !122, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mtd/devices/docg3.c", i32 1113, i32 3}
!127 = !{ptr @doc_write_erase_wait_status.__UNIQUE_ID_ddebug288, !126, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mtd/devices/docg3.c", i32 238, i32 2}
!130 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @doc_read_data_area.__UNIQUE_ID_ddebug263, !129, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mtd/devices/docg3.c", i32 888, i32 2}
!134 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @doc_read_oob.__UNIQUE_ID_ddebug273, !133, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mtd/devices/docg3.c", i32 928, i32 4}
!138 = !{ptr @doc_read_oob.__UNIQUE_ID_ddebug278, !137, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!139 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mtd/devices/docg3.c", i32 929, i32 4}
!141 = !{ptr @doc_read_oob.__UNIQUE_ID_ddebug279, !140, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mtd/devices/docg3.c", i32 930, i32 4}
!144 = !{ptr @doc_read_oob.__UNIQUE_ID_ddebug280, !143, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!145 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mtd/devices/docg3.c", i32 931, i32 4}
!147 = !{ptr @doc_read_oob.__UNIQUE_ID_ddebug281, !146, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!148 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mtd/devices/docg3.c", i32 933, i32 3}
!150 = !{ptr @doc_read_oob.__UNIQUE_ID_ddebug282, !149, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!151 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mtd/devices/docg3.c", i32 934, i32 3}
!153 = !{ptr @doc_read_oob.__UNIQUE_ID_ddebug283, !152, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!154 = !{ptr @.str.63, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mtd/devices/docg3.c", i32 700, i32 2}
!156 = !{ptr @.str.64, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @doc_read_page_prepare.__UNIQUE_ID_ddebug272, !155, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!158 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mtd/devices/docg3.c", i32 461, i32 2}
!160 = !{ptr @.str.66, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @doc_read_seek.__UNIQUE_ID_ddebug269, !159, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!162 = !{ptr @.str.67, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mtd/devices/docg3.c", i32 401, i32 2}
!164 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @doc_set_extra_page_mode.__UNIQUE_ID_ddebug268, !163, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!166 = !{ptr @.str.69, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/mtd/devices/docg3.c", i32 664, i32 2}
!168 = !{ptr @.str.70, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @doc_ecc_bch_fix_data.__UNIQUE_ID_ddebug271, !167, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!170 = !{ptr @.str.71, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mtd/devices/docg3.c", i32 1396, i32 2}
!172 = !{ptr @.str.72, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @doc_write_oob.__UNIQUE_ID_ddebug292, !171, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!174 = !{ptr @.str.73, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/mtd/devices/docg3.c", i32 1229, i32 2}
!176 = !{ptr @.str.74, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @doc_write_page.__UNIQUE_ID_ddebug291, !175, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!178 = !{ptr @.str.75, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/mtd/devices/docg3.c", i32 510, i32 2}
!180 = !{ptr @.str.76, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @doc_write_seek.__UNIQUE_ID_ddebug270, !179, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!182 = !{ptr @.str.77, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mtd/devices/docg3.c", i32 282, i32 2}
!184 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @doc_write_data_area.__UNIQUE_ID_ddebug264, !183, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!186 = !{ptr @.str.79, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/mtd/devices/docg3.c", i32 1012, i32 2}
!188 = !{ptr @.str.80, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @doc_block_isbad.__UNIQUE_ID_ddebug286, !187, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!190 = !{ptr @nand_ooblayout_docg3_ops, !191, !"nand_ooblayout_docg3_ops", i1 false, i1 false}
!191 = !{!"../drivers/mtd/devices/docg3.c", i32 87, i32 39}
!192 = !{ptr @.str.81, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/mtd/devices/docg3.c", i32 135, i32 45}
!194 = !{ptr @.str.82, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/mtd/devices/docg3.c", i32 135, i32 60}
!196 = !{ptr @part_probes, !197, !"part_probes", i1 false, i1 false}
!197 = !{!"../drivers/mtd/devices/docg3.c", i32 135, i32 27}
!198 = !{ptr @.str.83, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/mtd/devices/docg3.c", i32 1730, i32 22}
!200 = !{ptr @.str.84, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/mtd/devices/docg3.c", i32 1732, i32 22}
!202 = !{ptr @.str.85, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/mtd/devices/docg3.c", i32 1734, i32 22}
!204 = !{ptr @.str.86, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/mtd/devices/docg3.c", i32 1736, i32 22}
!206 = !{ptr @flashcontrol_fops, !207, !"flashcontrol_fops", i1 false, i1 false}
!207 = !{!"../drivers/mtd/devices/docg3.c", i32 1612, i32 1}
!208 = !{ptr @.str.87, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/mtd/devices/docg3.c", i32 1602, i32 16}
!210 = !{ptr @.str.88, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/mtd/devices/docg3.c", i32 1604, i32 35}
!212 = !{ptr @.str.89, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/mtd/devices/docg3.c", i32 1604, i32 58}
!214 = !{ptr @.str.90, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/mtd/devices/docg3.c", i32 1605, i32 28}
!216 = !{ptr @.str.91, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/mtd/devices/docg3.c", i32 1605, i32 39}
!218 = !{ptr @.str.92, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/mtd/devices/docg3.c", i32 1606, i32 42}
!220 = !{ptr @.str.93, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/mtd/devices/docg3.c", i32 1607, i32 40}
!222 = !{ptr @.str.94, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/mtd/devices/docg3.c", i32 1608, i32 36}
!224 = !{ptr @.str.95, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/mtd/devices/docg3.c", i32 1608, i32 46}
!226 = !{ptr @asic_mode_fops, !227, !"asic_mode_fops", i1 false, i1 false}
!227 = !{!"../drivers/mtd/devices/docg3.c", i32 1649, i32 1}
!228 = !{ptr @.str.96, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/mtd/devices/docg3.c", i32 1626, i32 6}
!230 = !{ptr @.str.97, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/mtd/devices/docg3.c", i32 1637, i32 15}
!232 = !{ptr @.str.98, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/mtd/devices/docg3.c", i32 1643, i32 15}
!234 = !{ptr @.str.99, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/mtd/devices/docg3.c", i32 1646, i32 14}
!236 = !{ptr @device_id_fops, !237, !"device_id_fops", i1 false, i1 false}
!237 = !{!"../drivers/mtd/devices/docg3.c", i32 1663, i32 1}
!238 = !{ptr @.str.100, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/mtd/devices/docg3.c", i32 1660, i32 16}
!240 = !{ptr @protection_fops, !241, !"protection_fops", i1 false, i1 false}
!241 = !{!"../drivers/mtd/devices/docg3.c", i32 1715, i32 1}
!242 = !{ptr @.str.101, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/mtd/devices/docg3.c", i32 1680, i32 16}
!244 = !{ptr @.str.102, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/mtd/devices/docg3.c", i32 1682, i32 15}
!246 = !{ptr @.str.103, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/mtd/devices/docg3.c", i32 1684, i32 15}
!248 = !{ptr @.str.104, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/mtd/devices/docg3.c", i32 1686, i32 15}
!250 = !{ptr @.str.105, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/mtd/devices/docg3.c", i32 1688, i32 15}
!252 = !{ptr @.str.106, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/mtd/devices/docg3.c", i32 1690, i32 15}
!254 = !{ptr @.str.107, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/mtd/devices/docg3.c", i32 1692, i32 15}
!256 = !{ptr @.str.108, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/mtd/devices/docg3.c", i32 1694, i32 15}
!258 = !{ptr @.str.109, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/mtd/devices/docg3.c", i32 1696, i32 15}
!260 = !{ptr @.str.110, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/mtd/devices/docg3.c", i32 1699, i32 16}
!262 = !{ptr @.str.111, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/mtd/devices/docg3.c", i32 1706, i32 16}
!264 = !{ptr @.str.112, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/mtd/devices/docg3.c", i32 1544, i32 2}
!266 = !{ptr @.str.113, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.114, !265, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.115, !265, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.116, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/mtd/devices/docg3.c", i32 1544, i32 18}
!271 = !{ptr @.str.117, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.118, !270, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.119, !270, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.120, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/mtd/devices/docg3.c", i32 1544, i32 34}
!276 = !{ptr @.str.121, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @.str.122, !275, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @.str.123, !275, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @.str.124, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/mtd/devices/docg3.c", i32 1544, i32 50}
!281 = !{ptr @.str.125, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.126, !280, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.127, !280, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @doc_sys_attrs, !285, !"doc_sys_attrs", i1 false, i1 false}
!285 = !{!"../drivers/mtd/devices/docg3.c", i32 1543, i32 32}
!286 = !{ptr @.str.128, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/mtd/devices/docg3.c", i32 1480, i32 22}
!288 = !{ptr @g3_driver, !289, !"g3_driver", i1 false, i1 false}
!289 = !{!"../drivers/mtd/devices/docg3.c", i32 2059, i32 31}
!290 = !{ptr @.str.129, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/mtd/devices/docg3.c", i32 1938, i32 4}
!292 = !{ptr @.str.130, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @docg3_suspend.__UNIQUE_ID_ddebug294, !291, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!294 = !{ptr @.str.131, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/mtd/devices/docg3.c", i32 1941, i32 4}
!296 = !{ptr @docg3_suspend._entry, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @docg3_suspend._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.132, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/mtd/devices/docg3.c", i32 1895, i32 2}
!300 = !{ptr @.str.133, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @docg3_resume.__UNIQUE_ID_ddebug293, !299, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!302 = !{ptr @docg3_dt_ids, !303, !"docg3_dt_ids", i1 false, i1 false}
!303 = !{!"../drivers/mtd/devices/docg3.c", i32 2052, i32 34}
!304 = !{!"sp"}
!305 = !{i32 1, !"wchar_size", i32 2}
!306 = !{i32 1, !"min_enum_size", i32 4}
!307 = !{i32 8, !"branch-target-enforcement", i32 0}
!308 = !{i32 8, !"sign-return-address", i32 0}
!309 = !{i32 8, !"sign-return-address-all", i32 0}
!310 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!311 = !{i32 7, !"uwtable", i32 1}
!312 = !{i32 7, !"frame-pointer", i32 2}
!313 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!314 = !{!"branch_weights", i32 2000, i32 1}
!315 = !{!"branch_weights", i32 1, i32 2000}
!316 = !{!"auto-init"}
!317 = !{i64 2148746854, i64 2148746859, i64 2148746872, i64 2148746916, i64 2148746950, i64 2148746971}
!318 = !{i64 2155533204}
!319 = !{i64 5345849}
!320 = !{i64 2155533658}
!321 = !{i64 5345426}
!322 = !{i64 5346244}
!323 = !{i64 2155532121}
!324 = !{i64 5345626}
!325 = !{i64 2155532812}
!326 = !{i64 2153870744}
!327 = !{i64 2153870961}
!328 = !{i64 2149420067}
!329 = !{i64 2149421103}
!330 = !{i64 2155539883}
!331 = !{i64 2155539725}
!332 = !{i64 2155565774, i64 2155566266, i64 2155565811, i64 2155565867, i64 2155565901, i64 2155565925, i64 2155565966, i64 2155565987, i64 2155566015, i64 2155566049}
