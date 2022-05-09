; ModuleID = '/llk/IR_all_yes/drivers/gpu/host1x/cdma.c_pt.bc'
source_filename = "../drivers/gpu/host1x/cdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%union.anon.66 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.host1x_cdma = type { %struct.mutex, %struct.completion, i32, i32, i32, i32, i32, %struct.push_buffer, %struct.list_head, %struct.buffer_timeout, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.push_buffer = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.buffer_timeout = type { %struct.delayed_work, i8, ptr, i32, i64, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.host1x_job = type { %struct.kref, %struct.list_head, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, ptr, ptr, i8 }
%struct.host1x = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x %struct.reset_control_bulk_data], i32, ptr, ptr, %struct.iova_domain, i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.host1x_channel_list, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.device_dma_parameters, %struct.host1x_bo_cache }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.host1x_channel_list = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.host1x_cdma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.host1x_syncpt = type { %struct.kref, i32, %struct.atomic_t, %struct.atomic_t, i32, ptr, i8, ptr, ptr, %struct.host1x_syncpt_intr, i8 }
%struct.host1x_syncpt_intr = type { %struct.spinlock, %struct.list_head, [12 x i8], %struct.work_struct }
%struct.host1x_channel = type { %struct.kref, i32, %struct.mutex, ptr, ptr, ptr, %struct.host1x_cdma }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/gpu/host1x/cdma.c\00", [38 x i8] zeroinitializer }, align 32
@host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"host1x\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"host1x_cdma_update_sync_queue\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: starting cleanup (thresh %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.4, i8 0, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: skip completed buffers still in sync_queue\0A\00", [48 x i8] zeroinitializer }, align 32
@host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.5, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: perform CPU incr on pending buffers\0A\00", [55 x i8] zeroinitializer }, align 32
@host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.6, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: CPU incr (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.7, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: finished sync_queue modification\0A\00", [58 x i8] zeroinitializer }, align 32
@host1x_cdma_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&cdma->lock\00", [20 x i8] zeroinitializer }, align 32
@host1x_cdma_deinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014%s: CDMA still running\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"host1x_cdma_deinit\00", [45 x i8] zeroinitializer }, align 32
@host1x_cdma_deinit._entry_ptr = internal global ptr @host1x_cdma_deinit._entry, section ".printk_index", align 4
@host1x_debug_trace_cmdbuf = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_host1x_wait_cdma = external dso_local global %struct.tracepoint, align 4
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/host1x.h\00", [34 x i8] zeroinitializer }, align 32
@trace_host1x_wait_cdma.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__tracepoint_host1x_cdma_begin = external dso_local global %struct.tracepoint, align 4
@trace_host1x_cdma_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_host1x_cdma_push = external dso_local global %struct.tracepoint, align 4
@trace_host1x_cdma_push.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_host1x_cdma_push_wide = external dso_local global %struct.tracepoint, align 4
@trace_host1x_cdma_push_wide.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_host1x_cdma_end = external dso_local global %struct.tracepoint, align 4
@trace_host1x_cdma_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 202, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 372, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 382, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 418, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 425, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 434, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 485, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private constant [29 x i8] c"../drivers/gpu/host1x/cdma.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 510, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [33 x i8] c"../include/trace/events/host1x.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 200, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 108, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 87, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @host1x_cdma_deinit._entry, ptr @host1x_cdma_deinit._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @host1x_cdma_init.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @init_completion.__key, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_cdma_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_cdma_deinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @host1x_cdma_wait_locked(ptr noundef %cdma, i32 noundef %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fence1.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 3
  %pos.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 4
  %size.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 5
  %sync_queue = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 8
  %dev = getelementptr i8, ptr %cdma, i32 -4
  %event23 = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 2
  %complete = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 1
  %event.off = add i32 %event, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event.off)
  %switch = icmp ult i32 %event.off, 2
  br i1 %switch, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cond = icmp eq i32 %event, 1
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %for.cond.preheader
  br i1 %cond, label %sw.bb, label %sw.bb1

sw.bb:                                            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %sync_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sync_queue, align 4
  %cmp.i = icmp eq ptr %1, %sync_queue
  %conv.i = zext i1 %cmp.i to i32
  br label %sw.epilog

sw.bb1:                                           ; preds = %for.cond
  %2 = ptrtoint ptr %fence1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fence1.i, align 4
  %4 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i44 = icmp ult i32 %3, %5
  br i1 %cmp.i44, label %if.then.i, label %sw.bb1.host1x_pushbuffer_space.exit_crit_edge

sw.bb1.host1x_pushbuffer_space.exit_crit_edge:    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %host1x_pushbuffer_space.exit

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  %add.i = add i32 %7, %3
  br label %host1x_pushbuffer_space.exit

host1x_pushbuffer_space.exit:                     ; preds = %if.then.i, %sw.bb1.host1x_pushbuffer_space.exit_crit_edge
  %fence.0.i = phi i32 [ %add.i, %if.then.i ], [ %3, %sw.bb1.host1x_pushbuffer_space.exit_crit_edge ]
  %sub.i = sub i32 %fence.0.i, %5
  %div9.i = lshr i32 %sub.i, 3
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef null) #6
  br label %return

sw.epilog:                                        ; preds = %host1x_pushbuffer_space.exit, %sw.bb
  %space.0 = phi i32 [ %div9.i, %host1x_pushbuffer_space.exit ], [ %conv.i, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %space.0)
  %tobool18.not = icmp eq i32 %space.0, 0
  br i1 %tobool18.not, label %if.end20, label %sw.epilog.return_crit_edge

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end20:                                         ; preds = %sw.epilog
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.dev_name.exit_crit_edge

if.end20.dev_name.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end20.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %if.end20.dev_name.exit_crit_edge ]
  tail call fastcc void @trace_host1x_wait_cdma(ptr noundef %retval.0.i, i32 noundef %event)
  %14 = ptrtoint ptr %event23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %event23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %cdma) #6
  tail call void @schedule() #6
  br label %cleanup

if.end26:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %event23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %event, ptr %event23, align 4
  tail call void @mutex_unlock(ptr noundef %cdma) #6
  tail call void @wait_for_completion(ptr noundef %complete) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then24
  tail call void @mutex_lock_nested(ptr noundef %cdma, i32 noundef 0) #6
  br label %for.cond

return:                                           ; preds = %sw.epilog.return_crit_edge, %do.end
  %retval.1.ph = phi i32 [ -22, %do.end ], [ %space.0, %sw.epilog.return_crit_edge ]
  ret i32 %retval.1.ph
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_host1x_wait_cdma(ptr noundef %name, i32 noundef %eventid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_wait_cdma, i32 0, i32 1), ptr blockaddress(@trace_host1x_wait_cdma, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !60

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !61

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !62
  %call42 = tail call i32 @__traceiter_host1x_wait_cdma(ptr noundef null, ptr noundef %name, i32 noundef %eventid) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !63
  %13 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !61

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_wait_cdma, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_wait_cdma, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_host1x_wait_cdma.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_host1x_wait_cdma.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 216, ptr noundef nonnull @.str.12) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !65
  %31 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_cdma_update_sync_queue(ptr noundef %cdma, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %cdma, i32 -4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %syncpt = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %syncpt, align 8
  %call2 = tail call i32 @host1x_syncpt_load(ptr noundef %7) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@host1x_cdma_update_sync_queue, %if.then)) #6
          to label %do.body7 [label %if.then], !srcloc !60

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug261, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %call2) #6
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@host1x_cdma_update_sync_queue, %if.then19)) #6
          to label %do.end22 [label %if.then19], !srcloc !60

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug262, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #6
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body7
  %sync_queue = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 8
  %8 = ptrtoint ptr %sync_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn232 = load ptr, ptr %sync_queue, align 4
  %cmp.not234 = icmp eq ptr %.pn232, %sync_queue
  br i1 %cmp.not234, label %do.end22.syncpt_incr.thread_crit_edge, label %do.end22.for.body_crit_edge

do.end22.for.body_crit_edge:                      ; preds = %do.end22
  br label %for.body

do.end22.syncpt_incr.thread_crit_edge:            ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %syncpt_incr.thread

syncpt_incr.thread:                               ; preds = %if.end42.syncpt_incr.thread_crit_edge, %do.end22.syncpt_incr.thread_crit_edge
  %last_pos222 = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 6
  %9 = ptrtoint ptr %last_pos222 to i32
  call void @__asan_load4_noabort(i32 %9)
  %restart_addr.0224 = load i32, ptr %last_pos222, align 4
  br label %resume

for.body:                                         ; preds = %if.end42.for.body_crit_edge, %do.end22.for.body_crit_edge
  %.pn235 = phi ptr [ %.pn, %if.end42.for.body_crit_edge ], [ %.pn232, %do.end22.for.body_crit_edge ]
  %job.0236 = getelementptr i8, ptr %.pn235, i32 -4
  %syncpt_end = getelementptr i8, ptr %.pn235, i32 60
  %10 = ptrtoint ptr %syncpt_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %syncpt_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %11)
  %cmp29 = icmp ult i32 %call2, %11
  br i1 %cmp29, label %if.then30, label %if.end42

if.then30:                                        ; preds = %for.body
  %syncpt_end.le = getelementptr i8, ptr %.pn235, i32 60
  %12 = ptrtoint ptr %.pn235 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn235, align 4
  %cmp.i.not = icmp eq ptr %13, %sync_queue
  %add.ptr40 = getelementptr i8, ptr %13, i32 -4
  %spec.select = select i1 %cmp.i.not, ptr null, ptr %add.ptr40
  %tobool48.not = icmp eq ptr %spec.select, null
  %first_get = getelementptr inbounds %struct.host1x_job, ptr %spec.select, i32 0, i32 19
  %last_pos = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 6
  %restart_addr.0.in = select i1 %tobool48.not, ptr %last_pos, ptr %first_get
  %14 = ptrtoint ptr %restart_addr.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %restart_addr.0 = load i32, ptr %restart_addr.0.in, align 4
  %tobool51.not = icmp eq ptr %job.0236, null
  br i1 %tobool51.not, label %if.then30.resume_crit_edge, label %if.end53

if.then30.resume_crit_edge:                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %resume

if.end42:                                         ; preds = %for.body
  tail call void @host1x_job_dump(ptr noundef %dev, ptr noundef %job.0236) #6
  %15 = ptrtoint ptr %.pn235 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn235, align 4
  %cmp.not = icmp eq ptr %.pn, %sync_queue
  br i1 %cmp.not, label %if.end42.syncpt_incr.thread_crit_edge, label %if.end42.for.body_crit_edge

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end42.syncpt_incr.thread_crit_edge:            ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %syncpt_incr.thread

if.end53:                                         ; preds = %if.then30
  %syncpt_recovery = getelementptr i8, ptr %.pn235, i32 109
  %16 = ptrtoint ptr %syncpt_recovery to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %syncpt_recovery, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool54.not = icmp eq i8 %17, 0
  br i1 %tobool54.not, label %if.else108, label %do.body56

do.body56:                                        ; preds = %if.end53
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@host1x_cdma_update_sync_queue, %if.then68)) #6
          to label %do.end71 [label %if.then68], !srcloc !60

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug263, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #6
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %do.body56
  %timeout72 = getelementptr i8, ptr %.pn235, i32 68
  %18 = ptrtoint ptr %timeout72 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %timeout72, align 4
  %19 = ptrtoint ptr %syncpt_end.le to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %syncpt_end.le, align 4
  %sub = sub i32 %20, %call2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@host1x_cdma_update_sync_queue, %if.then86)) #6
          to label %do.end89 [label %if.then86], !srcloc !60

if.then86:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug264, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef %sub) #6
  br label %do.end89

do.end89:                                         ; preds = %if.then86, %do.end71
  tail call void @host1x_job_dump(ptr noundef %dev, ptr noundef nonnull %job.0236) #6
  %first_get90 = getelementptr i8, ptr %.pn235, i32 76
  %21 = ptrtoint ptr %first_get90 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %first_get90, align 4
  %23 = ptrtoint ptr %syncpt_end.le to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %syncpt_end.le, align 4
  %num_slots = getelementptr i8, ptr %.pn235, i32 80
  %25 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_slots, align 4
  %cdma_op.i = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 18
  %27 = ptrtoint ptr %cdma_op.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cdma_op.i, align 4
  %timeout_cpu_incr.i = getelementptr inbounds %struct.host1x_cdma_ops, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %timeout_cpu_incr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %timeout_cpu_incr.i, align 4
  tail call void %30(ptr noundef %cdma, i32 noundef %22, i32 noundef %sub, i32 noundef %24, i32 noundef %26) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@host1x_cdma_update_sync_queue, %if.then104)) #6
          to label %resume [label %if.then104], !srcloc !60

if.then104:                                       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug265, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2) #6
  br label %resume

if.else108:                                       ; preds = %if.end53
  tail call void @host1x_job_dump(ptr noundef %dev, ptr noundef nonnull %job.0236) #6
  %syncpt109 = getelementptr i8, ptr %.pn235, i32 52
  %31 = ptrtoint ptr %syncpt109 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %syncpt109, align 4
  %locked.i = getelementptr inbounds %struct.host1x_syncpt, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %locked.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %locked.i, align 4
  %cancelled = getelementptr i8, ptr %.pn235, i32 72
  %34 = ptrtoint ptr %cancelled to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %cancelled, align 4
  %35 = ptrtoint ptr %.pn235 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn201239 = load ptr, ptr %.pn235, align 4
  %cmp118.not240 = icmp eq ptr %.pn201239, %sync_queue
  br i1 %cmp118.not240, label %if.else108.do.body147_crit_edge, label %for.body121.lr.ph

if.else108.do.body147_crit_edge:                  ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body147

for.body121.lr.ph:                                ; preds = %if.else108
  %push_buffer = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7
  br label %for.body121

for.body121:                                      ; preds = %cleanup.for.body121_crit_edge, %for.body121.lr.ph
  %.pn201241 = phi ptr [ %.pn201239, %for.body121.lr.ph ], [ %.pn201, %cleanup.for.body121_crit_edge ]
  %syncpt122 = getelementptr i8, ptr %.pn201241, i32 52
  %36 = ptrtoint ptr %syncpt122 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %syncpt122, align 4
  %38 = ptrtoint ptr %syncpt109 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %syncpt109, align 4
  %cmp124.not = icmp eq ptr %37, %39
  br i1 %cmp124.not, label %for.cond127.preheader, label %for.body121.cleanup_crit_edge

for.body121.cleanup_crit_edge:                    ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond127.preheader:                            ; preds = %for.body121
  %num_slots128 = getelementptr i8, ptr %.pn201241, i32 80
  %40 = ptrtoint ptr %num_slots128 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_slots128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp129237.not = icmp eq i32 %41, 0
  br i1 %cmp129237.not, label %for.cond127.preheader.for.end138_crit_edge, label %for.body130.lr.ph

for.cond127.preheader.for.end138_crit_edge:       ; preds = %for.cond127.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end138

for.body130.lr.ph:                                ; preds = %for.cond127.preheader
  %first_get131 = getelementptr i8, ptr %.pn201241, i32 76
  br label %for.body130

for.body130:                                      ; preds = %for.body130.for.body130_crit_edge, %for.body130.lr.ph
  %i.0238 = phi i32 [ 0, %for.body130.lr.ph ], [ %inc, %for.body130.for.body130_crit_edge ]
  %42 = ptrtoint ptr %first_get131 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %first_get131, align 4
  %div202 = lshr i32 %43, 3
  %add = add i32 %div202, %i.0238
  %rem = urem i32 %add, 511
  %44 = ptrtoint ptr %push_buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %push_buffer, align 8
  %mul = shl nuw nsw i32 %rem, 1
  %arrayidx = getelementptr i32, ptr %45, i32 %mul
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 464322560, ptr %arrayidx, align 4
  %add135 = or i32 %mul, 1
  %arrayidx136 = getelementptr i32, ptr %45, i32 %add135
  %47 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 464322560, ptr %arrayidx136, align 4
  %inc = add nuw i32 %i.0238, 1
  %48 = ptrtoint ptr %num_slots128 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_slots128, align 4
  %cmp129 = icmp ult i32 %inc, %49
  br i1 %cmp129, label %for.body130.for.body130_crit_edge, label %for.body130.for.end138_crit_edge

for.body130.for.end138_crit_edge:                 ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end138

for.body130.for.body130_crit_edge:                ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body130

for.end138:                                       ; preds = %for.body130.for.end138_crit_edge, %for.cond127.preheader.for.end138_crit_edge
  %cancelled139 = getelementptr i8, ptr %.pn201241, i32 72
  %50 = ptrtoint ptr %cancelled139 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %cancelled139, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end138, %for.body121.cleanup_crit_edge
  %51 = ptrtoint ptr %.pn201241 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn201 = load ptr, ptr %.pn201241, align 4
  %cmp118.not = icmp eq ptr %.pn201, %sync_queue
  br i1 %cmp118.not, label %cleanup.do.body147_crit_edge, label %cleanup.for.body121_crit_edge

cleanup.for.body121_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body121

cleanup.do.body147_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body147

do.body147:                                       ; preds = %cleanup.do.body147_crit_edge, %if.else108.do.body147_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call fastcc void @update_cdma_locked(ptr noundef %cdma)
  br label %resume

resume:                                           ; preds = %do.body147, %if.then104, %do.end89, %if.then30.resume_crit_edge, %syncpt_incr.thread
  %restart_addr.0226 = phi i32 [ %restart_addr.0224, %syncpt_incr.thread ], [ %restart_addr.0, %do.body147 ], [ %restart_addr.0, %if.then104 ], [ %restart_addr.0, %if.then30.resume_crit_edge ], [ %restart_addr.0, %do.end89 ]
  %cdma_op.i215 = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 18
  %52 = ptrtoint ptr %cdma_op.i215 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cdma_op.i215, align 4
  %resume.i = getelementptr inbounds %struct.host1x_cdma_ops, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %resume.i, align 4
  tail call void %55(ptr noundef %cdma, i32 noundef %restart_addr.0226) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_load(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_cdma_locked(ptr noundef %cdma) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_queue = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 8
  %0 = ptrtoint ptr %sync_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sync_queue, align 4
  %cmp.not85 = icmp eq ptr %1, %sync_queue
  br i1 %cmp.not85, label %for.end.thread, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %client = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9, i32 5
  %timeout.i72 = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9
  %fence.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 3
  %size.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 5
  %event = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %signal.0.off089 = phi i1 [ false, %for.body.lr.ph ], [ %signal.2.off0, %cleanup.for.body_crit_edge ]
  %.pn.in86 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn92, %cleanup.for.body_crit_edge ]
  %job.091 = getelementptr i8, ptr %.pn.in86, i32 -4
  %2 = ptrtoint ptr %.pn.in86 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn92 = load ptr, ptr %.pn.in86, align 4
  %syncpt = getelementptr i8, ptr %.pn.in86, i32 52
  %3 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %syncpt, align 4
  %syncpt_end = getelementptr i8, ptr %.pn.in86, i32 60
  %5 = ptrtoint ptr %syncpt_end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %syncpt_end, align 4
  %call = tail call zeroext i1 @host1x_syncpt_is_expired(ptr noundef %4, i32 noundef %6) #6
  br i1 %call, label %for.body.if.end9_crit_edge, label %land.lhs.true

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

land.lhs.true:                                    ; preds = %for.body
  %cancelled = getelementptr i8, ptr %.pn.in86, i32 72
  %7 = ptrtoint ptr %cancelled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cancelled, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %syncpt.le = getelementptr i8, ptr %.pn.in86, i32 52
  %syncpt_end.le = getelementptr i8, ptr %.pn.in86, i32 60
  %timeout = getelementptr i8, ptr %.pn.in86, i32 68
  %9 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %if.then.for.end_crit_edge, label %if.then8

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then8:                                         ; preds = %if.then
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then8.for.end_crit_edge

if.then8.for.end_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %client1.i = getelementptr i8, ptr %.pn.in86, i32 12
  %13 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client1.i, align 4
  %15 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %client, align 8
  %16 = ptrtoint ptr %syncpt.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %syncpt.le, align 4
  %syncpt5.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %syncpt5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %syncpt5.i, align 8
  %19 = ptrtoint ptr %syncpt_end.le to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %syncpt_end.le, align 4
  %syncpt_val.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9, i32 3
  %21 = ptrtoint ptr %syncpt_val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %syncpt_val.i, align 4
  %call.i = tail call i64 @ktime_get() #6
  %start_ktime.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9, i32 4
  %22 = ptrtoint ptr %start_ktime.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %call.i, ptr %start_ktime.i, align 8
  %23 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %timeout, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %24) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %timeout.i72, i32 noundef %call2.i.i) #6
  br label %for.end

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %for.body.if.end9_crit_edge
  %26 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client, align 8
  %tobool11.not = icmp eq ptr %27, null
  br i1 %tobool11.not, label %if.end9.if.end13_crit_edge, label %if.then12

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call.i73 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout.i72) #6
  %28 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %client, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9.if.end13_crit_edge
  tail call void @host1x_job_unpin(ptr noundef %job.091) #6
  %num_slots = getelementptr i8, ptr %.pn.in86, i32 80
  %29 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool14.not = icmp eq i32 %30, 0
  br i1 %tobool14.not, label %if.end13.if.end20_crit_edge, label %if.then15

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then15:                                        ; preds = %if.end13
  %mul.i = shl i32 %30, 3
  %31 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fence.i, align 4
  %add.i = add i32 %32, %mul.i
  store i32 %add.i, ptr %fence.i, align 4
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %34)
  %cmp.not.i = icmp ult i32 %add.i, %34
  br i1 %cmp.not.i, label %if.then15.host1x_pushbuffer_pop.exit_crit_edge, label %if.then.i

if.then15.host1x_pushbuffer_pop.exit_crit_edge:   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %host1x_pushbuffer_pop.exit

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 %add.i, %34
  %35 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.i, ptr %fence.i, align 4
  br label %host1x_pushbuffer_pop.exit

host1x_pushbuffer_pop.exit:                       ; preds = %if.then.i, %if.then15.host1x_pushbuffer_pop.exit_crit_edge
  %36 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp17 = icmp eq i32 %37, 2
  %spec.select = select i1 %cmp17, i1 true, i1 %signal.0.off089
  br label %if.end20

if.end20:                                         ; preds = %host1x_pushbuffer_pop.exit, %if.end13.if.end20_crit_edge
  %signal.2.off0 = phi i1 [ %spec.select, %host1x_pushbuffer_pop.exit ], [ %signal.0.off089, %if.end13.if.end20_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in86) #6
  br i1 %call.i.i, label %if.end.i.i76, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i76:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in86, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %.pn.in86 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %.pn.in86, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i76, %if.end20.cleanup_crit_edge
  %44 = ptrtoint ptr %.pn.in86 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in86, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in86, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @host1x_job_put(ptr noundef %job.091) #6
  %cmp.not = icmp eq ptr %.pn92, %sync_queue
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.i, %if.then8.for.end_crit_edge, %if.then.for.end_crit_edge
  %signal.0.off081 = phi i1 [ %signal.0.off089, %if.end.i ], [ %signal.0.off089, %if.then8.for.end_crit_edge ], [ %signal.0.off089, %if.then.for.end_crit_edge ], [ %signal.2.off0, %cleanup.for.end_crit_edge ]
  %event27 = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 2
  %46 = ptrtoint ptr %event27 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %event27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp28 = icmp eq i32 %47, 1
  br i1 %cmp28, label %for.end.land.lhs.true29_crit_edge, label %if.end34

for.end.land.lhs.true29_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true29

for.end.thread:                                   ; preds = %entry
  %event2796 = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 2
  %48 = ptrtoint ptr %event2796 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %event2796, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp2897 = icmp eq i32 %49, 1
  br i1 %cmp2897, label %for.end.thread.land.lhs.true29_crit_edge, label %for.end.thread.if.end38_crit_edge

for.end.thread.if.end38_crit_edge:                ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

for.end.thread.land.lhs.true29_crit_edge:         ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true29

land.lhs.true29:                                  ; preds = %for.end.thread.land.lhs.true29_crit_edge, %for.end.land.lhs.true29_crit_edge
  %event27102 = phi ptr [ %event2796, %for.end.thread.land.lhs.true29_crit_edge ], [ %event27, %for.end.land.lhs.true29_crit_edge ]
  %signal.0.off08199 = phi i1 [ false, %for.end.thread.land.lhs.true29_crit_edge ], [ %signal.0.off081, %for.end.land.lhs.true29_crit_edge ]
  %50 = ptrtoint ptr %sync_queue to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %sync_queue, align 4
  %cmp.i.not = icmp eq ptr %51, %sync_queue
  %spec.select71 = select i1 %cmp.i.not, i1 true, i1 %signal.0.off08199
  br i1 %spec.select71, label %land.lhs.true29.if.then36_crit_edge, label %land.lhs.true29.if.end38_crit_edge

land.lhs.true29.if.end38_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true29.if.then36_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36

if.end34:                                         ; preds = %for.end
  br i1 %signal.0.off081, label %if.end34.if.then36_crit_edge, label %if.end34.if.end38_crit_edge

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end34.if.then36_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36

if.then36:                                        ; preds = %if.end34.if.then36_crit_edge, %land.lhs.true29.if.then36_crit_edge
  %event27100 = phi ptr [ %event27102, %land.lhs.true29.if.then36_crit_edge ], [ %event27, %if.end34.if.then36_crit_edge ]
  %52 = ptrtoint ptr %event27100 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %event27100, align 4
  %complete = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 1
  tail call void @complete(ptr noundef %complete) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end34.if.end38_crit_edge, %land.lhs.true29.if.end38_crit_edge, %for.end.thread.if.end38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @host1x_cdma_init(ptr noundef %cdma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__mutex_init(ptr noundef %cdma, ptr noundef nonnull @.str.8, ptr noundef nonnull @host1x_cdma_init.__key) #6
  %complete = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 1
  %0 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #6
  %sync_queue = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 8
  %1 = ptrtoint ptr %sync_queue to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %sync_queue, ptr %sync_queue, align 4
  %prev.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sync_queue, ptr %prev.i, align 4
  %event = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 2
  %3 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %event, align 4
  %running = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 10
  %4 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %running, align 8
  %torndown = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 11
  %5 = ptrtoint ptr %torndown to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %torndown, align 1
  %push_buffer = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7
  %dev.i = getelementptr i8, ptr %push_buffer, i32 -172
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %12 = ptrtoint ptr %push_buffer to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %push_buffer, align 4
  %phys.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %phys.i, align 4
  %size4.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 5
  %14 = ptrtoint ptr %size4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4088, ptr %size4.i, align 4
  %fence.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 3
  %15 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4080, ptr %fence.i, align 4
  %pos.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 4
  %16 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pos.i, align 4
  %domain.i = getelementptr inbounds %struct.host1x, ptr %11, i32 0, i32 10
  %17 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %domain.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %iova.i = getelementptr inbounds %struct.host1x, ptr %11, i32 0, i32 11
  %granule.i.i = getelementptr inbounds %struct.host1x, ptr %11, i32 0, i32 11, i32 4
  %19 = ptrtoint ptr %granule.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %granule.i.i, align 4
  %add.i.i = add i32 %20, 4091
  %neg.i.i = sub i32 0, %20
  %and.i.i = and i32 %add.i.i, %neg.i.i
  %dev8.i = getelementptr inbounds %struct.host1x, ptr %11, i32 0, i32 5
  %21 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev8.i, align 4
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %22, i32 noundef %and.i.i, ptr noundef %phys.i, i32 noundef 3264, i32 noundef 4) #6
  %23 = ptrtoint ptr %push_buffer to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i, ptr %push_buffer, align 4
  %tobool13.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool13.not.i, label %if.then.i.host1x_pushbuffer_init.exit_crit_edge, label %if.end.i

if.then.i.host1x_pushbuffer_init.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %host1x_pushbuffer_init.exit

if.end.i:                                         ; preds = %if.then.i
  %24 = ptrtoint ptr %granule.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %granule.i.i, align 4
  %26 = tail call i32 @llvm.cttz.i32(i32 %25, i1 false) #6, !range !68
  %shr.i = lshr i32 %and.i.i, %26
  %iova_end.i = getelementptr inbounds %struct.host1x, ptr %11, i32 0, i32 12
  %27 = ptrtoint ptr %iova_end.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iova_end.i, align 4
  %shr18.i = lshr i32 %28, %26
  %call19.i = tail call ptr @alloc_iova(ptr noundef %iova.i, i32 noundef %shr.i, i32 noundef %shr18.i, i1 noundef zeroext true) #6
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %if.end.i.iommu_free_mem.i_crit_edge, label %if.end22.i

if.end.i.iommu_free_mem.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iommu_free_mem.i

if.end22.i:                                       ; preds = %if.end.i
  %pfn_lo.i.i = getelementptr inbounds %struct.iova, ptr %call19.i, i32 0, i32 2
  %29 = ptrtoint ptr %pfn_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pfn_lo.i.i, align 4
  %31 = ptrtoint ptr %granule.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %granule.i.i, align 4
  %33 = tail call i32 @llvm.cttz.i32(i32 %32, i1 false) #6, !range !68
  %shl.i.i = shl i32 %30, %33
  %dma.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shl.i.i, ptr %dma.i, align 4
  %35 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %domain.i, align 4
  %37 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %phys.i, align 4
  %call28.i = tail call i32 @iommu_map(ptr noundef %36, i32 noundef %shl.i.i, i32 noundef %38, i32 noundef %and.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end22.i.if.end42.i_crit_edge, label %iommu_free_iova.i

if.end22.i.if.end42.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

if.else.i:                                        ; preds = %entry
  %dev32.i = getelementptr inbounds %struct.host1x, ptr %11, i32 0, i32 5
  %39 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev32.i, align 4
  %call.i96.i = tail call ptr @dma_alloc_attrs(ptr noundef %40, i32 noundef 4092, ptr noundef %phys.i, i32 noundef 3264, i32 noundef 4) #6
  %41 = ptrtoint ptr %push_buffer to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i96.i, ptr %push_buffer, align 4
  %tobool37.not.i = icmp eq ptr %call.i96.i, null
  br i1 %tobool37.not.i, label %if.else.i.host1x_pushbuffer_init.exit_crit_edge, label %if.end39.i

if.else.i.host1x_pushbuffer_init.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %host1x_pushbuffer_init.exit

if.end39.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %phys.i, align 4
  %dma41.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %dma41.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %dma41.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end39.i, %if.end22.i.if.end42.i_crit_edge
  %size.0.i = phi i32 [ 4092, %if.end39.i ], [ %and.i.i, %if.end22.i.if.end42.i_crit_edge ]
  %alloc_size.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 6
  %45 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %size.0.i, ptr %alloc_size.i, align 4
  %cdma_pb_op.i.i = getelementptr inbounds %struct.host1x, ptr %11, i32 0, i32 19
  %46 = ptrtoint ptr %cdma_pb_op.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cdma_pb_op.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  tail call void %49(ptr noundef %push_buffer) #6
  br label %host1x_pushbuffer_init.exit

iommu_free_iova.i:                                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__free_iova(ptr noundef %iova.i, ptr noundef nonnull %call19.i) #6
  br label %iommu_free_mem.i

iommu_free_mem.i:                                 ; preds = %iommu_free_iova.i, %if.end.i.iommu_free_mem.i_crit_edge
  %err.0109.i = phi i32 [ %call28.i, %iommu_free_iova.i ], [ -12, %if.end.i.iommu_free_mem.i_crit_edge ]
  %50 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev8.i, align 4
  %52 = ptrtoint ptr %push_buffer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %push_buffer, align 4
  %54 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %51, i32 noundef %and.i.i, ptr noundef %53, i32 noundef %55, i32 noundef 4) #6
  br label %host1x_pushbuffer_init.exit

host1x_pushbuffer_init.exit:                      ; preds = %iommu_free_mem.i, %if.end42.i, %if.else.i.host1x_pushbuffer_init.exit_crit_edge, %if.then.i.host1x_pushbuffer_init.exit_crit_edge
  %retval.1.i = phi i32 [ %err.0109.i, %iommu_free_mem.i ], [ 0, %if.end42.i ], [ -12, %if.else.i.host1x_pushbuffer_init.exit_crit_edge ], [ -12, %if.then.i.host1x_pushbuffer_init.exit_crit_edge ]
  ret i32 %retval.1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @host1x_cdma_deinit(ptr noundef %cdma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %cdma, i32 -4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %running = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 10
  %6 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %running, align 8, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %push_buffer = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7
  %dev.i = getelementptr i8, ptr %push_buffer, i32 -172
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %14 = ptrtoint ptr %push_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %push_buffer, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.host1x_pushbuffer_destroy.exit_crit_edge, label %if.end.i

if.end.host1x_pushbuffer_destroy.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %host1x_pushbuffer_destroy.exit

if.end.i:                                         ; preds = %if.end
  %domain.i = getelementptr inbounds %struct.host1x, ptr %13, i32 0, i32 10
  %16 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %domain.i, align 4
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then5.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dma.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma.i, align 4
  %alloc_size.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 6
  %20 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %alloc_size.i, align 4
  %call7.i = tail call i32 @iommu_unmap(ptr noundef nonnull %17, i32 noundef %19, i32 noundef %21) #6
  %iova.i = getelementptr inbounds %struct.host1x, ptr %13, i32 0, i32 11
  %22 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma.i, align 4
  %granule.i.i.i = getelementptr inbounds %struct.host1x, ptr %13, i32 0, i32 11, i32 4
  %24 = ptrtoint ptr %granule.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %granule.i.i.i, align 4
  %26 = tail call i32 @llvm.cttz.i32(i32 %25, i1 false) #6, !range !68
  %shr.i.i = lshr i32 %23, %26
  tail call void @free_iova(ptr noundef %iova.i, i32 noundef %shr.i.i) #6
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then5.i, %if.end.i.if.end11.i_crit_edge
  %dev12.i = getelementptr inbounds %struct.host1x, ptr %13, i32 0, i32 5
  %27 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev12.i, align 4
  %alloc_size13.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 6
  %29 = ptrtoint ptr %alloc_size13.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %alloc_size13.i, align 4
  %31 = ptrtoint ptr %push_buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %push_buffer, align 4
  %phys.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 2
  %33 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %34, i32 noundef 4) #6
  %35 = ptrtoint ptr %push_buffer to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %push_buffer, align 4
  %36 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %phys.i, align 4
  br label %host1x_pushbuffer_destroy.exit

host1x_pushbuffer_destroy.exit:                   ; preds = %if.end11.i, %if.end.host1x_pushbuffer_destroy.exit_crit_edge
  %cdma_op.i = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 18
  %37 = ptrtoint ptr %cdma_op.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cdma_op.i, align 4
  %timeout_destroy.i = getelementptr inbounds %struct.host1x_cdma_ops, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %timeout_destroy.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %timeout_destroy.i, align 4
  tail call void %40(ptr noundef %cdma) #6
  br label %cleanup

cleanup:                                          ; preds = %host1x_pushbuffer_destroy.exit, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %host1x_pushbuffer_destroy.exit ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @host1x_cdma_begin(ptr noundef %cdma, ptr nocapture noundef readonly %job) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %cdma, i32 -4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %cdma, i32 noundef 0) #6
  %syncpt = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 13
  %6 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %syncpt, align 4
  %locked = getelementptr inbounds %struct.host1x_syncpt, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %locked to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %locked, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %cdma) #6
  br label %cleanup19

if.end:                                           ; preds = %entry
  %timeout = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 17
  %10 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  br i1 %tobool2.not, label %if.end.if.end13_crit_edge, label %if.then3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then3:                                         ; preds = %if.end
  %initialized = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %initialized, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not = icmp eq i8 %13, 0
  br i1 %tobool5.not, label %if.then6, label %if.then3.if.end13_crit_edge

if.then3.if.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then6:                                         ; preds = %if.then3
  %cdma_op.i = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 18
  %14 = ptrtoint ptr %cdma_op.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cdma_op.i, align 4
  %timeout_init.i = getelementptr inbounds %struct.host1x_cdma_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %timeout_init.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %timeout_init.i, align 4
  %call.i = tail call i32 %17(ptr noundef %cdma) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.then6.if.end13_crit_edge, label %if.then9

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %cdma) #6
  br label %cleanup19

if.end13:                                         ; preds = %if.then6.if.end13_crit_edge, %if.then3.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %running = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 10
  %18 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %running, align 8, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool14.not = icmp eq i8 %19, 0
  br i1 %tobool14.not, label %if.then15, label %if.end13.if.end16_crit_edge

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %cdma_op.i35 = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 18
  %20 = ptrtoint ptr %cdma_op.i35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cdma_op.i35, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void %23(ptr noundef %cdma) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %slots_free = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 4
  %24 = ptrtoint ptr %slots_free to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %slots_free, align 4
  %slots_used = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 3
  %25 = ptrtoint ptr %slots_used to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %slots_used, align 8
  %pos = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 4
  %26 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pos, align 8
  %first_get = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 5
  %28 = ptrtoint ptr %first_get to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %first_get, align 8
  %channel = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 2
  %29 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %channel, align 4
  %dev17 = getelementptr inbounds %struct.host1x_channel, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev17, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.dev_name.exit_crit_edge

if.end16.dev_name.exit_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end16.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %36, %if.end.i ], [ %34, %if.end16.dev_name.exit_crit_edge ]
  tail call fastcc void @trace_host1x_cdma_begin(ptr noundef %retval.0.i)
  br label %cleanup19

cleanup19:                                        ; preds = %dev_name.exit, %if.then9, %if.then
  %retval.1 = phi i32 [ -1, %if.then ], [ 0, %dev_name.exit ], [ %call.i, %if.then9 ]
  ret i32 %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_host1x_cdma_begin(ptr noundef %name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_begin, i32 0, i32 1), ptr blockaddress(@trace_host1x_cdma_begin, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !60

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !61

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !69
  %call42 = tail call i32 @__traceiter_host1x_cdma_begin(ptr noundef null, ptr noundef %name) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !70
  %13 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !61

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_begin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_begin, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_host1x_cdma_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_host1x_cdma_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 42, ptr noundef nonnull @.str.12) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !65
  %31 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_cdma_push(ptr noundef %cdma, i32 noundef %op1, i32 noundef %op2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %cdma, i32 -4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %slots_free1 = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 4
  %6 = ptrtoint ptr %slots_free1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slots_free1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @host1x_debug_trace_cmdbuf to i32))
  %8 = load i32, ptr @host1x_debug_trace_cmdbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %if.then.dev_name.exit_crit_edge ]
  tail call fastcc void @trace_host1x_cdma_push(ptr noundef %retval.0.i, i32 noundef %op1, i32 noundef %op2)
  br label %if.end

if.end:                                           ; preds = %dev_name.exit, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cdma_op.i = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 18
  %13 = ptrtoint ptr %cdma_op.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cdma_op.i, align 4
  %flush.i = getelementptr inbounds %struct.host1x_cdma_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %flush.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %flush.i, align 4
  tail call void %16(ptr noundef %cdma) #6
  %call8 = tail call i32 @host1x_cdma_wait_locked(ptr noundef %cdma, i32 noundef 2)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %slots_free.0 = phi i32 [ %call8, %if.then7 ], [ %7, %if.end.if.end9_crit_edge ]
  %push_buffer = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7
  %sub = add i32 %slots_free.0, -1
  %17 = ptrtoint ptr %slots_free1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %slots_free1, align 4
  %slots_used = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 3
  %18 = ptrtoint ptr %slots_used to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slots_used, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %slots_used, align 8
  %20 = ptrtoint ptr %push_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %push_buffer, align 4
  %pos.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 4
  %22 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pos.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %23
  %fence.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 3
  %24 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.i = icmp eq i32 %23, %25
  br i1 %cmp.i, label %do.end.i, label %if.end9.if.end.i21_crit_edge, !prof !71

if.end9.if.end.i21_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i21

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i21

if.end.i21:                                       ; preds = %do.end.i, %if.end9.if.end.i21_crit_edge
  %incdec.ptr.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %op1, ptr %add.ptr.i, align 4
  %27 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %op2, ptr %incdec.ptr.i, align 4
  %28 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pos.i, align 4
  %add.i = add i32 %29, 8
  store i32 %add.i, ptr %pos.i, align 4
  %size.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 5
  %30 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %31)
  %cmp23.not.i = icmp ult i32 %add.i, %31
  br i1 %cmp23.not.i, label %if.end.i21.host1x_pushbuffer_push.exit_crit_edge, label %if.then24.i

if.end.i21.host1x_pushbuffer_push.exit_crit_edge: ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %host1x_pushbuffer_push.exit

if.then24.i:                                      ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 %add.i, %31
  %32 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub.i, ptr %pos.i, align 4
  br label %host1x_pushbuffer_push.exit

host1x_pushbuffer_push.exit:                      ; preds = %if.then24.i, %if.end.i21.host1x_pushbuffer_push.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_host1x_cdma_push(ptr noundef %name, i32 noundef %op1, i32 noundef %op2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_push, i32 0, i32 1), ptr blockaddress(@trace_host1x_cdma_push, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !60

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !61

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !72
  %call42 = tail call i32 @__traceiter_host1x_cdma_push(ptr noundef null, ptr noundef %name, i32 noundef %op1, i32 noundef %op2) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !73
  %13 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !61

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_push, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_push, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_host1x_cdma_push.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_host1x_cdma_push.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 68, ptr noundef nonnull @.str.12) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !65
  %31 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_cdma_push_wide(ptr noundef %cdma, i32 noundef %op1, i32 noundef %op2, i32 noundef %op3, i32 noundef %op4) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %cdma, i32 -4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %push_buffer = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7
  %slots_free = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @host1x_debug_trace_cmdbuf to i32))
  %6 = load i32, ptr @host1x_debug_trace_cmdbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %if.then.dev_name.exit_crit_edge ]
  tail call fastcc void @trace_host1x_cdma_push_wide(ptr noundef %retval.0.i, i32 noundef %op1, i32 noundef %op2, i32 noundef %op3, i32 noundef %op4)
  br label %if.end

if.end:                                           ; preds = %dev_name.exit, %entry.if.end_crit_edge
  %pos = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 4
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pos, align 4
  %add = add i32 %12, 16
  %size = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 5
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %14)
  %cmp = icmp ugt i32 %add, %14
  %sub = sub i32 %14, %12
  %div41 = lshr i32 %sub, 3
  %add9 = add nuw nsw i32 %div41, 2
  %needed.0 = select i1 %cmp, i32 %add9, i32 2
  %fence1.i.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 3
  %cdma_op.i.i = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 18
  %event.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 2
  %complete.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i, %if.end
  %15 = ptrtoint ptr %fence1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fence1.i.i, align 4
  %17 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.i.i = icmp ult i32 %16, %18
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.i.host1x_pushbuffer_space.exit.i_crit_edge

while.body.i.host1x_pushbuffer_space.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %host1x_pushbuffer_space.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  %add.i.i = add i32 %20, %16
  br label %host1x_pushbuffer_space.exit.i

host1x_pushbuffer_space.exit.i:                   ; preds = %if.then.i.i, %while.body.i.host1x_pushbuffer_space.exit.i_crit_edge
  %fence.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %16, %while.body.i.host1x_pushbuffer_space.exit.i_crit_edge ]
  %sub.i.i = sub i32 %fence.0.i.i, %18
  %div9.i.i = lshr i32 %sub.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div9.i.i, i32 %needed.0)
  %cmp.not.i = icmp ult i32 %div9.i.i, %needed.0
  br i1 %cmp.not.i, label %if.end.i42, label %host1x_cdma_wait_pushbuffer_space.exit

if.end.i42:                                       ; preds = %host1x_pushbuffer_space.exit.i
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i42.dev_name.exit.i_crit_edge

if.end.i42.dev_name.exit.i_crit_edge:             ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i42.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %26, %if.end.i.i ], [ %24, %if.end.i42.dev_name.exit.i_crit_edge ]
  tail call fastcc void @trace_host1x_wait_cdma(ptr noundef %retval.0.i.i, i32 noundef 2) #6
  %27 = ptrtoint ptr %cdma_op.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cdma_op.i.i, align 4
  %flush.i.i = getelementptr inbounds %struct.host1x_cdma_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %flush.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %flush.i.i, align 4
  tail call void %30(ptr noundef %cdma) #6
  %31 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %event.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp2.not.i = icmp eq i32 %32, 0
  br i1 %cmp2.not.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %cdma) #6
  tail call void @schedule() #6
  br label %cleanup.i

if.end5.i:                                        ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %event.i, align 4
  tail call void @mutex_unlock(ptr noundef %cdma) #6
  tail call void @wait_for_completion(ptr noundef %complete.i) #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end5.i, %if.then3.i
  tail call void @mutex_lock_nested(ptr noundef %cdma, i32 noundef 0) #6
  br label %while.body.i

host1x_cdma_wait_pushbuffer_space.exit:           ; preds = %host1x_pushbuffer_space.exit.i
  %extra.0 = select i1 %cmp, i32 %div41, i32 0
  %34 = ptrtoint ptr %fence1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fence1.i.i, align 4
  %36 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp.i = icmp ult i32 %35, %37
  br i1 %cmp.i, label %if.then.i, label %host1x_cdma_wait_pushbuffer_space.exit.host1x_pushbuffer_space.exit_crit_edge

host1x_cdma_wait_pushbuffer_space.exit.host1x_pushbuffer_space.exit_crit_edge: ; preds = %host1x_cdma_wait_pushbuffer_space.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %host1x_pushbuffer_space.exit

if.then.i:                                        ; preds = %host1x_cdma_wait_pushbuffer_space.exit
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size, align 4
  %add.i = add i32 %39, %35
  br label %host1x_pushbuffer_space.exit

host1x_pushbuffer_space.exit:                     ; preds = %if.then.i, %host1x_cdma_wait_pushbuffer_space.exit.host1x_pushbuffer_space.exit_crit_edge
  %fence.0.i = phi i32 [ %add.i, %if.then.i ], [ %35, %host1x_cdma_wait_pushbuffer_space.exit.host1x_pushbuffer_space.exit_crit_edge ]
  %sub.i = sub i32 %fence.0.i, %37
  %div9.i = lshr i32 %sub.i, 3
  %sub13 = sub nsw i32 %div9.i, %needed.0
  %40 = ptrtoint ptr %slots_free to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub13, ptr %slots_free, align 4
  %slots_used = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 3
  %41 = ptrtoint ptr %slots_used to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %slots_used, align 8
  %add15 = add i32 %42, %needed.0
  store i32 %add15, ptr %slots_used, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra.0)
  %cmp1676.not = icmp eq i32 %extra.0, 0
  br i1 %cmp1676.not, label %host1x_pushbuffer_space.exit.for.end_crit_edge, label %host1x_pushbuffer_space.exit.for.body_crit_edge

host1x_pushbuffer_space.exit.for.body_crit_edge:  ; preds = %host1x_pushbuffer_space.exit
  br label %for.body

host1x_pushbuffer_space.exit.for.end_crit_edge:   ; preds = %host1x_pushbuffer_space.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %host1x_pushbuffer_push.exit.for.body_crit_edge, %host1x_pushbuffer_space.exit.for.body_crit_edge
  %i.077 = phi i32 [ %inc, %host1x_pushbuffer_push.exit.for.body_crit_edge ], [ 0, %host1x_pushbuffer_space.exit.for.body_crit_edge ]
  %43 = ptrtoint ptr %push_buffer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %push_buffer, align 4
  %45 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pos, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 %46
  %47 = ptrtoint ptr %fence1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fence1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp.i45 = icmp eq i32 %46, %48
  br i1 %cmp.i45, label %do.end.i, label %for.body.if.end.i48_crit_edge, !prof !71

for.body.if.end.i48_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i48

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i48

if.end.i48:                                       ; preds = %do.end.i, %for.body.if.end.i48_crit_edge
  %incdec.ptr.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %op4, ptr %add.ptr.i, align 4
  %50 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %op4, ptr %incdec.ptr.i, align 4
  %51 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pos, align 4
  %add.i46 = add i32 %52, 8
  store i32 %add.i46, ptr %pos, align 4
  %53 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i46, i32 %54)
  %cmp23.not.i = icmp ult i32 %add.i46, %54
  br i1 %cmp23.not.i, label %if.end.i48.host1x_pushbuffer_push.exit_crit_edge, label %if.then24.i

if.end.i48.host1x_pushbuffer_push.exit_crit_edge: ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %host1x_pushbuffer_push.exit

if.then24.i:                                      ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i49 = sub i32 %add.i46, %54
  %55 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub.i49, ptr %pos, align 4
  br label %host1x_pushbuffer_push.exit

host1x_pushbuffer_push.exit:                      ; preds = %if.then24.i, %if.end.i48.host1x_pushbuffer_push.exit_crit_edge
  %inc = add nuw nsw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, %extra.0
  br i1 %exitcond.not, label %host1x_pushbuffer_push.exit.for.end_crit_edge, label %host1x_pushbuffer_push.exit.for.body_crit_edge

host1x_pushbuffer_push.exit.for.body_crit_edge:   ; preds = %host1x_pushbuffer_push.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

host1x_pushbuffer_push.exit.for.end_crit_edge:    ; preds = %host1x_pushbuffer_push.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %host1x_pushbuffer_push.exit.for.end_crit_edge, %host1x_pushbuffer_space.exit.for.end_crit_edge
  %56 = ptrtoint ptr %push_buffer to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %push_buffer, align 4
  %58 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pos, align 4
  %add.ptr.i51 = getelementptr i8, ptr %57, i32 %59
  %60 = ptrtoint ptr %fence1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fence1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp.i53 = icmp eq i32 %59, %61
  br i1 %cmp.i53, label %do.end.i54, label %for.end.if.end.i59_crit_edge, !prof !71

for.end.if.end.i59_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i59

do.end.i54:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i59

if.end.i59:                                       ; preds = %do.end.i54, %for.end.if.end.i59_crit_edge
  %incdec.ptr.i55 = getelementptr i32, ptr %add.ptr.i51, i32 1
  %62 = ptrtoint ptr %add.ptr.i51 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %op1, ptr %add.ptr.i51, align 4
  %63 = ptrtoint ptr %incdec.ptr.i55 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %op2, ptr %incdec.ptr.i55, align 4
  %64 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pos, align 4
  %add.i56 = add i32 %65, 8
  store i32 %add.i56, ptr %pos, align 4
  %66 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i56, i32 %67)
  %cmp23.not.i58 = icmp ult i32 %add.i56, %67
  br i1 %cmp23.not.i58, label %if.end.i59.host1x_pushbuffer_push.exit62_crit_edge, label %if.then24.i61

if.end.i59.host1x_pushbuffer_push.exit62_crit_edge: ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %host1x_pushbuffer_push.exit62

if.then24.i61:                                    ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i60 = sub i32 %add.i56, %67
  %68 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %sub.i60, ptr %pos, align 4
  br label %host1x_pushbuffer_push.exit62

host1x_pushbuffer_push.exit62:                    ; preds = %if.then24.i61, %if.end.i59.host1x_pushbuffer_push.exit62_crit_edge
  %69 = ptrtoint ptr %push_buffer to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %push_buffer, align 4
  %71 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pos, align 4
  %add.ptr.i64 = getelementptr i8, ptr %70, i32 %72
  %73 = ptrtoint ptr %fence1.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fence1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp.i66 = icmp eq i32 %72, %74
  br i1 %cmp.i66, label %do.end.i67, label %host1x_pushbuffer_push.exit62.if.end.i72_crit_edge, !prof !71

host1x_pushbuffer_push.exit62.if.end.i72_crit_edge: ; preds = %host1x_pushbuffer_push.exit62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i72

do.end.i67:                                       ; preds = %host1x_pushbuffer_push.exit62
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i72

if.end.i72:                                       ; preds = %do.end.i67, %host1x_pushbuffer_push.exit62.if.end.i72_crit_edge
  %incdec.ptr.i68 = getelementptr i32, ptr %add.ptr.i64, i32 1
  %75 = ptrtoint ptr %add.ptr.i64 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %op3, ptr %add.ptr.i64, align 4
  %76 = ptrtoint ptr %incdec.ptr.i68 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %op4, ptr %incdec.ptr.i68, align 4
  %77 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pos, align 4
  %add.i69 = add i32 %78, 8
  store i32 %add.i69, ptr %pos, align 4
  %79 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i69, i32 %80)
  %cmp23.not.i71 = icmp ult i32 %add.i69, %80
  br i1 %cmp23.not.i71, label %if.end.i72.host1x_pushbuffer_push.exit75_crit_edge, label %if.then24.i74

if.end.i72.host1x_pushbuffer_push.exit75_crit_edge: ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %host1x_pushbuffer_push.exit75

if.then24.i74:                                    ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i73 = sub i32 %add.i69, %80
  %81 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub.i73, ptr %pos, align 4
  br label %host1x_pushbuffer_push.exit75

host1x_pushbuffer_push.exit75:                    ; preds = %if.then24.i74, %if.end.i72.host1x_pushbuffer_push.exit75_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_host1x_cdma_push_wide(ptr noundef %name, i32 noundef %op1, i32 noundef %op2, i32 noundef %op3, i32 noundef %op4) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_push_wide, i32 0, i32 1), ptr blockaddress(@trace_host1x_cdma_push_wide, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !60

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !61

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !74
  %call42 = tail call i32 @__traceiter_host1x_cdma_push_wide(ptr noundef null, ptr noundef %name, i32 noundef %op1, i32 noundef %op2, i32 noundef %op3, i32 noundef %op4) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !75
  %13 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !61

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_push_wide, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_push_wide, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_host1x_cdma_push_wide.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_host1x_cdma_push_wide.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 94, ptr noundef nonnull @.str.12) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !65
  %31 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_cdma_end(ptr noundef %cdma, ptr noundef %job) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %cdma, i32 -4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %sync_queue = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 8
  %6 = ptrtoint ptr %sync_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %sync_queue, align 4
  %cmp.i = icmp ne ptr %7, %sync_queue
  %cdma_op.i = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 18
  %8 = ptrtoint ptr %cdma_op.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cdma_op.i, align 4
  %flush.i = getelementptr inbounds %struct.host1x_cdma_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %flush.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %flush.i, align 4
  tail call void %11(ptr noundef %cdma) #6
  %first_get = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 5
  %12 = ptrtoint ptr %first_get to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %first_get, align 8
  %first_get2 = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 19
  %14 = ptrtoint ptr %first_get2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %first_get2, align 4
  %slots_used = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 3
  %15 = ptrtoint ptr %slots_used to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slots_used, align 8
  %num_slots = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 20
  %17 = ptrtoint ptr %num_slots to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %num_slots, align 4
  %call3 = tail call ptr @host1x_job_get(ptr noundef %job) #6
  %list = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %19, ptr noundef %sync_queue) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list, ptr %prev.i, align 4
  %21 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sync_queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %timeout = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 17
  %24 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool5.not = icmp eq i32 %25, 0
  %or.cond = select i1 %tobool5.not, i1 true, i1 %cmp.i
  br i1 %or.cond, label %list_add_tail.exit.if.end_crit_edge, label %if.then

list_add_tail.exit.if.end_crit_edge:              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %list_add_tail.exit
  %client.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9, i32 5
  %26 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %timeout.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9
  %client1.i = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 3
  %28 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client1.i, align 4
  %30 = ptrtoint ptr %client.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %client.i, align 8
  %syncpt.i = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 13
  %31 = ptrtoint ptr %syncpt.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %syncpt.i, align 4
  %syncpt5.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9, i32 2
  %33 = ptrtoint ptr %syncpt5.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %syncpt5.i, align 8
  %syncpt_end.i = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 15
  %34 = ptrtoint ptr %syncpt_end.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %syncpt_end.i, align 4
  %syncpt_val.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9, i32 3
  %36 = ptrtoint ptr %syncpt_val.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %syncpt_val.i, align 4
  %call.i = tail call i64 @ktime_get() #6
  %start_ktime.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9, i32 4
  %37 = ptrtoint ptr %start_ktime.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %call.i, ptr %start_ktime.i, align 8
  %38 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %timeout, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %39) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %40 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %timeout.i, i32 noundef %call2.i.i) #6
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %list_add_tail.exit.if.end_crit_edge
  %channel = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 2
  %41 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %channel, align 4
  %dev7 = getelementptr inbounds %struct.host1x_channel, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev7, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i23 = icmp eq ptr %46, null
  br i1 %tobool.not.i23, label %if.end.i24, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i24:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i24, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %48, %if.end.i24 ], [ %46, %if.end.dev_name.exit_crit_edge ]
  tail call fastcc void @trace_host1x_cdma_end(ptr noundef %retval.0.i)
  tail call void @mutex_unlock(ptr noundef %cdma) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_job_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_host1x_cdma_end(ptr noundef %name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_end, i32 0, i32 1), ptr blockaddress(@trace_host1x_cdma_end, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !60

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !61

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !76
  %call42 = tail call i32 @__traceiter_host1x_cdma_end(ptr noundef null, ptr noundef %name) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !77
  %13 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !61

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_host1x_cdma_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_host1x_cdma_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 47, ptr noundef nonnull @.str.12) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !65
  %31 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_cdma_update(ptr noundef %cdma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %cdma, i32 noundef 0) #6
  tail call fastcc void @update_cdma_locked(ptr noundef %cdma)
  tail call void @mutex_unlock(ptr noundef %cdma) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_host1x_wait_cdma(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @host1x_syncpt_is_expired(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_unpin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_iova(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_iova(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_iova(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_host1x_cdma_begin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_host1x_cdma_push(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_host1x_cdma_push_wide(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_host1x_cdma_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/host1x/cdma.c", i32 202, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/host1x/cdma.c", i32 372, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug261, !3, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/host1x/cdma.c", i32 382, i32 2}
!9 = !{ptr @host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug262, !8, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/host1x/cdma.c", i32 418, i32 3}
!12 = !{ptr @host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug263, !11, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/host1x/cdma.c", i32 425, i32 3}
!15 = !{ptr @host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug264, !14, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/host1x/cdma.c", i32 434, i32 3}
!18 = !{ptr @host1x_cdma_update_sync_queue.__UNIQUE_ID_ddebug265, !17, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!19 = !{ptr @host1x_cdma_init.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/gpu/host1x/cdma.c", i32 485, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/host1x/cdma.c", i32 510, i32 3}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @host1x_cdma_deinit._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @host1x_cdma_deinit._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/trace/events/host1x.h", i32 200, i32 1}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!31 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @init_completion.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../include/linux/completion.h", i32 87, i32 2}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/trace/events/host1x.h", i32 39, i32 1}
!40 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/trace/events/host1x.h", i32 49, i32 1}
!43 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/trace/events/host1x.h", i32 70, i32 1}
!46 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../include/trace/events/host1x.h", i32 44, i32 1}
!49 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2148296230, i64 2148296235, i64 2148296248, i64 2148296292, i64 2148296326, i64 2148296347}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 2154435652}
!63 = !{i64 2154435873}
!64 = !{i64 2150039445}
!65 = !{i64 2150040481}
!66 = !{i8 0, i8 2}
!67 = !{i64 2154803198}
!68 = !{i32 0, i32 33}
!69 = !{i64 2154285168}
!70 = !{i64 2154285373}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{i64 2154321629}
!73 = !{i64 2154321852}
!74 = !{i64 2154338667}
!75 = !{i64 2154338920}
!76 = !{i64 2154305293}
!77 = !{i64 2154305494}
