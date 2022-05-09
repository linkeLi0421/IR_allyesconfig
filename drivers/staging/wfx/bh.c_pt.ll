; ModuleID = '/llk/IR_all_yes/drivers/staging/wfx/bh.c_pt.bc'
source_filename = "../drivers/staging/wfx/bh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.wfx_dev = type { %struct.wfx_platform_data, ptr, ptr, [2 x ptr], [2 x %struct.mac_address], ptr, ptr, i8, %struct.completion, %struct.hif_ind_startup, %struct.wfx_hif, %struct.delayed_work, i8, i8, %struct.mutex, %struct.wfx_hif_cmd, %struct.sk_buff_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i32, %struct.hif_rx_stats, %struct.mutex, %struct.hif_tx_power_loop_info, %struct.mutex, i32 }
%struct.wfx_platform_data = type { ptr, ptr, ptr, i8 }
%struct.mac_address = type { [6 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hif_ind_startup = type { i32, i16, [14 x i8], [8 x i8], i16, i16, i8, i8, [2 x [6 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i16, i32, [128 x i8] }
%struct.wfx_hif = type { %struct.work_struct, %struct.completion, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wfx_hif_cmd = type { %struct.mutex, %struct.completion, %struct.completion, ptr, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hif_rx_stats = type <{ i32, i32, i32, i32, [22 x i32], [22 x i16], [22 x i16], [22 x i16], [22 x i16], i32, i32, i8, i8 }>
%struct.hif_tx_power_loop_info = type { i16, i16, i16, i16, i16, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hif_msg = type { i16, i8, i8, [0 x i8] }
%struct.hwbus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 4
@wfx_bh_request_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 280, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"unexpected control register value: length field is 0: %04x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wfx_bh_request_rx\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/staging/wfx/bh.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wfx_bh_request_rx._entry_ptr = internal global ptr @wfx_bh_request_rx._entry, section ".printk_index", align 4
@wfx_bh_request_rx._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 283, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"received IRQ but previous data was not (yet) read: %04x/%04x\0A\00", [34 x i8] zeroinitializer }, align 32
@wfx_bh_request_rx._entry_ptr.7 = internal global ptr @wfx_bh_request_rx._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unexpected IRQ polling can mask IRQ\00", [60 x i8] zeroinitializer }, align 32
@wfx_bh_poll_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 312, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"time out while polling control register\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wfx_bh_poll_irq\00", [16 x i8] zeroinitializer }, align 32
@wfx_bh_poll_irq._entry_ptr = internal global ptr @wfx_bh_poll_irq._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wfx_bh_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&wdev->hif.bh)\00", [63 x i8] zeroinitializer }, align 32
@wfx_bh_register.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&wdev->hif.tx_buffers_empty\00", [36 x i8] zeroinitializer }, align 32
@device_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 49, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"timeout while wake up chip\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"device_wakeup\00", [18 x i8] zeroinitializer }, align 32
@device_wakeup._entry_ptr = internal global ptr @device_wakeup._entry, section ".printk_index", align 4
@device_wakeup._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 53, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max wake-up retries reached\0A\00", [35 x i8] zeroinitializer }, align 32
@device_wakeup._entry_ptr.18 = internal global ptr @device_wakeup._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"data locking error\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"try to send corrupted data\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: request exceed the chip capability: %zu > %d\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.tx_helper = private unnamed_addr constant [10 x i8] c"tx_helper\00", align 1
@__tracepoint_hif_send = external dso_local global %struct.tracepoint, align 4
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/staging/wfx/traces.h\00", [35 x i8] zeroinitializer }, align 32
@trace_hif_send.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@bh_work_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 160, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"unexpected piggyback value: ready bit not set: %04x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bh_work_rx\00", [21 x i8] zeroinitializer }, align 32
@bh_work_rx._entry_ptr = internal global ptr @bh_work_rx._entry, section ".printk_index", align 4
@bh_work_rx._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 167, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unexpected IRQ happened: %04x/%04x\0A\00", [60 x i8] zeroinitializer }, align 32
@bh_work_rx._entry_ptr.29 = internal global ptr @bh_work_rx._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: request exceed the chip capability\00", [57 x i8] zeroinitializer }, align 32
@__func__.rx_helper = private unnamed_addr constant [10 x i8] c"rx_helper\00", align 1
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"encryption is unsupported\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"corrupted read\00", [17 x i8] zeroinitializer }, align 32
@rx_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.rx_helper, ptr @.str.2, i32 99, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"inconsistent message length: %zu != %zu\0A\00", [55 x i8] zeroinitializer }, align 32
@rx_helper._entry_ptr = internal global ptr @rx_helper._entry, section ".printk_index", align 4
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hif: \00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"corrupted buffer counter\00", [39 x i8] zeroinitializer }, align 32
@rx_helper._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.rx_helper, ptr @.str.2, i32 119, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wrong message sequence: %d != %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rx_helper._entry_ptr.40 = internal global ptr @rx_helper._entry.37, section ".printk_index", align 4
@__tracepoint_piggyback = external dso_local global %struct.tracepoint, align 4
@trace_piggyback.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_hif_recv = external dso_local global %struct.tracepoint, align 4
@trace_hif_recv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ack_sdio_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 233, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"chip reports errors: %02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ack_sdio_data\00", [18 x i8] zeroinitializer }, align 32
@ack_sdio_data._entry_ptr = internal global ptr @ack_sdio_data._entry, section ".printk_index", align 4
@__tracepoint_bh_stats = external dso_local global %struct.tracepoint, align 4
@trace_bh_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 224, i64 228]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 279, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 282, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 304, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 312, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 322, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 324, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 49, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 53, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 209, i32 5 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 179, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 185, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [32 x i8] c"../drivers/staging/wfx/traces.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 210, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 108, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 159, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 166, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 76, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 92, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 93, i32 6 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 98, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 100, i32 18 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 100, i32 29 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 111, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 118, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private constant [28 x i8] c"../drivers/staging/wfx/bh.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 232, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 87, i32 2 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @ack_sdio_data._entry, ptr @ack_sdio_data._entry_ptr, ptr @bh_work_rx._entry, ptr @bh_work_rx._entry.27, ptr @bh_work_rx._entry_ptr, ptr @bh_work_rx._entry_ptr.29, ptr @device_wakeup._entry, ptr @device_wakeup._entry.16, ptr @device_wakeup._entry_ptr, ptr @device_wakeup._entry_ptr.18, ptr @rx_helper._entry, ptr @rx_helper._entry.37, ptr @rx_helper._entry_ptr, ptr @rx_helper._entry_ptr.40, ptr @wfx_bh_poll_irq._entry, ptr @wfx_bh_poll_irq._entry_ptr, ptr @wfx_bh_request_rx._entry, ptr @wfx_bh_request_rx._entry.5, ptr @wfx_bh_request_rx._entry_ptr, ptr @wfx_bh_request_rx._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @wfx_bh_register.__key, ptr @.str.11, ptr @wfx_bh_register.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @init_completion.__key, ptr @.str.43], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_bh_request_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_bh_request_rx._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_bh_poll_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_bh_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_bh_register.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_wakeup._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh_work_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh_work_rx._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_helper._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ack_sdio_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_bh_request_rx(ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  %cur = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur) #8
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cur, align 4, !annotation !107
  %call = call i32 @control_reg_read(ptr noundef %wdev, ptr noundef nonnull %cur) #8
  %hif = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 10
  %ctrl_reg = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 10, i32 3
  %1 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cur, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ctrl_reg, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !108
  call void @llvm.prefetch.p0(ptr %ctrl_reg, i32 1, i32 3, i32 1) #8
  %3 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %2, ptr %ctrl_reg) #8, !srcloc !109
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !110
  %ctrl_ready = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 10, i32 1
  call void @complete(ptr noundef %ctrl_ready) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %4 = load ptr, ptr @system_highpri_wq, align 4
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %hif) #8
  %5 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur, align 4
  %and = and i32 %6, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef %6) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.not, label %if.end.if.end10_crit_edge, label %do.end8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %9 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev9, align 4
  %11 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.6, i32 noundef %asmresult.i.i, i32 noundef %12) #11
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.end.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @control_reg_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_bh_request_tx(ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %0 = load ptr, ptr @system_highpri_wq, align 4
  %hif = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 10
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %hif) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_bh_poll_irq(ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !107
  %poll_irq = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 12
  %1 = ptrtoint ptr %poll_irq to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %poll_irq, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !112

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 304, i32 noundef 9, ptr noundef nonnull @.str.8) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call i64 @ktime_get() #8
  %call2139 = call i32 @control_reg_read(ptr noundef %wdev, ptr noundef nonnull %reg) #8
  %call2240 = call i64 @ktime_get() #8
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %and41 = and i32 %4, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool23.not42 = icmp eq i32 %and41, 0
  br i1 %tobool23.not42, label %if.end25.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end25.lr.ph:                                   ; preds = %if.end
  %add.i = add i64 %call, 1000000000
  br label %if.end25

if.end25:                                         ; preds = %if.end32.if.end25_crit_edge, %if.end25.lr.ph
  %call2243 = phi i64 [ %call2240, %if.end25.lr.ph ], [ %call22, %if.end32.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %call2243, i64 %add.i)
  %cmp3.i.i = icmp sgt i64 %call2243, %add.i
  br i1 %cmp3.i.i, label %do.end31, label %if.end32

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end32:                                         ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 42949600) #8
  %call21 = call i32 @control_reg_read(ptr noundef %wdev, ptr noundef nonnull %reg) #8
  %call22 = call i64 @ktime_get() #8
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  %and = and i32 %9, 4095
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end32.if.end25_crit_edge, label %if.end32.for.end_crit_edge

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end32.if.end25_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

for.end:                                          ; preds = %if.end32.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @wfx_bh_request_rx(ptr noundef %wdev)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_bh_register(ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hif = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 10
  tail call void @__init_work(ptr noundef %hif, i32 noundef 0) #8
  %0 = ptrtoint ptr %hif to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %hif, align 4
  %lockdep_map = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 10, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @wfx_bh_register.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry7 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 10, i32 0, i32 1
  %1 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 10, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 10, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bh_work, ptr %func, align 4
  %ctrl_ready = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %ctrl_ready to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ctrl_ready, align 4
  %wait.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 10, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @init_completion.__key) #8
  %tx_buffers_empty = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 10, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %tx_buffers_empty, ptr noundef nonnull @.str.13, ptr noundef nonnull @wfx_bh_register.__key.12) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bh_work(ptr noundef %work) #0 align 64 {
entry:
  %cfg_reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -304
  %gpio_wakeup.i = getelementptr i8, ptr %work, i32 -296
  %0 = ptrtoint ptr %gpio_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_wakeup.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.device_wakeup.exit_crit_edge, label %if.end.i

entry.device_wakeup.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %device_wakeup.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.device_wakeup.exit_crit_edge, label %if.end4.i

if.end.i.device_wakeup.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %device_wakeup.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call zeroext i1 @wfx_api_older_than(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 4) #8
  %2 = ptrtoint ptr %gpio_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_wakeup.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #8
  %ctrl_ready.i = getelementptr i8, ptr %work, i32 44
  br i1 %call5.i, label %if.then6.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end4.i
  %call1845.i = tail call i32 @wait_for_completion_timeout(ptr noundef %ctrl_ready.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1845.i)
  %tobool19.not46.i = icmp eq i32 %call1845.i, 0
  br i1 %tobool19.not46.i, label %if.else.lr.ph.i, label %for.cond.preheader.i.if.then20.i_crit_edge

for.cond.preheader.i.if.then20.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20.i

if.else.lr.ph.i:                                  ; preds = %for.cond.preheader.i
  %dev.i = getelementptr i8, ptr %work, i32 -288
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14) #11
  %6 = ptrtoint ptr %gpio_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio_wakeup.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #8
  %8 = ptrtoint ptr %gpio_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio_wakeup.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 1) #8
  %call18.i = tail call i32 @wait_for_completion_timeout(ptr noundef %ctrl_ready.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.else.1.i, label %if.else.lr.ph.i.if.then20.i_crit_edge

if.else.lr.ph.i.if.then20.i_crit_edge:            ; preds = %if.else.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20.i

if.then6.i:                                       ; preds = %if.end4.i
  %call9.i = tail call zeroext i1 @completion_done(ptr noundef %ctrl_ready.i) #8
  br i1 %call9.i, label %if.then6.i.device_wakeup.exit_crit_edge, label %if.then10.i

if.then6.i.device_wakeup.exit_crit_edge:          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %device_wakeup.exit

if.then10.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #8
  br label %device_wakeup.exit

if.then20.i:                                      ; preds = %if.else.2.i.if.then20.i_crit_edge, %if.else.1.i.if.then20.i_crit_edge, %if.else.lr.ph.i.if.then20.i_crit_edge, %for.cond.preheader.i.if.then20.i_crit_edge
  tail call void @complete(ptr noundef %ctrl_ready.i) #8
  br label %device_wakeup.exit

if.else.1.i:                                      ; preds = %if.else.lr.ph.i
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.14) #11
  %12 = ptrtoint ptr %gpio_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpio_wakeup.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #8
  %14 = ptrtoint ptr %gpio_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpio_wakeup.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 1) #8
  %call18.1.i = tail call i32 @wait_for_completion_timeout(ptr noundef %ctrl_ready.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.1.i)
  %tobool19.not.1.i = icmp eq i32 %call18.1.i, 0
  br i1 %tobool19.not.1.i, label %if.else.2.i, label %if.else.1.i.if.then20.i_crit_edge

if.else.1.i.if.then20.i_crit_edge:                ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20.i

if.else.2.i:                                      ; preds = %if.else.1.i
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.14) #11
  %18 = ptrtoint ptr %gpio_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpio_wakeup.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %19, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #8
  %20 = ptrtoint ptr %gpio_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gpio_wakeup.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %21, i32 noundef 1) #8
  %call18.2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %ctrl_ready.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.2.i)
  %tobool19.not.2.i = icmp eq i32 %call18.2.i, 0
  br i1 %tobool19.not.2.i, label %do.end30.i, label %if.else.2.i.if.then20.i_crit_edge

if.else.2.i.if.then20.i_crit_edge:                ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20.i

do.end30.i:                                       ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.17) #11
  br label %device_wakeup.exit

device_wakeup.exit:                               ; preds = %do.end30.i, %if.then20.i, %if.then10.i, %if.then6.i.device_wakeup.exit_crit_edge, %if.end.i.device_wakeup.exit_crit_edge, %entry.device_wakeup.exit_crit_edge
  %tx_buffers_used.i = getelementptr i8, ptr %work, i32 164
  %num_inp_ch_bufs.i = getelementptr i8, ptr %work, i32 -164
  %ready.i = getelementptr i8, ptr %work, i32 456
  %hif_cmd.i = getelementptr i8, ptr %work, i32 364
  %buf_send.i = getelementptr i8, ptr %work, i32 568
  %tx_seqnum.i.i = getelementptr i8, ptr %work, i32 160
  %size_inp_ch_buf.i.i = getelementptr i8, ptr %work, i32 -162
  %hwbus_ops.i.i = getelementptr i8, ptr %work, i32 -260
  %hwbus_priv.i.i = getelementptr i8, ptr %work, i32 -256
  %ctrl_ready.i39 = getelementptr i8, ptr %work, i32 44
  %ctrl_reg3.i = getelementptr i8, ptr %work, i32 152
  %rx_seqnum.i.i = getelementptr i8, ptr %work, i32 156
  %dev176.i.i = getelementptr i8, ptr %work, i32 -288
  %tx_buffers_empty.i.i = getelementptr i8, ptr %work, i32 100
  br label %do.body

do.body:                                          ; preds = %bh_work_rx.exit.do.body_crit_edge, %device_wakeup.exit
  %stats_cnf.0 = phi i32 [ 0, %device_wakeup.exit ], [ %stats_cnf.3, %bh_work_rx.exit.do.body_crit_edge ]
  %stats_req.0 = phi i32 [ 0, %device_wakeup.exit ], [ %add, %bh_work_rx.exit.do.body_crit_edge ]
  %stats_ind.0 = phi i32 [ 0, %device_wakeup.exit ], [ %add2, %bh_work_rx.exit.do.body_crit_edge ]
  %last_op_is_rx.0.off0 = phi i1 [ false, %device_wakeup.exit ], [ %spec.select36, %bh_work_rx.exit.do.body_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %tx_helper.exit.i.for.body.i_crit_edge, %do.body
  %i.03.i = phi i32 [ 0, %do.body ], [ %inc.i, %tx_helper.exit.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %tx_buffers_used.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_buffers_used.i, align 4
  %26 = ptrtoint ptr %num_inp_ch_bufs.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_inp_ch_bufs.i, align 4
  %conv.i = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv.i)
  %cmp2.i = icmp slt i32 %25, %conv.i
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.bh_work_tx.exit_crit_edge

for.body.i.bh_work_tx.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bh_work_tx.exit

if.then.i:                                        ; preds = %for.body.i
  %call.i37 = tail call zeroext i1 @try_wait_for_completion(ptr noundef %ready.i) #8
  br i1 %call.i37, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  %call6.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %hif_cmd.i) #8
  br i1 %call6.i, label %if.then4.i.if.end.i38_crit_edge, label %do.end.i, !prof !113

if.then4.i.if.end.i38_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i38

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 209, i32 noundef 9, ptr noundef nonnull @.str.19) #8
  br label %if.end.i38

if.end.i38:                                       ; preds = %do.end.i, %if.then4.i.if.end.i38_crit_edge
  %28 = ptrtoint ptr %buf_send.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf_send.i, align 4
  br label %if.end30.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call28.i = tail call ptr @wfx_tx_queues_get(ptr noundef %add.ptr) #8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else.i, %if.end.i38
  %hif.0.i = phi ptr [ %29, %if.end.i38 ], [ %call28.i, %if.else.i ]
  %tobool31.not.i = icmp eq ptr %hif.0.i, null
  br i1 %tobool31.not.i, label %if.end30.i.bh_work_tx.exit_crit_edge, label %if.end33.i

if.end30.i.bh_work_tx.exit_crit_edge:             ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bh_work_tx.exit

if.end33.i:                                       ; preds = %if.end30.i
  %30 = ptrtoint ptr %hif.0.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %hif.0.i, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #8
  %conv.i.i = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %32)
  %cmp.i.i = icmp ult i16 %32, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end33.i.if.end.i.i_crit_edge, !prof !112

if.end33.i.if.end.i.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 179, i32 noundef 9, ptr noundef nonnull @.str.20) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end33.i.if.end.i.i_crit_edge
  %33 = ptrtoint ptr %tx_seqnum.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_seqnum.i.i, align 4
  %conv22.i.i = trunc i32 %34 to i8
  %seqnum.i.i = getelementptr inbounds %struct.hif_msg, ptr %hif.0.i, i32 0, i32 2
  %35 = ptrtoint ptr %seqnum.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i.i = load i8, ptr %seqnum.i.i, align 1
  %bf.value.i.i = shl i8 %conv22.i.i, 2
  %bf.shl.i.i = and i8 %bf.value.i.i, 28
  %bf.clear.i.i = and i8 %bf.load.i.i, -29
  %bf.set.i.i = or i8 %bf.shl.i.i, %bf.clear.i.i
  store i8 %bf.set.i.i, ptr %seqnum.i.i, align 1
  %36 = load i32, ptr %tx_seqnum.i.i, align 4
  %add.i.i = add i32 %36, 1
  %rem.i.i = srem i32 %add.i.i, 8
  store i32 %rem.i.i, ptr %tx_seqnum.i.i, align 4
  %37 = ptrtoint ptr %size_inp_ch_buf.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %size_inp_ch_buf.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %38)
  %cmp29.i.i = icmp ugt i16 %32, %38
  br i1 %cmp29.i.i, label %do.end46.i.i, label %if.end.i.i.if.end55.i.i_crit_edge, !prof !112

if.end.i.i.if.end55.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i.i

do.end46.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv28.i.i = zext i16 %38 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 187, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.tx_helper, i32 noundef %conv.i.i, i32 noundef %conv28.i.i) #8
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %do.end46.i.i, %if.end.i.i.if.end55.i.i_crit_edge
  %39 = ptrtoint ptr %hwbus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hwbus_ops.i.i, align 4
  %align_size.i.i = getelementptr inbounds %struct.hwbus_ops, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %align_size.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %align_size.i.i, align 4
  %43 = ptrtoint ptr %hwbus_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hwbus_priv.i.i, align 4
  %call.i.i = tail call i32 %42(ptr noundef %44, i32 noundef %conv.i.i) #8
  %call63.i.i = tail call i32 @wfx_data_write(ptr noundef %add.ptr, ptr noundef nonnull %hif.0.i, i32 noundef %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i.i)
  %tobool64.not.i.i = icmp eq i32 %call63.i.i, 0
  br i1 %tobool64.not.i.i, label %if.end66.i.i, label %if.end55.i.i.tx_helper.exit.i_crit_edge

if.end55.i.i.tx_helper.exit.i_crit_edge:          ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tx_helper.exit.i

if.end66.i.i:                                     ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %tx_buffers_used.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_buffers_used.i, align 4
  %inc.i.i = add i32 %46, 1
  store i32 %inc.i.i, ptr %tx_buffers_used.i, align 4
  tail call fastcc void @trace_hif_send(ptr noundef nonnull %hif.0.i, i32 noundef %inc.i.i) #8
  br label %tx_helper.exit.i

tx_helper.exit.i:                                 ; preds = %if.end66.i.i, %if.end55.i.i.tx_helper.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %tx_helper.exit.i.bh_work_tx.exit_crit_edge, label %tx_helper.exit.i.for.body.i_crit_edge

tx_helper.exit.i.for.body.i_crit_edge:            ; preds = %tx_helper.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

tx_helper.exit.i.bh_work_tx.exit_crit_edge:       ; preds = %tx_helper.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bh_work_tx.exit

bh_work_tx.exit:                                  ; preds = %tx_helper.exit.i.bh_work_tx.exit_crit_edge, %if.end30.i.bh_work_tx.exit_crit_edge, %for.body.i.bh_work_tx.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.03.i, %for.body.i.bh_work_tx.exit_crit_edge ], [ 32, %tx_helper.exit.i.bh_work_tx.exit_crit_edge ], [ %i.03.i, %if.end30.i.bh_work_tx.exit_crit_edge ]
  %add = add i32 %i.0.lcssa.i, %stats_req.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i)
  %tobool.not = icmp eq i32 %i.0.lcssa.i, 0
  %spec.select = select i1 %tobool.not, i1 %last_op_is_rx.0.off0, i1 false
  br label %for.body.i43

for.body.i43:                                     ; preds = %for.inc.i.for.body.i43_crit_edge, %bh_work_tx.exit
  %stats_cnf.1 = phi i32 [ %stats_cnf.0, %bh_work_tx.exit ], [ %stats_cnf.2, %for.inc.i.for.body.i43_crit_edge ]
  %piggyback.025.i = phi i32 [ 0, %bh_work_tx.exit ], [ %conv.i.i52, %for.inc.i.for.body.i43_crit_edge ]
  %i.024.i = phi i32 [ 0, %bh_work_tx.exit ], [ %inc.i58, %for.inc.i.for.body.i43_crit_edge ]
  %and.i = and i32 %piggyback.025.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i42 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i42, label %if.else.i45, label %for.body.i43.if.end6.i_crit_edge

for.body.i43.if.end6.i_crit_edge:                 ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.else.i45:                                      ; preds = %for.body.i43
  %call.i44 = tail call zeroext i1 @try_wait_for_completion(ptr noundef %ctrl_ready.i39) #8
  br i1 %call.i44, label %if.then1.i, label %if.else.i45.bh_work_rx.exit_crit_edge

if.else.i45.bh_work_rx.exit_crit_edge:            ; preds = %if.else.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %bh_work_rx.exit

if.then1.i:                                       ; preds = %if.else.i45
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ctrl_reg3.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %ctrl_reg3.i, i32 1, i32 3, i32 1) #8
  %47 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %ctrl_reg3.i) #8, !srcloc !109
  %asmresult.i.i.i = extractvalue { i32, i32 } %47, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !110
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then1.i, %for.body.i43.if.end6.i_crit_edge
  %ctrl_reg.0.i = phi i32 [ %asmresult.i.i.i, %if.then1.i ], [ %piggyback.025.i, %for.body.i43.if.end6.i_crit_edge ]
  %and7.i = and i32 %ctrl_reg.0.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.bh_work_rx.exit_crit_edge, label %if.end10.i

if.end6.i.bh_work_rx.exit_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bh_work_rx.exit

if.end10.i:                                       ; preds = %if.end6.i
  %mul.i = shl nuw nsw i32 %and7.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %and7.i)
  %cmp.i.i46 = icmp eq i32 %and7.i, 4095
  br i1 %cmp.i.i46, label %do.end.i.i47, label %if.end10.i.if.end.i.i51_crit_edge, !prof !112

if.end10.i.if.end.i.i51_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i51

do.end.i.i47:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 77, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.rx_helper) #8
  br label %if.end.i.i51

if.end.i.i51:                                     ; preds = %do.end.i.i47, %if.end10.i.if.end.i.i51_crit_edge
  %48 = ptrtoint ptr %hwbus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hwbus_ops.i.i, align 4
  %align_size.i.i48 = getelementptr inbounds %struct.hwbus_ops, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %align_size.i.i48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %align_size.i.i48, align 4
  %52 = ptrtoint ptr %hwbus_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hwbus_priv.i.i, align 4
  %add.i.i49 = add nuw nsw i32 %mul.i, 2
  %call.i.i50 = tail call i32 %51(ptr noundef %53, i32 noundef %add.i.i49) #8
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %call.i.i50, i32 noundef 2592) #8
  %tobool20.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool20.not.i.i, label %if.end.i.i51.bh_work_rx.exit_crit_edge, label %if.end22.i.i

if.end.i.i51.bh_work_rx.exit_crit_edge:           ; preds = %if.end.i.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %bh_work_rx.exit

if.end22.i.i:                                     ; preds = %if.end.i.i51
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %54 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i, align 4
  %call23.i.i = tail call i32 @wfx_data_read(ptr noundef %add.ptr, ptr noundef %55, i32 noundef %call.i.i50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end26.i.i, label %if.end22.i.i.if.then204.i.i_crit_edge

if.end22.i.i.if.then204.i.i_crit_edge:            ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then204.i.i

if.end26.i.i:                                     ; preds = %if.end22.i.i
  %56 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %57, i32 -2
  %add.ptr28.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %call.i.i50
  %58 = ptrtoint ptr %add.ptr28.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr28.i.i, align 2
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #8
  %conv.i.i52 = zext i16 %60 to i32
  tail call fastcc void @trace_piggyback(i32 noundef %conv.i.i52) #8
  %61 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i.i, align 4
  %encrypted.i.i = getelementptr inbounds %struct.hif_msg, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %encrypted.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load.i.i53 = load i8, ptr %encrypted.i.i, align 1
  %64 = and i8 %bf.load.i.i53, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool33.not.i.i = icmp eq i8 %64, 0
  br i1 %tobool33.not.i.i, label %if.end26.i.i.if.end55.i.i54_crit_edge, label %do.end49.i.i, !prof !113

if.end26.i.i.if.end55.i.i54_crit_edge:            ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i.i54

do.end49.i.i:                                     ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 92, i32 noundef 9, ptr noundef nonnull @.str.31) #8
  br label %if.end55.i.i54

if.end55.i.i54:                                   ; preds = %do.end49.i.i, %if.end26.i.i.if.end55.i.i54_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and7.i)
  %cmp64.i.i = icmp ult i32 %and7.i, 2
  br i1 %cmp64.i.i, label %do.end81.i.i, label %if.end97.critedge.i.i, !prof !112

do.end81.i.i:                                     ; preds = %if.end55.i.i54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.32) #8
  br label %if.then204.i.i

if.end97.critedge.i.i:                            ; preds = %if.end55.i.i54
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %62, align 1
  %67 = tail call i16 @llvm.bswap.i16(i16 %66) #8
  %conv98.i.i = zext i16 %67 to i32
  %sub.i.i = add nsw i32 %conv98.i.i, -1
  %or.i.i = or i32 %sub.i.i, 1
  %add99.i.i = add nsw i32 %or.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add99.i.i, i32 %mul.i)
  %cmp100.not.i.i = icmp eq i32 %add99.i.i, %mul.i
  br i1 %cmp100.not.i.i, label %if.end106.i.i, label %do.end105.i.i

do.end105.i.i:                                    ; preds = %if.end97.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %dev176.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev176.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.33, i32 noundef %add99.i.i, i32 noundef %mul.i) #11
  tail call void @print_hex_dump(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %62, i32 noundef %mul.i, i1 noundef zeroext true) #8
  br label %if.then204.i.i

if.end106.i.i:                                    ; preds = %if.end97.critedge.i.i
  %id.i.i = getelementptr inbounds %struct.hif_msg, ptr %62, i32 0, i32 1
  %70 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %id.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %71)
  %tobool109.not.i.i = icmp sgt i8 %71, -1
  br i1 %tobool109.not.i.i, label %if.then110.i.i, label %if.end106.i.i.if.end154.i.i_crit_edge

if.end106.i.i.if.end154.i.i_crit_edge:            ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154.i.i

if.then110.i.i:                                   ; preds = %if.end106.i.i
  %inc.i.i55 = add i32 %stats_cnf.1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %71)
  %cmp113.i.i = icmp eq i8 %71, 30
  br i1 %cmp113.i.i, label %if.then115.i.i, label %if.then110.i.i.if.end117.i.i_crit_edge

if.then110.i.i.if.end117.i.i_crit_edge:           ; preds = %if.then110.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117.i.i

if.then115.i.i:                                   ; preds = %if.then110.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %body.i.i = getelementptr inbounds %struct.hif_msg, ptr %62, i32 0, i32 3
  %72 = ptrtoint ptr %body.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %body.i.i, align 1
  %conv116.i.i = zext i8 %73 to i32
  br label %if.end117.i.i

if.end117.i.i:                                    ; preds = %if.then115.i.i, %if.then110.i.i.if.end117.i.i_crit_edge
  %release_count.0.i.i = phi i32 [ %conv116.i.i, %if.then115.i.i ], [ 1, %if.then110.i.i.if.end117.i.i_crit_edge ]
  %74 = ptrtoint ptr %tx_buffers_used.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tx_buffers_used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %release_count.0.i.i)
  %cmp120.i.i = icmp slt i32 %75, %release_count.0.i.i
  br i1 %cmp120.i.i, label %do.end137.i.i, label %if.end117.i.i.if.end143.i.i_crit_edge, !prof !112

if.end117.i.i.if.end143.i.i_crit_edge:            ; preds = %if.end117.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143.i.i

do.end137.i.i:                                    ; preds = %if.end117.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 111, i32 noundef 9, ptr noundef nonnull @.str.36) #8
  br label %if.end143.i.i

if.end143.i.i:                                    ; preds = %do.end137.i.i, %if.end117.i.i.if.end143.i.i_crit_edge
  %76 = ptrtoint ptr %tx_buffers_used.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tx_buffers_used.i, align 4
  %sub153.i.i = sub i32 %77, %release_count.0.i.i
  store i32 %sub153.i.i, ptr %tx_buffers_used.i, align 4
  br label %if.end154.i.i

if.end154.i.i:                                    ; preds = %if.end143.i.i, %if.end106.i.i.if.end154.i.i_crit_edge
  %stats_cnf.2 = phi i32 [ %inc.i.i55, %if.end143.i.i ], [ %stats_cnf.1, %if.end106.i.i.if.end154.i.i_crit_edge ]
  %78 = ptrtoint ptr %tx_buffers_used.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tx_buffers_used.i, align 4
  tail call fastcc void @trace_hif_recv(ptr noundef %62, i32 noundef %79) #8
  %80 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %id.i.i, align 1
  %82 = zext i8 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values)
  switch i8 %81, label %if.then165.i.i [
    i8 -32, label %if.end154.i.i.if.end193.i.i_crit_edge
    i8 -28, label %if.end154.i.i.if.end193.i.i_crit_edge203
  ]

if.end154.i.i.if.end193.i.i_crit_edge203:         ; preds = %if.end154.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193.i.i

if.end154.i.i.if.end193.i.i_crit_edge:            ; preds = %if.end154.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193.i.i

if.then165.i.i:                                   ; preds = %if.end154.i.i
  %83 = ptrtoint ptr %encrypted.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load166.i.i = load i8, ptr %encrypted.i.i, align 1
  %bf.lshr.i.i = lshr i8 %bf.load166.i.i, 2
  %bf.clear167.i.i = and i8 %bf.lshr.i.i, 7
  %conv168.i.i = zext i8 %bf.clear167.i.i to i32
  %84 = ptrtoint ptr %rx_seqnum.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rx_seqnum.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %conv168.i.i)
  %cmp170.not.i.i = icmp eq i32 %85, %conv168.i.i
  br i1 %cmp170.not.i.i, label %if.then165.i.i.if.end184.i.i_crit_edge, label %do.end175.i.i

if.then165.i.i.if.end184.i.i_crit_edge:           ; preds = %if.then165.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end184.i.i

do.end175.i.i:                                    ; preds = %if.then165.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %dev176.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev176.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %87, ptr noundef nonnull @.str.38, i32 noundef %conv168.i.i, i32 noundef %85) #11
  br label %if.end184.i.i

if.end184.i.i:                                    ; preds = %do.end175.i.i, %if.then165.i.i.if.end184.i.i_crit_edge
  %88 = ptrtoint ptr %encrypted.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load186.i.i = load i8, ptr %encrypted.i.i, align 1
  %bf.lshr187.i.i = lshr i8 %bf.load186.i.i, 2
  %narrow.i.i = add nuw nsw i8 %bf.lshr187.i.i, 1
  %89 = and i8 %narrow.i.i, 7
  %rem.i.i56 = zext i8 %89 to i32
  %90 = ptrtoint ptr %rx_seqnum.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %rem.i.i56, ptr %rx_seqnum.i.i, align 4
  br label %if.end193.i.i

if.end193.i.i:                                    ; preds = %if.end184.i.i, %if.end154.i.i.if.end193.i.i_crit_edge, %if.end154.i.i.if.end193.i.i_crit_edge203
  %91 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %62, align 1
  %93 = tail call i16 @llvm.bswap.i16(i16 %92) #8
  %conv195.i.i = zext i16 %93 to i32
  %call196.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef %conv195.i.i) #8
  tail call void @wfx_handle_rx(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i.i.i) #8
  %94 = ptrtoint ptr %tx_buffers_used.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tx_buffers_used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool199.not.i.i = icmp eq i32 %95, 0
  br i1 %tobool199.not.i.i, label %if.then200.i.i, label %if.end193.i.i.if.end15.i_crit_edge

if.end193.i.i.if.end15.i_crit_edge:               ; preds = %if.end193.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then200.i.i:                                   ; preds = %if.end193.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__wake_up(ptr noundef %tx_buffers_empty.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end15.i

if.then204.i.i:                                   ; preds = %do.end105.i.i, %do.end81.i.i, %if.end22.i.i.if.then204.i.i_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #8
  br label %bh_work_rx.exit

if.end15.i:                                       ; preds = %if.then200.i.i, %if.end193.i.i.if.end15.i_crit_edge
  %and16.i = and i32 %conv.i.i52, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %do.end.i57, label %if.end15.i.for.inc.i_crit_edge

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.end.i57:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %dev176.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev176.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.25, i32 noundef %conv.i.i52) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i57, %if.end15.i.for.inc.i_crit_edge
  %inc.i58 = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i59 = icmp eq i32 %inc.i58, 32
  br i1 %exitcond.not.i59, label %for.end.i, label %for.inc.i.for.body.i43_crit_edge

for.inc.i.for.body.i43_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i43

for.end.i:                                        ; preds = %for.inc.i
  %and20.i = and i32 %conv.i.i52, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %for.end.i.bh_work_rx.exit_crit_edge, label %if.then22.i

for.end.i.bh_work_rx.exit_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bh_work_rx.exit

if.then22.i:                                      ; preds = %for.end.i
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ctrl_reg3.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %ctrl_reg3.i, i32 1, i32 3, i32 1) #8
  %98 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %conv.i.i52, ptr %ctrl_reg3.i) #8, !srcloc !109
  %asmresult.i.i2.i = extractvalue { i32, i32 } %98, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @complete(ptr noundef %ctrl_ready.i39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i2.i)
  %tobool28.not.i = icmp eq i32 %asmresult.i.i2.i, 0
  br i1 %tobool28.not.i, label %if.then22.i.bh_work_rx.exit_crit_edge, label %do.end32.i

if.then22.i.bh_work_rx.exit_crit_edge:            ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bh_work_rx.exit

do.end32.i:                                       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %dev176.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev176.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.28, i32 noundef %asmresult.i.i2.i, i32 noundef %conv.i.i52) #11
  br label %bh_work_rx.exit

bh_work_rx.exit:                                  ; preds = %do.end32.i, %if.then22.i.bh_work_rx.exit_crit_edge, %for.end.i.bh_work_rx.exit_crit_edge, %if.then204.i.i, %if.end.i.i51.bh_work_rx.exit_crit_edge, %if.end6.i.bh_work_rx.exit_crit_edge, %if.else.i45.bh_work_rx.exit_crit_edge
  %stats_cnf.3 = phi i32 [ %stats_cnf.1, %if.then204.i.i ], [ %stats_cnf.2, %for.end.i.bh_work_rx.exit_crit_edge ], [ %stats_cnf.2, %if.then22.i.bh_work_rx.exit_crit_edge ], [ %stats_cnf.2, %do.end32.i ], [ %stats_cnf.1, %if.end.i.i51.bh_work_rx.exit_crit_edge ], [ %stats_cnf.1, %if.end6.i.bh_work_rx.exit_crit_edge ], [ %stats_cnf.1, %if.else.i45.bh_work_rx.exit_crit_edge ]
  %i.016.i = phi i32 [ %i.024.i, %if.then204.i.i ], [ 32, %for.end.i.bh_work_rx.exit_crit_edge ], [ 32, %if.then22.i.bh_work_rx.exit_crit_edge ], [ 32, %do.end32.i ], [ %i.024.i, %if.end.i.i51.bh_work_rx.exit_crit_edge ], [ %i.024.i, %if.end6.i.bh_work_rx.exit_crit_edge ], [ %i.024.i, %if.else.i45.bh_work_rx.exit_crit_edge ]
  %add2 = add i32 %i.016.i, %stats_ind.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.016.i)
  %tobool3.not = icmp eq i32 %i.016.i, 0
  %not.tobool3.not = xor i1 %tobool3.not, true
  %spec.select36 = select i1 %not.tobool3.not, i1 true, i1 %spec.select
  %101 = select i1 %tobool3.not, i1 %tobool.not, i1 false
  br i1 %101, label %do.end, label %bh_work_rx.exit.do.body_crit_edge

bh_work_rx.exit.do.body_crit_edge:                ; preds = %bh_work_rx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %bh_work_rx.exit
  br i1 %spec.select36, label %if.then9, label %do.end.if.end10_crit_edge

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfg_reg.i) #8
  %102 = ptrtoint ptr %cfg_reg.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %cfg_reg.i, align 4, !annotation !107
  %call.i60 = call i32 @config_reg_read(ptr noundef %add.ptr, ptr noundef nonnull %cfg_reg.i) #8
  %103 = ptrtoint ptr %cfg_reg.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cfg_reg.i, align 4
  %and.i61 = and i32 %104, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool.not.i62 = icmp eq i32 %and.i61, 0
  br i1 %tobool.not.i62, label %if.then9.ack_sdio_data.exit_crit_edge, label %do.end.i64

if.then9.ack_sdio_data.exit_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %ack_sdio_data.exit

do.end.i64:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %dev176.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev176.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %106, ptr noundef nonnull @.str.41, i32 noundef %and.i61) #11
  %call2.i = call i32 @config_reg_write_bits(ptr noundef %add.ptr, i32 noundef 255, i32 noundef 0) #8
  br label %ack_sdio_data.exit

ack_sdio_data.exit:                               ; preds = %do.end.i64, %if.then9.ack_sdio_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfg_reg.i) #8
  br label %if.end10

if.end10:                                         ; preds = %ack_sdio_data.exit, %do.end.if.end10_crit_edge
  %107 = ptrtoint ptr %tx_buffers_used.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tx_buffers_used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool11.not = icmp eq i32 %108, 0
  br i1 %tobool11.not, label %land.lhs.true, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end10
  %109 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %work, align 4
  %and1.i = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool13.not = icmp eq i32 %and1.i, 0
  br i1 %tobool13.not, label %if.then14, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  %111 = ptrtoint ptr %gpio_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %gpio_wakeup.i, align 4
  %tobool.not.i67 = icmp eq ptr %112, null
  br i1 %tobool.not.i67, label %if.then14.if.end15_crit_edge, label %if.end.i68

if.then14.if.end15_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end.i68:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %112, i32 noundef 0) #8
  br label %if.end15

if.end15:                                         ; preds = %if.end.i68, %if.then14.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end10.if.end15_crit_edge
  %release_chip.0.off0 = phi i1 [ false, %if.end10.if.end15_crit_edge ], [ false, %land.lhs.true.if.end15_crit_edge ], [ true, %if.then14.if.end15_crit_edge ], [ true, %if.end.i68 ]
  %sub = sub i32 %add2, %stats_cnf.3
  %113 = ptrtoint ptr %tx_buffers_used.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tx_buffers_used.i, align 4
  call fastcc void @trace_bh_stats(i32 noundef %sub, i32 noundef %add, i32 noundef %stats_cnf.3, i32 noundef %114, i1 noundef zeroext %release_chip.0.off0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_bh_unregister(ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hif = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 10
  %call = tail call zeroext i1 @flush_work(ptr noundef %hif) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bh_stats(i32 noundef %ind, i32 noundef %req, i32 noundef %cnf, i32 noundef %busy, i1 noundef zeroext %release) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bh_stats, i32 0, i32 1), ptr blockaddress(@trace_bh_stats, %do.body)) #8
          to label %if.end49 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !97) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !113

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %call43 = tail call i32 @__traceiter_bh_stats(ptr noundef null, i32 noundef %ind, i32 noundef %req, i32 noundef %cnf, i32 noundef %busy, i1 noundef zeroext %release) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !116
  %13 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !113

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bh_stats, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bh_stats, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_bh_stats.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_bh_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 362, ptr noundef nonnull @.str.23) #8
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  %31 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wfx_api_older_than(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wfx_tx_queues_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_data_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_hif_send(ptr noundef %hif, i32 noundef %tx_fill_level) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hif_send, i32 0, i32 1), ptr blockaddress(@trace_hif_send, %do.body)) #8
          to label %if.end49 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !97) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !113

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %call43 = tail call i32 @__traceiter_hif_send(ptr noundef null, ptr noundef %hif, i32 noundef %tx_fill_level, i1 noundef zeroext false) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  %13 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !113

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hif_send, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hif_send, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_hif_send.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_hif_send.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 212, ptr noundef nonnull @.str.23) #8
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  %31 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_hif_send(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_data_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_piggyback(i32 noundef %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_piggyback, i32 0, i32 1), ptr blockaddress(@trace_piggyback, %do.body)) #8
          to label %if.end49 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !97) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !113

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %call43 = tail call i32 @__traceiter_piggyback(ptr noundef null, i32 noundef %val, i1 noundef zeroext false) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !122
  %13 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !113

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_piggyback, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_piggyback, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_piggyback.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_piggyback.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 335, ptr noundef nonnull @.str.23) #8
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  %31 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_hif_recv(ptr noundef %hif, i32 noundef %tx_fill_level) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hif_recv, i32 0, i32 1), ptr blockaddress(@trace_hif_recv, %do.body)) #8
          to label %if.end49 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !97) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !113

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !123
  %call43 = tail call i32 @__traceiter_hif_recv(ptr noundef null, ptr noundef %hif, i32 noundef %tx_fill_level, i1 noundef zeroext true) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !124
  %13 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !113

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hif_recv, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hif_recv, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_hif_recv.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_hif_recv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 217, ptr noundef nonnull @.str.23) #8
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  %31 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_handle_rx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_piggyback(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_hif_recv(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_reg_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_reg_write_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bh_stats(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !40, !41, !43, !44, !45, !46, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !63, !65, !67, !68, !69, !71, !73, !75, !77, !78, !79, !80, !82, !83, !85, !86, !88, !89, !90, !91, !93, !94, !96}
!llvm.named.register.sp = !{!97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/wfx/bh.c", i32 279, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @wfx_bh_request_rx._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @wfx_bh_request_rx._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/wfx/bh.c", i32 282, i32 3}
!10 = !{ptr @wfx_bh_request_rx._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @wfx_bh_request_rx._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/wfx/bh.c", i32 304, i32 2}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/wfx/bh.c", i32 312, i32 4}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @wfx_bh_poll_irq._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @wfx_bh_poll_irq._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @wfx_bh_register.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/staging/wfx/bh.c", i32 322, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @wfx_bh_register.__key.12, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/staging/wfx/bh.c", i32 324, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/wfx/bh.c", i32 49, i32 4}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @device_wakeup._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @device_wakeup._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/wfx/bh.c", i32 53, i32 4}
!32 = !{ptr @device_wakeup._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @device_wakeup._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/wfx/bh.c", i32 209, i32 5}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/wfx/bh.c", i32 179, i32 2}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/wfx/bh.c", i32 185, i32 2}
!40 = !{ptr @__func__.tx_helper, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/staging/wfx/traces.h", i32 210, i32 1}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!45 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/wfx/bh.c", i32 159, i32 4}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @bh_work_rx._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @bh_work_rx._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/wfx/bh.c", i32 166, i32 4}
!56 = !{ptr @bh_work_rx._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @bh_work_rx._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/wfx/bh.c", i32 76, i32 2}
!60 = !{ptr @__func__.rx_helper, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/wfx/bh.c", i32 92, i32 2}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/wfx/bh.c", i32 93, i32 6}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/wfx/bh.c", i32 98, i32 3}
!67 = !{ptr @rx_helper._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @rx_helper._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/wfx/bh.c", i32 100, i32 18}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/wfx/bh.c", i32 100, i32 29}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/wfx/bh.c", i32 111, i32 3}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/wfx/bh.c", i32 118, i32 4}
!77 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @rx_helper._entry.37, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @rx_helper._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../drivers/staging/wfx/traces.h", i32 333, i32 1}
!82 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../drivers/staging/wfx/traces.h", i32 215, i32 1}
!85 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/wfx/bh.c", i32 232, i32 3}
!88 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ack_sdio_data._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @ack_sdio_data._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../drivers/staging/wfx/traces.h", i32 338, i32 1}
!93 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!94 = !{ptr @init_completion.__key, !95, !"__key", i1 false, i1 false}
!95 = !{!"../include/linux/completion.h", i32 87, i32 2}
!96 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!97 = !{!"sp"}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"auto-init"}
!108 = !{i64 2148896060}
!109 = !{i64 1142988, i64 1143005, i64 1143029, i64 1143055, i64 1143073}
!110 = !{i64 2148896430}
!111 = !{i8 0, i8 2}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{i64 2148174480, i64 2148174485, i64 2148174498, i64 2148174542, i64 2148174576, i64 2148174597}
!115 = !{i64 2157740619}
!116 = !{i64 2157740854}
!117 = !{i64 2149964116}
!118 = !{i64 2149965152}
!119 = !{i64 2157623870}
!120 = !{i64 2157624103}
!121 = !{i64 2157724501}
!122 = !{i64 2157724706}
!123 = !{i64 2157640245}
!124 = !{i64 2157640478}
