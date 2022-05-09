; ModuleID = '/llk/IR_all_yes/drivers/scsi/elx/efct/efct_hw_queues.c_pt.bc'
source_filename = "../drivers/scsi/elx/efct/efct_hw_queues.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.efct_hw = type { ptr, %struct.sli4, i16, i16, i32, i32, i8, i8, i16, %struct.efct_hw_config, [5 x i32], [32 x %struct.sli4_queue], [32 x %struct.sli4_queue], [32 x i16], [1 x %struct.sli4_queue], [97 x %struct.sli4_queue], [16 x %struct.sli4_queue], i32, i32, i32, i32, i32, i32, %struct.list_head, [128 x %struct.efct_queue_hash], [128 x %struct.efct_queue_hash], [128 x %struct.efct_queue_hash], [32 x ptr], [32 x ptr], [1 x ptr], [97 x ptr], [16 x ptr], i32, i32, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, %struct.sli4_link_event, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.efc_dma, %struct.efc_dma, %struct.efc_dma, %struct.atomic_t, [32 x i32], [32 x i32], %struct.atomic_t, ptr }
%struct.sli4 = type { ptr, ptr, [6 x ptr], i32, i32, i32, i16, i16, i16, i16, %struct.sli4_queue_info, i16, i8, i8, [2 x i8], i16, i32, i8, [8 x i8], [8 x i8], [2 x i32], [2 x [16 x i8]], [16 x i8], [3 x i32], [64 x i8], [32 x i8], i32, i32, [5 x %struct.sli4_extent], i32, %struct.sli4_params, i32, i32, i32, ptr, ptr, %struct.efc_dma, ptr, %struct.efc_dma }
%struct.sli4_queue_info = type { [5 x i16], [5 x i32], [5 x i16], [5 x i16], [5 x i32] }
%struct.sli4_extent = type { i32, i32, i32, ptr, ptr, i32 }
%struct.sli4_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.efct_hw_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [4 x i32] }
%struct.sli4_queue = type { %struct.efc_dma, %struct.spinlock, i32, i16, i16, i16, i16, i8, ptr, i16, i32, i32, i32, i64, %union.anon.79 }
%union.anon.79 = type { i32 }
%struct.efct_queue_hash = type { i8, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sli4_link_event = type { i32, i32, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.efc_dma = type { ptr, ptr, i32, i32, i32, ptr }
%struct.hw_eq = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, %struct.list_head, i32 }
%struct.hw_rq = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.hw_cq = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, %struct.list_head, i32 }
%struct.hw_mq = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32 }
%struct.hw_wq = type { %struct.list_head, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, %struct.list_head, ptr, i32, i32 }
%struct.hw_q = type { %struct.list_head, i32 }
%struct.efc_hw_sequence = type { %struct.list_head, ptr, i8, ptr, ptr, ptr }
%struct.sli4_fc_async_rcqe = type { i8, i8, i16, i32, i16, i16, i8, i8, i8, i8 }
%struct.efc_hw_rq_buffer = type { i16, %struct.efc_dma }
%struct.sli4_fc_async_rcqe_v1 = type { i8, i8, i16, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.sli4_fc_optimized_write_cmd_cqe = type { i8, i8, i16, i8, i8, i16, i16, i16, i16, i8, i8 }
%struct.efct = type { ptr, [6 x ptr], i32, i8, i8, i8, [16 x %struct.efct_intr_context], i32, [32 x i8], i32, %struct.list_head, %struct.efct_scsi_tgt, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.efct_hw, i32, ptr, i32, %struct.xarray, i32, i32, ptr }
%struct.efct_intr_context = type { ptr, i32 }
%struct.efct_scsi_tgt = type { i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, ptr, %struct.list_head, %struct.spinlock, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@efct_hw_map_wq_cpu.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"efct\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_hw_map_wq_cpu\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/scsi/elx/efct/efct_hw_queues.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"maskp null for vector:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@efct_hw_map_wq_cpu.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CPU:%d irq vector:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@efct_hw_new_eq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 144, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EQ[%d] alloc failure\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efct_hw_new_eq\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@efct_hw_new_eq._entry_ptr = internal global ptr @efct_hw_new_eq._entry, section ".printk_index", align 4
@efct_hw_new_eq.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.9, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"create eq[%2d] id %3d len %4d\0A\00", [33 x i8] zeroinitializer }, align 32
@efct_hw_new_cq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 178, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CQ[%d] allocation failure len=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efct_hw_new_cq\00", [17 x i8] zeroinitializer }, align 32
@efct_hw_new_cq._entry_ptr = internal global ptr @efct_hw_new_cq._entry, section ".printk_index", align 4
@efct_hw_new_cq.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"create cq[%2d] id %3d len %4d\0A\00", [33 x i8] zeroinitializer }, align 32
@efct_hw_new_cq_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 223, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to create CQ Set.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_hw_new_cq_set\00", [45 x i8] zeroinitializer }, align 32
@efct_hw_new_cq_set._entry_ptr = internal global ptr @efct_hw_new_cq_set._entry, section ".printk_index", align 4
@efct_hw_new_mq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 261, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MQ allocation failure\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efct_hw_new_mq\00", [17 x i8] zeroinitializer }, align 32
@efct_hw_new_mq._entry_ptr = internal global ptr @efct_hw_new_mq._entry, section ".printk_index", align 4
@efct_hw_new_mq.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"create mq[%2d] id %3d len %4d\0A\00", [33 x i8] zeroinitializer }, align 32
@efct_hw_new_wq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 296, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WQ allocation failure\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efct_hw_new_wq\00", [17 x i8] zeroinitializer }, align 32
@efct_hw_new_wq._entry_ptr = internal global ptr @efct_hw_new_wq._entry, section ".printk_index", align 4
@efct_hw_new_wq.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"create wq[%2d] id %3d len %4d cls %d\0A\00", [58 x i8] zeroinitializer }, align 32
@efct_hw_new_rq_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 360, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RQ Set alloc failure for base CQ=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_hw_new_rq_set\00", [45 x i8] zeroinitializer }, align 32
@efct_hw_new_rq_set._entry_ptr = internal global ptr @efct_hw_new_rq_set._entry, section ".printk_index", align 4
@efct_hw_rqpair_process_rq.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"efct_hw_rqpair_process_rq\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"status=%#x: lookup fail id=%#x\0A\00", [32 x i8] zeroinitializer }, align 32
@efct_hw_rqpair_process_rq.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"status=%#x,fail rtrn buf to RQ\0A\00", [32 x i8] zeroinitializer }, align 32
@efct_hw_rqpair_process_rq.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.26, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Warning: RCQE status=%#x,\0A\00", [37 x i8] zeroinitializer }, align 32
@efct_hw_rqpair_process_rq.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.27, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error: rq_id lookup failed for id=%#x\0A\00", [57 x i8] zeroinitializer }, align 32
@efct_hw_rqpair_sequence_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 664, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error writing buffers\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"efct_hw_rqpair_sequence_free\00", [35 x i8] zeroinitializer }, align 32
@efct_hw_rqpair_sequence_free._entry_ptr = internal global ptr @efct_hw_rqpair_sequence_free._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@efct_hw_rqpair_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 500, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"RQidx %d bufidx %d exceed ring len %d for id %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_hw_rqpair_get\00", [45 x i8] zeroinitializer }, align 32
@efct_hw_rqpair_get._entry_ptr = internal global ptr @efct_hw_rqpair_get._entry, section ".printk_index", align 4
@efct_hw_rqpair_get._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 513, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"RQbuf NULL, rqidx %d, bufidx %d, cur q idx = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@efct_hw_rqpair_get._entry_ptr.34 = internal global ptr @efct_hw_rqpair_get._entry.32, section ".printk_index", align 4
@efct_hw_rqpair_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 633, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RQ_ID=%#x write failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_hw_rqpair_put\00", [45 x i8] zeroinitializer }, align 32
@efct_hw_rqpair_put._entry_ptr = internal global ptr @efct_hw_rqpair_put._entry, section ".printk_index", align 4
@efct_hw_rqpair_put.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"expected rq_tracker[%d][%d] buffer to be NULL\0A\00", [49 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.38 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 9, i64 11]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 113, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 119, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 144, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 153, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 177, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 186, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 223, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 261, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 269, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 296, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 304, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 359, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 542, i32 5 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 553, i32 5 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 565, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 576, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 664, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 498, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 511, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 633, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [42 x i8] c"../drivers/scsi/elx/efct/efct_hw_queues.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 645, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @efct_hw_new_cq._entry, ptr @efct_hw_new_cq._entry_ptr, ptr @efct_hw_new_cq_set._entry, ptr @efct_hw_new_cq_set._entry_ptr, ptr @efct_hw_new_eq._entry, ptr @efct_hw_new_eq._entry_ptr, ptr @efct_hw_new_mq._entry, ptr @efct_hw_new_mq._entry_ptr, ptr @efct_hw_new_rq_set._entry, ptr @efct_hw_new_rq_set._entry_ptr, ptr @efct_hw_new_wq._entry, ptr @efct_hw_new_wq._entry_ptr, ptr @efct_hw_rqpair_get._entry, ptr @efct_hw_rqpair_get._entry.32, ptr @efct_hw_rqpair_get._entry_ptr, ptr @efct_hw_rqpair_get._entry_ptr.34, ptr @efct_hw_rqpair_put._entry, ptr @efct_hw_rqpair_put._entry_ptr, ptr @efct_hw_rqpair_sequence_free._entry, ptr @efct_hw_rqpair_sequence_free._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_new_eq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_new_cq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_new_cq_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_new_mq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_new_wq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_new_rq_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_rqpair_sequence_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_rqpair_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_rqpair_get._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_rqpair_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_init_queues(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %eqs = alloca [16 x ptr], align 4
  %cqs = alloca [16 x ptr], align 4
  %rqs = alloca [16 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %eqs) #8
  %0 = call ptr @memset(ptr %eqs, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cqs) #8
  %1 = call ptr @memset(ptr %cqs, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rqs) #8
  %2 = call ptr @memset(ptr %rqs, i32 255, i32 64)
  %eq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 17
  %hw_rq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 32
  %3 = ptrtoint ptr %hw_rq_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %hw_rq_count, align 8
  %eq_list = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 23
  %4 = call ptr @memset(ptr %eq_count, i32 0, i32 20)
  %5 = ptrtoint ptr %eq_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %eq_list, ptr %eq_list, align 4
  %prev.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 23, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %eq_list, ptr %prev.i, align 4
  %config = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 9
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp272.not = icmp eq i32 %8, 0
  br i1 %cmp272.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx3 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 10, i32 1
  %arrayidx20 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 10, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0273 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call ptr @efct_hw_new_eq(ptr noundef %hw, i32 noundef 1024)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = ptrtoint ptr %eq_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %eq_list, align 8
  %tobool.not.i = icmp eq ptr %10, null
  %cmp.not20.i = icmp eq ptr %10, %eq_list
  %or.cond.i = or i1 %tobool.not.i, %cmp.not20.i
  br i1 %or.cond.i, label %if.then.cleanup_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %efct_hw_del_eq.exit.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %eq.021.i = phi ptr [ %eq_next.0.i, %efct_hw_del_eq.exit.i.for.body.i_crit_edge ], [ %10, %if.then.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %eq.021.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %eq_next.0.i = load ptr, ptr %eq.021.i, align 4
  %tobool.not.i.i = icmp eq ptr %eq.021.i, null
  br i1 %tobool.not.i.i, label %for.body.i.efct_hw_del_eq.exit.i_crit_edge, label %if.end.i.i

for.body.i.efct_hw_del_eq.exit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efct_hw_del_eq.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %cq_list.i.i = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i, i32 0, i32 7
  %12 = ptrtoint ptr %cq_list.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cq_list.i.i, align 4
  %cmp.not23.i.i = icmp eq ptr %13, %cq_list.i.i
  br i1 %cmp.not23.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %cq.024.i.i = phi ptr [ %cq_next.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %13, %if.end.i.i.for.body.i.i_crit_edge ]
  %14 = ptrtoint ptr %cq.024.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %cq_next.0.i.i = load ptr, ptr %cq.024.i.i, align 4
  tail call void @efct_hw_del_cq(ptr noundef %cq.024.i.i) #8
  %cmp.not.i.i = icmp eq ptr %cq_next.0.i.i, %cq_list.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %eq.021.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.end.i.i.list_del.exit.i.i_crit_edge

for.end.i.i.list_del.exit.i.i_crit_edge:          ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %eq.021.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i.i, align 4
  %17 = ptrtoint ptr %eq.021.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %eq.021.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.end.i.i.list_del.exit.i.i_crit_edge
  %21 = ptrtoint ptr %eq.021.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %eq.021.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %eq.021.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %hw.i.i = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i, i32 0, i32 5
  %23 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw.i.i, align 4
  %instance.i.i = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i, i32 0, i32 2
  %25 = ptrtoint ptr %instance.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %instance.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.efct_hw, ptr %24, i32 0, i32 31, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %eq.021.i) #8
  br label %efct_hw_del_eq.exit.i

efct_hw_del_eq.exit.i:                            ; preds = %list_del.exit.i.i, %for.body.i.efct_hw_del_eq.exit.i_crit_edge
  %cmp.not.i = icmp eq ptr %eq_next.0.i, %eq_list
  br i1 %cmp.not.i, label %efct_hw_del_eq.exit.i.cleanup_crit_edge, label %efct_hw_del_eq.exit.i.for.body.i_crit_edge

efct_hw_del_eq.exit.i.for.body.i_crit_edge:       ; preds = %efct_hw_del_eq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

efct_hw_del_eq.exit.i.cleanup_crit_edge:          ; preds = %efct_hw_del_eq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [16 x ptr], ptr %eqs, i32 0, i32 %i.0273
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0273)
  %tobool1.not = icmp eq i32 %i.0273, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then2:                                         ; preds = %if.end
  %29 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx3, align 4
  %call4 = tail call ptr @efct_hw_new_cq(ptr noundef nonnull %call, i32 noundef %30)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then2
  %31 = ptrtoint ptr %eq_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %eq_list, align 8
  %tobool.not.i94 = icmp eq ptr %32, null
  %cmp.not20.i95 = icmp eq ptr %32, %eq_list
  %or.cond.i96 = or i1 %tobool.not.i94, %cmp.not20.i95
  br i1 %or.cond.i96, label %if.then6.cleanup_crit_edge, label %if.then6.for.body.i100_crit_edge

if.then6.for.body.i100_crit_edge:                 ; preds = %if.then6
  br label %for.body.i100

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i100:                                    ; preds = %efct_hw_del_eq.exit.i119.for.body.i100_crit_edge, %if.then6.for.body.i100_crit_edge
  %eq.021.i97 = phi ptr [ %eq_next.0.i98, %efct_hw_del_eq.exit.i119.for.body.i100_crit_edge ], [ %32, %if.then6.for.body.i100_crit_edge ]
  %33 = ptrtoint ptr %eq.021.i97 to i32
  call void @__asan_load4_noabort(i32 %33)
  %eq_next.0.i98 = load ptr, ptr %eq.021.i97, align 4
  %tobool.not.i.i99 = icmp eq ptr %eq.021.i97, null
  br i1 %tobool.not.i.i99, label %for.body.i100.efct_hw_del_eq.exit.i119_crit_edge, label %if.end.i.i103

for.body.i100.efct_hw_del_eq.exit.i119_crit_edge: ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %efct_hw_del_eq.exit.i119

if.end.i.i103:                                    ; preds = %for.body.i100
  %cq_list.i.i101 = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i97, i32 0, i32 7
  %34 = ptrtoint ptr %cq_list.i.i101 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cq_list.i.i101, align 4
  %cmp.not23.i.i102 = icmp eq ptr %35, %cq_list.i.i101
  br i1 %cmp.not23.i.i102, label %if.end.i.i103.for.end.i.i109_crit_edge, label %if.end.i.i103.for.body.i.i107_crit_edge

if.end.i.i103.for.body.i.i107_crit_edge:          ; preds = %if.end.i.i103
  br label %for.body.i.i107

if.end.i.i103.for.end.i.i109_crit_edge:           ; preds = %if.end.i.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i109

for.body.i.i107:                                  ; preds = %for.body.i.i107.for.body.i.i107_crit_edge, %if.end.i.i103.for.body.i.i107_crit_edge
  %cq.024.i.i104 = phi ptr [ %cq_next.0.i.i105, %for.body.i.i107.for.body.i.i107_crit_edge ], [ %35, %if.end.i.i103.for.body.i.i107_crit_edge ]
  %36 = ptrtoint ptr %cq.024.i.i104 to i32
  call void @__asan_load4_noabort(i32 %36)
  %cq_next.0.i.i105 = load ptr, ptr %cq.024.i.i104, align 4
  tail call void @efct_hw_del_cq(ptr noundef %cq.024.i.i104) #8
  %cmp.not.i.i106 = icmp eq ptr %cq_next.0.i.i105, %cq_list.i.i101
  br i1 %cmp.not.i.i106, label %for.body.i.i107.for.end.i.i109_crit_edge, label %for.body.i.i107.for.body.i.i107_crit_edge

for.body.i.i107.for.body.i.i107_crit_edge:        ; preds = %for.body.i.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i107

for.body.i.i107.for.end.i.i109_crit_edge:         ; preds = %for.body.i.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i109

for.end.i.i109:                                   ; preds = %for.body.i.i107.for.end.i.i109_crit_edge, %if.end.i.i103.for.end.i.i109_crit_edge
  %call.i.i.i.i108 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %eq.021.i97) #8
  br i1 %call.i.i.i.i108, label %if.end.i.i.i.i112, label %for.end.i.i109.list_del.exit.i.i117_crit_edge

for.end.i.i109.list_del.exit.i.i117_crit_edge:    ; preds = %for.end.i.i109
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.i117

if.end.i.i.i.i112:                                ; preds = %for.end.i.i109
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i110 = getelementptr inbounds %struct.list_head, ptr %eq.021.i97, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i.i110 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i.i110, align 4
  %39 = ptrtoint ptr %eq.021.i97 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %eq.021.i97, align 4
  %prev1.i.i.i.i.i111 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i.i111 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i.i111, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit.i.i117

list_del.exit.i.i117:                             ; preds = %if.end.i.i.i.i112, %for.end.i.i109.list_del.exit.i.i117_crit_edge
  %43 = ptrtoint ptr %eq.021.i97 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %eq.021.i97, align 4
  %prev.i.i.i113 = getelementptr inbounds %struct.list_head, ptr %eq.021.i97, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i.i113 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i113, align 4
  %hw.i.i114 = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i97, i32 0, i32 5
  %45 = ptrtoint ptr %hw.i.i114 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw.i.i114, align 4
  %instance.i.i115 = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i97, i32 0, i32 2
  %47 = ptrtoint ptr %instance.i.i115 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %instance.i.i115, align 4
  %arrayidx.i.i116 = getelementptr %struct.efct_hw, ptr %46, i32 0, i32 31, i32 %48
  %49 = ptrtoint ptr %arrayidx.i.i116 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %arrayidx.i.i116, align 4
  tail call void @kfree(ptr noundef nonnull %eq.021.i97) #8
  br label %efct_hw_del_eq.exit.i119

efct_hw_del_eq.exit.i119:                         ; preds = %list_del.exit.i.i117, %for.body.i100.efct_hw_del_eq.exit.i119_crit_edge
  %cmp.not.i118 = icmp eq ptr %eq_next.0.i98, %eq_list
  br i1 %cmp.not.i118, label %efct_hw_del_eq.exit.i119.cleanup_crit_edge, label %efct_hw_del_eq.exit.i119.for.body.i100_crit_edge

efct_hw_del_eq.exit.i119.for.body.i100_crit_edge: ; preds = %efct_hw_del_eq.exit.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i100

efct_hw_del_eq.exit.i119.cleanup_crit_edge:       ; preds = %efct_hw_del_eq.exit.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.then2
  %call8 = tail call ptr @efct_hw_new_mq(ptr noundef nonnull %call4, i32 noundef 128)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  %50 = ptrtoint ptr %eq_list to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %eq_list, align 8
  %tobool.not.i122 = icmp eq ptr %51, null
  %cmp.not20.i123 = icmp eq ptr %51, %eq_list
  %or.cond.i124 = or i1 %tobool.not.i122, %cmp.not20.i123
  br i1 %or.cond.i124, label %if.then10.cleanup_crit_edge, label %if.then10.for.body.i128_crit_edge

if.then10.for.body.i128_crit_edge:                ; preds = %if.then10
  br label %for.body.i128

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i128:                                    ; preds = %efct_hw_del_eq.exit.i147.for.body.i128_crit_edge, %if.then10.for.body.i128_crit_edge
  %eq.021.i125 = phi ptr [ %eq_next.0.i126, %efct_hw_del_eq.exit.i147.for.body.i128_crit_edge ], [ %51, %if.then10.for.body.i128_crit_edge ]
  %52 = ptrtoint ptr %eq.021.i125 to i32
  call void @__asan_load4_noabort(i32 %52)
  %eq_next.0.i126 = load ptr, ptr %eq.021.i125, align 4
  %tobool.not.i.i127 = icmp eq ptr %eq.021.i125, null
  br i1 %tobool.not.i.i127, label %for.body.i128.efct_hw_del_eq.exit.i147_crit_edge, label %if.end.i.i131

for.body.i128.efct_hw_del_eq.exit.i147_crit_edge: ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #10
  br label %efct_hw_del_eq.exit.i147

if.end.i.i131:                                    ; preds = %for.body.i128
  %cq_list.i.i129 = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i125, i32 0, i32 7
  %53 = ptrtoint ptr %cq_list.i.i129 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cq_list.i.i129, align 4
  %cmp.not23.i.i130 = icmp eq ptr %54, %cq_list.i.i129
  br i1 %cmp.not23.i.i130, label %if.end.i.i131.for.end.i.i137_crit_edge, label %if.end.i.i131.for.body.i.i135_crit_edge

if.end.i.i131.for.body.i.i135_crit_edge:          ; preds = %if.end.i.i131
  br label %for.body.i.i135

if.end.i.i131.for.end.i.i137_crit_edge:           ; preds = %if.end.i.i131
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i137

for.body.i.i135:                                  ; preds = %for.body.i.i135.for.body.i.i135_crit_edge, %if.end.i.i131.for.body.i.i135_crit_edge
  %cq.024.i.i132 = phi ptr [ %cq_next.0.i.i133, %for.body.i.i135.for.body.i.i135_crit_edge ], [ %54, %if.end.i.i131.for.body.i.i135_crit_edge ]
  %55 = ptrtoint ptr %cq.024.i.i132 to i32
  call void @__asan_load4_noabort(i32 %55)
  %cq_next.0.i.i133 = load ptr, ptr %cq.024.i.i132, align 4
  tail call void @efct_hw_del_cq(ptr noundef %cq.024.i.i132) #8
  %cmp.not.i.i134 = icmp eq ptr %cq_next.0.i.i133, %cq_list.i.i129
  br i1 %cmp.not.i.i134, label %for.body.i.i135.for.end.i.i137_crit_edge, label %for.body.i.i135.for.body.i.i135_crit_edge

for.body.i.i135.for.body.i.i135_crit_edge:        ; preds = %for.body.i.i135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i135

for.body.i.i135.for.end.i.i137_crit_edge:         ; preds = %for.body.i.i135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i137

for.end.i.i137:                                   ; preds = %for.body.i.i135.for.end.i.i137_crit_edge, %if.end.i.i131.for.end.i.i137_crit_edge
  %call.i.i.i.i136 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %eq.021.i125) #8
  br i1 %call.i.i.i.i136, label %if.end.i.i.i.i140, label %for.end.i.i137.list_del.exit.i.i145_crit_edge

for.end.i.i137.list_del.exit.i.i145_crit_edge:    ; preds = %for.end.i.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.i145

if.end.i.i.i.i140:                                ; preds = %for.end.i.i137
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i138 = getelementptr inbounds %struct.list_head, ptr %eq.021.i125, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i.i.i138 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i.i.i138, align 4
  %58 = ptrtoint ptr %eq.021.i125 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %eq.021.i125, align 4
  %prev1.i.i.i.i.i139 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i.i.i139 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i.i.i139, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %list_del.exit.i.i145

list_del.exit.i.i145:                             ; preds = %if.end.i.i.i.i140, %for.end.i.i137.list_del.exit.i.i145_crit_edge
  %62 = ptrtoint ptr %eq.021.i125 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 256 to ptr), ptr %eq.021.i125, align 4
  %prev.i.i.i141 = getelementptr inbounds %struct.list_head, ptr %eq.021.i125, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i.i141 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i141, align 4
  %hw.i.i142 = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i125, i32 0, i32 5
  %64 = ptrtoint ptr %hw.i.i142 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw.i.i142, align 4
  %instance.i.i143 = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i125, i32 0, i32 2
  %66 = ptrtoint ptr %instance.i.i143 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %instance.i.i143, align 4
  %arrayidx.i.i144 = getelementptr %struct.efct_hw, ptr %65, i32 0, i32 31, i32 %67
  %68 = ptrtoint ptr %arrayidx.i.i144 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %arrayidx.i.i144, align 4
  tail call void @kfree(ptr noundef nonnull %eq.021.i125) #8
  br label %efct_hw_del_eq.exit.i147

efct_hw_del_eq.exit.i147:                         ; preds = %list_del.exit.i.i145, %for.body.i128.efct_hw_del_eq.exit.i147_crit_edge
  %cmp.not.i146 = icmp eq ptr %eq_next.0.i126, %eq_list
  br i1 %cmp.not.i146, label %efct_hw_del_eq.exit.i147.cleanup_crit_edge, label %efct_hw_del_eq.exit.i147.for.body.i128_crit_edge

efct_hw_del_eq.exit.i147.for.body.i128_crit_edge: ; preds = %efct_hw_del_eq.exit.i147
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i128

efct_hw_del_eq.exit.i147.cleanup_crit_edge:       ; preds = %efct_hw_del_eq.exit.i147
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end7.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %69 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx3, align 4
  %call15 = tail call ptr @efct_hw_new_cq(ptr noundef nonnull %call, i32 noundef %70)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  %71 = ptrtoint ptr %eq_list to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %eq_list, align 8
  %tobool.not.i150 = icmp eq ptr %72, null
  %cmp.not20.i151 = icmp eq ptr %72, %eq_list
  %or.cond.i152 = or i1 %tobool.not.i150, %cmp.not20.i151
  br i1 %or.cond.i152, label %if.then17.cleanup_crit_edge, label %if.then17.for.body.i156_crit_edge

if.then17.for.body.i156_crit_edge:                ; preds = %if.then17
  br label %for.body.i156

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i156:                                    ; preds = %efct_hw_del_eq.exit.i175.for.body.i156_crit_edge, %if.then17.for.body.i156_crit_edge
  %eq.021.i153 = phi ptr [ %eq_next.0.i154, %efct_hw_del_eq.exit.i175.for.body.i156_crit_edge ], [ %72, %if.then17.for.body.i156_crit_edge ]
  %73 = ptrtoint ptr %eq.021.i153 to i32
  call void @__asan_load4_noabort(i32 %73)
  %eq_next.0.i154 = load ptr, ptr %eq.021.i153, align 4
  %tobool.not.i.i155 = icmp eq ptr %eq.021.i153, null
  br i1 %tobool.not.i.i155, label %for.body.i156.efct_hw_del_eq.exit.i175_crit_edge, label %if.end.i.i159

for.body.i156.efct_hw_del_eq.exit.i175_crit_edge: ; preds = %for.body.i156
  call void @__sanitizer_cov_trace_pc() #10
  br label %efct_hw_del_eq.exit.i175

if.end.i.i159:                                    ; preds = %for.body.i156
  %cq_list.i.i157 = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i153, i32 0, i32 7
  %74 = ptrtoint ptr %cq_list.i.i157 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cq_list.i.i157, align 4
  %cmp.not23.i.i158 = icmp eq ptr %75, %cq_list.i.i157
  br i1 %cmp.not23.i.i158, label %if.end.i.i159.for.end.i.i165_crit_edge, label %if.end.i.i159.for.body.i.i163_crit_edge

if.end.i.i159.for.body.i.i163_crit_edge:          ; preds = %if.end.i.i159
  br label %for.body.i.i163

if.end.i.i159.for.end.i.i165_crit_edge:           ; preds = %if.end.i.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i165

for.body.i.i163:                                  ; preds = %for.body.i.i163.for.body.i.i163_crit_edge, %if.end.i.i159.for.body.i.i163_crit_edge
  %cq.024.i.i160 = phi ptr [ %cq_next.0.i.i161, %for.body.i.i163.for.body.i.i163_crit_edge ], [ %75, %if.end.i.i159.for.body.i.i163_crit_edge ]
  %76 = ptrtoint ptr %cq.024.i.i160 to i32
  call void @__asan_load4_noabort(i32 %76)
  %cq_next.0.i.i161 = load ptr, ptr %cq.024.i.i160, align 4
  tail call void @efct_hw_del_cq(ptr noundef %cq.024.i.i160) #8
  %cmp.not.i.i162 = icmp eq ptr %cq_next.0.i.i161, %cq_list.i.i157
  br i1 %cmp.not.i.i162, label %for.body.i.i163.for.end.i.i165_crit_edge, label %for.body.i.i163.for.body.i.i163_crit_edge

for.body.i.i163.for.body.i.i163_crit_edge:        ; preds = %for.body.i.i163
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i163

for.body.i.i163.for.end.i.i165_crit_edge:         ; preds = %for.body.i.i163
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i165

for.end.i.i165:                                   ; preds = %for.body.i.i163.for.end.i.i165_crit_edge, %if.end.i.i159.for.end.i.i165_crit_edge
  %call.i.i.i.i164 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %eq.021.i153) #8
  br i1 %call.i.i.i.i164, label %if.end.i.i.i.i168, label %for.end.i.i165.list_del.exit.i.i173_crit_edge

for.end.i.i165.list_del.exit.i.i173_crit_edge:    ; preds = %for.end.i.i165
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.i173

if.end.i.i.i.i168:                                ; preds = %for.end.i.i165
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i166 = getelementptr inbounds %struct.list_head, ptr %eq.021.i153, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i.i.i166, align 4
  %79 = ptrtoint ptr %eq.021.i153 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %eq.021.i153, align 4
  %prev1.i.i.i.i.i167 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev1.i.i.i.i.i167 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev1.i.i.i.i.i167, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %80, ptr %78, align 4
  br label %list_del.exit.i.i173

list_del.exit.i.i173:                             ; preds = %if.end.i.i.i.i168, %for.end.i.i165.list_del.exit.i.i173_crit_edge
  %83 = ptrtoint ptr %eq.021.i153 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 256 to ptr), ptr %eq.021.i153, align 4
  %prev.i.i.i169 = getelementptr inbounds %struct.list_head, ptr %eq.021.i153, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i.i.i169 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i169, align 4
  %hw.i.i170 = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i153, i32 0, i32 5
  %85 = ptrtoint ptr %hw.i.i170 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw.i.i170, align 4
  %instance.i.i171 = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i153, i32 0, i32 2
  %87 = ptrtoint ptr %instance.i.i171 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %instance.i.i171, align 4
  %arrayidx.i.i172 = getelementptr %struct.efct_hw, ptr %86, i32 0, i32 31, i32 %88
  %89 = ptrtoint ptr %arrayidx.i.i172 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %arrayidx.i.i172, align 4
  tail call void @kfree(ptr noundef nonnull %eq.021.i153) #8
  br label %efct_hw_del_eq.exit.i175

efct_hw_del_eq.exit.i175:                         ; preds = %list_del.exit.i.i173, %for.body.i156.efct_hw_del_eq.exit.i175_crit_edge
  %cmp.not.i174 = icmp eq ptr %eq_next.0.i154, %eq_list
  br i1 %cmp.not.i174, label %efct_hw_del_eq.exit.i175.cleanup_crit_edge, label %efct_hw_del_eq.exit.i175.for.body.i156_crit_edge

efct_hw_del_eq.exit.i175.for.body.i156_crit_edge: ; preds = %efct_hw_del_eq.exit.i175
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i156

efct_hw_del_eq.exit.i175.cleanup_crit_edge:       ; preds = %efct_hw_del_eq.exit.i175
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %90 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx20, align 4
  %call21 = tail call ptr @efct_hw_new_wq(ptr noundef nonnull %call15, i32 noundef %91)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.then23, label %for.inc

if.then23:                                        ; preds = %if.end18
  %92 = ptrtoint ptr %eq_list to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %eq_list, align 8
  %tobool.not.i178 = icmp eq ptr %93, null
  %cmp.not20.i179 = icmp eq ptr %93, %eq_list
  %or.cond.i180 = or i1 %tobool.not.i178, %cmp.not20.i179
  br i1 %or.cond.i180, label %if.then23.cleanup_crit_edge, label %if.then23.for.body.i184_crit_edge

if.then23.for.body.i184_crit_edge:                ; preds = %if.then23
  br label %for.body.i184

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i184:                                    ; preds = %efct_hw_del_eq.exit.i203.for.body.i184_crit_edge, %if.then23.for.body.i184_crit_edge
  %eq.021.i181 = phi ptr [ %eq_next.0.i182, %efct_hw_del_eq.exit.i203.for.body.i184_crit_edge ], [ %93, %if.then23.for.body.i184_crit_edge ]
  %94 = ptrtoint ptr %eq.021.i181 to i32
  call void @__asan_load4_noabort(i32 %94)
  %eq_next.0.i182 = load ptr, ptr %eq.021.i181, align 4
  %tobool.not.i.i183 = icmp eq ptr %eq.021.i181, null
  br i1 %tobool.not.i.i183, label %for.body.i184.efct_hw_del_eq.exit.i203_crit_edge, label %if.end.i.i187

for.body.i184.efct_hw_del_eq.exit.i203_crit_edge: ; preds = %for.body.i184
  call void @__sanitizer_cov_trace_pc() #10
  br label %efct_hw_del_eq.exit.i203

if.end.i.i187:                                    ; preds = %for.body.i184
  %cq_list.i.i185 = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i181, i32 0, i32 7
  %95 = ptrtoint ptr %cq_list.i.i185 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cq_list.i.i185, align 4
  %cmp.not23.i.i186 = icmp eq ptr %96, %cq_list.i.i185
  br i1 %cmp.not23.i.i186, label %if.end.i.i187.for.end.i.i193_crit_edge, label %if.end.i.i187.for.body.i.i191_crit_edge

if.end.i.i187.for.body.i.i191_crit_edge:          ; preds = %if.end.i.i187
  br label %for.body.i.i191

if.end.i.i187.for.end.i.i193_crit_edge:           ; preds = %if.end.i.i187
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i193

for.body.i.i191:                                  ; preds = %for.body.i.i191.for.body.i.i191_crit_edge, %if.end.i.i187.for.body.i.i191_crit_edge
  %cq.024.i.i188 = phi ptr [ %cq_next.0.i.i189, %for.body.i.i191.for.body.i.i191_crit_edge ], [ %96, %if.end.i.i187.for.body.i.i191_crit_edge ]
  %97 = ptrtoint ptr %cq.024.i.i188 to i32
  call void @__asan_load4_noabort(i32 %97)
  %cq_next.0.i.i189 = load ptr, ptr %cq.024.i.i188, align 4
  tail call void @efct_hw_del_cq(ptr noundef %cq.024.i.i188) #8
  %cmp.not.i.i190 = icmp eq ptr %cq_next.0.i.i189, %cq_list.i.i185
  br i1 %cmp.not.i.i190, label %for.body.i.i191.for.end.i.i193_crit_edge, label %for.body.i.i191.for.body.i.i191_crit_edge

for.body.i.i191.for.body.i.i191_crit_edge:        ; preds = %for.body.i.i191
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i191

for.body.i.i191.for.end.i.i193_crit_edge:         ; preds = %for.body.i.i191
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i193

for.end.i.i193:                                   ; preds = %for.body.i.i191.for.end.i.i193_crit_edge, %if.end.i.i187.for.end.i.i193_crit_edge
  %call.i.i.i.i192 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %eq.021.i181) #8
  br i1 %call.i.i.i.i192, label %if.end.i.i.i.i196, label %for.end.i.i193.list_del.exit.i.i201_crit_edge

for.end.i.i193.list_del.exit.i.i201_crit_edge:    ; preds = %for.end.i.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.i201

if.end.i.i.i.i196:                                ; preds = %for.end.i.i193
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i194 = getelementptr inbounds %struct.list_head, ptr %eq.021.i181, i32 0, i32 1
  %98 = ptrtoint ptr %prev.i.i.i.i194 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %prev.i.i.i.i194, align 4
  %100 = ptrtoint ptr %eq.021.i181 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %eq.021.i181, align 4
  %prev1.i.i.i.i.i195 = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %prev1.i.i.i.i.i195 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %99, ptr %prev1.i.i.i.i.i195, align 4
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %101, ptr %99, align 4
  br label %list_del.exit.i.i201

list_del.exit.i.i201:                             ; preds = %if.end.i.i.i.i196, %for.end.i.i193.list_del.exit.i.i201_crit_edge
  %104 = ptrtoint ptr %eq.021.i181 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr inttoptr (i32 256 to ptr), ptr %eq.021.i181, align 4
  %prev.i.i.i197 = getelementptr inbounds %struct.list_head, ptr %eq.021.i181, i32 0, i32 1
  %105 = ptrtoint ptr %prev.i.i.i197 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i197, align 4
  %hw.i.i198 = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i181, i32 0, i32 5
  %106 = ptrtoint ptr %hw.i.i198 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw.i.i198, align 4
  %instance.i.i199 = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i181, i32 0, i32 2
  %108 = ptrtoint ptr %instance.i.i199 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %instance.i.i199, align 4
  %arrayidx.i.i200 = getelementptr %struct.efct_hw, ptr %107, i32 0, i32 31, i32 %109
  %110 = ptrtoint ptr %arrayidx.i.i200 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %arrayidx.i.i200, align 4
  tail call void @kfree(ptr noundef nonnull %eq.021.i181) #8
  br label %efct_hw_del_eq.exit.i203

efct_hw_del_eq.exit.i203:                         ; preds = %list_del.exit.i.i201, %for.body.i184.efct_hw_del_eq.exit.i203_crit_edge
  %cmp.not.i202 = icmp eq ptr %eq_next.0.i182, %eq_list
  br i1 %cmp.not.i202, label %efct_hw_del_eq.exit.i203.cleanup_crit_edge, label %efct_hw_del_eq.exit.i203.for.body.i184_crit_edge

efct_hw_del_eq.exit.i203.for.body.i184_crit_edge: ; preds = %efct_hw_del_eq.exit.i203
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i184

efct_hw_del_eq.exit.i203.cleanup_crit_edge:       ; preds = %efct_hw_del_eq.exit.i203
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %if.end18
  %inc = add nuw i32 %i.0273, 1
  %111 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %config, align 8
  %cmp = icmp ult i32 %inc, %112
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %arrayidx27 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 10, i32 1
  %113 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx27, align 4
  %call28 = call i32 @efct_hw_new_cq_set(ptr noundef nonnull %eqs, ptr noundef nonnull %cqs, i32 noundef %i.0.lcssa, i32 noundef %114)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %for.end
  %115 = ptrtoint ptr %eq_list to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %eq_list, align 8
  %tobool.not.i206 = icmp eq ptr %116, null
  %cmp.not20.i207 = icmp eq ptr %116, %eq_list
  %or.cond.i208 = or i1 %tobool.not.i206, %cmp.not20.i207
  br i1 %or.cond.i208, label %if.then30.cleanup_crit_edge, label %if.then30.for.body.i212_crit_edge

if.then30.for.body.i212_crit_edge:                ; preds = %if.then30
  br label %for.body.i212

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i212:                                    ; preds = %efct_hw_del_eq.exit.i231.for.body.i212_crit_edge, %if.then30.for.body.i212_crit_edge
  %eq.021.i209 = phi ptr [ %eq_next.0.i210, %efct_hw_del_eq.exit.i231.for.body.i212_crit_edge ], [ %116, %if.then30.for.body.i212_crit_edge ]
  %117 = ptrtoint ptr %eq.021.i209 to i32
  call void @__asan_load4_noabort(i32 %117)
  %eq_next.0.i210 = load ptr, ptr %eq.021.i209, align 4
  %tobool.not.i.i211 = icmp eq ptr %eq.021.i209, null
  br i1 %tobool.not.i.i211, label %for.body.i212.efct_hw_del_eq.exit.i231_crit_edge, label %if.end.i.i215

for.body.i212.efct_hw_del_eq.exit.i231_crit_edge: ; preds = %for.body.i212
  call void @__sanitizer_cov_trace_pc() #10
  br label %efct_hw_del_eq.exit.i231

if.end.i.i215:                                    ; preds = %for.body.i212
  %cq_list.i.i213 = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i209, i32 0, i32 7
  %118 = ptrtoint ptr %cq_list.i.i213 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cq_list.i.i213, align 4
  %cmp.not23.i.i214 = icmp eq ptr %119, %cq_list.i.i213
  br i1 %cmp.not23.i.i214, label %if.end.i.i215.for.end.i.i221_crit_edge, label %if.end.i.i215.for.body.i.i219_crit_edge

if.end.i.i215.for.body.i.i219_crit_edge:          ; preds = %if.end.i.i215
  br label %for.body.i.i219

if.end.i.i215.for.end.i.i221_crit_edge:           ; preds = %if.end.i.i215
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i221

for.body.i.i219:                                  ; preds = %for.body.i.i219.for.body.i.i219_crit_edge, %if.end.i.i215.for.body.i.i219_crit_edge
  %cq.024.i.i216 = phi ptr [ %cq_next.0.i.i217, %for.body.i.i219.for.body.i.i219_crit_edge ], [ %119, %if.end.i.i215.for.body.i.i219_crit_edge ]
  %120 = ptrtoint ptr %cq.024.i.i216 to i32
  call void @__asan_load4_noabort(i32 %120)
  %cq_next.0.i.i217 = load ptr, ptr %cq.024.i.i216, align 4
  tail call void @efct_hw_del_cq(ptr noundef %cq.024.i.i216) #8
  %cmp.not.i.i218 = icmp eq ptr %cq_next.0.i.i217, %cq_list.i.i213
  br i1 %cmp.not.i.i218, label %for.body.i.i219.for.end.i.i221_crit_edge, label %for.body.i.i219.for.body.i.i219_crit_edge

for.body.i.i219.for.body.i.i219_crit_edge:        ; preds = %for.body.i.i219
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i219

for.body.i.i219.for.end.i.i221_crit_edge:         ; preds = %for.body.i.i219
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i221

for.end.i.i221:                                   ; preds = %for.body.i.i219.for.end.i.i221_crit_edge, %if.end.i.i215.for.end.i.i221_crit_edge
  %call.i.i.i.i220 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %eq.021.i209) #8
  br i1 %call.i.i.i.i220, label %if.end.i.i.i.i224, label %for.end.i.i221.list_del.exit.i.i229_crit_edge

for.end.i.i221.list_del.exit.i.i229_crit_edge:    ; preds = %for.end.i.i221
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.i229

if.end.i.i.i.i224:                                ; preds = %for.end.i.i221
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i222 = getelementptr inbounds %struct.list_head, ptr %eq.021.i209, i32 0, i32 1
  %121 = ptrtoint ptr %prev.i.i.i.i222 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %prev.i.i.i.i222, align 4
  %123 = ptrtoint ptr %eq.021.i209 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %eq.021.i209, align 4
  %prev1.i.i.i.i.i223 = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %prev1.i.i.i.i.i223 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %122, ptr %prev1.i.i.i.i.i223, align 4
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %124, ptr %122, align 4
  br label %list_del.exit.i.i229

list_del.exit.i.i229:                             ; preds = %if.end.i.i.i.i224, %for.end.i.i221.list_del.exit.i.i229_crit_edge
  %127 = ptrtoint ptr %eq.021.i209 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr inttoptr (i32 256 to ptr), ptr %eq.021.i209, align 4
  %prev.i.i.i225 = getelementptr inbounds %struct.list_head, ptr %eq.021.i209, i32 0, i32 1
  %128 = ptrtoint ptr %prev.i.i.i225 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i225, align 4
  %hw.i.i226 = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i209, i32 0, i32 5
  %129 = ptrtoint ptr %hw.i.i226 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hw.i.i226, align 4
  %instance.i.i227 = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i209, i32 0, i32 2
  %131 = ptrtoint ptr %instance.i.i227 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %instance.i.i227, align 4
  %arrayidx.i.i228 = getelementptr %struct.efct_hw, ptr %130, i32 0, i32 31, i32 %132
  %133 = ptrtoint ptr %arrayidx.i.i228 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %arrayidx.i.i228, align 4
  tail call void @kfree(ptr noundef nonnull %eq.021.i209) #8
  br label %efct_hw_del_eq.exit.i231

efct_hw_del_eq.exit.i231:                         ; preds = %list_del.exit.i.i229, %for.body.i212.efct_hw_del_eq.exit.i231_crit_edge
  %cmp.not.i230 = icmp eq ptr %eq_next.0.i210, %eq_list
  br i1 %cmp.not.i230, label %efct_hw_del_eq.exit.i231.cleanup_crit_edge, label %efct_hw_del_eq.exit.i231.for.body.i212_crit_edge

efct_hw_del_eq.exit.i231.for.body.i212_crit_edge: ; preds = %efct_hw_del_eq.exit.i231
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i212

efct_hw_del_eq.exit.i231.cleanup_crit_edge:       ; preds = %efct_hw_del_eq.exit.i231
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %for.end
  %call34 = call i32 @efct_hw_new_rq_set(ptr noundef nonnull %cqs, ptr noundef nonnull %rqs, i32 noundef %i.0.lcssa, i32 noundef 1024)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.cond38.preheader, label %if.then36

for.cond38.preheader:                             ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %cmp39274.not = icmp eq i32 %i.0.lcssa, 0
  br i1 %cmp39274.not, label %for.cond38.preheader.for.end47_crit_edge, label %for.body40.lr.ph

for.cond38.preheader.for.end47_crit_edge:         ; preds = %for.cond38.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end47

for.body40.lr.ph:                                 ; preds = %for.cond38.preheader
  %134 = ptrtoint ptr %rqs to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rqs, align 4
  %hdr = getelementptr inbounds %struct.hw_rq, ptr %135, i32 0, i32 12
  br label %for.body40

if.then36:                                        ; preds = %if.end31
  %136 = ptrtoint ptr %eq_list to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %eq_list, align 8
  %tobool.not.i234 = icmp eq ptr %137, null
  %cmp.not20.i235 = icmp eq ptr %137, %eq_list
  %or.cond.i236 = or i1 %tobool.not.i234, %cmp.not20.i235
  br i1 %or.cond.i236, label %if.then36.cleanup_crit_edge, label %if.then36.for.body.i240_crit_edge

if.then36.for.body.i240_crit_edge:                ; preds = %if.then36
  br label %for.body.i240

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i240:                                    ; preds = %efct_hw_del_eq.exit.i259.for.body.i240_crit_edge, %if.then36.for.body.i240_crit_edge
  %eq.021.i237 = phi ptr [ %eq_next.0.i238, %efct_hw_del_eq.exit.i259.for.body.i240_crit_edge ], [ %137, %if.then36.for.body.i240_crit_edge ]
  %138 = ptrtoint ptr %eq.021.i237 to i32
  call void @__asan_load4_noabort(i32 %138)
  %eq_next.0.i238 = load ptr, ptr %eq.021.i237, align 4
  %tobool.not.i.i239 = icmp eq ptr %eq.021.i237, null
  br i1 %tobool.not.i.i239, label %for.body.i240.efct_hw_del_eq.exit.i259_crit_edge, label %if.end.i.i243

for.body.i240.efct_hw_del_eq.exit.i259_crit_edge: ; preds = %for.body.i240
  call void @__sanitizer_cov_trace_pc() #10
  br label %efct_hw_del_eq.exit.i259

if.end.i.i243:                                    ; preds = %for.body.i240
  %cq_list.i.i241 = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i237, i32 0, i32 7
  %139 = ptrtoint ptr %cq_list.i.i241 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %cq_list.i.i241, align 4
  %cmp.not23.i.i242 = icmp eq ptr %140, %cq_list.i.i241
  br i1 %cmp.not23.i.i242, label %if.end.i.i243.for.end.i.i249_crit_edge, label %if.end.i.i243.for.body.i.i247_crit_edge

if.end.i.i243.for.body.i.i247_crit_edge:          ; preds = %if.end.i.i243
  br label %for.body.i.i247

if.end.i.i243.for.end.i.i249_crit_edge:           ; preds = %if.end.i.i243
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i249

for.body.i.i247:                                  ; preds = %for.body.i.i247.for.body.i.i247_crit_edge, %if.end.i.i243.for.body.i.i247_crit_edge
  %cq.024.i.i244 = phi ptr [ %cq_next.0.i.i245, %for.body.i.i247.for.body.i.i247_crit_edge ], [ %140, %if.end.i.i243.for.body.i.i247_crit_edge ]
  %141 = ptrtoint ptr %cq.024.i.i244 to i32
  call void @__asan_load4_noabort(i32 %141)
  %cq_next.0.i.i245 = load ptr, ptr %cq.024.i.i244, align 4
  tail call void @efct_hw_del_cq(ptr noundef %cq.024.i.i244) #8
  %cmp.not.i.i246 = icmp eq ptr %cq_next.0.i.i245, %cq_list.i.i241
  br i1 %cmp.not.i.i246, label %for.body.i.i247.for.end.i.i249_crit_edge, label %for.body.i.i247.for.body.i.i247_crit_edge

for.body.i.i247.for.body.i.i247_crit_edge:        ; preds = %for.body.i.i247
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i247

for.body.i.i247.for.end.i.i249_crit_edge:         ; preds = %for.body.i.i247
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i249

for.end.i.i249:                                   ; preds = %for.body.i.i247.for.end.i.i249_crit_edge, %if.end.i.i243.for.end.i.i249_crit_edge
  %call.i.i.i.i248 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %eq.021.i237) #8
  br i1 %call.i.i.i.i248, label %if.end.i.i.i.i252, label %for.end.i.i249.list_del.exit.i.i257_crit_edge

for.end.i.i249.list_del.exit.i.i257_crit_edge:    ; preds = %for.end.i.i249
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.i257

if.end.i.i.i.i252:                                ; preds = %for.end.i.i249
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i250 = getelementptr inbounds %struct.list_head, ptr %eq.021.i237, i32 0, i32 1
  %142 = ptrtoint ptr %prev.i.i.i.i250 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %prev.i.i.i.i250, align 4
  %144 = ptrtoint ptr %eq.021.i237 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %eq.021.i237, align 4
  %prev1.i.i.i.i.i251 = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %prev1.i.i.i.i.i251 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %143, ptr %prev1.i.i.i.i.i251, align 4
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %145, ptr %143, align 4
  br label %list_del.exit.i.i257

list_del.exit.i.i257:                             ; preds = %if.end.i.i.i.i252, %for.end.i.i249.list_del.exit.i.i257_crit_edge
  %148 = ptrtoint ptr %eq.021.i237 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr inttoptr (i32 256 to ptr), ptr %eq.021.i237, align 4
  %prev.i.i.i253 = getelementptr inbounds %struct.list_head, ptr %eq.021.i237, i32 0, i32 1
  %149 = ptrtoint ptr %prev.i.i.i253 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i253, align 4
  %hw.i.i254 = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i237, i32 0, i32 5
  %150 = ptrtoint ptr %hw.i.i254 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hw.i.i254, align 4
  %instance.i.i255 = getelementptr inbounds %struct.hw_eq, ptr %eq.021.i237, i32 0, i32 2
  %152 = ptrtoint ptr %instance.i.i255 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %instance.i.i255, align 4
  %arrayidx.i.i256 = getelementptr %struct.efct_hw, ptr %151, i32 0, i32 31, i32 %153
  %154 = ptrtoint ptr %arrayidx.i.i256 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %arrayidx.i.i256, align 4
  tail call void @kfree(ptr noundef nonnull %eq.021.i237) #8
  br label %efct_hw_del_eq.exit.i259

efct_hw_del_eq.exit.i259:                         ; preds = %list_del.exit.i.i257, %for.body.i240.efct_hw_del_eq.exit.i259_crit_edge
  %cmp.not.i258 = icmp eq ptr %eq_next.0.i238, %eq_list
  br i1 %cmp.not.i258, label %efct_hw_del_eq.exit.i259.cleanup_crit_edge, label %efct_hw_del_eq.exit.i259.for.body.i240_crit_edge

efct_hw_del_eq.exit.i259.for.body.i240_crit_edge: ; preds = %efct_hw_del_eq.exit.i259
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i240

efct_hw_del_eq.exit.i259.cleanup_crit_edge:       ; preds = %efct_hw_del_eq.exit.i259
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %for.body40.lr.ph
  %j.0275 = phi i32 [ 0, %for.body40.lr.ph ], [ %inc46, %for.body40.for.body40_crit_edge ]
  %arrayidx41 = getelementptr [16 x ptr], ptr %rqs, i32 0, i32 %j.0275
  %155 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx41, align 4
  %filter_mask = getelementptr inbounds %struct.hw_rq, ptr %156, i32 0, i32 11
  %157 = ptrtoint ptr %filter_mask to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %filter_mask, align 4
  %is_mrq = getelementptr inbounds %struct.hw_rq, ptr %156, i32 0, i32 8
  %158 = ptrtoint ptr %is_mrq to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %is_mrq, align 4
  %159 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %hdr, align 4
  %id = getelementptr inbounds %struct.sli4_queue, ptr %160, i32 0, i32 6
  %161 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %id, align 2
  %conv = zext i16 %162 to i32
  %base_mrq_id = getelementptr inbounds %struct.hw_rq, ptr %156, i32 0, i32 9
  %163 = ptrtoint ptr %base_mrq_id to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %conv, ptr %base_mrq_id, align 4
  %inc46 = add nuw i32 %j.0275, 1
  %exitcond.not = icmp eq i32 %inc46, %i.0.lcssa
  br i1 %exitcond.not, label %for.body40.for.end47_crit_edge, label %for.body40.for.body40_crit_edge

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body40

for.body40.for.end47_crit_edge:                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end47

for.end47:                                        ; preds = %for.body40.for.end47_crit_edge, %for.cond38.preheader.for.end47_crit_edge
  %hw_mrq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 33
  %164 = ptrtoint ptr %hw_mrq_count to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %i.0.lcssa, ptr %hw_mrq_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end47, %efct_hw_del_eq.exit.i259.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %efct_hw_del_eq.exit.i231.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %efct_hw_del_eq.exit.i203.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %efct_hw_del_eq.exit.i175.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %efct_hw_del_eq.exit.i147.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %efct_hw_del_eq.exit.i119.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %efct_hw_del_eq.exit.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end47 ], [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.then6.cleanup_crit_edge ], [ -12, %if.then10.cleanup_crit_edge ], [ -12, %if.then17.cleanup_crit_edge ], [ -12, %if.then23.cleanup_crit_edge ], [ -5, %if.then30.cleanup_crit_edge ], [ -5, %if.then36.cleanup_crit_edge ], [ -5, %efct_hw_del_eq.exit.i259.cleanup_crit_edge ], [ -5, %efct_hw_del_eq.exit.i231.cleanup_crit_edge ], [ -12, %efct_hw_del_eq.exit.i.cleanup_crit_edge ], [ -12, %efct_hw_del_eq.exit.i119.cleanup_crit_edge ], [ -12, %efct_hw_del_eq.exit.i147.cleanup_crit_edge ], [ -12, %efct_hw_del_eq.exit.i175.cleanup_crit_edge ], [ -12, %efct_hw_del_eq.exit.i203.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rqs) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cqs) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %eqs) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efct_hw_new_eq(ptr noundef %hw, i32 noundef %entry_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 44) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.hw_eq, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %type, align 8
  %hw1 = getelementptr inbounds %struct.hw_eq, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hw, ptr %hw1, align 8
  %entry_count2 = getelementptr inbounds %struct.hw_eq, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %entry_count2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %entry_count, ptr %entry_count2, align 8
  %eq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 17
  %4 = ptrtoint ptr %eq_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eq_count, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %eq_count, align 8
  %instance = getelementptr inbounds %struct.hw_eq, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %instance, align 4
  %arrayidx = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 16, i32 %5
  %queue = getelementptr inbounds %struct.hw_eq, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %queue, align 4
  %cq_list = getelementptr inbounds %struct.hw_eq, ptr %call7.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %cq_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %cq_list, ptr %cq_list, align 8
  %prev.i = getelementptr inbounds %struct.hw_eq, ptr %call7.i.i, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cq_list, ptr %prev.i, align 4
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %call6 = tail call i32 @sli_queue_alloc(ptr noundef %sli, i32 noundef 0, ptr noundef %arrayidx, i32 noundef %entry_count, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %instance, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %15) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %16 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %queue, align 4
  %call13 = tail call i32 @sli_eq_modify_delay(ptr noundef %sli, ptr noundef %17, i32 noundef 1, i32 noundef 0, i32 noundef 8) #8
  %18 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %instance, align 4
  %arrayidx15 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 31, i32 %19
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %arrayidx15, align 4
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i60 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %prev.i60, align 4
  %eq_list = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 23
  %prev.i61 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 23, i32 1
  %23 = ptrtoint ptr %prev.i61 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i61, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %24, ptr noundef %eq_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.list_add_tail.exit_crit_edge

if.end10.list_add_tail.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %prev.i61 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %prev.i61, align 4
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %eq_list, ptr %call7.i.i, align 8
  %27 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev.i60, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call7.i.i, ptr %24, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end10.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_new_eq.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_new_eq, %if.then22)) #8
          to label %cleanup [label %if.then22], !srcloc !97

if.then22:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %instance, align 4
  %35 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %queue, align 4
  %id = getelementptr inbounds %struct.sli4_queue, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %id, align 2
  %conv = zext i16 %38 to i32
  %39 = ptrtoint ptr %entry_count2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %entry_count2, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_new_eq.__UNIQUE_ID_ddebug315, ptr noundef %dev25, ptr noundef nonnull @.str.9, i32 noundef %34, i32 noundef %conv, i32 noundef %40) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %list_add_tail.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.then22 ], [ %call7.i.i, %list_add_tail.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_hw_queue_teardown(ptr noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eq_list = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 23
  %0 = ptrtoint ptr %eq_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eq_list, align 8
  %tobool.not = icmp eq ptr %1, null
  %cmp.not20 = icmp eq ptr %1, %eq_list
  %or.cond = or i1 %tobool.not, %cmp.not20
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %efct_hw_del_eq.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %eq.021 = phi ptr [ %eq_next.0, %efct_hw_del_eq.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %eq.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %eq_next.0 = load ptr, ptr %eq.021, align 4
  %tobool.not.i = icmp eq ptr %eq.021, null
  br i1 %tobool.not.i, label %for.body.efct_hw_del_eq.exit_crit_edge, label %if.end.i

for.body.efct_hw_del_eq.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %efct_hw_del_eq.exit

if.end.i:                                         ; preds = %for.body
  %cq_list.i = getelementptr inbounds %struct.hw_eq, ptr %eq.021, i32 0, i32 7
  %3 = ptrtoint ptr %cq_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cq_list.i, align 4
  %cmp.not23.i = icmp eq ptr %4, %cq_list.i
  br i1 %cmp.not23.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %cq.024.i = phi ptr [ %cq_next.0.i, %for.body.i.for.body.i_crit_edge ], [ %4, %if.end.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %cq.024.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %cq_next.0.i = load ptr, ptr %cq.024.i, align 4
  tail call void @efct_hw_del_cq(ptr noundef %cq.024.i) #8
  %cmp.not.i = icmp eq ptr %cq_next.0.i, %cq_list.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %eq.021) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.list_del.exit.i_crit_edge

for.end.i.list_del.exit.i_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %eq.021, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %eq.021 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eq.021, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.end.i.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %eq.021 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %eq.021, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %eq.021, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %hw.i = getelementptr inbounds %struct.hw_eq, ptr %eq.021, i32 0, i32 5
  %14 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw.i, align 4
  %instance.i = getelementptr inbounds %struct.hw_eq, ptr %eq.021, i32 0, i32 2
  %16 = ptrtoint ptr %instance.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %instance.i, align 4
  %arrayidx.i = getelementptr %struct.efct_hw, ptr %15, i32 0, i32 31, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef nonnull %eq.021) #8
  br label %efct_hw_del_eq.exit

efct_hw_del_eq.exit:                              ; preds = %list_del.exit.i, %for.body.efct_hw_del_eq.exit_crit_edge
  %cmp.not = icmp eq ptr %eq_next.0, %eq_list
  br i1 %cmp.not, label %efct_hw_del_eq.exit.cleanup_crit_edge, label %efct_hw_del_eq.exit.for.body_crit_edge

efct_hw_del_eq.exit.for.body_crit_edge:           ; preds = %efct_hw_del_eq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

efct_hw_del_eq.exit.cleanup_crit_edge:            ; preds = %efct_hw_del_eq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %efct_hw_del_eq.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efct_hw_new_cq(ptr noundef %eq, i32 noundef %entry_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.hw_eq, ptr %eq, i32 0, i32 5
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 44) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %eq2 = getelementptr inbounds %struct.hw_cq, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %eq2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %eq, ptr %eq2, align 8
  %type = getelementptr inbounds %struct.hw_cq, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 8
  %5 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw1, align 4
  %cq_count = getelementptr inbounds %struct.efct_hw, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cq_count, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %cq_count, align 4
  %instance = getelementptr inbounds %struct.hw_cq, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %instance, align 4
  %entry_count4 = getelementptr inbounds %struct.hw_cq, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %entry_count4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %entry_count, ptr %entry_count4, align 8
  %arrayidx = getelementptr %struct.efct_hw, ptr %1, i32 0, i32 15, i32 %8
  %queue = getelementptr inbounds %struct.hw_cq, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx, ptr %queue, align 4
  %q_list = getelementptr inbounds %struct.hw_cq, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %q_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %q_list, ptr %q_list, align 8
  %prev.i = getelementptr inbounds %struct.hw_cq, ptr %call7.i.i, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %q_list, ptr %prev.i, align 4
  %sli = getelementptr inbounds %struct.efct_hw, ptr %1, i32 0, i32 1
  %queue9 = getelementptr inbounds %struct.hw_eq, ptr %eq, i32 0, i32 6
  %14 = ptrtoint ptr %queue9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %queue9, align 4
  %call10 = tail call i32 @sli_queue_alloc(ptr noundef %sli, i32 noundef 1, ptr noundef %arrayidx, i32 noundef %entry_count, ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %instance13 = getelementptr inbounds %struct.hw_eq, ptr %eq, i32 0, i32 2
  %20 = ptrtoint ptr %instance13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %instance13, align 4
  %entry_count14 = getelementptr inbounds %struct.hw_eq, ptr %eq, i32 0, i32 3
  %22 = ptrtoint ptr %entry_count14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %entry_count14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %21, i32 noundef %23) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %24 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %instance, align 4
  %arrayidx17 = getelementptr %struct.efct_hw, ptr %1, i32 0, i32 30, i32 %25
  %26 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %arrayidx17, align 4
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i63 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i63 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %prev.i63, align 4
  %cq_list = getelementptr inbounds %struct.hw_eq, ptr %eq, i32 0, i32 7
  %prev.i64 = getelementptr inbounds %struct.hw_eq, ptr %eq, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %prev.i64 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i64, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %30, ptr noundef %cq_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.list_add_tail.exit_crit_edge

if.end15.list_add_tail.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %prev.i64 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %prev.i64, align 4
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cq_list, ptr %call7.i.i, align 8
  %33 = ptrtoint ptr %prev.i63 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev.i63, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call7.i.i, ptr %30, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end15.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_new_cq.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_new_cq, %if.then24)) #8
          to label %cleanup [label %if.then24], !srcloc !97

if.then24:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %instance, align 4
  %41 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %queue, align 4
  %id = getelementptr inbounds %struct.sli4_queue, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %id, align 2
  %conv = zext i16 %44 to i32
  %45 = ptrtoint ptr %entry_count4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %entry_count4, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_new_cq.__UNIQUE_ID_ddebug316, ptr noundef %dev27, ptr noundef nonnull @.str.12, i32 noundef %40, i32 noundef %conv, i32 noundef %46) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %list_add_tail.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.then24 ], [ %call7.i.i, %list_add_tail.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efct_hw_new_mq(ptr noundef %cq, i32 noundef %entry_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eq = getelementptr inbounds %struct.hw_cq, ptr %cq, i32 0, i32 5
  %0 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eq, align 4
  %hw1 = getelementptr inbounds %struct.hw_eq, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 36) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cq2 = getelementptr inbounds %struct.hw_mq, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %cq2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cq, ptr %cq2, align 8
  %type = getelementptr inbounds %struct.hw_mq, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %type, align 8
  %7 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %eq, align 4
  %hw4 = getelementptr inbounds %struct.hw_eq, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw4, align 4
  %mq_count = getelementptr inbounds %struct.efct_hw, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %mq_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mq_count, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %mq_count, align 8
  %instance = getelementptr inbounds %struct.hw_mq, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %instance, align 4
  %entry_count5 = getelementptr inbounds %struct.hw_mq, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %entry_count5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %entry_count, ptr %entry_count5, align 8
  %entry_size = getelementptr inbounds %struct.hw_mq, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %entry_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 128, ptr %entry_size, align 4
  %arrayidx = getelementptr %struct.efct_hw, ptr %3, i32 0, i32 14, i32 %12
  %queue = getelementptr inbounds %struct.hw_mq, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx, ptr %queue, align 4
  %sli = getelementptr inbounds %struct.efct_hw, ptr %3, i32 0, i32 1
  %queue10 = getelementptr inbounds %struct.hw_cq, ptr %cq, i32 0, i32 6
  %17 = ptrtoint ptr %queue10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queue10, align 4
  %call11 = tail call i32 @sli_queue_alloc(ptr noundef %sli, i32 noundef 2, ptr noundef %arrayidx, i32 noundef 128, ptr noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %23 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %instance, align 4
  %arrayidx16 = getelementptr %struct.efct_hw, ptr %3, i32 0, i32 29, i32 %24
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %arrayidx16, align 4
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %q_list = getelementptr inbounds %struct.hw_cq, ptr %cq, i32 0, i32 7
  %prev.i60 = getelementptr inbounds %struct.hw_cq, ptr %cq, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i60, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %29, ptr noundef %q_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_add_tail.exit_crit_edge

if.end14.list_add_tail.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %prev.i60, align 4
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %q_list, ptr %call7.i.i, align 8
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call7.i.i, ptr %29, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end14.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_new_mq.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_new_mq, %if.then23)) #8
          to label %cleanup [label %if.then23], !srcloc !97

if.then23:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %instance, align 4
  %40 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %queue, align 4
  %id = getelementptr inbounds %struct.sli4_queue, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %id, align 2
  %conv = zext i16 %43 to i32
  %44 = ptrtoint ptr %entry_count5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %entry_count5, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_new_mq.__UNIQUE_ID_ddebug317, ptr noundef %dev26, ptr noundef nonnull @.str.17, i32 noundef %39, i32 noundef %conv, i32 noundef %45) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %list_add_tail.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.then23 ], [ %call7.i.i, %list_add_tail.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efct_hw_new_wq(ptr noundef %cq, i32 noundef %entry_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eq = getelementptr inbounds %struct.hw_cq, ptr %cq, i32 0, i32 5
  %0 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eq, align 4
  %hw1 = getelementptr inbounds %struct.hw_eq, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 76) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eq, align 4
  %hw3 = getelementptr inbounds %struct.hw_eq, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw3, align 4
  %hw4 = getelementptr inbounds %struct.hw_wq, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %hw4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %hw4, align 8
  %cq5 = getelementptr inbounds %struct.hw_wq, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %cq5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cq, ptr %cq5, align 4
  %type = getelementptr inbounds %struct.hw_wq, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %type, align 8
  %12 = load ptr, ptr %hw3, align 4
  %wq_count = getelementptr inbounds %struct.efct_hw, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wq_count, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %wq_count, align 4
  %instance = getelementptr inbounds %struct.hw_wq, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %instance, align 4
  %entry_count8 = getelementptr inbounds %struct.hw_wq, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %entry_count8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %entry_count, ptr %entry_count8, align 4
  %arrayidx = getelementptr %struct.efct_hw, ptr %3, i32 0, i32 11, i32 %14
  %queue = getelementptr inbounds %struct.hw_wq, ptr %call7.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx, ptr %queue, align 8
  %wqec_set_count = getelementptr inbounds %struct.hw_wq, ptr %call7.i.i, i32 0, i32 9
  %18 = ptrtoint ptr %wqec_set_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 32, ptr %wqec_set_count, align 8
  %wqec_count = getelementptr inbounds %struct.hw_wq, ptr %call7.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %wqec_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 32, ptr %wqec_count, align 4
  %sub = add i32 %entry_count, -1
  %free_count = getelementptr inbounds %struct.hw_wq, ptr %call7.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %free_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %free_count, align 8
  %pending_list = getelementptr inbounds %struct.hw_wq, ptr %call7.i.i, i32 0, i32 13
  %21 = ptrtoint ptr %pending_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %pending_list, ptr %pending_list, align 8
  %prev.i = getelementptr inbounds %struct.hw_wq, ptr %call7.i.i, i32 0, i32 13, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %pending_list, ptr %prev.i, align 4
  %sli = getelementptr inbounds %struct.efct_hw, ptr %3, i32 0, i32 1
  %queue15 = getelementptr inbounds %struct.hw_cq, ptr %cq, i32 0, i32 6
  %23 = ptrtoint ptr %queue15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue15, align 4
  %call16 = tail call i32 @sli_queue_alloc(ptr noundef %sli, i32 noundef 3, ptr noundef %arrayidx, i32 noundef %entry_count, ptr noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %29 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %instance, align 4
  %arrayidx21 = getelementptr %struct.efct_hw, ptr %3, i32 0, i32 27, i32 %30
  %31 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %arrayidx21, align 4
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i73 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i73 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i, ptr %prev.i73, align 4
  %q_list = getelementptr inbounds %struct.hw_cq, ptr %cq, i32 0, i32 7
  %prev.i74 = getelementptr inbounds %struct.hw_cq, ptr %cq, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %prev.i74 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i74, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %35, ptr noundef %q_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end19.list_add_tail.exit_crit_edge

if.end19.list_add_tail.exit_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %prev.i74 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %prev.i74, align 4
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %q_list, ptr %call7.i.i, align 8
  %38 = ptrtoint ptr %prev.i73 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev.i73, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call7.i.i, ptr %35, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end19.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_new_wq.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_new_wq, %if.then28)) #8
          to label %cleanup [label %if.then28], !srcloc !97

if.then28:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %instance, align 4
  %46 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %queue, align 8
  %id = getelementptr inbounds %struct.sli4_queue, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %id, align 2
  %conv = zext i16 %49 to i32
  %50 = ptrtoint ptr %entry_count8 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %entry_count8, align 4
  %class = getelementptr inbounds %struct.hw_wq, ptr %call7.i.i, i32 0, i32 8
  %52 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %class, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_new_wq.__UNIQUE_ID_ddebug318, ptr noundef %dev31, ptr noundef nonnull @.str.20, i32 noundef %45, i32 noundef %conv, i32 noundef %51, i32 noundef %53) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %list_add_tail.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.then28 ], [ %call7.i.i, %list_add_tail.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_new_cq_set(ptr nocapture noundef readonly %eqs, ptr nocapture noundef %cqs, i32 noundef %num_cqs, i32 noundef %entry_count) local_unnamed_addr #0 align 64 {
entry:
  %qs = alloca [16 x ptr], align 4
  %assefct = alloca [16 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eqs, align 4
  %hw1 = getelementptr inbounds %struct.hw_eq, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %sli = getelementptr inbounds %struct.efct_hw, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %qs) #8
  %4 = call ptr @memset(ptr %qs, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %assefct) #8
  %5 = call ptr @memset(ptr %assefct, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_cqs)
  %cmp105.not = icmp eq i32 %num_cqs, 0
  br i1 %cmp105.not, label %for.end20.thread, label %for.body5.lr.ph

for.body5.lr.ph:                                  ; preds = %entry
  %6 = shl nuw i32 %num_cqs, 2
  %7 = call ptr @memset(ptr %cqs, i32 0, i32 %6)
  %cq_count = getelementptr inbounds %struct.efct_hw, ptr %3, i32 0, i32 18
  br label %for.body5

for.body5:                                        ; preds = %if.end.for.body5_crit_edge, %for.body5.lr.ph
  %i.1108 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc19, %if.end.for.body5_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 44) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.body5.error_crit_edge, label %if.end

for.body5.error_crit_edge:                        ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end:                                           ; preds = %for.body5
  %arrayidx6 = getelementptr ptr, ptr %cqs, i32 %i.1108
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr ptr, ptr %eqs, i32 %i.1108
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7, align 4
  %eq = getelementptr inbounds %struct.hw_cq, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %eq to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %eq, align 8
  %type = getelementptr inbounds %struct.hw_cq, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type, align 8
  %14 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cq_count, align 4
  %inc8 = add i32 %15, 1
  store i32 %inc8, ptr %cq_count, align 4
  %instance = getelementptr inbounds %struct.hw_cq, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %instance, align 4
  %entry_count9 = getelementptr inbounds %struct.hw_cq, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %entry_count9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %entry_count, ptr %entry_count9, align 8
  %arrayidx12 = getelementptr %struct.efct_hw, ptr %3, i32 0, i32 15, i32 %15
  %queue = getelementptr inbounds %struct.hw_cq, ptr %call7.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx12, ptr %queue, align 4
  %arrayidx14 = getelementptr [16 x ptr], ptr %qs, i32 0, i32 %i.1108
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx12, ptr %arrayidx14, align 4
  %20 = load ptr, ptr %arrayidx7, align 4
  %queue16 = getelementptr inbounds %struct.hw_eq, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %queue16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %queue16, align 4
  %arrayidx17 = getelementptr [16 x ptr], ptr %assefct, i32 0, i32 %i.1108
  %23 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %arrayidx17, align 4
  %q_list = getelementptr inbounds %struct.hw_cq, ptr %call7.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %q_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %q_list, ptr %q_list, align 8
  %prev.i = getelementptr inbounds %struct.hw_cq, ptr %call7.i.i, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %q_list, ptr %prev.i, align 4
  %inc19 = add nuw i32 %i.1108, 1
  %exitcond.not = icmp eq i32 %inc19, %num_cqs
  br i1 %exitcond.not, label %for.end20, label %if.end.for.body5_crit_edge

if.end.for.body5_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5

for.end20:                                        ; preds = %if.end
  %call22 = call i32 @sli_cq_alloc_set(ptr noundef %sli, ptr noundef nonnull %qs, i32 noundef %num_cqs, i32 noundef %entry_count, ptr noundef nonnull %assefct) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %for.cond26.preheader, label %for.end20.do.end_crit_edge

for.end20.do.end_crit_edge:                       ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.end20.thread:                                 ; preds = %entry
  %call22116 = call i32 @sli_cq_alloc_set(ptr noundef %sli, ptr noundef nonnull %qs, i32 noundef %num_cqs, i32 noundef %entry_count, ptr noundef nonnull %assefct) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22116)
  %tobool23.not117 = icmp eq i32 %call22116, 0
  br i1 %tobool23.not117, label %for.end20.thread.cleanup_crit_edge, label %for.end20.thread.do.end_crit_edge

for.end20.thread.do.end_crit_edge:                ; preds = %for.end20.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.end20.thread.cleanup_crit_edge:               ; preds = %for.end20.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond26.preheader:                             ; preds = %for.end20
  br i1 %cmp105.not, label %for.cond26.preheader.cleanup_crit_edge, label %for.cond26.preheader.for.body28_crit_edge

for.cond26.preheader.for.body28_crit_edge:        ; preds = %for.cond26.preheader
  br label %for.body28

for.cond26.preheader.cleanup_crit_edge:           ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %for.end20.thread.do.end_crit_edge, %for.end20.do.end_crit_edge
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #12
  br label %error

for.body28:                                       ; preds = %list_add_tail.exit.for.body28_crit_edge, %for.cond26.preheader.for.body28_crit_edge
  %i.2110 = phi i32 [ %inc39, %list_add_tail.exit.for.body28_crit_edge ], [ 0, %for.cond26.preheader.for.body28_crit_edge ]
  %arrayidx29 = getelementptr ptr, ptr %cqs, i32 %i.2110
  %30 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx29, align 4
  %instance31 = getelementptr inbounds %struct.hw_cq, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %instance31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %instance31, align 4
  %arrayidx32 = getelementptr %struct.efct_hw, ptr %3, i32 0, i32 30, i32 %33
  %34 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %arrayidx32, align 4
  %35 = load ptr, ptr %arrayidx29, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %35, ptr %35, align 4
  %prev.i102 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i102 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %prev.i102, align 4
  %38 = load ptr, ptr %arrayidx29, align 4
  %eq37 = getelementptr inbounds %struct.hw_cq, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %eq37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %eq37, align 4
  %cq_list = getelementptr inbounds %struct.hw_eq, ptr %40, i32 0, i32 7
  %prev.i103 = getelementptr inbounds %struct.hw_eq, ptr %40, i32 0, i32 7, i32 1
  %41 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i103, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %38, ptr noundef %42, ptr noundef %cq_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body28.list_add_tail.exit_crit_edge

for.body28.list_add_tail.exit_crit_edge:          ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %38, ptr %prev.i103, align 4
  %44 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %cq_list, ptr %38, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %38, ptr %42, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body28.list_add_tail.exit_crit_edge
  %inc39 = add nuw i32 %i.2110, 1
  %exitcond115.not = icmp eq i32 %inc39, %num_cqs
  br i1 %exitcond115.not, label %list_add_tail.exit.cleanup_crit_edge, label %list_add_tail.exit.for.body28_crit_edge

list_add_tail.exit.for.body28_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body28

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error:                                            ; preds = %do.end, %for.body5.error_crit_edge
  br i1 %cmp105.not, label %error.cleanup_crit_edge, label %error.for.body43_crit_edge

error.for.body43_crit_edge:                       ; preds = %error
  br label %for.body43

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %error.for.body43_crit_edge
  %i.3112 = phi i32 [ %inc47, %for.body43.for.body43_crit_edge ], [ 0, %error.for.body43_crit_edge ]
  %arrayidx44 = getelementptr ptr, ptr %cqs, i32 %i.3112
  %47 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx44, align 4
  call void @kfree(ptr noundef %48) #8
  %49 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %arrayidx44, align 4
  %inc47 = add nuw i32 %i.3112, 1
  %exitcond114.not = icmp eq i32 %inc47, %num_cqs
  br i1 %exitcond114.not, label %for.body43.cleanup_crit_edge, label %for.body43.for.body43_crit_edge

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43

for.body43.cleanup_crit_edge:                     ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body43.cleanup_crit_edge, %error.cleanup_crit_edge, %list_add_tail.exit.cleanup_crit_edge, %for.cond26.preheader.cleanup_crit_edge, %for.end20.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %error.cleanup_crit_edge ], [ 0, %for.cond26.preheader.cleanup_crit_edge ], [ 0, %for.end20.thread.cleanup_crit_edge ], [ -5, %for.body43.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %assefct) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %qs) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_new_rq_set(ptr nocapture noundef readonly %cqs, ptr nocapture noundef %rqs, i32 noundef %num_rq_pairs, i32 noundef %entry_count) local_unnamed_addr #0 align 64 {
entry:
  %qs = alloca [32 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqs, align 4
  %eq = getelementptr inbounds %struct.hw_cq, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eq, align 4
  %hw1 = getelementptr inbounds %struct.hw_eq, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %qs) #8
  %6 = call ptr @memset(ptr %qs, i32 0, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_rq_pairs)
  %cmp173.not = icmp eq i32 %num_rq_pairs, 0
  br i1 %cmp173.not, label %entry.for.end34_crit_edge, label %for.body5.lr.ph

entry.for.end34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34

for.body5.lr.ph:                                  ; preds = %entry
  %7 = shl nuw i32 %num_rq_pairs, 2
  %8 = call ptr @memset(ptr %rqs, i32 0, i32 %7)
  %hw_rq_count = getelementptr inbounds %struct.efct_hw, ptr %5, i32 0, i32 32
  %rq_count = getelementptr inbounds %struct.efct_hw, ptr %5, i32 0, i32 21
  %rq_default_buffer_size = getelementptr inbounds %struct.efct_hw, ptr %5, i32 0, i32 9, i32 9
  br label %for.body5

for.body5:                                        ; preds = %if.end.for.body5_crit_edge, %for.body5.lr.ph
  %q_count.0177 = phi i32 [ 0, %for.body5.lr.ph ], [ %add33, %if.end.for.body5_crit_edge ]
  %i.1176 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc32, %if.end.for.body5_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 80) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.body5.error_crit_edge, label %if.end

for.body5.error_crit_edge:                        ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end:                                           ; preds = %for.body5
  %arrayidx6 = getelementptr ptr, ptr %rqs, i32 %i.1176
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %arrayidx6, align 4
  %11 = ptrtoint ptr %hw_rq_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_rq_count, align 8
  %inc7 = add i32 %12, 1
  store i32 %inc7, ptr %hw_rq_count, align 8
  %instance = getelementptr inbounds %struct.hw_rq, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %instance, align 4
  %arrayidx8 = getelementptr ptr, ptr %cqs, i32 %i.1176
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx8, align 4
  %cq = getelementptr inbounds %struct.hw_rq, ptr %call7.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %cq, align 4
  %type = getelementptr inbounds %struct.hw_rq, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %type, align 8
  %entry_count9 = getelementptr inbounds %struct.hw_rq, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %entry_count9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %entry_count, ptr %entry_count9, align 8
  %19 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rq_count, align 8
  %arrayidx11 = getelementptr %struct.efct_hw, ptr %5, i32 0, i32 12, i32 %20
  %hdr = getelementptr inbounds %struct.hw_rq, ptr %call7.i.i, i32 0, i32 12
  %21 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx11, ptr %hdr, align 4
  %hdr_entry_size = getelementptr inbounds %struct.hw_rq, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %hdr_entry_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 128, ptr %hdr_entry_size, align 8
  %conv = trunc i32 %12 to i16
  %23 = load i32, ptr %rq_count, align 8
  %arrayidx14 = getelementptr %struct.efct_hw, ptr %5, i32 0, i32 13, i32 %23
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %arrayidx14, align 2
  %25 = load i32, ptr %rq_count, align 8
  %inc16 = add i32 %25, 1
  store i32 %inc16, ptr %rq_count, align 8
  %26 = load ptr, ptr %hdr, align 4
  %arrayidx18 = getelementptr [32 x ptr], ptr %qs, i32 0, i32 %q_count.0177
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %arrayidx18, align 4
  %28 = load i32, ptr %rq_count, align 8
  %arrayidx21 = getelementptr %struct.efct_hw, ptr %5, i32 0, i32 12, i32 %28
  %data = getelementptr inbounds %struct.hw_rq, ptr %call7.i.i, i32 0, i32 14
  %29 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx21, ptr %data, align 4
  %30 = ptrtoint ptr %rq_default_buffer_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rq_default_buffer_size, align 4
  %data_entry_size = getelementptr inbounds %struct.hw_rq, ptr %call7.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %data_entry_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %data_entry_size, align 8
  %33 = load i32, ptr %instance, align 4
  %conv23 = trunc i32 %33 to i16
  %34 = load i32, ptr %rq_count, align 8
  %arrayidx26 = getelementptr %struct.efct_hw, ptr %5, i32 0, i32 13, i32 %34
  %35 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv23, ptr %arrayidx26, align 2
  %36 = load i32, ptr %rq_count, align 8
  %inc28 = add i32 %36, 1
  store i32 %inc28, ptr %rq_count, align 8
  %37 = load ptr, ptr %data, align 4
  %add = or i32 %q_count.0177, 1
  %arrayidx30 = getelementptr [32 x ptr], ptr %qs, i32 0, i32 %add
  %38 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %arrayidx30, align 4
  %rq_tracker = getelementptr inbounds %struct.hw_rq, ptr %call7.i.i, i32 0, i32 18
  %39 = ptrtoint ptr %rq_tracker to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %rq_tracker, align 4
  %inc32 = add nuw i32 %i.1176, 1
  %add33 = add i32 %q_count.0177, 2
  %exitcond.not = icmp eq i32 %inc32, %num_rq_pairs
  br i1 %exitcond.not, label %if.end.for.end34_crit_edge, label %if.end.for.body5_crit_edge

if.end.for.body5_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5

if.end.for.end34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34

for.end34:                                        ; preds = %if.end.for.end34_crit_edge, %entry.for.end34_crit_edge
  %sli = getelementptr inbounds %struct.efct_hw, ptr %5, i32 0, i32 1
  %40 = ptrtoint ptr %cqs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cqs, align 4
  %queue = getelementptr inbounds %struct.hw_cq, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %queue, align 4
  %id = getelementptr inbounds %struct.sli4_queue, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %id, align 2
  %conv36 = zext i16 %45 to i32
  %46 = ptrtoint ptr %rqs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rqs, align 4
  %entry_count38 = getelementptr inbounds %struct.hw_rq, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %entry_count38 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %entry_count38, align 4
  %hdr_entry_size40 = getelementptr inbounds %struct.hw_rq, ptr %47, i32 0, i32 5
  %50 = ptrtoint ptr %hdr_entry_size40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hdr_entry_size40, align 4
  %data_entry_size42 = getelementptr inbounds %struct.hw_rq, ptr %47, i32 0, i32 7
  %52 = ptrtoint ptr %data_entry_size42 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data_entry_size42, align 4
  %call43 = call i32 @sli_fc_rq_set_alloc(ptr noundef %sli, i32 noundef %num_rq_pairs, ptr noundef nonnull %qs, i32 noundef %conv36, i32 noundef %49, i32 noundef %51, i32 noundef %53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %for.cond51.preheader, label %do.end

for.cond51.preheader:                             ; preds = %for.end34
  br i1 %cmp173.not, label %for.cond51.preheader.cleanup_crit_edge, label %for.cond51.preheader.for.body54_crit_edge

for.cond51.preheader.for.body54_crit_edge:        ; preds = %for.cond51.preheader
  br label %for.body54

for.cond51.preheader.cleanup_crit_edge:           ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %5, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %58 = ptrtoint ptr %cqs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cqs, align 4
  %queue47 = getelementptr inbounds %struct.hw_cq, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %queue47 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %queue47, align 4
  %id48 = getelementptr inbounds %struct.sli4_queue, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %id48 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %id48, align 2
  %conv49 = zext i16 %63 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %conv49) #12
  br label %error

for.cond51:                                       ; preds = %if.end8.i.i
  %inc74 = add nuw i32 %i.2179, 1
  %exitcond184.not = icmp eq i32 %inc74, %num_rq_pairs
  br i1 %exitcond184.not, label %for.cond51.cleanup_crit_edge, label %for.cond51.for.body54_crit_edge

for.cond51.for.body54_crit_edge:                  ; preds = %for.cond51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54

for.cond51.cleanup_crit_edge:                     ; preds = %for.cond51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body54:                                       ; preds = %for.cond51.for.body54_crit_edge, %for.cond51.preheader.for.body54_crit_edge
  %i.2179 = phi i32 [ %inc74, %for.cond51.for.body54_crit_edge ], [ 0, %for.cond51.preheader.for.body54_crit_edge ]
  %arrayidx55 = getelementptr ptr, ptr %rqs, i32 %i.2179
  %64 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx55, align 4
  %instance57 = getelementptr inbounds %struct.hw_rq, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %instance57 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %instance57, align 4
  %arrayidx58 = getelementptr %struct.efct_hw, ptr %5, i32 0, i32 28, i32 %67
  %68 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %arrayidx58, align 4
  %69 = load ptr, ptr %arrayidx55, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %69, ptr %69, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %prev.i, align 4
  %72 = load ptr, ptr %arrayidx55, align 4
  %arrayidx62 = getelementptr ptr, ptr %cqs, i32 %i.2179
  %73 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx62, align 4
  %q_list = getelementptr inbounds %struct.hw_cq, ptr %74, i32 0, i32 7
  %prev.i168 = getelementptr inbounds %struct.hw_cq, ptr %74, i32 0, i32 7, i32 1
  %75 = ptrtoint ptr %prev.i168 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i168, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %72, ptr noundef %76, ptr noundef %q_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body54.if.end8.i.i_crit_edge

for.body54.if.end8.i.i_crit_edge:                 ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.end.i.i:                                       ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %prev.i168 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %72, ptr %prev.i168, align 4
  %78 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %q_list, ptr %72, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %79 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev3.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %72, ptr %76, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end.i.i, %for.body54.if.end8.i.i_crit_edge
  %81 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx55, align 4
  %entry_count64 = getelementptr inbounds %struct.hw_rq, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %entry_count64 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %entry_count64, align 4
  %mul = shl i32 %84, 2
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #13
  %85 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx55, align 4
  %rq_tracker67 = getelementptr inbounds %struct.hw_rq, ptr %86, i32 0, i32 18
  %87 = ptrtoint ptr %rq_tracker67 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call9.i.i, ptr %rq_tracker67, align 4
  %88 = load ptr, ptr %arrayidx55, align 4
  %rq_tracker69 = getelementptr inbounds %struct.hw_rq, ptr %88, i32 0, i32 18
  %89 = ptrtoint ptr %rq_tracker69 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rq_tracker69, align 4
  %tobool70.not = icmp eq ptr %90, null
  br i1 %tobool70.not, label %if.end8.i.i.error_crit_edge, label %for.cond51

if.end8.i.i.error_crit_edge:                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

error:                                            ; preds = %if.end8.i.i.error_crit_edge, %do.end, %for.body5.error_crit_edge
  br i1 %cmp173.not, label %error.cleanup_crit_edge, label %error.for.body79_crit_edge

error.for.body79_crit_edge:                       ; preds = %error
  br label %for.body79

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body79:                                       ; preds = %for.inc87.for.body79_crit_edge, %error.for.body79_crit_edge
  %i.3181 = phi i32 [ %inc88, %for.inc87.for.body79_crit_edge ], [ 0, %error.for.body79_crit_edge ]
  %arrayidx80 = getelementptr ptr, ptr %rqs, i32 %i.3181
  %91 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx80, align 4
  %tobool81.not = icmp eq ptr %92, null
  br i1 %tobool81.not, label %for.body79.for.inc87_crit_edge, label %if.then82

for.body79.for.inc87_crit_edge:                   ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc87

if.then82:                                        ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #10
  %rq_tracker84 = getelementptr inbounds %struct.hw_rq, ptr %92, i32 0, i32 18
  %93 = ptrtoint ptr %rq_tracker84 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rq_tracker84, align 4
  call void @kfree(ptr noundef %94) #8
  %95 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx80, align 4
  call void @kfree(ptr noundef %96) #8
  br label %for.inc87

for.inc87:                                        ; preds = %if.then82, %for.body79.for.inc87_crit_edge
  %inc88 = add nuw i32 %i.3181, 1
  %exitcond185.not = icmp eq i32 %inc88, %num_rq_pairs
  br i1 %exitcond185.not, label %for.inc87.cleanup_crit_edge, label %for.inc87.for.body79_crit_edge

for.inc87.for.body79_crit_edge:                   ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body79

for.inc87.cleanup_crit_edge:                      ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc87.cleanup_crit_edge, %error.cleanup_crit_edge, %for.cond51.cleanup_crit_edge, %for.cond51.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %error.cleanup_crit_edge ], [ 0, %for.cond51.preheader.cleanup_crit_edge ], [ -5, %for.inc87.cleanup_crit_edge ], [ 0, %for.cond51.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %qs) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_map_wq_cpu(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %2) #8
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4.i.i, i32 4) #8
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !98

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wq_cpu_array64 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 34
  %5 = ptrtoint ptr %wq_cpu_array64 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %wq_cpu_array64, align 8
  br label %cleanup39

if.end7.i.i:                                      ; preds = %entry
  %6 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #13
  %wq_cpu_array = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 34
  %7 = ptrtoint ptr %wq_cpu_array to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8.i.i, ptr %wq_cpu_array, align 8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup39_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup39_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39

for.cond.preheader:                               ; preds = %if.end7.i.i
  %config = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 9
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp71.not = icmp eq i32 %9, 0
  br i1 %cmp71.not, label %for.cond.preheader.cleanup39_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup39_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.072 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %call3 = tail call ptr @pci_irq_get_affinity(ptr noundef %11, i32 noundef %i.072) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.body, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.body
  %call1568 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef nonnull %call3, ptr noundef nonnull @__cpu_present_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1568, i32 %12)
  %cmp1669 = icmp ult i32 %call1568, %12
  br i1 %cmp1669, label %do.body18.lr.ph, label %for.cond14.preheader.cleanup_crit_edge

for.cond14.preheader.cleanup_crit_edge:           ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body18.lr.ph:                                  ; preds = %for.cond14.preheader
  %arrayidx = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 27, i32 %i.072
  br label %do.body18

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_map_wq_cpu.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_map_wq_cpu, %if.then10)) #8
          to label %cleanup [label %if.then10], !srcloc !97

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_map_wq_cpu.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %i.072) #8
  br label %cleanup

do.body18:                                        ; preds = %do.end35.do.body18_crit_edge, %do.body18.lr.ph
  %call1570 = phi i32 [ %call1568, %do.body18.lr.ph ], [ %call15, %do.end35.do.body18_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_map_wq_cpu.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_map_wq_cpu, %if.then30)) #8
          to label %do.end35 [label %if.then30], !srcloc !97

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_map_wq_cpu.__UNIQUE_ID_ddebug314, ptr noundef %dev32, ptr noundef nonnull @.str.4, i32 noundef %call1570, i32 noundef %i.072) #8
  br label %do.end35

do.end35:                                         ; preds = %if.then30, %do.body18
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %wq_cpu_array to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wq_cpu_array, align 8
  %arrayidx37 = getelementptr ptr, ptr %20, i32 %call1570
  %21 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %arrayidx37, align 4
  %call15 = tail call i32 @cpumask_next_and(i32 noundef %call1570, ptr noundef nonnull %call3, ptr noundef nonnull @__cpu_present_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %cmp16 = icmp ult i32 %call15, %22
  br i1 %cmp16, label %do.end35.do.body18_crit_edge, label %do.end35.cleanup_crit_edge

do.end35.cleanup_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end35.do.body18_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

cleanup:                                          ; preds = %do.end35.cleanup_crit_edge, %if.then10, %do.body, %for.cond14.preheader.cleanup_crit_edge
  %inc = add nuw i32 %i.072, 1
  %23 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %config, align 8
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.cleanup39_crit_edge

cleanup.cleanup39_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup39:                                        ; preds = %cleanup.cleanup39_crit_edge, %for.cond.preheader.cleanup39_crit_edge, %if.end7.i.i.cleanup39_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup39_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %for.cond.preheader.cleanup39_crit_edge ], [ 0, %cleanup.cleanup39_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_irq_get_affinity(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_queue_alloc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_eq_modify_delay(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cq_alloc_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_fc_rq_set_alloc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_hw_del_eq(ptr noundef %eq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %eq, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cq_list = getelementptr inbounds %struct.hw_eq, ptr %eq, i32 0, i32 7
  %0 = ptrtoint ptr %cq_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq_list, align 4
  %cmp.not23 = icmp eq ptr %1, %cq_list
  br i1 %cmp.not23, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %cq.024 = phi ptr [ %cq_next.0, %for.body.for.body_crit_edge ], [ %1, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %cq.024 to i32
  call void @__asan_load4_noabort(i32 %2)
  %cq_next.0 = load ptr, ptr %cq.024, align 4
  tail call void @efct_hw_del_cq(ptr noundef %cq.024)
  %cmp.not = icmp eq ptr %cq_next.0, %cq_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %eq) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %eq, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eq, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.list_del.exit_crit_edge
  %9 = ptrtoint ptr %eq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %eq, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %eq, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %hw = getelementptr inbounds %struct.hw_eq, ptr %eq, i32 0, i32 5
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %instance = getelementptr inbounds %struct.hw_eq, ptr %eq, i32 0, i32 2
  %13 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %instance, align 4
  %arrayidx = getelementptr %struct.efct_hw, ptr %12, i32 0, i32 31, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef nonnull %eq) #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_hw_del_cq(ptr noundef %cq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cq, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %q_list = getelementptr inbounds %struct.hw_cq, ptr %cq, i32 0, i32 7
  %0 = ptrtoint ptr %q_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_list, align 4
  %cmp.not55 = icmp eq ptr %1, %q_list
  br i1 %cmp.not55, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %q.056 = phi ptr [ %q_next.060, %for.inc.for.body_crit_edge ], [ %1, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %q.056 to i32
  call void @__asan_load4_noabort(i32 %2)
  %q_next.060 = load ptr, ptr %q.056, align 4
  %type = getelementptr inbounds %struct.hw_q, ptr %q.056, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %for.body.for.inc_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb7
    i32 4, label %sw.bb8
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %tobool.not.i = icmp eq ptr %q.056, null
  br i1 %tobool.not.i, label %sw.bb.for.inc_crit_edge, label %if.end.i

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i:                                         ; preds = %sw.bb
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %q.056) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %q.056, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %q.056 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %q.056, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %q.056 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %q.056, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %q.056, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cq.i = getelementptr inbounds %struct.hw_mq, ptr %q.056, i32 0, i32 5
  %14 = ptrtoint ptr %cq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cq.i, align 4
  %eq.i = getelementptr inbounds %struct.hw_cq, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %eq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eq.i, align 4
  %hw.i = getelementptr inbounds %struct.hw_eq, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw.i, align 4
  %instance.i = getelementptr inbounds %struct.hw_mq, ptr %q.056, i32 0, i32 2
  %20 = ptrtoint ptr %instance.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %instance.i, align 4
  %arrayidx.i = getelementptr %struct.efct_hw, ptr %19, i32 0, i32 29, i32 %21
  br label %for.inc.sink.split

sw.bb7:                                           ; preds = %for.body
  %tobool.not.i28 = icmp eq ptr %q.056, null
  br i1 %tobool.not.i28, label %sw.bb7.for.inc_crit_edge, label %if.end.i30

sw.bb7.for.inc_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i30:                                       ; preds = %sw.bb7
  %call.i.i.i29 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %q.056) #8
  br i1 %call.i.i.i29, label %if.end.i.i.i33, label %if.end.i30.list_del.exit.i40_crit_edge

if.end.i30.list_del.exit.i40_crit_edge:           ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i40

if.end.i.i.i33:                                   ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i31 = getelementptr inbounds %struct.list_head, ptr %q.056, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i31, align 4
  %24 = ptrtoint ptr %q.056 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %q.056, align 4
  %prev1.i.i.i.i32 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i32, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit.i40

list_del.exit.i40:                                ; preds = %if.end.i.i.i33, %if.end.i30.list_del.exit.i40_crit_edge
  %28 = ptrtoint ptr %q.056 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %q.056, align 4
  %prev.i.i34 = getelementptr inbounds %struct.list_head, ptr %q.056, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i34, align 4
  %cq.i35 = getelementptr inbounds %struct.hw_wq, ptr %q.056, i32 0, i32 6
  %30 = ptrtoint ptr %cq.i35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cq.i35, align 4
  %eq.i36 = getelementptr inbounds %struct.hw_cq, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %eq.i36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %eq.i36, align 4
  %hw.i37 = getelementptr inbounds %struct.hw_eq, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %hw.i37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw.i37, align 4
  %instance.i38 = getelementptr inbounds %struct.hw_wq, ptr %q.056, i32 0, i32 2
  %36 = ptrtoint ptr %instance.i38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %instance.i38, align 4
  %arrayidx.i39 = getelementptr %struct.efct_hw, ptr %35, i32 0, i32 27, i32 %37
  br label %for.inc.sink.split

sw.bb8:                                           ; preds = %for.body
  %tobool.not.i41 = icmp eq ptr %q.056, null
  br i1 %tobool.not.i41, label %sw.bb8.for.inc_crit_edge, label %if.end.i43

sw.bb8.for.inc_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i43:                                       ; preds = %sw.bb8
  %rq_tracker.i = getelementptr inbounds %struct.hw_rq, ptr %q.056, i32 0, i32 18
  %38 = ptrtoint ptr %rq_tracker.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rq_tracker.i, align 4
  tail call void @kfree(ptr noundef %39) #8
  %40 = ptrtoint ptr %rq_tracker.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %rq_tracker.i, align 4
  %call.i.i.i42 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %q.056) #8
  br i1 %call.i.i.i42, label %if.end.i.i.i46, label %if.end.i43.list_del.exit.i52_crit_edge

if.end.i43.list_del.exit.i52_crit_edge:           ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i52

if.end.i.i.i46:                                   ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i44 = getelementptr inbounds %struct.list_head, ptr %q.056, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i44, align 4
  %43 = ptrtoint ptr %q.056 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %q.056, align 4
  %prev1.i.i.i.i45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i.i45, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del.exit.i52

list_del.exit.i52:                                ; preds = %if.end.i.i.i46, %if.end.i43.list_del.exit.i52_crit_edge
  %47 = ptrtoint ptr %q.056 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 256 to ptr), ptr %q.056, align 4
  %prev.i.i47 = getelementptr inbounds %struct.list_head, ptr %q.056, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i47, align 4
  %cq.i48 = getelementptr inbounds %struct.hw_rq, ptr %q.056, i32 0, i32 10
  %49 = ptrtoint ptr %cq.i48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cq.i48, align 4
  %eq.i49 = getelementptr inbounds %struct.hw_cq, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %eq.i49 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %eq.i49, align 4
  %hw2.i = getelementptr inbounds %struct.hw_eq, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %hw2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw2.i, align 4
  %instance.i50 = getelementptr inbounds %struct.hw_rq, ptr %q.056, i32 0, i32 2
  %55 = ptrtoint ptr %instance.i50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %instance.i50, align 4
  %arrayidx.i51 = getelementptr %struct.efct_hw, ptr %54, i32 0, i32 28, i32 %56
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %list_del.exit.i52, %list_del.exit.i40, %list_del.exit.i
  %arrayidx.i51.sink = phi ptr [ %arrayidx.i51, %list_del.exit.i52 ], [ %arrayidx.i39, %list_del.exit.i40 ], [ %arrayidx.i, %list_del.exit.i ]
  %57 = ptrtoint ptr %arrayidx.i51.sink to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %arrayidx.i51.sink, align 4
  tail call void @kfree(ptr noundef nonnull %q.056) #8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %sw.bb8.for.inc_crit_edge, %sw.bb7.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %q_next.060, %q_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %cq) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i53 = getelementptr inbounds %struct.list_head, ptr %cq, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i53, align 4
  %60 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cq, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev1.i.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %59, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.list_del.exit_crit_edge
  %64 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 256 to ptr), ptr %cq, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cq, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %eq = getelementptr inbounds %struct.hw_cq, ptr %cq, i32 0, i32 5
  %66 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %eq, align 4
  %hw = getelementptr inbounds %struct.hw_eq, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw, align 4
  %instance = getelementptr inbounds %struct.hw_cq, ptr %cq, i32 0, i32 2
  %70 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %instance, align 4
  %arrayidx = getelementptr %struct.efct_hw, ptr %69, i32 0, i32 30, i32 %71
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef nonnull %cq) #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_hw_del_mq(ptr noundef %mq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mq, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %mq) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mq, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mq, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %6 = ptrtoint ptr %mq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %mq, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mq, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cq = getelementptr inbounds %struct.hw_mq, ptr %mq, i32 0, i32 5
  %8 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cq, align 4
  %eq = getelementptr inbounds %struct.hw_cq, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eq, align 4
  %hw = getelementptr inbounds %struct.hw_eq, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %instance = getelementptr inbounds %struct.hw_mq, ptr %mq, i32 0, i32 2
  %14 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %instance, align 4
  %arrayidx = getelementptr %struct.efct_hw, ptr %13, i32 0, i32 29, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef nonnull %mq) #8
  br label %return

return:                                           ; preds = %list_del.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_hw_del_wq(ptr noundef %wq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wq, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %wq) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %wq, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %6 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %wq, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %wq, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cq = getelementptr inbounds %struct.hw_wq, ptr %wq, i32 0, i32 6
  %8 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cq, align 4
  %eq = getelementptr inbounds %struct.hw_cq, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eq, align 4
  %hw = getelementptr inbounds %struct.hw_eq, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %instance = getelementptr inbounds %struct.hw_wq, ptr %wq, i32 0, i32 2
  %14 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %instance, align 4
  %arrayidx = getelementptr %struct.efct_hw, ptr %13, i32 0, i32 27, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef nonnull %wq) #8
  br label %return

return:                                           ; preds = %list_del.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_hw_del_rq(ptr noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rq, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rq_tracker = getelementptr inbounds %struct.hw_rq, ptr %rq, i32 0, i32 18
  %0 = ptrtoint ptr %rq_tracker to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_tracker, align 4
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %rq_tracker to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rq_tracker, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %rq) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rq, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rq, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %9 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %rq, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %rq, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cq = getelementptr inbounds %struct.hw_rq, ptr %rq, i32 0, i32 10
  %11 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cq, align 4
  %eq = getelementptr inbounds %struct.hw_cq, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %eq, align 4
  %hw2 = getelementptr inbounds %struct.hw_eq, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw2, align 4
  %instance = getelementptr inbounds %struct.hw_rq, ptr %rq, i32 0, i32 2
  %17 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %instance, align 4
  %arrayidx = getelementptr %struct.efct_hw, ptr %16, i32 0, i32 28, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef nonnull %rq) #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_rqpair_process_rq(ptr noundef %hw, ptr nocapture noundef readonly %cq, ptr noundef %cqe) local_unnamed_addr #0 align 64 {
entry:
  %rq_id = alloca i16, align 2
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rq_id) #8
  %0 = ptrtoint ptr %rq_id to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %rq_id, align 2, !annotation !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #8
  %1 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %index, align 4, !annotation !99
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %call = call i32 @sli_fc_rqe_rqid_and_index(ptr noundef %sli, ptr noundef %cqe, ptr noundef nonnull %rq_id, ptr noundef nonnull %index) #8
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 0, label %if.end55
    i32 17, label %entry.sw.bb_crit_edge
    i32 20, label %entry.sw.bb_crit_edge188
    i32 18, label %entry.do.body36_crit_edge
    i32 19, label %entry.do.body36_crit_edge189
  ]

entry.do.body36_crit_edge189:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

entry.do.body36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

entry.sw.bb_crit_edge188:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge188
  %3 = ptrtoint ptr %rq_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rq_id, align 2
  %rq_hash.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 25
  %call.i = call i32 @efct_hw_queue_hash_find(ptr noundef %rq_hash.i, i16 noundef zeroext %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %do.body, label %if.end8

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_rqpair_process_rq.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_rqpair_process_rq, %if.then7)) #8
          to label %cleanup [label %if.then7], !srcloc !97

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %9 = ptrtoint ptr %rq_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %rq_id, align 2
  %conv = zext i16 %10 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_rqpair_process_rq.__UNIQUE_ID_ddebug319, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call, i32 noundef %conv) #8
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  %conv9 = trunc i32 %call.i to i16
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %conv10 = trunc i32 %12 to i16
  %call11 = call fastcc ptr @efct_hw_rqpair_get(ptr noundef %hw, i16 noundef zeroext %conv9, i16 noundef zeroext %conv10)
  %call.i178 = call fastcc i32 @efct_hw_rqpair_put(ptr noundef %hw, ptr noundef %call11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool.not.i = icmp eq i32 %call.i178, 0
  br i1 %tobool.not.i, label %if.end8.cleanup_crit_edge, label %do.body15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_rqpair_process_rq.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_rqpair_process_rq, %if.then27)) #8
          to label %cleanup [label %if.then27], !srcloc !97

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_rqpair_process_rq.__UNIQUE_ID_ddebug320, ptr noundef %dev30, ptr noundef nonnull @.str.25, i32 noundef %call) #8
  br label %cleanup

do.body36:                                        ; preds = %entry.do.body36_crit_edge, %entry.do.body36_crit_edge189
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_rqpair_process_rq.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_rqpair_process_rq, %if.then48)) #8
          to label %cleanup [label %if.then48], !srcloc !97

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_rqpair_process_rq.__UNIQUE_ID_ddebug321, ptr noundef %dev51, ptr noundef nonnull @.str.26, i32 noundef %call) #8
  br label %cleanup

if.end55:                                         ; preds = %entry
  %25 = ptrtoint ptr %rq_id to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rq_id, align 2
  %rq_hash.i180 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 25
  %call.i181 = call i32 @efct_hw_queue_hash_find(ptr noundef %rq_hash.i180, i16 noundef zeroext %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %cmp57 = icmp slt i32 %call.i181, 0
  br i1 %cmp57, label %do.body60, label %if.end80

do.body60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_rqpair_process_rq.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_rqpair_process_rq, %if.then72)) #8
          to label %cleanup [label %if.then72], !srcloc !97

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %rq_id to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rq_id, align 2
  %conv76 = zext i16 %32 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_rqpair_process_rq.__UNIQUE_ID_ddebug322, ptr noundef %dev75, ptr noundef nonnull @.str.27, i32 noundef %conv76) #8
  br label %cleanup

if.end80:                                         ; preds = %if.end55
  %arrayidx = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 13, i32 %call.i181
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx, align 2
  %idxprom = zext i16 %34 to i32
  %arrayidx81 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 28, i32 %idxprom
  %35 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx81, align 4
  %use_count = getelementptr inbounds %struct.hw_rq, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %use_count, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %use_count, align 4
  %conv82 = trunc i32 %call.i181 to i16
  %39 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index, align 4
  %conv83 = trunc i32 %40 to i16
  %call84 = call fastcc ptr @efct_hw_rqpair_get(ptr noundef %hw, i16 noundef zeroext %conv82, i16 noundef zeroext %conv83)
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %do.end103, label %if.end119, !prof !98

do.end103:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 585, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end119:                                        ; preds = %if.end80
  %hw120 = getelementptr inbounds %struct.efc_hw_sequence, ptr %call84, i32 0, i32 1
  %41 = ptrtoint ptr %hw120 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %hw, ptr %hw120, align 4
  %status.i = getelementptr inbounds %struct.sli4_fc_async_rcqe, ptr %cqe, i32 0, i32 1
  %42 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %43)
  %cmp.i = icmp eq i8 %43, 16
  br i1 %cmp.i, label %if.then.i, label %if.end119.sli_fc_rqe_length.exit_crit_edge

if.end119.sli_fc_rqe_length.exit_crit_edge:       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %sli_fc_rqe_length.exit

if.then.i:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  %hdpl_byte.i = getelementptr inbounds %struct.sli4_fc_async_rcqe, ptr %cqe, i32 0, i32 9
  %44 = ptrtoint ptr %hdpl_byte.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %hdpl_byte.i, align 1
  %46 = and i8 %45, 63
  %and.i = zext i8 %46 to i32
  %data_placement_length.i = getelementptr inbounds %struct.sli4_fc_async_rcqe, ptr %cqe, i32 0, i32 5
  %47 = ptrtoint ptr %data_placement_length.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %data_placement_length.i, align 2
  %49 = call i16 @llvm.bswap.i16(i16 %48) #8
  %conv3.i = zext i16 %49 to i32
  br label %sli_fc_rqe_length.exit

sli_fc_rqe_length.exit:                           ; preds = %if.then.i, %if.end119.sli_fc_rqe_length.exit_crit_edge
  %h_len.0 = phi i32 [ %and.i, %if.then.i ], [ 0, %if.end119.sli_fc_rqe_length.exit_crit_edge ]
  %p_len.0 = phi i32 [ %conv3.i, %if.then.i ], [ 0, %if.end119.sli_fc_rqe_length.exit_crit_edge ]
  %header = getelementptr inbounds %struct.efc_hw_sequence, ptr %call84, i32 0, i32 3
  %50 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %header, align 4
  %len = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %51, i32 0, i32 1, i32 4
  %52 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %h_len.0, ptr %len, align 4
  %payload = getelementptr inbounds %struct.efc_hw_sequence, ptr %call84, i32 0, i32 4
  %53 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %payload, align 4
  %len124 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %54, i32 0, i32 1, i32 4
  %55 = ptrtoint ptr %len124 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %p_len.0, ptr %len124, align 4
  %arrayidx.i = getelementptr i8, ptr %cqe, i32 14
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i, align 1
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %57, label %sli_fc_rqe_length.exit.sli_fc_rqe_fcfi.exit_crit_edge [
    i8 4, label %sw.bb.i
    i8 9, label %sw.bb3.i
    i8 11, label %sw.bb7.i
  ]

sli_fc_rqe_length.exit.sli_fc_rqe_fcfi.exit_crit_edge: ; preds = %sli_fc_rqe_length.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sli_fc_rqe_fcfi.exit

sw.bb.i:                                          ; preds = %sli_fc_rqe_length.exit
  call void @__sanitizer_cov_trace_pc() #10
  %fcfi_rq_id_word.i = getelementptr inbounds %struct.sli4_fc_async_rcqe, ptr %cqe, i32 0, i32 4
  %59 = ptrtoint ptr %fcfi_rq_id_word.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %fcfi_rq_id_word.i, align 4
  %61 = lshr i16 %60, 8
  %62 = trunc i16 %61 to i8
  %conv2.i = and i8 %62, 63
  br label %sli_fc_rqe_fcfi.exit

sw.bb3.i:                                         ; preds = %sli_fc_rqe_length.exit
  call void @__sanitizer_cov_trace_pc() #10
  %fcfi_byte.i = getelementptr inbounds %struct.sli4_fc_async_rcqe_v1, ptr %cqe, i32 0, i32 3
  %63 = ptrtoint ptr %fcfi_byte.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %fcfi_byte.i, align 2
  %65 = and i8 %64, 63
  br label %sli_fc_rqe_fcfi.exit

sw.bb7.i:                                         ; preds = %sli_fc_rqe_length.exit
  call void @__sanitizer_cov_trace_pc() #10
  %flags0.i = getelementptr inbounds %struct.sli4_fc_optimized_write_cmd_cqe, ptr %cqe, i32 0, i32 3
  %66 = ptrtoint ptr %flags0.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %flags0.i, align 2
  %68 = and i8 %67, 63
  br label %sli_fc_rqe_fcfi.exit

sli_fc_rqe_fcfi.exit:                             ; preds = %sw.bb7.i, %sw.bb3.i, %sw.bb.i, %sli_fc_rqe_length.exit.sli_fc_rqe_fcfi.exit_crit_edge
  %fcfi.0.i = phi i8 [ -1, %sli_fc_rqe_length.exit.sli_fc_rqe_fcfi.exit_crit_edge ], [ %68, %sw.bb7.i ], [ %65, %sw.bb3.i ], [ %conv2.i, %sw.bb.i ]
  %fcfi = getelementptr inbounds %struct.efc_hw_sequence, ptr %call84, i32 0, i32 2
  %69 = ptrtoint ptr %fcfi to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %fcfi.0.i, ptr %fcfi, align 4
  %eq = getelementptr inbounds %struct.hw_cq, ptr %cq, i32 0, i32 5
  %70 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %eq, align 4
  %hw_priv = getelementptr inbounds %struct.efc_hw_sequence, ptr %call84, i32 0, i32 5
  %72 = ptrtoint ptr %hw_priv to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %hw_priv, align 4
  %73 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw, align 8
  %call128 = call i32 @efct_unsolicited_cb(ptr noundef %74, ptr noundef nonnull %call84) #8
  br label %cleanup

cleanup:                                          ; preds = %sli_fc_rqe_fcfi.exit, %do.end103, %if.then72, %do.body60, %if.then48, %do.body36, %if.then27, %do.body15, %if.end8.cleanup_crit_edge, %if.then7, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end103 ], [ 0, %sli_fc_rqe_fcfi.exit ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.then48 ], [ -5, %if.then27 ], [ -5, %if.then7 ], [ -5, %if.then72 ], [ -5, %do.body ], [ -5, %do.body15 ], [ -5, %do.body36 ], [ -5, %do.body60 ], [ -5, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rq_id) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_fc_rqe_rqid_and_index(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @efct_hw_rqpair_get(ptr noundef %hw, i16 noundef zeroext %rqindex, i16 noundef zeroext %bufindex) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %rqindex to i32
  %conv = zext i16 %bufindex to i32
  %length = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 12, i32 %idxprom, i32 4
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %bufindex)
  %cmp.not = icmp ugt i16 %1, %bufindex
  br i1 %cmp.not, label %do.body14, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv6 = zext i16 %1 to i32
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %id = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 12, i32 %idxprom, i32 6
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %id, align 2
  %conv12 = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %idxprom, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv12) #12
  br label %cleanup

do.body14:                                        ; preds = %entry
  %arrayidx3 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 13, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx3, align 2
  %idxprom4 = zext i16 %9 to i32
  %arrayidx5 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 28, i32 %idxprom4
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5, align 4
  %lock = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 12, i32 %idxprom, i32 1
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %rq_tracker = getelementptr inbounds %struct.hw_rq, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %rq_tracker to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rq_tracker, align 4
  %arrayidx23 = getelementptr ptr, ptr %13, i32 %conv
  %14 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx23, align 4
  store ptr null, ptr %arrayidx23, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %do.end30, label %do.body14.if.end36_crit_edge

do.body14.if.end36_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.end30:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %index = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 12, i32 %idxprom, i32 2
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.33, i32 noundef %idxprom, i32 noundef %conv, i32 noundef %21) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end30, %do.body14.if.end36_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %15, %if.end36 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_rqpair_sequence_free(ptr noundef %hw, ptr noundef %seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @efct_hw_rqpair_put(ptr noundef %hw, ptr noundef %seq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_unsolicited_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efct_hw_rqpair_put(ptr noundef %hw, ptr noundef %seq) unnamed_addr #0 align 64 {
entry:
  %phys_hdr = alloca [2 x i32], align 4
  %phys_payload = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %header = getelementptr inbounds %struct.efc_hw_sequence, ptr %seq, i32 0, i32 3
  %0 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %header, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 12, i32 %idxprom
  %payload = getelementptr inbounds %struct.efc_hw_sequence, ptr %seq, i32 0, i32 4
  %4 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %payload, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 4
  %idxprom3 = zext i16 %7 to i32
  %arrayidx4 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 12, i32 %idxprom3
  %arrayidx8 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 13, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx8, align 2
  %conv = zext i16 %9 to i32
  %arrayidx10 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 28, i32 %conv
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx10, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %phys_hdr) #8
  %12 = getelementptr inbounds [2 x i32], ptr %phys_hdr, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %phys_payload) #8
  %13 = getelementptr inbounds [2 x i32], ptr %phys_payload, i32 0, i32 1
  %14 = ptrtoint ptr %phys_hdr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %phys_hdr, align 4
  %phys16 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %1, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %phys16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phys16, align 4
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %12, align 4
  %18 = ptrtoint ptr %phys_payload to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %phys_payload, align 4
  %phys26 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %5, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %phys26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phys26, align 4
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %13, align 4
  %lock = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 12, i32 %idxprom, i32 1
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %call34 = call i32 @sli_rq_write(ptr noundef %sli, ptr noundef %arrayidx4, ptr noundef nonnull %phys_payload) #8
  %call37 = call i32 @sli_rq_write(ptr noundef %sli, ptr noundef %arrayidx, ptr noundef nonnull %phys_hdr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp40 = icmp slt i32 %call34, 0
  %or.cond = select i1 %cmp38, i1 true, i1 %cmp40
  br i1 %or.cond, label %do.end44, label %if.end

do.end44:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %id = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 12, i32 %idxprom, i32 6
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %id, align 2
  %conv45 = zext i16 %27 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %conv45) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %call37, i32 %call34)
  %cmp47.not = icmp eq i32 %call37, %call34
  br i1 %cmp47.not, label %if.end.if.end65_crit_edge, label %do.end59, !prof !100

if.end.if.end65_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

do.end59:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 639, i32 noundef 9, ptr noundef null) #8
  br label %if.end65

if.end65:                                         ; preds = %do.end59, %if.end.if.end65_crit_edge
  %rq_tracker = getelementptr inbounds %struct.hw_rq, ptr %11, i32 0, i32 18
  %28 = ptrtoint ptr %rq_tracker to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rq_tracker, align 4
  %arrayidx73 = getelementptr ptr, ptr %29, i32 %call37
  %30 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx73, align 4
  %tobool74.not = icmp eq ptr %31, null
  br i1 %tobool74.not, label %if.then75, label %do.body78

if.then75:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %seq, ptr %arrayidx73, align 4
  br label %cleanup

do.body78:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_rqpair_put.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_rqpair_put, %if.then88)) #8
          to label %cleanup [label %if.then88], !srcloc !97

if.then88:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %dev91 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_rqpair_put.__UNIQUE_ID_ddebug323, ptr noundef %dev91, ptr noundef nonnull @.str.37, i32 noundef %conv, i32 noundef %call37) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %do.body78, %if.then75, %do.end44
  %retval.0 = phi i32 [ -5, %do.end44 ], [ 0, %do.body78 ], [ 0, %if.then88 ], [ 0, %if.then75 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call31) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %phys_payload) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %phys_hdr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_efc_hw_sequence_free(ptr nocapture noundef readonly %efc, ptr noundef %seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %efc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efc, align 8
  %hw = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19
  %call.i = tail call fastcc i32 @efct_hw_rqpair_put(ptr noundef %hw, ptr noundef %seq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.efct_hw_rqpair_sequence_free.exit_crit_edge, label %do.end.i

entry.efct_hw_rqpair_sequence_free.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efct_hw_rqpair_sequence_free.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28) #12
  br label %efct_hw_rqpair_sequence_free.exit

efct_hw_rqpair_sequence_free.exit:                ; preds = %do.end.i, %entry.efct_hw_rqpair_sequence_free.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %do.end.i ], [ 0, %entry.efct_hw_rqpair_sequence_free.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_queue_hash_find(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_rq_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !14, !15, !16, !18, !19, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 113, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @efct_hw_map_wq_cpu.__UNIQUE_ID_ddebug313, !1, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 119, i32 4}
!8 = !{ptr @efct_hw_map_wq_cpu.__UNIQUE_ID_ddebug314, !7, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 144, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @efct_hw_new_eq._entry, !10, !"_entry", i1 false, i1 false}
!15 = !{ptr @efct_hw_new_eq._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 153, i32 2}
!18 = !{ptr @efct_hw_new_eq.__UNIQUE_ID_ddebug315, !17, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 177, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @efct_hw_new_cq._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @efct_hw_new_cq._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 186, i32 2}
!26 = !{ptr @efct_hw_new_cq.__UNIQUE_ID_ddebug316, !25, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 223, i32 3}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @efct_hw_new_cq_set._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @efct_hw_new_cq_set._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 261, i32 3}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @efct_hw_new_mq._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @efct_hw_new_mq._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 269, i32 2}
!39 = !{ptr @efct_hw_new_mq.__UNIQUE_ID_ddebug317, !38, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 296, i32 3}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @efct_hw_new_wq._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @efct_hw_new_wq._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 304, i32 2}
!47 = !{ptr @efct_hw_new_wq.__UNIQUE_ID_ddebug318, !46, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 359, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @efct_hw_new_rq_set._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @efct_hw_new_rq_set._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 542, i32 5}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @efct_hw_rqpair_process_rq.__UNIQUE_ID_ddebug319, !54, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 553, i32 5}
!59 = !{ptr @efct_hw_rqpair_process_rq.__UNIQUE_ID_ddebug320, !58, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 565, i32 4}
!62 = !{ptr @efct_hw_rqpair_process_rq.__UNIQUE_ID_ddebug321, !61, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 576, i32 3}
!65 = !{ptr @efct_hw_rqpair_process_rq.__UNIQUE_ID_ddebug322, !64, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 664, i32 3}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @efct_hw_rqpair_sequence_free._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @efct_hw_rqpair_sequence_free._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 498, i32 3}
!73 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @efct_hw_rqpair_get._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @efct_hw_rqpair_get._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 511, i32 3}
!78 = !{ptr @efct_hw_rqpair_get._entry.32, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @efct_hw_rqpair_get._entry_ptr.34, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 633, i32 3}
!82 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @efct_hw_rqpair_put._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @efct_hw_rqpair_put._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/elx/efct/efct_hw_queues.c", i32 645, i32 3}
!87 = !{ptr @efct_hw_rqpair_put.__UNIQUE_ID_ddebug323, !86, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 2148969490, i64 2148969495, i64 2148969508, i64 2148969552, i64 2148969586, i64 2148969607}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{!"auto-init"}
!100 = !{!"branch_weights", i32 2000, i32 1}
