; ModuleID = '/llk/IR_all_yes/drivers/gpu/host1x/hw/host1x01.c_pt.bc'
source_filename = "../drivers/gpu/host1x/hw/host1x01.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.host1x_channel_ops = type { ptr, ptr }
%struct.host1x_cdma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.host1x_pushbuffer_ops = type { ptr }
%struct.host1x_syncpt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.host1x_intr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.host1x_debug_ops = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.host1x = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x %struct.reset_control_bulk_data], i32, ptr, ptr, %struct.iova_domain, i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.host1x_channel_list, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.device_dma_parameters, %struct.host1x_bo_cache }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.host1x_channel_list = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.host1x_channel = type { %struct.kref, i32, %struct.mutex, ptr, ptr, ptr, %struct.host1x_cdma }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.host1x_cdma = type { %struct.mutex, %struct.completion, i32, i32, i32, i32, i32, %struct.push_buffer, %struct.list_head, %struct.buffer_timeout, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.push_buffer = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.buffer_timeout = type { %struct.delayed_work, i8, ptr, i32, i64, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.host1x_job = type { %struct.kref, %struct.list_head, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.host1x_syncpt = type { %struct.kref, i32, %struct.atomic_t, %struct.atomic_t, i32, ptr, i8, ptr, ptr, %struct.host1x_syncpt_intr, i8 }
%struct.host1x_syncpt_intr = type { %struct.spinlock, %struct.list_head, [12 x i8], %struct.work_struct }
%struct.host1x_job_cmd = type { i8, %union.anon.70 }
%union.anon.70 = type { %struct.host1x_job_gather }
%struct.host1x_job_gather = type { i32, i32, ptr, i32, i8 }
%struct.host1x_job_wait = type { i32, i32, i32, i8 }
%struct.host1x_bo_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.host1x_info = type { i32, i32, i32, i32, ptr, i32, i64, i8, i8, i32, ptr, i8 }

@host1x_channel_ops = internal constant { %struct.host1x_channel_ops, [24 x i8] } { %struct.host1x_channel_ops { ptr @host1x_channel_init, ptr @channel_submit }, [24 x i8] zeroinitializer }, align 32
@host1x_cdma_ops = internal constant { %struct.host1x_cdma_ops, [32 x i8] } { %struct.host1x_cdma_ops { ptr @cdma_start, ptr @cdma_stop, ptr @cdma_flush, ptr @cdma_timeout_init, ptr @cdma_timeout_destroy, ptr @cdma_freeze, ptr @cdma_resume, ptr @cdma_timeout_cpu_incr }, [32 x i8] zeroinitializer }, align 32
@host1x_pushbuffer_ops = internal constant { %struct.host1x_pushbuffer_ops, [28 x i8] } { %struct.host1x_pushbuffer_ops { ptr @push_buffer_init }, [28 x i8] zeroinitializer }, align 32
@host1x_syncpt_ops = internal constant { %struct.host1x_syncpt_ops, [36 x i8] } { %struct.host1x_syncpt_ops { ptr @syncpt_restore, ptr @syncpt_restore_wait_base, ptr @syncpt_read_wait_base, ptr @syncpt_load, ptr @syncpt_cpu_incr, ptr @syncpt_assign_to_channel, ptr @syncpt_enable_protection }, [36 x i8] zeroinitializer }, align 32
@host1x_intr_ops = internal constant { %struct.host1x_intr_ops, [40 x i8] } { %struct.host1x_intr_ops { ptr @_host1x_intr_init_host_sync, ptr @_host1x_intr_set_syncpt_threshold, ptr @_host1x_intr_enable_syncpt_intr, ptr @_host1x_intr_disable_syncpt_intr, ptr @_host1x_intr_disable_all_syncpt_intrs, ptr @_host1x_free_syncpt_irq }, [40 x i8] zeroinitializer }, align 32
@host1x_debug_ops = internal constant { %struct.host1x_debug_ops, [16 x i8] } { %struct.host1x_debug_ops { ptr null, ptr @host1x_debug_show_channel_cdma, ptr @host1x_debug_show_channel_fifo, ptr @host1x_debug_show_mlocks }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/host1x/hw/channel_hw.c\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to set submit complete interrupt\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_host1x_channel_submit = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/host1x.h\00", [34 x i8] zeroinitializer }, align 32
@trace_host1x_channel_submit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@submit_gathers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 120, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid gather for push buffer %pad\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"submit_gathers\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@submit_gathers._entry_ptr = internal global ptr @submit_gathers._entry, section ".printk_index", align 4
@host1x_debug_trace_cmdbuf = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_host1x_cdma_push_gather = external dso_local global %struct.tracepoint, align 4
@trace_host1x_cdma_push_gather.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_host1x_channel_submitted = external dso_local global %struct.tracepoint, align 4
@trace_host1x_channel_submitted.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cdma_timeout_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&cdma->timeout.wq)->work)\00", [50 x i8] zeroinitializer }, align 32
@cdma_timeout_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&cdma->timeout.wq)->timer\00", [36 x i8] zeroinitializer }, align 32
@cdma_timeout_handler.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"host1x\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cdma_timeout_handler\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/host1x/hw/cdma_hw.c\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"cdma_timeout: expired, but has no clientid\0A\00", [52 x i8] zeroinitializer }, align 32
@cdma_timeout_handler.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"cdma_timeout: expired, but buffer had completed\0A\00", [47 x i8] zeroinitializer }, align 32
@cdma_timeout_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.14, i32 286, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: timeout: %u (%s), HW thresh %d, done %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cdma_timeout_handler._entry_ptr = internal global ptr @cdma_timeout_handler._entry, section ".printk_index", align 4
@cdma_freeze._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.14, i32 204, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Already torn down\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cdma_freeze\00", [20 x i8] zeroinitializer }, align 32
@cdma_freeze._entry_ptr = internal global ptr @cdma_freeze._entry, section ".printk_index", align 4
@cdma_freeze.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.20, ptr @.str.14, ptr @.str.21, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"freezing channel (id %d)\0A\00", [38 x i8] zeroinitializer }, align 32
@cdma_freeze.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.20, ptr @.str.14, ptr @.str.22, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: DMA GET 0x%x, PUT HW 0x%x / shadow 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@cdma_resume.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.23, ptr @.str.14, ptr @.str.24, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cdma_resume\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"resuming channel (id %u, DMAGET restart = 0x%x)\0A\00", [47 x i8] zeroinitializer }, align 32
@cdma_timeout_restart.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.25, ptr @.str.14, ptr @.str.22, i8 0, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cdma_timeout_restart\00", [43 x i8] zeroinitializer }, align 32
@syncpt_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.28, i32 67, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s failed: id=%u, min=%d, max=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"syncpt_load\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/host1x/hw/syncpt_hw.c\00", [62 x i8] zeroinitializer }, align 32
@syncpt_load._entry_ptr = internal global ptr @syncpt_load._entry, section ".printk_index", align 4
@_host1x_intr_init_host_sync.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&host->syncpt[i].intr.work)\00", [50 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"host1x_syncpt\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/host1x/hw/intr_hw.c\00", [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%u-%s: \00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"inactive\0A\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"waiting on syncpt %d val %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"waiting on syncpt %d val %d (base %d = %d; offset = %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"active class %02x, offset %04x, val %08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DMASTART %pad, DMAEND %pad\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DMAPUT %08x DMAGET %08x DMACTL %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CBREAD %08x CBSTAT %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"JOB, syncpt %u: %u timeout: %u num_slots: %u num_handles: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[could not mmap]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"  GATHER at %pad+%#x, %d words\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[address mismatch]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"    %pad: %08x: \00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%08x%s\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"])\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"SETCL(class=%03x, offset=%03x, mask=%02x, [\00", [52 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SETCL(class=%03x)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"INCR(offset=%03x, [\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NONINCR(offset=%03x, [\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MASK(offset=%03x, mask=%03x, [\00", [33 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IMM(offset=%03x, data=%03x)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RESTART(offset=%08x)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"GATHER(offset=%03x, insert=%d, type=%d, count=%04x, addr=[\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ACQUIRE_MLOCK(index=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RELEASE_MLOCK(index=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EXTEND_UNKNOWN(%08x)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UNKNOWN\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%u: fifo:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FIFOSTAT %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"[empty]\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%08x: \00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c", ...])\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"---- mlocks ----\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%u: locked by channel %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%u: locked by cpu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%u: unlocked\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 8, i64 9]
@__sancov_gen_cov_switch_values.70 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 14]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_ = private constant [36 x i8] c"../drivers/gpu/host1x/hw/host1x01.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"host1x_channel_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 285, i32 40 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"host1x_cdma_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 317, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"host1x_pushbuffer_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 329, i32 43 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"host1x_syncpt_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 136, i32 39 }
@___asan_gen_.84 = private unnamed_addr constant [16 x i8] c"host1x_intr_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 141, i32 37 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"host1x_debug_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 245, i32 38 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 263, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [33 x i8] c"../include/trace/events/host1x.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 130, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 108, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [38 x i8] c"../drivers/gpu/host1x/hw/channel_hw.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 119, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 300, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 263, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 276, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 284, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 204, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 208, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 212, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 231, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/host1x/hw/cdma_hw.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 123, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [37 x i8] c"../drivers/gpu/host1x/hw/syncpt_hw.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 65, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 91, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 95, i32 11 }
@___asan_gen_.202 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/host1x/hw/intr_hw.c\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 97, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 32, i32 25 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 36, i32 26 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 43, i32 26 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 53, i32 26 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 57, i32 26 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 62, i32 25 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 63, i32 25 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 65, i32 25 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 68, i32 25 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 201, i32 26 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 223, i32 28 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 227, i32 27 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 174, i32 26 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 183, i32 27 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 186, i32 25 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 187, i32 27 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 187, i32 34 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 52, i32 25 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 58, i32 24 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 63, i32 24 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 72, i32 24 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 81, i32 24 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 89, i32 24 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 94, i32 24 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 98, i32 24 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 144, i32 25 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 147, i32 25 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 150, i32 25 }
@___asan_gen_.289 = private unnamed_addr constant [36 x i8] c"../drivers/gpu/host1x/hw/debug_hw.c\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 154, i32 24 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 78, i32 25 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 81, i32 25 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 83, i32 26 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 109, i32 27 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 124, i32 24 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 134, i32 25 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 140, i32 27 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 143, i32 27 }
@___asan_gen_.315 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.316 = private unnamed_addr constant [41 x i8] c"../drivers/gpu/host1x/hw/debug_hw_1x01.c\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 145, i32 27 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @cdma_freeze._entry, ptr @cdma_freeze._entry_ptr, ptr @cdma_timeout_handler._entry, ptr @cdma_timeout_handler._entry_ptr, ptr @submit_gathers._entry, ptr @submit_gathers._entry_ptr, ptr @syncpt_load._entry, ptr @syncpt_load._entry_ptr, ptr @host1x_channel_ops, ptr @host1x_cdma_ops, ptr @host1x_pushbuffer_ops, ptr @host1x_syncpt_ops, ptr @host1x_intr_ops, ptr @host1x_debug_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @cdma_timeout_init.__key, ptr @.str.9, ptr @cdma_timeout_init.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @_host1x_intr_init_host_sync.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_channel_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_cdma_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_pushbuffer_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_syncpt_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_intr_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_debug_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_gathers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdma_timeout_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdma_timeout_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdma_timeout_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdma_freeze._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syncpt_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_host1x_intr_init_host_sync.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @host1x01_init(ptr nocapture noundef writeonly %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_op = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 17
  %0 = ptrtoint ptr %channel_op to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @host1x_channel_ops, ptr %channel_op, align 4
  %cdma_op = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 18
  %1 = ptrtoint ptr %cdma_op to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @host1x_cdma_ops, ptr %cdma_op, align 4
  %cdma_pb_op = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 19
  %2 = ptrtoint ptr %cdma_pb_op to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @host1x_pushbuffer_ops, ptr %cdma_pb_op, align 4
  %syncpt_op = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 15
  %3 = ptrtoint ptr %syncpt_op to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @host1x_syncpt_ops, ptr %syncpt_op, align 4
  %intr_op = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 16
  %4 = ptrtoint ptr %intr_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @host1x_intr_ops, ptr %intr_op, align 4
  %debug_op = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 20
  %5 = ptrtoint ptr %debug_op to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @host1x_debug_ops, ptr %debug_op, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @host1x_channel_init(ptr nocapture noundef writeonly %ch, ptr nocapture noundef readonly %dev, i32 noundef %index) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.host1x, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %mul = shl i32 %index, 14
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %regs1 = getelementptr inbounds %struct.host1x_channel, ptr %ch, i32 0, i32 3
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %regs1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @channel_submit(ptr noundef %job) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 2
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 4
  %syncpt = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 13
  %2 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %syncpt, align 4
  %syncpt_incrs = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 14
  %4 = ptrtoint ptr %syncpt_incrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %syncpt_incrs, align 4
  %dev = getelementptr inbounds %struct.host1x_channel, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %entry.dev_name.exit_crit_edge ]
  %num_cmds = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 5
  %16 = ptrtoint ptr %num_cmds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_cmds, align 4
  %num_relocs = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 7
  %18 = ptrtoint ptr %num_relocs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_relocs, align 4
  %id = getelementptr inbounds %struct.host1x_syncpt, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  tail call fastcc void @trace_host1x_channel_submit(ptr noundef %retval.0.i, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %5)
  %call5 = tail call i32 @host1x_syncpt_read_max(ptr noundef %3) #13
  %syncpt_end = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 15
  %22 = ptrtoint ptr %syncpt_end to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call5, ptr %syncpt_end, align 4
  %submitlock = getelementptr inbounds %struct.host1x_channel, ptr %1, i32 0, i32 2
  %call6 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %submitlock, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %dev_name.exit.error_crit_edge

dev_name.exit.error_crit_edge:                    ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end:                                           ; preds = %dev_name.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 32) #16
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end.error.sink.split_crit_edge, label %if.end11

if.end.error.sink.split_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %error.sink.split

if.end11:                                         ; preds = %if.end
  %cdma = getelementptr inbounds %struct.host1x_channel, ptr %1, i32 0, i32 6
  %call12 = tail call i32 @host1x_cdma_begin(ptr noundef %cdma, ptr noundef %job) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %if.end11.error.sink.split_crit_edge

if.end11.error.sink.split_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %error.sink.split

if.end16:                                         ; preds = %if.end11
  %serialize = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 27
  %24 = ptrtoint ptr %serialize to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %serialize, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool17.not = icmp eq i8 %25, 0
  br i1 %tobool17.not, label %if.end16.if.end26_crit_edge, label %if.then18

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %syncpt, align 4
  %id23 = getelementptr inbounds %struct.host1x_syncpt, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %id23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id23, align 4
  %call24 = tail call i32 @host1x_syncpt_read_max(ptr noundef %3) #13
  %shl.i.i = shl i32 %29, 24
  %and.i.i = and i32 %call24, 16777215
  %or.i = or i32 %and.i.i, %shl.i.i
  tail call void @host1x_cdma_push(ptr noundef %cdma, i32 noundef 524353, i32 noundef %or.i) #13
  br label %if.end26

if.end26:                                         ; preds = %if.then18, %if.end16.if.end26_crit_edge
  %base = getelementptr inbounds %struct.host1x_syncpt, ptr %3, i32 0, i32 8
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %tobool27.not = icmp eq ptr %31, null
  br i1 %tobool27.not, label %if.end26.if.end29_crit_edge, label %if.then28

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %syncpt, align 4
  %call.i = tail call i32 @host1x_syncpt_read_max(ptr noundef %33) #13
  %base.i = getelementptr inbounds %struct.host1x_syncpt, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %38 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %channel, align 4
  %cdma.i = getelementptr inbounds %struct.host1x_channel, ptr %39, i32 0, i32 6
  %shl.i.i120 = shl i32 %37, 24
  %and.i.i121 = and i32 %call.i, 16777215
  %or.i122 = or i32 %shl.i.i120, %and.i.i121
  tail call void @host1x_cdma_push(ptr noundef %cdma.i, i32 noundef 720961, i32 noundef %or.i122) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26.if.end29_crit_edge
  %call30 = tail call i32 @host1x_syncpt_incr_max(ptr noundef %3, i32 noundef %5) #13
  %syncpt_op.i = getelementptr inbounds %struct.host1x, ptr %11, i32 0, i32 15
  %40 = ptrtoint ptr %syncpt_op.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %syncpt_op.i, align 4
  %assign_to_channel.i = getelementptr inbounds %struct.host1x_syncpt_ops, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %assign_to_channel.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %assign_to_channel.i, align 4
  tail call void %43(ptr noundef %3, ptr noundef %1) #13
  %44 = ptrtoint ptr %syncpt_end to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call30, ptr %syncpt_end, align 4
  %class = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 26
  %45 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %class, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool32.not = icmp eq i32 %46, 0
  br i1 %tobool32.not, label %if.end29.if.end38_crit_edge, label %if.then33

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %shl1.i = shl i32 %46, 6
  tail call void @host1x_cdma_push(ptr noundef %cdma, i32 noundef %shl1.i, i32 noundef 536870912) #13
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end29.if.end38_crit_edge
  %sub = sub i32 %call30, %5
  %47 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %channel, align 4
  %cdma1.i = getelementptr inbounds %struct.host1x_channel, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %num_cmds to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp42.not.i = icmp eq i32 %50, 0
  br i1 %cmp42.not.i, label %if.end38.submit_gathers.exit_crit_edge, label %for.body.lr.ph.i

if.end38.submit_gathers.exit_crit_edge:           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %submit_gathers.exit

for.body.lr.ph.i:                                 ; preds = %if.end38
  %cmds.i = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 4
  %dev1.i.i = getelementptr %struct.host1x_channel, ptr %48, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup21.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.043.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup21.i.for.body.i_crit_edge ]
  %51 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cmds.i, align 4
  %arrayidx.i = getelementptr %struct.host1x_job_cmd, ptr %52, i32 %i.043.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i124 = icmp eq i8 %54, 0
  %55 = getelementptr %struct.host1x_job_cmd, ptr %52, i32 %i.043.i, i32 1
  br i1 %tobool.not.i124, label %if.else8.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %relative.i = getelementptr inbounds %struct.host1x_job_wait, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %relative.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %relative.i, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool4.not.i = icmp eq i8 %57, 0
  %threshold7.i = getelementptr inbounds %struct.host1x_job_wait, ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %threshold7.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %threshold7.i, align 4
  %add.i = select i1 %tobool4.not.i, i32 0, i32 %sub
  %threshold.0.i = add i32 %add.i, %59
  %60 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %55, align 4
  %next_class.i = getelementptr inbounds %struct.host1x_job_wait, ptr %55, i32 0, i32 2
  %62 = ptrtoint ptr %next_class.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %next_class.i, align 4
  %shl.i.i.i.i = shl i32 %61, 24
  %and.i.i.i.i = and i32 %threshold.0.i, 16777215
  %or.i.i.i = or i32 %and.i.i.i.i, %shl.i.i.i.i
  tail call void @host1x_cdma_push(ptr noundef %cdma1.i, i32 noundef 524353, i32 noundef %or.i.i.i) #13
  %shl1.i.i.i = shl i32 %63, 6
  tail call void @host1x_cdma_push(ptr noundef %cdma1.i, i32 noundef %shl1.i.i.i, i32 noundef 536870912) #13
  br label %cleanup21.i

if.else8.i:                                       ; preds = %for.body.i
  %base.i125 = getelementptr inbounds %struct.host1x_job_gather, ptr %55, i32 0, i32 1
  %64 = ptrtoint ptr %base.i125 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %base.i125, align 4
  %offset.i = getelementptr inbounds %struct.host1x_job_gather, ptr %55, i32 0, i32 3
  %66 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %offset.i, align 4
  %bo.i = getelementptr inbounds %struct.host1x_job_gather, ptr %55, i32 0, i32 2
  %68 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bo.i, align 4
  %70 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %55, align 4
  %72 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @host1x_debug_trace_cmdbuf to i32))
  %74 = load i32, ptr @host1x_debug_trace_cmdbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i.i = icmp eq i32 %74, 0
  br i1 %tobool.not.i.i, label %if.else8.i.trace_write_gather.exit.i_crit_edge, label %if.end.i.i

if.else8.i.trace_write_gather.exit.i_crit_edge:   ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %trace_write_gather.exit.i

if.end.i.i:                                       ; preds = %if.else8.i
  %75 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %69, align 4
  %mmap.i.i.i = getelementptr inbounds %struct.host1x_bo_ops, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %mmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmap.i.i.i, align 4
  %call.i.i.i = tail call ptr %78(ptr noundef %69) #13
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.trace_write_gather.exit.i_crit_edge, label %for.cond.preheader.i.i

if.end.i.i.trace_write_gather.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %trace_write_gather.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp22.not.i.i = icmp eq i32 %71, 0
  br i1 %cmp22.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %73, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %dev_name.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %offset.addr.024.i.i = phi i32 [ %67, %for.body.lr.ph.i.i ], [ %add.i.i, %dev_name.exit.i.i.for.body.i.i_crit_edge ]
  %i.023.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add7.i.i, %dev_name.exit.i.i.for.body.i.i_crit_edge ]
  %sub.i.i = sub i32 %71, %i.023.i.i
  %79 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 128) #13
  %mul.i.i = shl i32 %i.023.i.i, 2
  %add.i.i = add i32 %mul.i.i, %offset.addr.024.i.i
  %80 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %for.body.i.i.dev_name.exit.i.i_crit_edge

for.body.i.i.dev_name.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %73, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %for.body.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %83, %if.end.i.i.i ], [ %81, %for.body.i.i.dev_name.exit.i.i_crit_edge ]
  tail call fastcc void @trace_host1x_cdma_push_gather(ptr noundef %retval.0.i.i.i, ptr noundef %69, i32 noundef %79, i32 noundef %add.i.i, ptr noundef nonnull %call.i.i.i) #13
  %add7.i.i = add i32 %i.023.i.i, 128
  %cmp.i.i = icmp ult i32 %add7.i.i, %71
  br i1 %cmp.i.i, label %dev_name.exit.i.i.for.body.i.i_crit_edge, label %dev_name.exit.i.i.for.end.i.i_crit_edge

dev_name.exit.i.i.for.end.i.i_crit_edge:          ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

dev_name.exit.i.i.for.body.i.i_crit_edge:         ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %dev_name.exit.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %84 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %69, align 4
  %munmap.i.i.i = getelementptr inbounds %struct.host1x_bo_ops, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %munmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %munmap.i.i.i, align 4
  tail call void %87(ptr noundef %69, ptr noundef nonnull %call.i.i.i) #13
  br label %trace_write_gather.exit.i

trace_write_gather.exit.i:                        ; preds = %for.end.i.i, %if.end.i.i.trace_write_gather.exit.i_crit_edge, %if.else8.i.trace_write_gather.exit.i_crit_edge
  %add9.i = add i32 %67, %65
  %88 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %55, align 4
  %or.i.i = or i32 %89, 1610612736
  tail call void @host1x_cdma_push(ptr noundef %cdma1.i, i32 noundef %or.i.i, i32 noundef %add9.i) #13
  br label %cleanup21.i

cleanup21.i:                                      ; preds = %trace_write_gather.exit.i, %if.then.i
  %inc.i = add nuw i32 %i.043.i, 1
  %90 = ptrtoint ptr %num_cmds to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_cmds, align 4
  %cmp.i = icmp ult i32 %inc.i, %91
  br i1 %cmp.i, label %cleanup21.i.for.body.i_crit_edge, label %cleanup21.i.submit_gathers.exit_crit_edge

cleanup21.i.submit_gathers.exit_crit_edge:        ; preds = %cleanup21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %submit_gathers.exit

cleanup21.i.for.body.i_crit_edge:                 ; preds = %cleanup21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

submit_gathers.exit:                              ; preds = %cleanup21.i.submit_gathers.exit_crit_edge, %if.end38.submit_gathers.exit_crit_edge
  tail call void @host1x_cdma_end(ptr noundef %cdma, ptr noundef %job) #13
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 4
  %init_name.i126 = getelementptr inbounds %struct.device, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %init_name.i126 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %init_name.i126, align 8
  %tobool.not.i127 = icmp eq ptr %95, null
  br i1 %tobool.not.i127, label %if.end.i128, label %submit_gathers.exit.dev_name.exit130_crit_edge

submit_gathers.exit.dev_name.exit130_crit_edge:   ; preds = %submit_gathers.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit130

if.end.i128:                                      ; preds = %submit_gathers.exit
  call void @__sanitizer_cov_trace_pc() #15
  %96 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %93, align 4
  br label %dev_name.exit130

dev_name.exit130:                                 ; preds = %if.end.i128, %submit_gathers.exit.dev_name.exit130_crit_edge
  %retval.0.i129 = phi ptr [ %97, %if.end.i128 ], [ %95, %submit_gathers.exit.dev_name.exit130_crit_edge ]
  tail call fastcc void @trace_host1x_channel_submitted(ptr noundef %retval.0.i129, i32 noundef %call5, i32 noundef %call30)
  %waiter = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 16
  %call42 = tail call i32 @host1x_intr_add_action(ptr noundef %11, ptr noundef %3, i32 noundef %call30, i32 noundef 0, ptr noundef %1, ptr noundef nonnull %call7.i.i, ptr noundef %waiter) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %dev_name.exit130.if.end58_crit_edge, label %do.end, !prof !173

dev_name.exit130.if.end58_crit_edge:              ; preds = %dev_name.exit130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

do.end:                                           ; preds = %dev_name.exit130
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 263, i32 noundef 9, ptr noundef nonnull @.str.1) #13
  br label %if.end58

if.end58:                                         ; preds = %do.end, %dev_name.exit130.if.end58_crit_edge
  tail call void @mutex_unlock(ptr noundef %submitlock) #13
  br label %cleanup

error.sink.split:                                 ; preds = %if.end11.error.sink.split_crit_edge, %if.end.error.sink.split_crit_edge
  %err.0.ph = phi i32 [ -12, %if.end.error.sink.split_crit_edge ], [ %call12, %if.end11.error.sink.split_crit_edge ]
  %completed_waiter.0.ph = phi ptr [ null, %if.end.error.sink.split_crit_edge ], [ %call7.i.i, %if.end11.error.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %submitlock) #13
  br label %error

error:                                            ; preds = %error.sink.split, %dev_name.exit.error_crit_edge
  %err.0 = phi i32 [ %call6, %dev_name.exit.error_crit_edge ], [ %err.0.ph, %error.sink.split ]
  %completed_waiter.0 = phi ptr [ null, %dev_name.exit.error_crit_edge ], [ %completed_waiter.0.ph, %error.sink.split ]
  tail call void @kfree(ptr noundef %completed_waiter.0) #13
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end58
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end58 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_host1x_channel_submit(ptr noundef %name, i32 noundef %cmdbufs, i32 noundef %relocs, i32 noundef %syncpt_id, i32 noundef %syncpt_incrs) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_channel_submit, i32 0, i32 1), ptr blockaddress(@trace_host1x_channel_submit, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !174

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !162) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !173

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !175
  %call42 = tail call i32 @__traceiter_host1x_channel_submit(ptr noundef null, ptr noundef %name, i32 noundef %cmdbufs, i32 noundef %relocs, i32 noundef %syncpt_id, i32 noundef %syncpt_incrs) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !176
  %13 = tail call i32 @llvm.read_register.i32(metadata !162) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !162) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !173

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !177
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_channel_submit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_channel_submit, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_host1x_channel_submit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_host1x_channel_submit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 156, ptr noundef nonnull @.str.3) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !178
  %31 = tail call i32 @llvm.read_register.i32(metadata !162) #13
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
declare dso_local i32 @host1x_syncpt_read_max(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_cdma_begin(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_cdma_push(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_incr_max(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_cdma_end(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_host1x_channel_submitted(ptr noundef %name, i32 noundef %syncpt_base, i32 noundef %syncpt_max) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_channel_submitted, i32 0, i32 1), ptr blockaddress(@trace_host1x_channel_submitted, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !174

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !162) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !173

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !179
  %call42 = tail call i32 @__traceiter_host1x_channel_submitted(ptr noundef null, ptr noundef %name, i32 noundef %syncpt_base, i32 noundef %syncpt_max) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  %13 = tail call i32 @llvm.read_register.i32(metadata !162) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !162) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !173

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !177
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_channel_submitted, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_channel_submitted, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_host1x_channel_submitted.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_host1x_channel_submitted.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 177, ptr noundef nonnull @.str.3) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !178
  %31 = tail call i32 @llvm.read_register.i32(metadata !162) #13
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
declare dso_local i32 @host1x_intr_add_action(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_host1x_channel_submit(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_host1x_cdma_push_gather(ptr noundef %name, ptr noundef %bo, i32 noundef %words, i32 noundef %offset, ptr noundef %cmdbuf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_push_gather, i32 0, i32 1), ptr blockaddress(@trace_host1x_cdma_push_gather, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !174

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !162) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !173

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !181
  %call42 = tail call i32 @__traceiter_host1x_cdma_push_gather(ptr noundef null, ptr noundef %name, ptr noundef %bo, i32 noundef %words, i32 noundef %offset, ptr noundef %cmdbuf) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !182
  %13 = tail call i32 @llvm.read_register.i32(metadata !162) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !162) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !173

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !177
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_push_gather, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_push_gather, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_host1x_cdma_push_gather.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_host1x_cdma_push_gather.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 128, ptr noundef nonnull @.str.3) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !178
  %31 = tail call i32 @llvm.read_register.i32(metadata !162) #13
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
declare dso_local i32 @__traceiter_host1x_cdma_push_gather(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_host1x_channel_submitted(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdma_start(ptr noundef %cdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %running = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 10
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %running, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %cdma, i32 -112
  %pos = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 4
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos, align 8
  %last_pos = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 6
  %4 = ptrtoint ptr %last_pos to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %last_pos, align 4
  %dma = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma, align 4
  %size = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 5
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %add = add i32 %8, 4
  tail call void @host1x_ch_writel(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 36) #13
  tail call void @host1x_ch_writel(ptr noundef %add.ptr, i32 noundef %6, i32 noundef 20) #13
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pos, align 8
  tail call void @host1x_ch_writel(ptr noundef %add.ptr, i32 noundef %10, i32 noundef 24) #13
  tail call void @host1x_ch_writel(ptr noundef %add.ptr, i32 noundef %add, i32 noundef 32) #13
  tail call void @host1x_ch_writel(ptr noundef %add.ptr, i32 noundef 7, i32 noundef 36) #13
  tail call void @host1x_ch_writel(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 36) #13
  %11 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %running, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdma_stop(ptr noundef %cdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %cdma, i32 noundef 0) #13
  %running = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 10
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %running, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %cdma, i32 -112
  %call = tail call i32 @host1x_cdma_wait_locked(ptr noundef %cdma, i32 noundef 1) #13
  tail call void @host1x_ch_writel(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 36) #13
  %2 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %running, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %cdma) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdma_flush(ptr noundef %cdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pos = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pos, align 8
  %last_pos = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 6
  %2 = ptrtoint ptr %last_pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %cdma, i32 -112
  tail call void @host1x_ch_writel(ptr noundef %add.ptr, i32 noundef %1, i32 noundef 24) #13
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pos, align 8
  %6 = ptrtoint ptr %last_pos to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %last_pos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdma_timeout_init(ptr noundef %cdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9
  tail call void @__init_work(ptr noundef %timeout, i32 noundef 0) #13
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %timeout, align 8
  %lockdep_map = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @cdma_timeout_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry11 = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9, i32 0, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9, i32 0, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cdma_timeout_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.11, ptr noundef nonnull @cdma_timeout_init.__key.10) #13
  %initialized = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %initialized, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdma_timeout_destroy(ptr noundef %cdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %initialized = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initialized, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %timeout = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %initialized, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdma_freeze(ptr noundef %cdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cdma, i32 -112
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
  %torndown = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 11
  %6 = ptrtoint ptr %torndown to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %torndown, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %land.lhs.true

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6

land.lhs.true:                                    ; preds = %entry
  %running = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 10
  %8 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %running, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %do.end, label %land.lhs.true.do.body6_crit_edge

land.lhs.true.do.body6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %dev5 = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.19) #17
  br label %cleanup

do.body6:                                         ; preds = %land.lhs.true.do.body6_crit_edge, %entry.do.body6_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdma_freeze.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdma_freeze, %if.then12)) #13
          to label %do.end16 [label %if.then12], !srcloc !174

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  %dev13 = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev13, align 4
  %id = getelementptr i8, ptr %cdma, i32 -108
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdma_freeze.__UNIQUE_ID_ddebug235, ptr noundef %13, ptr noundef nonnull @.str.21, i32 noundef %15) #13
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.body6
  %call1.i = tail call i32 @host1x_sync_readl(ptr noundef %5, i32 noundef 172) #13
  %id.i = getelementptr i8, ptr %cdma, i32 -108
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i, align 4
  %shl.i = shl nuw i32 1, %17
  %or.i = or i32 %shl.i, %call1.i
  tail call void @host1x_sync_writel(ptr noundef %5, i32 noundef %or.i, i32 noundef 172) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdma_freeze.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdma_freeze, %if.then29)) #13
          to label %do.end37 [label %if.then29], !srcloc !174

if.then29:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #15
  %dev30 = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 5
  %18 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev30, align 4
  %call32 = tail call i32 @host1x_ch_readl(ptr noundef %add.ptr, i32 noundef 28) #13
  %call34 = tail call i32 @host1x_ch_readl(ptr noundef %add.ptr, i32 noundef 24) #13
  %last_pos = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 6
  %20 = ptrtoint ptr %last_pos to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_pos, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdma_freeze.__UNIQUE_ID_ddebug236, ptr noundef %19, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef %call32, i32 noundef %call34, i32 noundef %21) #13
  br label %do.end37

do.end37:                                         ; preds = %if.then29, %do.end16
  tail call void @host1x_ch_writel(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 36) #13
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i, align 4
  %shl.i62 = shl nuw i32 1, %23
  tail call void @host1x_sync_writel(ptr noundef %5, i32 noundef %shl.i62, i32 noundef 176) #13
  %running40 = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 10
  %24 = ptrtoint ptr %running40 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %running40, align 8
  %25 = ptrtoint ptr %torndown to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %torndown, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdma_resume(ptr noundef %cdma, i32 noundef %getptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdma_resume.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdma_resume, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !174

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev8 = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev8, align 4
  %id = getelementptr i8, ptr %cdma, i32 -108
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdma_resume.__UNIQUE_ID_ddebug237, ptr noundef %7, ptr noundef nonnull @.str.24, i32 noundef %9, i32 noundef %getptr) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call1.i = tail call i32 @host1x_sync_readl(ptr noundef %5, i32 noundef 172) #13
  %id.i = getelementptr i8, ptr %cdma, i32 -108
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  %shl.i = shl nuw i32 1, %11
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %call1.i, %neg.i
  tail call void @host1x_sync_writel(ptr noundef %5, i32 noundef %and.i, i32 noundef 172) #13
  %torndown = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 11
  %12 = ptrtoint ptr %torndown to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %torndown, align 1
  tail call fastcc void @cdma_timeout_restart(ptr noundef %cdma, i32 noundef %getptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdma_timeout_cpu_incr(ptr nocapture noundef readonly %cdma, i32 noundef %getptr, i32 noundef %syncpt_incrs, i32 noundef %syncval, i32 noundef %nr_slots) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %syncpt_incrs)
  %cmp6.not = icmp eq i32 %syncpt_incrs, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %syncpt = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %syncpt, align 8
  %call = tail call i32 @host1x_syncpt_incr(ptr noundef %1) #13
  %inc = add nuw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %syncpt_incrs
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %syncpt2 = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %syncpt2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %syncpt2, align 8
  %call3 = tail call i32 @host1x_syncpt_load(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_ch_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_cdma_wait_locked(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdma_timeout_handler(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -208
  %dev = getelementptr i8, ptr %work, i32 -212
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
  tail call void @host1x_debug_dump(ptr noundef %5) #13
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #13
  %client = getelementptr inbounds %struct.buffer_timeout, ptr %work, i32 0, i32 5
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.body, label %if.end22

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdma_timeout_handler.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdma_timeout_handler, %if.then19)) #13
          to label %cleanup [label %if.then19], !srcloc !174

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %dev20 = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdma_timeout_handler.__UNIQUE_ID_ddebug238, ptr noundef %9, ptr noundef nonnull @.str.15) #13
  br label %cleanup

if.end22:                                         ; preds = %entry
  %call1.i = tail call i32 @host1x_sync_readl(ptr noundef %5, i32 noundef 172) #13
  %id.i = getelementptr i8, ptr %work, i32 -316
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  %shl.i = shl nuw i32 1, %11
  %or.i = or i32 %shl.i, %call1.i
  tail call void @host1x_sync_writel(ptr noundef %5, i32 noundef %or.i, i32 noundef 172) #13
  %syncpt = getelementptr inbounds %struct.buffer_timeout, ptr %work, i32 0, i32 2
  %12 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %syncpt, align 8
  %call24 = tail call i32 @host1x_syncpt_load(ptr noundef %13) #13
  %syncpt_val26 = getelementptr inbounds %struct.buffer_timeout, ptr %work, i32 0, i32 3
  %14 = ptrtoint ptr %syncpt_val26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %syncpt_val26, align 4
  %sub = sub i32 %call24, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %do.body28, label %do.end49

do.body28:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdma_timeout_handler.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdma_timeout_handler, %if.then40)) #13
          to label %do.end44 [label %if.then40], !srcloc !174

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #15
  %dev41 = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev41, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdma_timeout_handler.__UNIQUE_ID_ddebug239, ptr noundef %17, ptr noundef nonnull @.str.16) #13
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.body28
  %call1.i88 = tail call i32 @host1x_sync_readl(ptr noundef %5, i32 noundef 172) #13
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i, align 4
  %shl.i90 = shl nuw i32 1, %19
  %neg.i92 = xor i32 %shl.i90, -1
  %and.i93 = and i32 %call1.i88, %neg.i92
  tail call void @host1x_sync_writel(ptr noundef %5, i32 noundef %and.i93, i32 noundef 172) #13
  br label %cleanup

do.end49:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %dev50 = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 5
  %20 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev50, align 4
  %22 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %syncpt, align 8
  %id = getelementptr inbounds %struct.host1x_syncpt, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  %name = getelementptr inbounds %struct.host1x_syncpt, ptr %23, i32 0, i32 5
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.13, i32 noundef %25, ptr noundef %27, i32 noundef %call24, i32 noundef %15) #17
  %cdma_op.i = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 18
  %28 = ptrtoint ptr %cdma_op.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cdma_op.i, align 4
  %freeze.i = getelementptr inbounds %struct.host1x_cdma_ops, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %freeze.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %freeze.i, align 4
  tail call void %31(ptr noundef %add.ptr) #13
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  tail call void @host1x_cdma_update_sync_queue(ptr noundef %add.ptr, ptr noundef %33) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %do.end44, %if.then19, %do.body
  tail call void @mutex_unlock(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_debug_dump(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_load(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_cdma_update_sync_queue(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_sync_readl(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_sync_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_ch_readl(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdma_timeout_restart(ptr noundef %cdma, i32 noundef %getptr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cdma, i32 -112
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
  %7 = load i8, ptr %running, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %pos = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 4
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pos, align 8
  %last_pos = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 6
  %10 = ptrtoint ptr %last_pos to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %last_pos, align 4
  tail call void @host1x_ch_writel(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 36) #13
  %dma = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma, align 4
  %size = getelementptr inbounds %struct.host1x_cdma, ptr %cdma, i32 0, i32 7, i32 5
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  %add = add i32 %14, 4
  tail call void @host1x_ch_writel(ptr noundef %add.ptr, i32 noundef %12, i32 noundef 20) #13
  tail call void @host1x_ch_writel(ptr noundef %add.ptr, i32 noundef %add, i32 noundef 32) #13
  tail call void @host1x_ch_writel(ptr noundef %add.ptr, i32 noundef %getptr, i32 noundef 24) #13
  tail call void @host1x_ch_writel(ptr noundef %add.ptr, i32 noundef 7, i32 noundef 36) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdma_timeout_restart.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdma_timeout_restart, %if.then25)) #13
          to label %do.end [label %if.then25], !srcloc !174

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev26 = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 5
  %15 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev26, align 4
  %call28 = tail call i32 @host1x_ch_readl(ptr noundef %add.ptr, i32 noundef 28) #13
  %call30 = tail call i32 @host1x_ch_readl(ptr noundef %add.ptr, i32 noundef 24) #13
  %17 = ptrtoint ptr %last_pos to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_pos, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdma_timeout_restart.__UNIQUE_ID_ddebug234, ptr noundef %16, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.25, i32 noundef %call28, i32 noundef %call30, i32 noundef %18) #13
  br label %do.end

do.end:                                           ; preds = %if.then25, %if.end
  tail call void @host1x_ch_writel(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 36) #13
  %19 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pos, align 8
  tail call void @host1x_ch_writel(ptr noundef %add.ptr, i32 noundef %20, i32 noundef 24) #13
  tail call void @host1x_ch_writel(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 36) #13
  %21 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %running, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_incr(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @push_buffer_init(ptr nocapture noundef readonly %pb) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pb, align 4
  %size = getelementptr inbounds %struct.push_buffer, ptr %pb, i32 0, i32 5
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1342177280, ptr %add.ptr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @syncpt_restore(ptr noundef %sp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @host1x_syncpt_read_min(ptr noundef %sp) #13
  %host1 = getelementptr inbounds %struct.host1x_syncpt, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %id = getelementptr inbounds %struct.host1x_syncpt, ptr %sp, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %mul.i = shl i32 %3, 2
  %add.i = add i32 %mul.i, 1024
  tail call void @host1x_sync_writel(ptr noundef %1, i32 noundef %call, i32 noundef %add.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @syncpt_restore_wait_base(ptr nocapture noundef readonly %sp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.host1x_syncpt, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %base_val = getelementptr inbounds %struct.host1x_syncpt, ptr %sp, i32 0, i32 4
  %2 = ptrtoint ptr %base_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_val, align 4
  %id = getelementptr inbounds %struct.host1x_syncpt, ptr %sp, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mul.i = shl i32 %5, 2
  %add.i = add i32 %mul.i, 1536
  tail call void @host1x_sync_writel(ptr noundef %1, i32 noundef %3, i32 noundef %add.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @syncpt_read_wait_base(ptr nocapture noundef %sp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.host1x_syncpt, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %id = getelementptr inbounds %struct.host1x_syncpt, ptr %sp, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %mul.i = shl i32 %3, 2
  %add.i = add i32 %mul.i, 1536
  %call2 = tail call i32 @host1x_sync_readl(ptr noundef %1, i32 noundef %add.i) #13
  %base_val = getelementptr inbounds %struct.host1x_syncpt, ptr %sp, i32 0, i32 4
  %4 = ptrtoint ptr %base_val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call2, ptr %base_val, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @syncpt_load(ptr noundef %sp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.host1x_syncpt, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %id = getelementptr inbounds %struct.host1x_syncpt, ptr %sp, i32 0, i32 1
  %min_val = getelementptr inbounds %struct.host1x_syncpt, ptr %sp, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %atomic_cmpxchg.exit.do.body_crit_edge, %entry
  %call = tail call i32 @host1x_syncpt_read_min(ptr noundef %sp) #13
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %mul.i = shl i32 %3, 2
  %add.i = add i32 %mul.i, 1024
  %call3 = tail call i32 @host1x_sync_readl(ptr noundef %1, i32 noundef %add.i) #13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %min_val, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  tail call void @llvm.prefetch.p0(ptr %min_val, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.body
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %min_val, ptr %min_val, i32 %call, i32 %call3, ptr elementtype(i32) %min_val) #13, !srcloc !184
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !185
  %cmp.not = icmp eq i32 %asmresult3.i.i.i, %call
  br i1 %cmp.not, label %do.end, label %atomic_cmpxchg.exit.do.body_crit_edge

atomic_cmpxchg.exit.do.body_crit_edge:            ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end:                                           ; preds = %atomic_cmpxchg.exit
  %client_managed.i = getelementptr inbounds %struct.host1x_syncpt, ptr %sp, i32 0, i32 6
  %5 = ptrtoint ptr %client_managed.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %client_managed.i, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %host1x_syncpt_check_max.exit, label %do.end.if.end_crit_edge

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

host1x_syncpt_check_max.exit:                     ; preds = %do.end
  %call.i = tail call i32 @host1x_syncpt_read_max(ptr noundef %sp) #13
  %sub.i = sub i32 %call.i, %call3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %host1x_syncpt_check_max.exit.if.end_crit_edge, label %do.end8

host1x_syncpt_check_max.exit.if.end_crit_edge:    ; preds = %host1x_syncpt_check_max.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end8:                                          ; preds = %host1x_syncpt_check_max.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.host1x, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %call10 = tail call i32 @host1x_syncpt_read_min(ptr noundef %sp) #13
  %call11 = tail call i32 @host1x_syncpt_read_max(ptr noundef %sp) #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %10, i32 noundef %call10, i32 noundef %call11) #17
  br label %if.end

if.end:                                           ; preds = %do.end8, %host1x_syncpt_check_max.exit.if.end_crit_edge, %do.end.if.end_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @syncpt_cpu_incr(ptr noundef %sp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.host1x_syncpt, ptr %sp, i32 0, i32 7
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %id = getelementptr inbounds %struct.host1x_syncpt, ptr %sp, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %client_managed.i = getelementptr inbounds %struct.host1x_syncpt, ptr %sp, i32 0, i32 6
  %4 = ptrtoint ptr %client_managed.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %client_managed.i, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not = icmp eq i8 %5, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !186
  %min_val.i = getelementptr inbounds %struct.host1x_syncpt, ptr %sp, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %min_val.i, i32 noundef 4) #13
  %6 = ptrtoint ptr %min_val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %min_val.i, align 4
  %max_val.i = getelementptr inbounds %struct.host1x_syncpt, ptr %sp, i32 0, i32 3
  %call.i.i6.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_val.i, i32 noundef 4) #13
  %8 = ptrtoint ptr %max_val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %max_val.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i = icmp eq i32 %7, %9
  br i1 %cmp.i, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %rem = and i32 %11, 31
  %shl = shl nuw i32 1, %rem
  %12 = lshr i32 %3, 3
  %mul.i = and i32 %12, 536870908
  %add.i = add nuw nsw i32 %mul.i, 1792
  tail call void @host1x_sync_writel(ptr noundef %1, i32 noundef %shl, i32 noundef %add.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  tail call void @arm_heavy_mb() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @syncpt_assign_to_channel(ptr nocapture noundef %sp, ptr nocapture noundef %ch) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @syncpt_enable_protection(ptr nocapture noundef %host) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_read_min(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_host1x_intr_init_host_sync(ptr noundef %host, i32 noundef %cpm, ptr noundef %syncpt_thresh_work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_op.i = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 16
  %0 = ptrtoint ptr %intr_op.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intr_op.i, align 4
  %disable_all_syncpt_intrs.i = getelementptr inbounds %struct.host1x_intr_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %disable_all_syncpt_intrs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable_all_syncpt_intrs.i, align 4
  tail call void %3(ptr noundef %host) #13
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %nb_pts57 = getelementptr inbounds %struct.host1x_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %nb_pts57 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nb_pts57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp58.not = icmp eq i32 %7, 0
  br i1 %cmp58.not, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %syncpt = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.059 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %8 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %syncpt, align 4
  %work = getelementptr %struct.host1x_syncpt, ptr %9, i32 %i.059, i32 9, i32 3
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #13
  %10 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %syncpt, align 4
  %work4 = getelementptr %struct.host1x_syncpt, ptr %11, i32 %i.059, i32 9, i32 3
  %12 = ptrtoint ptr %work4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %work4, align 4
  %13 = load ptr, ptr %syncpt, align 4
  %lockdep_map = getelementptr %struct.host1x_syncpt, ptr %13, i32 %i.059, i32 9, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.29, ptr noundef nonnull @_host1x_intr_init_host_sync.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %14 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %syncpt, align 4
  %entry13 = getelementptr %struct.host1x_syncpt, ptr %15, i32 %i.059, i32 9, i32 3, i32 1
  %16 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry13, ptr %entry13, align 4
  %prev.i = getelementptr %struct.host1x_syncpt, ptr %15, i32 %i.059, i32 9, i32 3, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry13, ptr %prev.i, align 4
  %18 = load ptr, ptr %syncpt, align 4
  %func = getelementptr %struct.host1x_syncpt, ptr %18, i32 %i.059, i32 9, i32 3, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %syncpt_thresh_work, ptr %func, align 4
  %inc = add nuw i32 %i.059, 1
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host, align 4
  %nb_pts = getelementptr inbounds %struct.host1x_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %nb_pts to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nb_pts, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  %dev = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 5
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %intr_syncpt_irq = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 14
  %26 = ptrtoint ptr %intr_syncpt_irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %intr_syncpt_irq, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %25, i32 noundef %27, ptr noundef nonnull @syncpt_thresh_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.30, ptr noundef %host) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18 = icmp slt i32 %call.i, 0
  br i1 %cmp18, label %do.end25, label %if.end37

do.end25:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 97, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end37:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @host1x_sync_writel(ptr noundef %host, i32 noundef 0, i32 noundef 444) #13
  tail call void @host1x_sync_writel(ptr noundef %host, i32 noundef 255, i32 noundef 424) #13
  tail call void @host1x_sync_writel(ptr noundef %host, i32 noundef %cpm, i32 noundef 420) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end25
  %retval.0 = phi i32 [ %call.i, %do.end25 ], [ 0, %if.end37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_host1x_intr_set_syncpt_threshold(ptr noundef %host, i32 noundef %id, i32 noundef %thresh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i = shl i32 %id, 2
  %add.i = add i32 %mul.i, 1280
  tail call void @host1x_sync_writel(ptr noundef %host, i32 noundef %thresh, i32 noundef %add.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_host1x_intr_enable_syncpt_intr(ptr noundef %host, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %id, 31
  %shl = shl nuw i32 1, %rem
  %0 = lshr i32 %id, 3
  %mul.i = and i32 %0, 536870908
  %add.i = add nuw nsw i32 %mul.i, 104
  tail call void @host1x_sync_writel(ptr noundef %host, i32 noundef %shl, i32 noundef %add.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_host1x_intr_disable_syncpt_intr(ptr noundef %host, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %id, 31
  %shl = shl nuw i32 1, %rem
  %0 = lshr i32 %id, 3
  %mul.i = and i32 %0, 536870908
  %add.i = add nuw nsw i32 %mul.i, 96
  tail call void @host1x_sync_writel(ptr noundef %host, i32 noundef %shl, i32 noundef %add.i) #13
  %add.i11 = add nuw nsw i32 %mul.i, 64
  tail call void @host1x_sync_writel(ptr noundef %host, i32 noundef %shl, i32 noundef %add.i11) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_host1x_intr_disable_all_syncpt_intrs(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %nb_pts10 = getelementptr inbounds %struct.host1x_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nb_pts10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nb_pts10, align 4
  %sub11 = add i32 %3, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub11)
  %cmp13.not = icmp ult i32 %sub11, 32
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul.i = shl i32 %i.014, 2
  %add.i = add nuw nsw i32 %mul.i, 96
  tail call void @host1x_sync_writel(ptr noundef %host, i32 noundef -1, i32 noundef %add.i) #13
  %add.i9 = add nuw nsw i32 %mul.i, 64
  tail call void @host1x_sync_writel(ptr noundef %host, i32 noundef -1, i32 noundef %add.i9) #13
  %inc = add nuw nsw i32 %i.014, 1
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %nb_pts = getelementptr inbounds %struct.host1x_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %nb_pts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nb_pts, align 4
  %sub = add i32 %7, 31
  %div7 = lshr i32 %sub, 5
  %cmp = icmp ult i32 %inc, %div7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_host1x_free_syncpt_irq(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %intr_syncpt_irq = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 14
  %2 = ptrtoint ptr %intr_syncpt_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr_syncpt_irq, align 4
  tail call void @devm_free_irq(ptr noundef %1, i32 noundef %3, ptr noundef %host) #13
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %nb_pts7 = getelementptr inbounds %struct.host1x_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %nb_pts7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nb_pts7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8.not = icmp eq i32 %7, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %syncpt = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %syncpt, align 4
  %work = getelementptr %struct.host1x_syncpt, ptr %9, i32 %i.09, i32 9, i32 3
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #13
  %inc = add nuw i32 %i.09, 1
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  %nb_pts = getelementptr inbounds %struct.host1x_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %nb_pts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nb_pts, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @syncpt_thresh_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #13
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !188
  %1 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_id, align 4
  %nb_pts22 = getelementptr inbounds %struct.host1x_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %nb_pts22 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nb_pts22, align 4
  %sub23 = add i32 %4, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub23)
  %cmp25.not = icmp ult i32 %sub23, 32
  br i1 %cmp25.not, label %entry.for.end11_crit_edge, label %for.body.lr.ph

entry.for.end11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end11

for.body.lr.ph:                                   ; preds = %entry
  %syncpt6 = getelementptr inbounds %struct.host1x, ptr %dev_id, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc10.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc10.for.body_crit_edge ]
  %mul.i = shl i32 %i.026, 2
  %add.i = add nuw nsw i32 %mul.i, 64
  %call1 = call i32 @host1x_sync_readl(ptr noundef %dev_id, i32 noundef %add.i) #13
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call1, ptr %reg, align 4
  %call2 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 32, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call2)
  %cmp420 = icmp ult i32 %call2, 32
  br i1 %cmp420, label %for.body5.lr.ph, label %for.body.for.inc10_crit_edge

for.body.for.inc10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc10

for.body5.lr.ph:                                  ; preds = %for.body
  %mul = shl i32 %i.026, 5
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body5.lr.ph
  %id.021 = phi i32 [ %call2, %for.body5.lr.ph ], [ %call9, %for.body5.for.body5_crit_edge ]
  %6 = ptrtoint ptr %syncpt6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %syncpt6, align 4
  %add7 = add nuw i32 %id.021, %mul
  %id1.i = getelementptr %struct.host1x_syncpt, ptr %7, i32 %add7, i32 1
  %8 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id1.i, align 4
  %host2.i = getelementptr %struct.host1x_syncpt, ptr %7, i32 %add7, i32 7
  %10 = ptrtoint ptr %host2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host2.i, align 4
  %rem.i = and i32 %9, 31
  %shl.i = shl nuw i32 1, %rem.i
  %12 = lshr i32 %9, 3
  %mul.i.i = and i32 %12, 536870908
  %add.i.i = add nuw nsw i32 %mul.i.i, 96
  call void @host1x_sync_writel(ptr noundef %11, i32 noundef %shl.i, i32 noundef %add.i.i) #13
  %add.i16.i = add nuw nsw i32 %mul.i.i, 64
  call void @host1x_sync_writel(ptr noundef %11, i32 noundef %shl.i, i32 noundef %add.i16.i) #13
  %work.i = getelementptr %struct.host1x_syncpt, ptr %7, i32 %add7, i32 9, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %work.i) #13
  %add8 = add nuw nsw i32 %id.021, 1
  %call9 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 32, i32 noundef %add8) #13
  %cmp4 = icmp ult i32 %call9, 32
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.inc10_crit_edge

for.body5.for.inc10_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc10

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body5

for.inc10:                                        ; preds = %for.body5.for.inc10_crit_edge, %for.body.for.inc10_crit_edge
  %inc = add nuw nsw i32 %i.026, 1
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 4
  %nb_pts = getelementptr inbounds %struct.host1x_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %nb_pts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nb_pts, align 4
  %sub = add i32 %17, 31
  %div19 = lshr i32 %sub, 5
  %cmp = icmp ult i32 %inc, %div19
  br i1 %cmp, label %for.inc10.for.body_crit_edge, label %for.inc10.for.end11_crit_edge

for.inc10.for.end11_crit_edge:                    ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end11

for.inc10.for.body_crit_edge:                     ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end11:                                        ; preds = %for.inc10.for.end11_crit_edge, %entry.for.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @host1x_debug_show_channel_cdma(ptr noundef %host, ptr noundef %ch, ptr noundef %o) #2 align 64 {
entry:
  %addr.i79.i = alloca i32, align 4
  %addr.i.i = alloca i32, align 4
  %dmastart = alloca i32, align 4
  %dmaend = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dmastart) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dmaend) #13
  %call2 = tail call i32 @host1x_ch_readl(ptr noundef %ch, i32 noundef 20) #13
  %0 = ptrtoint ptr %dmastart to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call2, ptr %dmastart, align 4
  %call4 = tail call i32 @host1x_ch_readl(ptr noundef %ch, i32 noundef 32) #13
  %1 = ptrtoint ptr %dmaend to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call4, ptr %dmaend, align 4
  %call6 = tail call i32 @host1x_ch_readl(ptr noundef %ch, i32 noundef 24) #13
  %call8 = tail call i32 @host1x_ch_readl(ptr noundef %ch, i32 noundef 28) #13
  %call10 = tail call i32 @host1x_ch_readl(ptr noundef %ch, i32 noundef 36) #13
  %id = getelementptr inbounds %struct.host1x_channel, ptr %ch, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %mul.i = shl i32 %3, 2
  %add.i = add i32 %mul.i, 1824
  %call12 = tail call i32 @host1x_sync_readl(ptr noundef %host, i32 noundef %add.i) #13
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mul.i91 = shl i32 %5, 2
  %add.i92 = add i32 %mul.i91, 1880
  %call15 = tail call i32 @host1x_sync_readl(ptr noundef %host, i32 noundef %add.i92) #13
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %dev = getelementptr inbounds %struct.host1x_channel, ptr %ch, i32 0, i32 5
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %entry.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.32, i32 noundef %7, ptr noundef %retval.0.i) #13
  %and.i = and i32 %call10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %dev_name.exit.if.then_crit_edge

dev_name.exit.if.then_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %dev_name.exit
  %push_buffer = getelementptr inbounds %struct.host1x_channel, ptr %ch, i32 0, i32 6, i32 7
  %14 = ptrtoint ptr %push_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %push_buffer, align 8
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %dev_name.exit.if.then_crit_edge
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.33) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %shr.i = lshr i32 %call15, 16
  %and.i93 = and i32 %shr.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i93)
  %cmp = icmp eq i32 %and.i93, 1
  %and.i94 = and i32 %call15, 65535
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else39_crit_edge

if.end.if.else39_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else39

land.lhs.true:                                    ; preds = %if.end
  %trunc = trunc i32 %call15 to i16
  %16 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %land.lhs.true.if.else39_crit_edge [
    i16 8, label %if.then25
    i16 9, label %if.then32
  ]

land.lhs.true.if.else39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else39

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %shr = lshr i32 %call12, 24
  %and = and i32 %call12, 16777215
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.34, i32 noundef %shr, i32 noundef %and) #13
  br label %if.end43

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %shr33 = lshr i32 %call12, 16
  %and34 = and i32 %shr33, 255
  %mul.i98 = shl nuw nsw i32 %and34, 2
  %add.i99 = add nuw nsw i32 %mul.i98, 1536
  %call36 = tail call i32 @host1x_sync_readl(ptr noundef %host, i32 noundef %add.i99) #13
  %and37 = and i32 %call12, 65535
  %shr38 = lshr i32 %call12, 24
  %add = add i32 %call36, %and37
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.35, i32 noundef %shr38, i32 noundef %add, i32 noundef %and34, i32 noundef %call36, i32 noundef %and37) #13
  br label %if.end43

if.else39:                                        ; preds = %land.lhs.true.if.else39_crit_edge, %if.end.if.else39_crit_edge
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.36, i32 noundef %and.i93, i32 noundef %and.i94, i32 noundef %call12) #13
  br label %if.end43

if.end43:                                         ; preds = %if.else39, %if.then32, %if.then25
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.37, ptr noundef nonnull %dmastart, ptr noundef nonnull %dmaend) #13
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.38, i32 noundef %call6, i32 noundef %call8, i32 noundef %call10) #13
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.39, i32 noundef %call12, i32 noundef %call15) #13
  %sync_queue.i = getelementptr inbounds %struct.host1x_channel, ptr %ch, i32 0, i32 6, i32 8
  %17 = ptrtoint ptr %sync_queue.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn107.i = load ptr, ptr %sync_queue.i, align 4
  %cmp.not108.i = icmp eq ptr %.pn107.i, %sync_queue.i
  br i1 %cmp.not108.i, label %if.end43.show_channel_gathers.exit_crit_edge, label %for.body.lr.ph.i

if.end43.show_channel_gathers.exit_crit_edge:     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %show_channel_gathers.exit

for.body.lr.ph.i:                                 ; preds = %if.end43
  %dma.i = getelementptr inbounds %struct.host1x_channel, ptr %ch, i32 0, i32 6, i32 7, i32 1
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %cleanup.i.for.cond.loopexit.i_crit_edge, %show_gather.exit.i.for.cond.loopexit.i_crit_edge
  %18 = ptrtoint ptr %.pn109.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn109.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %sync_queue.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.show_channel_gathers.exit_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.cond.loopexit.i.show_channel_gathers.exit_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %show_channel_gathers.exit

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn109.i = phi ptr [ %.pn107.i, %for.body.lr.ph.i ], [ %.pn.i, %for.cond.loopexit.i.for.body.i_crit_edge ]
  %syncpt.i = getelementptr i8, ptr %.pn109.i, i32 52
  %19 = ptrtoint ptr %syncpt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %syncpt.i, align 4
  %id.i = getelementptr inbounds %struct.host1x_syncpt, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id.i, align 4
  %syncpt_end.i = getelementptr i8, ptr %.pn109.i, i32 60
  %23 = ptrtoint ptr %syncpt_end.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %syncpt_end.i, align 4
  %timeout.i = getelementptr i8, ptr %.pn109.i, i32 68
  %25 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %timeout.i, align 4
  %num_slots.i = getelementptr i8, ptr %.pn109.i, i32 80
  %27 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_slots.i, align 4
  %num_unpins.i = getelementptr i8, ptr %.pn109.i, i32 36
  %29 = ptrtoint ptr %num_unpins.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_unpins.i, align 4
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.41, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30) #13
  %31 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma.i, align 4
  %first_get.i = getelementptr i8, ptr %.pn109.i, i32 76
  %33 = ptrtoint ptr %first_get.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %first_get.i, align 4
  %add.i103 = add i32 %34, %32
  %35 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_slots.i, align 4
  %mul.i104 = shl i32 %36, 1
  %37 = ptrtoint ptr %push_buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %push_buffer, align 4
  %add.ptr7.i = getelementptr i8, ptr %38, i32 %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i104)
  %cmp12.not.i.i = icmp eq i32 %mul.i104, 0
  br i1 %cmp12.not.i.i, label %for.body.i.show_gather.exit.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.show_gather.exit.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %show_gather.exit.i

for.body.i.i:                                     ; preds = %if.end5.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %i.04.i.i = phi i32 [ %inc.i.i, %if.end5.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.for.body.i.i_crit_edge ]
  %data_count.03.i.i = phi i32 [ %data_count.1.i.i, %if.end5.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i) #13
  %mul.i.i = shl i32 %i.04.i.i, 2
  %add.i.i = add i32 %add.i103, %mul.i.i
  %39 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add.i.i, ptr %addr.i.i, align 4
  %add.ptr2.i.i = getelementptr i32, ptr %add.ptr7.i, i32 %i.04.i.i
  %40 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_count.03.i.i)
  %tobool.not.i.i = icmp eq i32 %data_count.03.i.i, 0
  br i1 %tobool.not.i.i, label %if.then3.i.i, label %if.else.i.i

if.then3.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.45, ptr noundef nonnull %addr.i.i, i32 noundef %41) #13
  %call.i.i = call fastcc i32 @show_channel_command(ptr noundef %o, i32 noundef %41) #13
  br label %if.end5.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data_count.03.i.i)
  %cmp4.not.i.i = icmp eq i32 %data_count.03.i.i, 1
  %cond.i.i = select i1 %cmp4.not.i.i, ptr @.str.48, ptr @.str.47
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %o, ptr noundef nonnull @.str.46, i32 noundef %41, ptr noundef nonnull %cond.i.i) #13
  %dec.i.i = add i32 %data_count.03.i.i, -1
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.else.i.i, %if.then3.i.i
  %data_count.1.i.i = phi i32 [ %dec.i.i, %if.else.i.i ], [ %call.i.i, %if.then3.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #13
  %inc.i.i = add nuw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %mul.i104
  br i1 %exitcond.not.i.i, label %if.end5.i.i.show_gather.exit.i_crit_edge, label %if.end5.i.i.for.body.i.i_crit_edge

if.end5.i.i.for.body.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

if.end5.i.i.show_gather.exit.i_crit_edge:         ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %show_gather.exit.i

show_gather.exit.i:                               ; preds = %if.end5.i.i.show_gather.exit.i_crit_edge, %for.body.i.show_gather.exit.i_crit_edge
  %num_cmds.i = getelementptr i8, ptr %.pn109.i, i32 20
  %42 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_cmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp9104.not.i = icmp eq i32 %43, 0
  br i1 %cmp9104.not.i, label %show_gather.exit.i.for.cond.loopexit.i_crit_edge, label %for.body10.lr.ph.i

show_gather.exit.i.for.cond.loopexit.i_crit_edge: ; preds = %show_gather.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.loopexit.i

for.body10.lr.ph.i:                               ; preds = %show_gather.exit.i
  %cmds.i = getelementptr i8, ptr %.pn109.i, i32 16
  %gather_copy_mapped.i = getelementptr i8, ptr %.pn109.i, i32 92
  br label %for.body10.i

for.body10.i:                                     ; preds = %cleanup.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %i.0105.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc.i, %cleanup.i.for.body10.i_crit_edge ]
  %44 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cmds.i, align 4
  %arrayidx.i = getelementptr %struct.host1x_job_cmd, ptr %45, i32 %i.0105.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i105 = icmp eq i8 %47, 0
  br i1 %tobool.not.i105, label %if.end.i106, label %for.body10.i.cleanup.i_crit_edge

for.body10.i.cleanup.i_crit_edge:                 ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end.i106:                                      ; preds = %for.body10.i
  %48 = getelementptr %struct.host1x_job_cmd, ptr %45, i32 %i.0105.i, i32 1
  %49 = ptrtoint ptr %gather_copy_mapped.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gather_copy_mapped.i, align 4
  %tobool14.not.i = icmp eq ptr %50, null
  br i1 %tobool14.not.i, label %if.end17.i, label %if.end.i106.if.end20.i_crit_edge

if.end.i106.if.end20.i_crit_edge:                 ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.end17.i:                                       ; preds = %if.end.i106
  %bo.i = getelementptr inbounds %struct.host1x_job_gather, ptr %48, i32 0, i32 2
  %51 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bo.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %mmap.i.i = getelementptr inbounds %struct.host1x_bo_ops, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %mmap.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmap.i.i, align 4
  %call.i78.i = call ptr %56(ptr noundef %52) #13
  %tobool18.not.i = icmp eq ptr %call.i78.i, null
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end17.i.if.end20.i_crit_edge

if.end17.i.if.end20.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.42) #13
  br label %cleanup.i

if.end20.i:                                       ; preds = %if.end17.i.if.end20.i_crit_edge, %if.end.i106.if.end20.i_crit_edge
  %mapped11.0102.i = phi ptr [ %call.i78.i, %if.end17.i.if.end20.i_crit_edge ], [ %50, %if.end.i106.if.end20.i_crit_edge ]
  %base.i = getelementptr inbounds %struct.host1x_job_gather, ptr %48, i32 0, i32 1
  %offset.i = getelementptr inbounds %struct.host1x_job_gather, ptr %48, i32 0, i32 3
  %57 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %offset.i, align 4
  %59 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %48, align 4
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.43, ptr noundef %base.i, i32 noundef %58, i32 noundef %60) #13
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %base.i, align 4
  %63 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %offset.i, align 4
  %add23.i = add i32 %64, %62
  %65 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 102400, i32 %64)
  %cmp.i.i = icmp ugt i32 %64, 102400
  br i1 %cmp.i.i, label %if.then.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp12.not.i80.i = icmp eq i32 %66, 0
  br i1 %cmp12.not.i80.i, label %for.cond.preheader.i.i.show_gather.exit99.i_crit_edge, label %for.body.lr.ph.i81.i

for.cond.preheader.i.i.show_gather.exit99.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %show_gather.exit99.i

for.body.lr.ph.i81.i:                             ; preds = %for.cond.preheader.i.i
  %div1.i.i = lshr i32 %64, 2
  %add.ptr.i.i = getelementptr i32, ptr %mapped11.0102.i, i32 %div1.i.i
  br label %for.body.i88.i

if.then.i.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.44) #13
  br label %show_gather.exit99.i

for.body.i88.i:                                   ; preds = %if.end5.i98.i.for.body.i88.i_crit_edge, %for.body.lr.ph.i81.i
  %i.04.i82.i = phi i32 [ 0, %for.body.lr.ph.i81.i ], [ %inc.i96.i, %if.end5.i98.i.for.body.i88.i_crit_edge ]
  %data_count.03.i83.i = phi i32 [ 0, %for.body.lr.ph.i81.i ], [ %data_count.1.i95.i, %if.end5.i98.i.for.body.i88.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i79.i) #13
  %mul.i84.i = shl i32 %i.04.i82.i, 2
  %add.i85.i = add i32 %add23.i, %mul.i84.i
  %67 = ptrtoint ptr %addr.i79.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add.i85.i, ptr %addr.i79.i, align 4
  %add.ptr2.i86.i = getelementptr i32, ptr %add.ptr.i.i, i32 %i.04.i82.i
  %68 = ptrtoint ptr %add.ptr2.i86.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr2.i86.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_count.03.i83.i)
  %tobool.not.i87.i = icmp eq i32 %data_count.03.i83.i, 0
  br i1 %tobool.not.i87.i, label %if.then3.i90.i, label %if.else.i94.i

if.then3.i90.i:                                   ; preds = %for.body.i88.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.45, ptr noundef nonnull %addr.i79.i, i32 noundef %69) #13
  %call.i89.i = call fastcc i32 @show_channel_command(ptr noundef %o, i32 noundef %69) #13
  br label %if.end5.i98.i

if.else.i94.i:                                    ; preds = %for.body.i88.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data_count.03.i83.i)
  %cmp4.not.i91.i = icmp eq i32 %data_count.03.i83.i, 1
  %cond.i92.i = select i1 %cmp4.not.i91.i, ptr @.str.48, ptr @.str.47
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %o, ptr noundef nonnull @.str.46, i32 noundef %69, ptr noundef nonnull %cond.i92.i) #13
  %dec.i93.i = add i32 %data_count.03.i83.i, -1
  br label %if.end5.i98.i

if.end5.i98.i:                                    ; preds = %if.else.i94.i, %if.then3.i90.i
  %data_count.1.i95.i = phi i32 [ %dec.i93.i, %if.else.i94.i ], [ %call.i89.i, %if.then3.i90.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i79.i) #13
  %inc.i96.i = add nuw i32 %i.04.i82.i, 1
  %exitcond.not.i97.i = icmp eq i32 %inc.i96.i, %66
  br i1 %exitcond.not.i97.i, label %if.end5.i98.i.show_gather.exit99.i_crit_edge, label %if.end5.i98.i.for.body.i88.i_crit_edge

if.end5.i98.i.for.body.i88.i_crit_edge:           ; preds = %if.end5.i98.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i88.i

if.end5.i98.i.show_gather.exit99.i_crit_edge:     ; preds = %if.end5.i98.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %show_gather.exit99.i

show_gather.exit99.i:                             ; preds = %if.end5.i98.i.show_gather.exit99.i_crit_edge, %if.then.i.i, %for.cond.preheader.i.i.show_gather.exit99.i_crit_edge
  %70 = ptrtoint ptr %gather_copy_mapped.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %gather_copy_mapped.i, align 4
  %tobool27.not.i = icmp eq ptr %71, null
  br i1 %tobool27.not.i, label %if.then28.i, label %show_gather.exit99.i.cleanup.i_crit_edge

show_gather.exit99.i.cleanup.i_crit_edge:         ; preds = %show_gather.exit99.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.then28.i:                                      ; preds = %show_gather.exit99.i
  call void @__sanitizer_cov_trace_pc() #15
  %bo29.i = getelementptr inbounds %struct.host1x_job_gather, ptr %48, i32 0, i32 2
  %72 = ptrtoint ptr %bo29.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bo29.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %munmap.i.i = getelementptr inbounds %struct.host1x_bo_ops, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %munmap.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %munmap.i.i, align 4
  call void %77(ptr noundef %73, ptr noundef %mapped11.0102.i) #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then28.i, %show_gather.exit99.i.cleanup.i_crit_edge, %if.then19.i, %for.body10.i.cleanup.i_crit_edge
  %inc.i = add nuw i32 %i.0105.i, 1
  %78 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_cmds.i, align 4
  %cmp9.i = icmp ult i32 %inc.i, %79
  br i1 %cmp9.i, label %cleanup.i.for.body10.i_crit_edge, label %cleanup.i.for.cond.loopexit.i_crit_edge

cleanup.i.for.cond.loopexit.i_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.loopexit.i

cleanup.i.for.body10.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body10.i

show_channel_gathers.exit:                        ; preds = %for.cond.loopexit.i.show_channel_gathers.exit_crit_edge, %if.end43.show_channel_gathers.exit_crit_edge
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.40) #13
  br label %cleanup

cleanup:                                          ; preds = %show_channel_gathers.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dmaend) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dmastart) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @host1x_debug_show_channel_fifo(ptr noundef %host, ptr noundef %ch, ptr noundef %o) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.host1x_channel, ptr %ch, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.61, i32 noundef %1) #13
  %call1 = tail call i32 @host1x_ch_readl(ptr noundef %ch, i32 noundef 0) #13
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.62, i32 noundef %call1) #13
  %2 = and i32 %call1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.63) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @host1x_sync_writel(ptr noundef %host, i32 noundef 0, i32 noundef 1868) #13
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %and.i77 = shl i32 %4, 16
  %shl.i = and i32 %and.i77, 458752
  %or = or i32 %shl.i, -2147483648
  tail call void @host1x_sync_writel(ptr noundef %host, i32 noundef %or, i32 noundef 1868) #13
  %call9 = tail call i32 @host1x_sync_readl(ptr noundef %host, i32 noundef 1876) #13
  %and.i78 = and i32 %call9, 511
  %shr.i79 = lshr i32 %call9, 16
  %and.i80 = and i32 %shr.i79, 511
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %mul.i = shl i32 %6, 2
  %add.i = add i32 %mul.i, 128
  %call14 = tail call i32 @host1x_sync_readl(ptr noundef %host, i32 noundef %add.i) #13
  %and.i81 = and i32 %call14, 511
  %shr.i82 = lshr i32 %call14, 16
  %and.i83 = and i32 %shr.i82, 511
  br label %do.body

do.body:                                          ; preds = %if.end30.do.body_crit_edge, %if.end
  %rd_ptr.0 = phi i32 [ %and.i78, %if.end ], [ %rd_ptr.1, %if.end30.do.body_crit_edge ]
  %data_count.0 = phi i32 [ 0, %if.end ], [ %data_count.1, %if.end30.do.body_crit_edge ]
  tail call void @host1x_sync_writel(ptr noundef %host, i32 noundef 0, i32 noundef 1868) #13
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %and.i84 = shl i32 %8, 16
  %shl.i85 = and i32 %and.i84, 458752
  %and.i86 = and i32 %rd_ptr.0, 511
  %or21 = or i32 %and.i86, %shl.i85
  %or23 = or i32 %or21, -2147483648
  tail call void @host1x_sync_writel(ptr noundef %host, i32 noundef %or23, i32 noundef 1868) #13
  %call26 = tail call i32 @host1x_sync_readl(ptr noundef %host, i32 noundef 1872) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_count.0)
  %tobool27.not = icmp eq i32 %data_count.0, 0
  br i1 %tobool27.not, label %if.then28, label %if.else

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.64, i32 noundef %call26) #13
  %call29 = tail call fastcc i32 @show_channel_command(ptr noundef %o, i32 noundef %call26)
  br label %if.end30

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data_count.0)
  %cmp.not = icmp eq i32 %data_count.0, 1
  %cond = select i1 %cmp.not, ptr @.str.48, ptr @.str.47
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %o, ptr noundef nonnull @.str.46, i32 noundef %call26, ptr noundef nonnull %cond) #13
  %dec = add i32 %data_count.0, -1
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then28
  %data_count.1 = phi i32 [ %dec, %if.else ], [ %call29, %if.then28 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rd_ptr.0, i32 %and.i83)
  %cmp31 = icmp eq i32 %rd_ptr.0, %and.i83
  %inc = add i32 %rd_ptr.0, 1
  %rd_ptr.1 = select i1 %cmp31, i32 %and.i81, i32 %inc
  %cmp35.not = icmp eq i32 %rd_ptr.1, %and.i80
  br i1 %cmp35.not, label %do.end, label %if.end30.do.body_crit_edge

if.end30.do.body_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_count.1)
  %tobool36.not = icmp eq i32 %data_count.1, 0
  br i1 %tobool36.not, label %do.end.if.end38_crit_edge, label %if.then37

do.end.if.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then37:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %o, ptr noundef nonnull @.str.65) #13
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %do.end.if.end38_crit_edge
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.40) #13
  tail call void @host1x_sync_writel(ptr noundef %host, i32 noundef 0, i32 noundef 1868) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @host1x_debug_show_mlocks(ptr noundef %host, ptr noundef %o) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.66) #13
  %call25 = tail call i32 @host1x_syncpt_nb_mlocks(ptr noundef %host) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %entry.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %if.end9.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul.i = shl i32 %i.027, 2
  %add.i = add i32 %mul.i, 832
  %call2 = tail call i32 @host1x_sync_readl(ptr noundef %host, i32 noundef %add.i) #13
  %and.i = and i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %shr.i = lshr i32 %call2, 8
  %and.i22 = and i32 %shr.i, 15
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.67, i32 noundef %i.027, i32 noundef %and.i22) #13
  br label %if.end9

if.else:                                          ; preds = %for.body
  %0 = and i32 %call2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool6.not = icmp eq i32 %0, 0
  br i1 %tobool6.not, label %if.else8, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.68, i32 noundef %i.027) #13
  br label %if.end9

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.69, i32 noundef %i.027) #13
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then7, %if.then
  %inc = add nuw i32 %i.027, 1
  %call = tail call i32 @host1x_syncpt_nb_mlocks(ptr noundef %host) #13
  %cmp = icmp ult i32 %inc, %call
  br i1 %cmp, label %if.end9.for.body_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.40) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_debug_output(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @show_channel_command(ptr noundef %o, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %val, 28
  %0 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %shr, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb65
    i32 2, label %sw.bb72
    i32 3, label %sw.bb79
    i32 4, label %sw.bb226
    i32 5, label %sw.bb230
    i32 6, label %sw.bb231
    i32 14, label %sw.bb239
  ]

sw.bb:                                            ; preds = %entry
  %and = and i32 %val, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %shr63 = lshr i32 %val, 6
  %and64 = and i32 %shr63, 1023
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %shr3 = lshr i32 %val, 16
  %and4 = and i32 %shr3, 4095
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %o, ptr noundef nonnull @.str.49, i32 noundef %and64, i32 noundef %and4, i32 noundef %and) #13
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %and) #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %o, ptr noundef nonnull @.str.50, i32 noundef %and64) #13
  br label %cleanup

sw.bb65:                                          ; preds = %entry
  %and66 = and i32 %val, 65535
  %shr67 = lshr i32 %val, 16
  %and68 = and i32 %shr67, 4095
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %o, ptr noundef nonnull @.str.51, i32 noundef %and68) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool69.not = icmp eq i32 %and66, 0
  br i1 %tobool69.not, label %if.then70, label %sw.bb65.cleanup_crit_edge

sw.bb65.cleanup_crit_edge:                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then70:                                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %o, ptr noundef nonnull @.str.48) #13
  br label %cleanup

sw.bb72:                                          ; preds = %entry
  %and73 = and i32 %val, 65535
  %shr74 = lshr i32 %val, 16
  %and75 = and i32 %shr74, 4095
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %o, ptr noundef nonnull @.str.52, i32 noundef %and75) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool76.not = icmp eq i32 %and73, 0
  br i1 %tobool76.not, label %if.then77, label %sw.bb72.cleanup_crit_edge

sw.bb72.cleanup_crit_edge:                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then77:                                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %o, ptr noundef nonnull @.str.48) #13
  br label %cleanup

sw.bb79:                                          ; preds = %entry
  %and80 = and i32 %val, 65535
  %shr81 = lshr i32 %val, 16
  %and82 = and i32 %shr81, 4095
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %o, ptr noundef nonnull @.str.53, i32 noundef %and82, i32 noundef %and80) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool83.not = icmp eq i32 %and80, 0
  br i1 %tobool83.not, label %if.then84, label %sw.bb79.cond.false222_crit_edge

sw.bb79.cond.false222_crit_edge:                  ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false222

if.then84:                                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %o, ptr noundef nonnull @.str.48) #13
  br label %cond.false222

cond.false222:                                    ; preds = %if.then84, %sw.bb79.cond.false222_crit_edge
  %call.i2 = tail call i32 @__sw_hweight16(i32 noundef %and80) #13
  br label %cleanup

sw.bb226:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %shr227 = lshr i32 %val, 16
  %and228 = and i32 %shr227, 4095
  %and229 = and i32 %val, 65535
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %o, ptr noundef nonnull @.str.54, i32 noundef %and228, i32 noundef %and229) #13
  br label %cleanup

sw.bb230:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %shl = shl i32 %val, 4
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %o, ptr noundef nonnull @.str.55, i32 noundef %shl) #13
  br label %cleanup

sw.bb231:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %shr232 = lshr i32 %val, 16
  %and233 = and i32 %shr232, 4095
  %shr234 = lshr i32 %val, 15
  %and235 = and i32 %shr234, 1
  %shr236 = lshr i32 %val, 14
  %and237 = and i32 %shr236, 1
  %and238 = and i32 %val, 16383
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %o, ptr noundef nonnull @.str.56, i32 noundef %and233, i32 noundef %and235, i32 noundef %and237, i32 noundef %and238) #13
  br label %cleanup

sw.bb239:                                         ; preds = %entry
  %shr240 = lshr i32 %val, 24
  %and241 = and i32 %shr240, 15
  %1 = zext i32 %and241 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %and241, label %if.else249 [
    i32 0, label %if.then243
    i32 1, label %if.then247
  ]

if.then243:                                       ; preds = %sw.bb239
  call void @__sanitizer_cov_trace_pc() #15
  %and244 = and i32 %val, 255
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %o, ptr noundef nonnull @.str.57, i32 noundef %and244) #13
  br label %cleanup

if.then247:                                       ; preds = %sw.bb239
  call void @__sanitizer_cov_trace_pc() #15
  %and248 = and i32 %val, 255
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %o, ptr noundef nonnull @.str.58, i32 noundef %and248) #13
  br label %cleanup

if.else249:                                       ; preds = %sw.bb239
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %o, ptr noundef nonnull @.str.59, i32 noundef %val) #13
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %o, ptr noundef nonnull @.str.60) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.else249, %if.then247, %if.then243, %sw.bb231, %sw.bb230, %sw.bb226, %cond.false222, %if.then77, %sw.bb72.cleanup_crit_edge, %if.then70, %sw.bb65.cleanup_crit_edge, %if.end, %if.then
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %sw.bb231 ], [ 0, %sw.bb230 ], [ 0, %sw.bb226 ], [ 0, %if.end ], [ %call.i, %if.then ], [ 0, %if.then70 ], [ %and66, %sw.bb65.cleanup_crit_edge ], [ 0, %if.then77 ], [ %and73, %sw.bb72.cleanup_crit_edge ], [ %call.i2, %cond.false222 ], [ 0, %if.then247 ], [ 0, %if.else249 ], [ 0, %if.then243 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_debug_cont(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_nb_mlocks(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !12, !13, !15, !16, !17, !18, !19, !20, !22, !23, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !38, !39, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !57, !58, !60, !61, !62, !64, !65, !67, !69, !71, !72, !73, !74, !75, !77, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160}
!llvm.named.register.sp = !{!162}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @host1x_channel_ops, !1, !"host1x_channel_ops", i1 false, i1 false}
!1 = !{!"../drivers/gpu/host1x/hw/channel_hw.c", i32 285, i32 40}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/host1x/hw/channel_hw.c", i32 263, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../include/trace/events/host1x.h", i32 130, i32 1}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/host1x/hw/channel_hw.c", i32 119, i32 5}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @submit_gathers._entry, !14, !"_entry", i1 false, i1 false}
!19 = !{ptr @submit_gathers._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/trace/events/host1x.h", i32 96, i32 1}
!22 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/trace/events/host1x.h", i32 158, i32 1}
!25 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!26 = !{ptr @host1x_cdma_ops, !27, !"host1x_cdma_ops", i1 false, i1 false}
!27 = !{!"../drivers/gpu/host1x/hw/cdma_hw.c", i32 317, i32 37}
!28 = !{ptr @cdma_timeout_init.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/gpu/host1x/hw/cdma_hw.c", i32 300, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cdma_timeout_init.__key.10, !29, !"__key", i1 false, i1 false}
!32 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/host1x/hw/cdma_hw.c", i32 263, i32 3}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cdma_timeout_handler.__UNIQUE_ID_ddebug238, !34, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/host1x/hw/cdma_hw.c", i32 276, i32 3}
!41 = !{ptr @cdma_timeout_handler.__UNIQUE_ID_ddebug239, !40, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/host1x/hw/cdma_hw.c", i32 284, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cdma_timeout_handler._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @cdma_timeout_handler._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/host1x/hw/cdma_hw.c", i32 204, i32 3}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @cdma_freeze._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @cdma_freeze._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/host1x/hw/cdma_hw.c", i32 208, i32 2}
!54 = !{ptr @cdma_freeze.__UNIQUE_ID_ddebug235, !53, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/host1x/hw/cdma_hw.c", i32 212, i32 2}
!57 = !{ptr @cdma_freeze.__UNIQUE_ID_ddebug236, !56, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/host1x/hw/cdma_hw.c", i32 231, i32 2}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @cdma_resume.__UNIQUE_ID_ddebug237, !59, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/host1x/hw/cdma_hw.c", i32 123, i32 2}
!64 = !{ptr @cdma_timeout_restart.__UNIQUE_ID_ddebug234, !63, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!65 = !{ptr @host1x_pushbuffer_ops, !66, !"host1x_pushbuffer_ops", i1 false, i1 false}
!66 = !{!"../drivers/gpu/host1x/hw/cdma_hw.c", i32 329, i32 43}
!67 = !{ptr @host1x_syncpt_ops, !68, !"host1x_syncpt_ops", i1 false, i1 false}
!68 = !{!"../drivers/gpu/host1x/hw/syncpt_hw.c", i32 136, i32 39}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/host1x/hw/syncpt_hw.c", i32 65, i32 3}
!71 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @syncpt_load._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @syncpt_load._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @host1x_intr_ops, !76, !"host1x_intr_ops", i1 false, i1 false}
!76 = !{!"../drivers/gpu/host1x/hw/intr_hw.c", i32 141, i32 37}
!77 = !{ptr @_host1x_intr_init_host_sync.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/gpu/host1x/hw/intr_hw.c", i32 91, i32 3}
!79 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/host1x/hw/intr_hw.c", i32 95, i32 11}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/host1x/hw/intr_hw.c", i32 97, i32 3}
!84 = !{ptr @host1x_debug_ops, !85, !"host1x_debug_ops", i1 false, i1 false}
!85 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 245, i32 38}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/host1x/hw/debug_hw_1x01.c", i32 32, i32 25}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/host1x/hw/debug_hw_1x01.c", i32 36, i32 26}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/host1x/hw/debug_hw_1x01.c", i32 43, i32 26}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/host1x/hw/debug_hw_1x01.c", i32 53, i32 26}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/host1x/hw/debug_hw_1x01.c", i32 57, i32 26}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/host1x/hw/debug_hw_1x01.c", i32 62, i32 25}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/host1x/hw/debug_hw_1x01.c", i32 63, i32 25}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/host1x/hw/debug_hw_1x01.c", i32 65, i32 25}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/host1x/hw/debug_hw_1x01.c", i32 68, i32 25}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 201, i32 26}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 223, i32 28}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 227, i32 27}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 174, i32 26}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 183, i32 27}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 186, i32 25}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 187, i32 27}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 187, i32 34}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 52, i32 25}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 58, i32 24}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 63, i32 24}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 72, i32 24}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 81, i32 24}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 89, i32 24}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 94, i32 24}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 98, i32 24}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 144, i32 25}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 147, i32 25}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 150, i32 25}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/host1x/hw/debug_hw.c", i32 154, i32 24}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/host1x/hw/debug_hw_1x01.c", i32 78, i32 25}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/host1x/hw/debug_hw_1x01.c", i32 81, i32 25}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/host1x/hw/debug_hw_1x01.c", i32 83, i32 26}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/host1x/hw/debug_hw_1x01.c", i32 109, i32 27}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/host1x/hw/debug_hw_1x01.c", i32 124, i32 24}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/host1x/hw/debug_hw_1x01.c", i32 134, i32 25}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/host1x/hw/debug_hw_1x01.c", i32 140, i32 27}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/host1x/hw/debug_hw_1x01.c", i32 143, i32 27}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/host1x/hw/debug_hw_1x01.c", i32 145, i32 27}
!162 = !{!"sp"}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{i8 0, i8 2}
!173 = !{!"branch_weights", i32 2000, i32 1}
!174 = !{i64 2148736928, i64 2148736933, i64 2148736946, i64 2148736990, i64 2148737024, i64 2148737045}
!175 = !{i64 2154672736}
!176 = !{i64 2154673033}
!177 = !{i64 2149966341}
!178 = !{i64 2149967377}
!179 = !{i64 2154690506}
!180 = !{i64 2154690775}
!181 = !{i64 2154650484}
!182 = !{i64 2154650755}
!183 = !{i64 2148266860}
!184 = !{i64 648773, i64 648797, i64 648818, i64 648835, i64 648852}
!185 = !{i64 2148267086}
!186 = !{i64 2154373081}
!187 = !{i64 2154817146}
!188 = !{!"auto-init"}
