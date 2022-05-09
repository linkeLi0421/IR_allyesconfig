; ModuleID = '/llk/IR_all_yes/drivers/crypto/ccree/cc_request_mgr.c_pt.bc'
source_filename = "../drivers/crypto/ccree/cc_request_mgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cc_drvdata = type { ptr, i32, %struct.completion, ptr, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cc_req_mgr_handle = type { i32, i32, i32, [4096 x %struct.cc_crypto_req], i32, i32, i32, i32, %struct.spinlock, %struct.cc_hw_desc, ptr, i32, %struct.list_head, i32, %struct.spinlock, %struct.tasklet_struct }
%struct.cc_crypto_req = type { ptr, ptr, %struct.completion, %struct.cc_cpp_req }
%struct.cc_cpp_req = type { i8, i32, i8 }
%struct.cc_hw_desc = type { %union.anon.71 }
%union.anon.71 = type { [6 x i32] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.72, i32 }
%union.anon.72 = type { ptr }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.cc_bl_item = type { %struct.cc_crypto_req, [23 x %struct.cc_hw_desc], i32, %struct.list_head, i8 }

@cc_req_mgr_fini.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ccree\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cc_req_mgr_fini\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/crypto/ccree/cc_request_mgr.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max_used_hw_slots=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@cc_req_mgr_fini.__UNIQUE_ID_ddebug424 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max_used_sw_slots=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@cc_req_mgr_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&req_mgr_h->hw_lock\00", [44 x i8] zeroinitializer }, align 32
@cc_req_mgr_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&req_mgr_h->bl_lock\00", [44 x i8] zeroinitializer }, align 32
@cc_req_mgr_init.__UNIQUE_ID_ddebug425 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cc_req_mgr_init\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Initializing completion tasklet\0A\00", [63 x i8] zeroinitializer }, align 32
@cc_req_mgr_init.__UNIQUE_ID_ddebug426 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hw_queue_size=0x%08X\0A\00", [42 x i8] zeroinitializer }, align 32
@cc_req_mgr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 150, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Invalid HW queue size = %u (Min. required is %u)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cc_req_mgr_init._entry_ptr = internal global ptr @cc_req_mgr_init._entry, section ".printk_index", align 4
@cc_req_mgr_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.2, i32 164, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Not enough memory to allocate DMA (%zu) dropped buffer\0A\00", [40 x i8] zeroinitializer }, align 32
@cc_req_mgr_init._entry_ptr.16 = internal global ptr @cc_req_mgr_init._entry.14, section ".printk_index", align 4
@cc_send_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 414, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cc_pm_get returned %x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cc_send_request\00", [16 x i8] zeroinitializer }, align 32
@cc_send_request._entry_ptr = internal global ptr @cc_send_request._entry, section ".printk_index", align 4
@cc_send_sync_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.19, ptr @.str.2, i32 466, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cc_send_sync_request\00", [43 x i8] zeroinitializer }, align 32
@cc_send_sync_request._entry_ptr = internal global ptr @cc_send_sync_request._entry, section ".printk_index", align 4
@cc_queues_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 238, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"SW FIFO is full. req_queue_head=%d sw_fifo_len=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cc_queues_status\00", [47 x i8] zeroinitializer }, align 32
@cc_queues_status._entry_ptr = internal global ptr @cc_queues_status._entry, section ".printk_index", align 4
@cc_queues_status.__UNIQUE_ID_ddebug428 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"HW FIFO is full. q_free_slots=%d total_seq_len=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@cc_queues_status.__UNIQUE_ID_ddebug429 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"HW FIFO full, timeout. req_queue_head=%d sw_fifo_len=%d q_free_slots=%d total_seq_len=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cc_enqueue_backlog.__UNIQUE_ID_ddebug431 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cc_enqueue_backlog\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"+++bl len: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@cc_do_send_request.__UNIQUE_ID_ddebug430 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cc_do_send_request\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Enqueue request head=%u\0A\00", [39 x i8] zeroinitializer }, align 32
@cc_do_send_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 322, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HW free slot count mismatch.\00", [35 x i8] zeroinitializer }, align 32
@cc_do_send_request._entry_ptr = internal global ptr @cc_do_send_request._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cc_dump_desc = external dso_local local_unnamed_addr global i8, align 1
@enqueue_seq.__UNIQUE_ID_ddebug427 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enqueue_seq\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"desc[%02d]: 0x%08X 0x%08X 0x%08X 0x%08X 0x%08X 0x%08X\0A\00", [41 x i8] zeroinitializer }, align 32
@comp_handler.__UNIQUE_ID_ddebug443 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"comp_handler\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Completion handler called!\0A\00", [36 x i8] zeroinitializer }, align 32
@comp_handler.__UNIQUE_ID_ddebug444 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.34, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AXI completion after updated: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@comp_handler.__UNIQUE_ID_ddebug445 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.35, i8 0, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Comp. handler done.\0A\00", [43 x i8] zeroinitializer }, align 32
@proc_completions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 576, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Request queue is empty head == tail %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"proc_completions\00", [47 x i8] zeroinitializer }, align 32
@proc_completions._entry_ptr = internal global ptr @proc_completions._entry, section ".printk_index", align 4
@proc_completions.__UNIQUE_ID_ddebug433 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CPP request completion slot: %d alg:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@proc_completions.__UNIQUE_ID_ddebug434 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.39, i8 0, i8 -109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Got mask: %x irq: %x rc: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@proc_completions.__UNIQUE_ID_ddebug435 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.40, i8 0, i8 -108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"None CPP request completion\0A\00", [35 x i8] zeroinitializer }, align 32
@proc_completions.__UNIQUE_ID_ddebug436 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.41, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Dequeue request tail=%u\0A\00", [39 x i8] zeroinitializer }, align 32
@proc_completions.__UNIQUE_ID_ddebug437 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.42, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Request completed. axi_completed=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@cc_cpp_int_masks = internal constant { [2 x [8 x i32]], [32 x i8] } { [2 x [8 x i32]] [[8 x i32] [i32 2, i32 8, i32 16, i32 32, i32 64, i32 128, i32 512, i32 1024], [8 x i32] [i32 4096, i32 8192, i32 16384, i32 32768, i32 65536, i32 131072, i32 262144, i32 1048576]], [32 x i8] zeroinitializer }, align 32
@cc_proc_backlog.__UNIQUE_ID_ddebug432 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cc_proc_backlog\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"---bl len: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 99, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 101, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 127, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 128, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 141, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 147, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 149, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 163, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 414, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 466, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 237, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 257, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 261, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 339, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 299, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 322, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 87, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 201, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 621, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 633, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 661, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 575, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 584, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 589, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 592, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 599, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 600, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"cc_cpp_int_masks\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 54, i32 18 }
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.202 = private constant [41 x i8] c"../drivers/crypto/ccree/cc_request_mgr.c\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 357, i32 3 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @cc_do_send_request._entry, ptr @cc_do_send_request._entry_ptr, ptr @cc_queues_status._entry, ptr @cc_queues_status._entry_ptr, ptr @cc_req_mgr_init._entry, ptr @cc_req_mgr_init._entry.14, ptr @cc_req_mgr_init._entry_ptr, ptr @cc_req_mgr_init._entry_ptr.16, ptr @cc_send_request._entry, ptr @cc_send_request._entry_ptr, ptr @cc_send_sync_request._entry, ptr @cc_send_sync_request._entry_ptr, ptr @proc_completions._entry, ptr @proc_completions._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cc_req_mgr_init.__key, ptr @.str.5, ptr @cc_req_mgr_init.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @init_completion.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @cc_cpp_int_masks, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_req_mgr_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_req_mgr_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_req_mgr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_req_mgr_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_send_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_send_sync_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_queues_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_do_send_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_completions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_cpp_int_masks to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cc_req_mgr_fini(ptr nocapture noundef %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %request_mgr_handle = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 9
  %0 = ptrtoint ptr %request_mgr_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_mgr_handle, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dummy_comp_buff_dma = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %dummy_comp_buff_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dummy_comp_buff_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.do.body_crit_edge, label %if.then2

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dummy_comp_buff = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %dummy_comp_buff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dummy_comp_buff, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4, ptr noundef %7, i32 noundef %5, i32 noundef 0) #6
  br label %do.body

do.body:                                          ; preds = %if.then2, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_req_mgr_fini.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_req_mgr_fini, %if.then9)) #6
          to label %do.body11 [label %if.then9], !srcloc !116

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %min_free_hw_slots = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %min_free_hw_slots to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_free_hw_slots, align 4
  %sub = sub i32 %9, %11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_req_mgr_fini.__UNIQUE_ID_ddebug423, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %sub) #6
  br label %do.body11

do.body11:                                        ; preds = %if.then9, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_req_mgr_fini.__UNIQUE_ID_ddebug424, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_req_mgr_fini, %if.then23)) #6
          to label %do.end26 [label %if.then23], !srcloc !116

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %max_used_sw_slots = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %max_used_sw_slots to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_used_sw_slots, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_req_mgr_fini.__UNIQUE_ID_ddebug424, ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef %13) #6
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body11
  %comptask = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 15
  tail call void @tasklet_kill(ptr noundef %comptask) #6
  tail call void @kfree_sensitive(ptr noundef nonnull %1) #6
  %14 = ptrtoint ptr %request_mgr_handle to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %request_mgr_handle, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cc_req_mgr_init(ptr noundef %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 311480, i32 noundef 3520, i32 noundef 7) #9
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.req_mgr_init_err_crit_edge, label %if.end

entry.req_mgr_init_err_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %req_mgr_init_err

if.end:                                           ; preds = %entry
  %request_mgr_handle = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 9
  %2 = ptrtoint ptr %request_mgr_handle to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1.i.i.i, ptr %request_mgr_handle, align 4
  %hw_lock = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %call1.i.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %hw_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @cc_req_mgr_init.__key, i16 noundef signext 3) #6
  %bl_lock = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %call1.i.i.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %bl_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @cc_req_mgr_init.__key.6, i16 noundef signext 3) #6
  %backlog = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %call1.i.i.i, i32 0, i32 12
  %3 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %backlog, ptr %backlog, align 8
  %prev.i = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %call1.i.i.i, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %backlog, ptr %prev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_req_mgr_init.__UNIQUE_ID_ddebug425, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_req_mgr_init, %if.then12)) #6
          to label %do.end15 [label %if.then12], !srcloc !116

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_req_mgr_init.__UNIQUE_ID_ddebug425, ptr noundef %dev.i, ptr noundef nonnull @.str.9) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %if.end
  %comptask = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %call1.i.i.i, i32 0, i32 15
  %5 = ptrtoint ptr %drvdata to i32
  tail call void @tasklet_init(ptr noundef %comptask, ptr noundef nonnull @comp_handler, i32 noundef %5) #6
  %6 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drvdata, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 3680
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !117
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %10 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call1.i.i.i, align 4096
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_req_mgr_init.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_req_mgr_init, %if.then29)) #6
          to label %do.end33 [label %if.then29], !srcloc !116

if.then29:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call1.i.i.i, align 4096
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_req_mgr_init.__UNIQUE_ID_ddebug426, ptr noundef %dev.i, ptr noundef nonnull @.str.10, i32 noundef %12) #6
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %do.end15
  %13 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call1.i.i.i, align 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %14)
  %cmp = icmp ult i32 %14, 50
  br i1 %cmp, label %do.end38, label %if.end40

do.end38:                                         ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.11, i32 noundef %14, i32 noundef 50) #10
  br label %req_mgr_init_err

if.end40:                                         ; preds = %do.end33
  %min_free_hw_slots = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %call1.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %min_free_hw_slots to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %min_free_hw_slots, align 4
  %max_used_sw_slots = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %call1.i.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %max_used_sw_slots to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %max_used_sw_slots, align 8
  %dummy_comp_buff_dma = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %call1.i.i.i, i32 0, i32 11
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 4, ptr noundef %dummy_comp_buff_dma, i32 noundef 3264, i32 noundef 0) #6
  %dummy_comp_buff = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %call1.i.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %dummy_comp_buff to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %dummy_comp_buff, align 32
  %tobool44.not = icmp eq ptr %call.i, null
  br i1 %tobool44.not, label %do.end48, label %if.end49

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, i32 noundef 4) #10
  br label %req_mgr_init_err

if.end49:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %compl_desc = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %call1.i.i.i, i32 0, i32 9
  %arrayidx33.i = getelementptr %struct.cc_req_mgr_handle, ptr %call1.i.i.i, i32 0, i32 9, i32 0, i32 0, i32 1
  %18 = call ptr @memset(ptr %compl_desc, i32 0, i32 24)
  %19 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 134217745, ptr %arrayidx33.i, align 4
  %20 = ptrtoint ptr %dummy_comp_buff_dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dummy_comp_buff_dma, align 4
  %arrayidx.i.i = getelementptr %struct.cc_req_mgr_handle, ptr %call1.i.i.i, i32 0, i32 9, i32 0, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i.i, align 16
  %arrayidx50.i.i = getelementptr %struct.cc_req_mgr_handle, ptr %call1.i.i.i, i32 0, i32 9, i32 0, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 201326610, ptr %arrayidx50.i.i, align 4
  %hw_rev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 16
  %24 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %25)
  %cmp.i = icmp ugt i32 %25, 711
  %spec.store.select = select i1 %cmp.i, i32 -1946157038, i32 201326610
  %26 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.store.select, ptr %arrayidx50.i.i, align 4
  br label %cleanup

req_mgr_init_err:                                 ; preds = %do.end48, %do.end38, %entry.req_mgr_init_err_crit_edge
  tail call void @cc_req_mgr_fini(ptr noundef %drvdata)
  br label %cleanup

cleanup:                                          ; preds = %req_mgr_init_err, %if.end49
  %retval.0 = phi i32 [ -12, %req_mgr_init_err ], [ 0, %if.end49 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @comp_handler(i32 noundef %devarg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %devarg to ptr
  %request_mgr_handle1 = getelementptr inbounds %struct.cc_drvdata, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %request_mgr_handle1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %request_mgr_handle1, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %0, i32 0, i32 3
  %3 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @comp_handler.__UNIQUE_ID_ddebug443, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@comp_handler, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @comp_handler.__UNIQUE_ID_ddebug443, ptr noundef %dev.i, ptr noundef nonnull @.str.33) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq5 = getelementptr inbounds %struct.cc_drvdata, ptr %0, i32 0, i32 1
  %5 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq5, align 4
  %comp_mask = getelementptr inbounds %struct.cc_drvdata, ptr %0, i32 0, i32 22
  %7 = ptrtoint ptr %comp_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %comp_mask, align 4
  %and = and i32 %8, %6
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %0, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 2568
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #6, !srcloc !120
  %axim_mon_offset.i = getelementptr inbounds %struct.cc_drvdata, ptr %0, i32 0, i32 17
  %12 = ptrtoint ptr %axim_mon_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %axim_mon_offset.i, align 4
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %0, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %13
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %17 = and i32 %16, -65536
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  %axi_completed = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %2, i32 0, i32 6
  %19 = ptrtoint ptr %axi_completed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %axi_completed, align 4
  %add = add i32 %20, %18
  store i32 %add, ptr %axi_completed, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @comp_handler.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@comp_handler, %if.then19)) #6
          to label %do.end23 [label %if.then19], !srcloc !116

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %axi_completed to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %axi_completed, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @comp_handler.__UNIQUE_ID_ddebug444, ptr noundef %dev.i, ptr noundef nonnull @.str.34, i32 noundef %22) #6
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.end
  %23 = ptrtoint ptr %axi_completed to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %axi_completed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool25.not102 = icmp eq i32 %.pr, 0
  br i1 %tobool25.not102, label %do.end23.while.end_crit_edge, label %do.end23.do.body26_crit_edge

do.end23.do.body26_crit_edge:                     ; preds = %do.end23
  br label %do.body26

do.end23.while.end_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body26:                                        ; preds = %do.body26.backedge, %do.end23.do.body26_crit_edge
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %0, align 4
  %add.ptr.i91 = getelementptr i8, ptr %25, i32 2560
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #6, !srcloc !117
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %28 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq5, align 4
  %or = or i32 %29, %27
  store i32 %or, ptr %irq5, align 4
  %30 = ptrtoint ptr %comp_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %comp_mask, align 4
  tail call fastcc void @proc_completions(ptr noundef %0)
  %32 = ptrtoint ptr %axim_mon_offset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %axim_mon_offset.i, align 4
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %0, align 4
  %add.ptr.i.i93 = getelementptr i8, ptr %35, i32 %33
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i93) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %37 = and i32 %36, -65536
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  %39 = ptrtoint ptr %axi_completed to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %axi_completed, align 4
  %add34 = add i32 %40, %38
  store i32 %add34, ptr %axi_completed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add34)
  %cmp.not = icmp eq i32 %add34, 0
  br i1 %cmp.not, label %do.end37, label %do.body26.do.body26.backedge_crit_edge

do.body26.do.body26.backedge_crit_edge:           ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body26.backedge

do.body26.backedge:                               ; preds = %do.end37.do.body26.backedge_crit_edge, %do.body26.do.body26.backedge_crit_edge
  br label %do.body26

do.end37:                                         ; preds = %do.body26
  %and31 = and i32 %31, %or
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %0, align 4
  %add.ptr.i94 = getelementptr i8, ptr %42, i32 2568
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %43 = tail call i32 @llvm.bswap.i32(i32 %and31) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %43) #6, !srcloc !120
  %44 = ptrtoint ptr %axim_mon_offset.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %axim_mon_offset.i, align 4
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %0, align 4
  %add.ptr.i.i96 = getelementptr i8, ptr %47, i32 %45
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i96) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %49 = and i32 %48, -65536
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #6
  %51 = ptrtoint ptr %axi_completed to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %axi_completed, align 4
  %add40 = add i32 %52, %50
  store i32 %add40, ptr %axi_completed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add40)
  %tobool25.not = icmp eq i32 %add40, 0
  br i1 %tobool25.not, label %do.end37.while.end_crit_edge, label %do.end37.do.body26.backedge_crit_edge

do.end37.do.body26.backedge_crit_edge:            ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body26.backedge

do.end37.while.end_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.end37.while.end_crit_edge, %do.end23.while.end_crit_edge
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %0, align 4
  %add.ptr.i97 = getelementptr i8, ptr %54, i32 2564
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #6, !srcloc !117
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %57 = ptrtoint ptr %comp_mask to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %comp_mask, align 4
  %neg = xor i32 %58, -1
  %and43 = and i32 %56, %neg
  %59 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %0, align 4
  %add.ptr.i98 = getelementptr i8, ptr %60, i32 2564
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %61 = tail call i32 @llvm.bswap.i32(i32 %and43) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %61) #6, !srcloc !120
  tail call fastcc void @cc_proc_backlog(ptr noundef %0)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @comp_handler.__UNIQUE_ID_ddebug445, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@comp_handler, %if.then56)) #6
          to label %do.end59 [label %if.then56], !srcloc !116

if.then56:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @comp_handler.__UNIQUE_ID_ddebug445, ptr noundef %dev.i, ptr noundef nonnull @.str.35) #6
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %while.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cc_send_request(ptr nocapture noundef readonly %drvdata, ptr nocapture noundef readonly %cc_req, ptr nocapture noundef readonly %desc, i32 noundef %len, ptr nocapture noundef readonly %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %request_mgr_handle = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 9
  %0 = ptrtoint ptr %request_mgr_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_mgr_handle, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and.i = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2592, i32 3264
  %call3 = tail call i32 @cc_pm_get(ptr noundef %dev.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef %call3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %hw_lock = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %hw_lock) #6
  %call5 = tail call fastcc i32 @cc_queues_status(ptr noundef %drvdata, ptr noundef %1, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call5)
  %cmp = icmp ne i32 %call5, -28
  %brmerge = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end15, label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end
  tail call void @_raw_spin_unlock_bh(ptr noundef %hw_lock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef %cond.i, i32 noundef 644) #11
  %tobool10.not = icmp eq ptr %call7.i, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cc_pm_put_suspend(ptr noundef %dev.i) #6
  br label %cleanup

if.end12:                                         ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %7 = call ptr @memcpy(ptr %call7.i, ptr %cc_req, i32 76)
  %desc13 = getelementptr inbounds %struct.cc_bl_item, ptr %call7.i, i32 0, i32 1
  %mul = mul i32 %len, 24
  %8 = call ptr @memcpy(ptr %desc13, ptr %desc, i32 %mul)
  %len14 = getelementptr inbounds %struct.cc_bl_item, ptr %call7.i, i32 0, i32 2
  %9 = ptrtoint ptr %len14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %len, ptr %len14, align 4
  %notif = getelementptr inbounds %struct.cc_bl_item, ptr %call7.i, i32 0, i32 4
  %10 = ptrtoint ptr %notif to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %notif, align 8
  tail call fastcc void @cc_enqueue_backlog(ptr noundef %drvdata, ptr noundef nonnull %call7.i)
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool16.not = icmp eq i32 %call5, 0
  br i1 %tobool16.not, label %if.then17, label %if.end15.if.end18_crit_edge

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @cc_do_send_request(ptr noundef %drvdata, ptr noundef %cc_req, ptr noundef %desc, i32 noundef %len, i1 noundef zeroext false)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15.if.end18_crit_edge
  %rc.0 = phi i32 [ %call5, %if.end15.if.end18_crit_edge ], [ -115, %if.then17 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %hw_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end12, %if.then11, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ -16, %if.end12 ], [ -12, %if.then11 ], [ %rc.0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_pm_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_queues_status(ptr nocapture noundef readonly %drvdata, ptr nocapture noundef %req_mgr_h, i32 noundef %total_seq_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %req_queue_head = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %req_mgr_h, i32 0, i32 4
  %2 = ptrtoint ptr %req_queue_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req_queue_head, align 4
  %add = add i32 %3, 1
  %and = and i32 %add, 4095
  %req_queue_tail = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %req_mgr_h, i32 0, i32 5
  %4 = ptrtoint ptr %req_queue_tail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req_queue_tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %5)
  %cmp = icmp eq i32 %and, %5
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20, i32 noundef %3, i32 noundef 4096) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %q_free_slots = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %req_mgr_h, i32 0, i32 7
  %6 = ptrtoint ptr %q_free_slots to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %q_free_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %total_seq_len)
  %cmp2.not = icmp ult i32 %7, %total_seq_len
  br i1 %cmp2.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %min_free_hw_slots = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %req_mgr_h, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %poll_queue.070 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drvdata, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 3740
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !117
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %12 = ptrtoint ptr %q_free_slots to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %q_free_slots, align 4
  %13 = ptrtoint ptr %min_free_hw_slots to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %min_free_hw_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %14)
  %cmp9 = icmp ult i32 %11, %14
  br i1 %cmp9, label %if.then10, label %for.body.if.end13_crit_edge

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %min_free_hw_slots to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %11, ptr %min_free_hw_slots, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %for.body.if.end13_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %total_seq_len)
  %cmp15.not = icmp ult i32 %11, %total_seq_len
  br i1 %cmp15.not, label %do.body18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body18:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_queues_status.__UNIQUE_ID_ddebug428, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_queues_status, %if.then22)) #6
          to label %for.inc [label %if.then22], !srcloc !116

if.then22:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %q_free_slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %q_free_slots, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_queues_status.__UNIQUE_ID_ddebug428, ptr noundef %dev.i, ptr noundef nonnull @.str.22, i32 noundef %17, i32 noundef %total_seq_len) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %do.body18
  %inc = add nuw nsw i32 %poll_queue.070, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.body27, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body27:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_queues_status.__UNIQUE_ID_ddebug429, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_queues_status, %if.then39)) #6
          to label %cleanup [label %if.then39], !srcloc !116

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %req_queue_head to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %req_queue_head, align 4
  %20 = ptrtoint ptr %q_free_slots to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %q_free_slots, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_queues_status.__UNIQUE_ID_ddebug429, ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %19, i32 noundef 4096, i32 noundef %21, i32 noundef %total_seq_len) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.body27, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -28, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ -28, %if.then39 ], [ -28, %do.body27 ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cc_pm_put_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc_enqueue_backlog(ptr nocapture noundef readonly %drvdata, ptr noundef %bli) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %request_mgr_handle = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 9
  %0 = ptrtoint ptr %request_mgr_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_mgr_handle, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %bl_lock = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %bl_lock) #6
  %list = getelementptr inbounds %struct.cc_bl_item, ptr %bli, i32 0, i32 3
  %backlog = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %backlog) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %backlog, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.cc_bl_item, ptr %bli, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %bl_len = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %bl_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bl_len, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %bl_len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_enqueue_backlog.__UNIQUE_ID_ddebug431, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_enqueue_backlog, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !116

if.then:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %bl_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bl_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_enqueue_backlog.__UNIQUE_ID_ddebug431, ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef %13) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %list_add_tail.exit
  tail call void @_raw_spin_unlock_bh(ptr noundef %bl_lock) #6
  %state.i = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 15, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end.tasklet_schedule.exit_crit_edge

do.end.tasklet_schedule.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %comptask = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 15
  tail call void @__tasklet_schedule(ptr noundef %comptask) #6
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %do.end.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc_do_send_request(ptr nocapture noundef readonly %drvdata, ptr nocapture noundef readonly %cc_req, ptr nocapture noundef readonly %desc, i32 noundef %len, i1 noundef zeroext %add_comp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %request_mgr_handle = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 9
  %0 = ptrtoint ptr %request_mgr_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_mgr_handle, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %req_queue_head = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %req_queue_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req_queue_head, align 4
  %req_queue_tail = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %req_queue_tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req_queue_tail, align 4
  %sub = sub i32 %5, %7
  %and = and i32 %sub, 4095
  %max_used_sw_slots = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %max_used_sw_slots to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_used_sw_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %9)
  %cmp = icmp ugt i32 %and, %9
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %max_used_sw_slots to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %max_used_sw_slots, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 3, i32 %5
  %11 = call ptr @memcpy(ptr %arrayidx, ptr %cc_req, i32 76)
  %12 = ptrtoint ptr %req_queue_head to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %req_queue_head, align 4
  %add = add i32 %13, 1
  %and4 = and i32 %add, 4095
  store i32 %and4, ptr %req_queue_head, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_do_send_request.__UNIQUE_ID_ddebug430, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_do_send_request, %if.then10)) #6
          to label %do.body13 [label %if.then10], !srcloc !116

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %req_queue_head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %req_queue_head, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_do_send_request.__UNIQUE_ID_ddebug430, ptr noundef %dev.i, ptr noundef nonnull @.str.27, i32 noundef %15) #6
  br label %do.body13

do.body13:                                        ; preds = %if.then10, %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  tail call fastcc void @enqueue_seq(ptr noundef %drvdata, ptr noundef %desc, i32 noundef %len)
  br i1 %add_comp, label %if.then17, label %do.body13.if.end18_crit_edge

do.body13.if.end18_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %compl_desc = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 9
  tail call fastcc void @enqueue_seq(ptr noundef %drvdata, ptr noundef %compl_desc, i32 noundef 1)
  %inc = add i32 %len, 1
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %do.body13.if.end18_crit_edge
  %total_seq_len.0 = phi i32 [ %inc, %if.then17 ], [ %len, %do.body13.if.end18_crit_edge ]
  %q_free_slots = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %q_free_slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %q_free_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %total_seq_len.0)
  %cmp19 = icmp ult i32 %17, %total_seq_len.0
  br i1 %cmp19, label %do.end23, label %if.else

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28) #10
  br label %if.end27

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %sub26 = sub i32 %17, %total_seq_len.0
  br label %if.end27

if.end27:                                         ; preds = %if.else, %do.end23
  %storemerge = phi i32 [ %sub26, %if.else ], [ 0, %do.end23 ]
  %18 = ptrtoint ptr %q_free_slots to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge, ptr %q_free_slots, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cc_send_sync_request(ptr noundef %drvdata, ptr noundef %cc_req, ptr nocapture noundef readonly %desc, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %request_mgr_handle = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 9
  %2 = ptrtoint ptr %request_mgr_handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request_mgr_handle, align 4
  %seq_compl = getelementptr inbounds %struct.cc_crypto_req, ptr %cc_req, i32 0, i32 2
  %4 = ptrtoint ptr %seq_compl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %seq_compl, align 4
  %wait.i = getelementptr inbounds %struct.cc_crypto_req, ptr %cc_req, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @init_completion.__key) #6
  %5 = ptrtoint ptr %cc_req to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @request_mgr_complete, ptr %cc_req, align 4
  %user_arg = getelementptr inbounds %struct.cc_crypto_req, ptr %cc_req, i32 0, i32 1
  %6 = ptrtoint ptr %user_arg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %seq_compl, ptr %user_arg, align 4
  %call2 = tail call i32 @cc_pm_get(ptr noundef %dev.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %while.cond.preheader, label %do.end

while.cond.preheader:                             ; preds = %entry
  %hw_lock = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %3, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %hw_lock) #6
  %add = add i32 %len, 1
  %call332 = tail call fastcc i32 @cc_queues_status(ptr noundef %drvdata, ptr noundef %3, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call332)
  %tobool4.not33 = icmp eq i32 %call332, 0
  br i1 %tobool4.not33, label %while.cond.preheader.while.end_crit_edge, label %if.end6.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end6.lr.ph:                                    ; preds = %while.cond.preheader
  %hw_queue_avail = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 2
  br label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef %call2) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end6.if.end6_crit_edge, %if.end6.lr.ph
  tail call void @_raw_spin_unlock_bh(ptr noundef %hw_lock) #6
  %call8 = tail call i32 @wait_for_completion_interruptible(ptr noundef %hw_queue_avail) #6
  %7 = ptrtoint ptr %hw_queue_avail to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %hw_queue_avail, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %hw_lock) #6
  %call3 = tail call fastcc i32 @cc_queues_status(ptr noundef %drvdata, ptr noundef %3, i32 noundef %add)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6.while.end_crit_edge, label %if.end6.if.end6_crit_edge

if.end6.if.end6_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end6.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call fastcc void @cc_do_send_request(ptr noundef %drvdata, ptr noundef %cc_req, ptr noundef %desc, i32 noundef %len, i1 noundef zeroext true)
  tail call void @_raw_spin_unlock_bh(ptr noundef %hw_lock) #6
  tail call void @wait_for_completion(ptr noundef %seq_compl) #6
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @request_mgr_complete(ptr nocapture noundef readnone %dev, ptr noundef %dx_compl_h, i32 noundef %dummy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @complete(ptr noundef %dx_compl_h) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @send_request_init(ptr nocapture noundef readonly %drvdata, ptr nocapture noundef %desc, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %request_mgr_handle = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 9
  %0 = ptrtoint ptr %request_mgr_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_mgr_handle, align 4
  %call = tail call fastcc i32 @cc_queues_status(ptr noundef %drvdata, ptr noundef %1, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_rev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 16
  %2 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %3)
  %cmp.i = icmp ugt i32 %3, 711
  br i1 %cmp.i, label %if.then.i, label %if.end.set_queue_last_ind.exit_crit_edge

if.end.set_queue_last_ind.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_queue_last_ind.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %len, -1
  %arrayidx.i.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %sub, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = or i32 %5, -2147483648
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  br label %set_queue_last_ind.exit

set_queue_last_ind.exit:                          ; preds = %if.then.i, %if.end.set_queue_last_ind.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  tail call fastcc void @enqueue_seq(ptr noundef %drvdata, ptr noundef %desc, i32 noundef %len)
  %6 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drvdata, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 3740
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !117
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %q_free_slots = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %q_free_slots to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %q_free_slots, align 4
  br label %cleanup

cleanup:                                          ; preds = %set_queue_last_ind.exit, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enqueue_seq(ptr nocapture noundef readonly %drvdata, ptr nocapture noundef readonly %seq, i32 noundef %seq_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3712
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seq_len)
  %cmp46.not = icmp eq i32 %seq_len, 0
  br i1 %cmp46.not, label %entry.for.end25_crit_edge, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  br label %for.cond1.preheader

entry.for.end25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end25

for.cond1.preheader:                              ; preds = %for.inc23.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %i.047 = phi i32 [ %inc24, %for.inc23.for.cond1.preheader_crit_edge ], [ 0, %entry.for.cond1.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.cc_hw_desc, ptr %seq, i32 %i.047
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #6, !srcloc !120
  %arrayidx4.1 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4.1, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #6, !srcloc !120
  %arrayidx4.2 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.2, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #6, !srcloc !120
  %arrayidx4.3 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4.3, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #6, !srcloc !120
  %arrayidx4.4 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.4, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #6, !srcloc !120
  %arrayidx4.5 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx4.5, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #6, !srcloc !120
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @cc_dump_desc to i32))
  %22 = load i8, ptr @cc_dump_desc, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %for.cond1.preheader.for.inc23_crit_edge, label %do.body

for.cond1.preheader.for.inc23_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc23

do.body:                                          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enqueue_seq.__UNIQUE_ID_ddebug427, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@enqueue_seq, %if.then9)) #6
          to label %for.inc23 [label %if.then9], !srcloc !116

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %25 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx4.1, align 4
  %27 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx4.2, align 4
  %29 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx4.3, align 4
  %31 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx4.4, align 4
  %33 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx4.5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @enqueue_seq.__UNIQUE_ID_ddebug427, ptr noundef %dev.i, ptr noundef nonnull @.str.31, i32 noundef %i.047, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34) #6
  br label %for.inc23

for.inc23:                                        ; preds = %if.then9, %do.body, %for.cond1.preheader.for.inc23_crit_edge
  %inc24 = add nuw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc24, %seq_len
  br i1 %exitcond.not, label %for.inc23.for.end25_crit_edge, label %for.inc23.for.cond1.preheader_crit_edge

for.inc23.for.cond1.preheader_crit_edge:          ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader

for.inc23.for.end25_crit_edge:                    ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end25

for.end25:                                        ; preds = %for.inc23.for.end25_crit_edge, %entry.for.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @complete_request(ptr noundef %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %request_mgr_handle1 = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 9
  %0 = ptrtoint ptr %request_mgr_handle1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_mgr_handle1, align 4
  %hw_queue_avail = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 2
  tail call void @complete(ptr noundef %hw_queue_avail) #6
  %state.i = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 15, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %comptask = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 15
  tail call void @__tasklet_schedule(ptr noundef %comptask) #6
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @proc_completions(ptr nocapture noundef readonly %drvdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %request_mgr_handle1 = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 9
  %2 = ptrtoint ptr %request_mgr_handle1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request_mgr_handle1, align 4
  %req_queue_tail = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %3, i32 0, i32 5
  %req_queue_head = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %3, i32 0, i32 4
  %axi_completed = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %axi_completed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %axi_completed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not144 = icmp eq i32 %5, 0
  br i1 %tobool.not144, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %irq = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %do.end94.while.body_crit_edge, %while.body.lr.ph
  %6 = phi i32 [ %5, %while.body.lr.ph ], [ %41, %do.end94.while.body_crit_edge ]
  %dec = add i32 %6, -1
  %7 = ptrtoint ptr %axi_completed to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dec, ptr %axi_completed, align 4
  %8 = ptrtoint ptr %req_queue_head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %req_queue_head, align 4
  %10 = ptrtoint ptr %req_queue_tail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %req_queue_tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp eq i32 %9, %11
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.36, i32 noundef %9) #10
  br label %while.end

if.end:                                           ; preds = %while.body
  %arrayidx = getelementptr %struct.cc_req_mgr_handle, ptr %3, i32 0, i32 3, i32 %11
  %cpp = getelementptr %struct.cc_req_mgr_handle, ptr %3, i32 0, i32 3, i32 %11, i32 3
  %12 = ptrtoint ptr %cpp to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cpp, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %do.body40, label %do.body5

do.body5:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @proc_completions.__UNIQUE_ID_ddebug433, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@proc_completions, %if.then10)) #6
          to label %do.end15 [label %if.then10], !srcloc !116

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %slot = getelementptr %struct.cc_req_mgr_handle, ptr %3, i32 0, i32 3, i32 %11, i32 3, i32 2
  %14 = ptrtoint ptr %slot to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %slot, align 4
  %conv = zext i8 %15 to i32
  %alg = getelementptr %struct.cc_req_mgr_handle, ptr %3, i32 0, i32 3, i32 %11, i32 3, i32 1
  %16 = ptrtoint ptr %alg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %alg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @proc_completions.__UNIQUE_ID_ddebug433, ptr noundef %dev.i, ptr noundef nonnull @.str.38, i32 noundef %conv, i32 noundef %17) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then10, %do.body5
  %alg17 = getelementptr %struct.cc_req_mgr_handle, ptr %3, i32 0, i32 3, i32 %11, i32 3, i32 1
  %18 = ptrtoint ptr %alg17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %alg17, align 4
  %slot19 = getelementptr %struct.cc_req_mgr_handle, ptr %3, i32 0, i32 3, i32 %11, i32 3, i32 2
  %20 = ptrtoint ptr %slot19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %slot19, align 4
  %conv20 = zext i8 %21 to i32
  %22 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %19, i32 2) #6, !srcloc !124
  %and.i = and i32 %22, %19
  %23 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv20, i32 8) #6, !srcloc !124
  %and15.i = and i32 %23, %conv20
  %arrayidx16.i = getelementptr [2 x [8 x i32]], ptr @cc_cpp_int_masks, i32 0, i32 %and.i, i32 %and15.i
  %24 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx16.i, align 4
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  %and = and i32 %27, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp ne i32 %and, 0
  %cond = sext i1 %tobool22.not to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @proc_completions.__UNIQUE_ID_ddebug434, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@proc_completions, %if.then35)) #6
          to label %if.end56 [label %if.then35], !srcloc !116

if.then35:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @proc_completions.__UNIQUE_ID_ddebug434, ptr noundef %dev.i, ptr noundef nonnull @.str.39, i32 noundef %25, i32 noundef %29, i32 noundef %cond) #6
  br label %if.end56

do.body40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @proc_completions.__UNIQUE_ID_ddebug435, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@proc_completions, %if.then52)) #6
          to label %if.end56 [label %if.then52], !srcloc !116

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @proc_completions.__UNIQUE_ID_ddebug435, ptr noundef %dev.i, ptr noundef nonnull @.str.40) #6
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %do.body40, %if.then35, %do.end15
  %rc.0 = phi i32 [ %cond, %if.then35 ], [ 0, %if.then52 ], [ %cond, %do.end15 ], [ 0, %do.body40 ]
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %tobool57.not = icmp eq ptr %31, null
  br i1 %tobool57.not, label %if.end56.if.end60_crit_edge, label %if.then58

if.end56.if.end60_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %user_arg = getelementptr %struct.cc_req_mgr_handle, ptr %3, i32 0, i32 3, i32 %11, i32 1
  %32 = ptrtoint ptr %user_arg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %user_arg, align 4
  tail call void %31(ptr noundef %dev.i, ptr noundef %33, i32 noundef %rc.0) #6
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end56.if.end60_crit_edge
  %34 = ptrtoint ptr %req_queue_tail to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %req_queue_tail, align 4
  %add = add i32 %35, 1
  %and61 = and i32 %add, 4095
  store i32 %and61, ptr %req_queue_tail, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @proc_completions.__UNIQUE_ID_ddebug436, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@proc_completions, %if.then74)) #6
          to label %do.body78 [label %if.then74], !srcloc !116

if.then74:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %req_queue_tail to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %req_queue_tail, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @proc_completions.__UNIQUE_ID_ddebug436, ptr noundef %dev.i, ptr noundef nonnull @.str.41, i32 noundef %37) #6
  br label %do.body78

do.body78:                                        ; preds = %if.then74, %if.end60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @proc_completions.__UNIQUE_ID_ddebug437, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@proc_completions, %if.then90)) #6
          to label %do.end94 [label %if.then90], !srcloc !116

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %axi_completed to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %axi_completed, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @proc_completions.__UNIQUE_ID_ddebug437, ptr noundef %dev.i, ptr noundef nonnull @.str.42, i32 noundef %39) #6
  br label %do.end94

do.end94:                                         ; preds = %if.then90, %do.body78
  tail call void @cc_pm_put_suspend(ptr noundef %dev.i) #6
  %40 = ptrtoint ptr %axi_completed to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %axi_completed, align 4
  %tobool.not = icmp eq i32 %41, 0
  br i1 %tobool.not, label %do.end94.while.end_crit_edge, label %do.end94.while.body_crit_edge

do.end94.while.body_crit_edge:                    ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.end94.while.end_crit_edge:                     ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.end94.while.end_crit_edge, %do.end, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc_proc_backlog(ptr nocapture noundef readonly %drvdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %request_mgr_handle = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 9
  %0 = ptrtoint ptr %request_mgr_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_mgr_handle, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %bl_lock = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %bl_lock) #6
  %bl_len = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %bl_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bl_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not54 = icmp eq i32 %5, 0
  br i1 %tobool.not54, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %backlog = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 12
  %hw_lock = getelementptr inbounds %struct.cc_req_mgr_handle, ptr %1, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %while.body.lr.ph
  %6 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %backlog, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 -632
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_proc_backlog.__UNIQUE_ID_ddebug432, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_proc_backlog, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !116

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %bl_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bl_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_proc_backlog.__UNIQUE_ID_ddebug432, ptr noundef %dev.i, ptr noundef nonnull @.str.44, i32 noundef %9) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %while.body
  tail call void @_raw_spin_unlock(ptr noundef %bl_lock) #6
  %notif = getelementptr i8, ptr %7, i32 8
  %10 = ptrtoint ptr %notif to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %notif, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %if.then10, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %user_arg = getelementptr i8, ptr %7, i32 -628
  %12 = ptrtoint ptr %user_arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_arg, align 4
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  tail call void %15(ptr noundef %dev.i, ptr noundef %13, i32 noundef -115) #6
  %16 = ptrtoint ptr %notif to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %notif, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end.if.end12_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %hw_lock) #6
  %len = getelementptr i8, ptr %7, i32 -4
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %call13 = tail call fastcc i32 @cc_queues_status(ptr noundef %drvdata, ptr noundef %1, i32 noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %desc = getelementptr i8, ptr %7, i32 -556
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  tail call fastcc void @cc_do_send_request(ptr noundef %drvdata, ptr noundef %add.ptr, ptr noundef %desc, i32 noundef %20, i1 noundef zeroext false)
  tail call void @_raw_spin_unlock(ptr noundef %hw_lock) #6
  tail call void @_raw_spin_lock(ptr noundef %bl_lock) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end17.list_del.exit_crit_edge

if.end17.list_del.exit_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end17.list_del.exit_crit_edge
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %29 = ptrtoint ptr %bl_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bl_len, align 4
  %dec = add i32 %30, -1
  store i32 %dec, ptr %bl_len, align 4
  tail call void @kfree(ptr noundef %add.ptr) #6
  %31 = ptrtoint ptr %bl_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bl_len, align 4
  %tobool.not = icmp eq i32 %32, 0
  br i1 %tobool.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %bl_lock.sink = phi ptr [ %bl_lock, %entry.cleanup_crit_edge ], [ %hw_lock, %if.end12.cleanup_crit_edge ], [ %bl_lock, %list_del.exit.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %bl_lock.sink) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !19, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !83, !84, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !105, !106}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 99, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cc_req_mgr_fini.__UNIQUE_ID_ddebug423, !1, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 101, i32 2}
!8 = !{ptr @cc_req_mgr_fini.__UNIQUE_ID_ddebug424, !7, !"__UNIQUE_ID_ddebug424", i1 false, i1 false}
!9 = !{ptr @cc_req_mgr_init.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 127, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cc_req_mgr_init.__key.6, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 128, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 141, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cc_req_mgr_init.__UNIQUE_ID_ddebug425, !16, !"__UNIQUE_ID_ddebug425", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 147, i32 2}
!21 = !{ptr @cc_req_mgr_init.__UNIQUE_ID_ddebug426, !20, !"__UNIQUE_ID_ddebug426", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 149, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cc_req_mgr_init._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @cc_req_mgr_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 163, i32 3}
!30 = !{ptr @cc_req_mgr_init._entry.14, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cc_req_mgr_init._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 414, i32 3}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cc_send_request._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @cc_send_request._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 466, i32 3}
!39 = !{ptr @cc_send_sync_request._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @cc_send_sync_request._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 237, i32 3}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cc_queues_status._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @cc_queues_status._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 257, i32 3}
!48 = !{ptr @cc_queues_status.__UNIQUE_ID_ddebug428, !47, !"__UNIQUE_ID_ddebug428", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 261, i32 2}
!51 = !{ptr @cc_queues_status.__UNIQUE_ID_ddebug429, !50, !"__UNIQUE_ID_ddebug429", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 339, i32 2}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @cc_enqueue_backlog.__UNIQUE_ID_ddebug431, !53, !"__UNIQUE_ID_ddebug431", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 299, i32 2}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @cc_do_send_request.__UNIQUE_ID_ddebug430, !57, !"__UNIQUE_ID_ddebug430", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 322, i32 3}
!62 = !{ptr @cc_do_send_request._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @cc_do_send_request._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @init_completion.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../include/linux/completion.h", i32 87, i32 2}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 201, i32 4}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @enqueue_seq.__UNIQUE_ID_ddebug427, !68, !"__UNIQUE_ID_ddebug427", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 621, i32 2}
!73 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @comp_handler.__UNIQUE_ID_ddebug443, !72, !"__UNIQUE_ID_ddebug443", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 633, i32 2}
!77 = !{ptr @comp_handler.__UNIQUE_ID_ddebug444, !76, !"__UNIQUE_ID_ddebug444", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 661, i32 2}
!80 = !{ptr @comp_handler.__UNIQUE_ID_ddebug445, !79, !"__UNIQUE_ID_ddebug445", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 575, i32 4}
!83 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @proc_completions._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @proc_completions._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 584, i32 4}
!88 = !{ptr @proc_completions.__UNIQUE_ID_ddebug433, !87, !"__UNIQUE_ID_ddebug433", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 589, i32 4}
!91 = !{ptr @proc_completions.__UNIQUE_ID_ddebug434, !90, !"__UNIQUE_ID_ddebug434", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 592, i32 4}
!94 = !{ptr @proc_completions.__UNIQUE_ID_ddebug435, !93, !"__UNIQUE_ID_ddebug435", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 599, i32 3}
!97 = !{ptr @proc_completions.__UNIQUE_ID_ddebug436, !96, !"__UNIQUE_ID_ddebug436", i1 false, i1 false}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 600, i32 3}
!100 = !{ptr @proc_completions.__UNIQUE_ID_ddebug437, !99, !"__UNIQUE_ID_ddebug437", i1 false, i1 false}
!101 = !{ptr @cc_cpp_int_masks, !102, !"cc_cpp_int_masks", i1 false, i1 false}
!102 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 54, i32 18}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/crypto/ccree/cc_request_mgr.c", i32 357, i32 3}
!105 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @cc_proc_backlog.__UNIQUE_ID_ddebug432, !104, !"__UNIQUE_ID_ddebug432", i1 false, i1 false}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{i64 2148708269, i64 2148708274, i64 2148708287, i64 2148708331, i64 2148708365, i64 2148708386}
!117 = !{i64 4223709}
!118 = !{i64 2151764058}
!119 = !{i64 2151765413}
!120 = !{i64 4223291}
!121 = !{i64 2156350063}
!122 = !{i64 2156360968}
!123 = !{i8 0, i8 2}
!124 = !{i64 674459, i64 674476}
