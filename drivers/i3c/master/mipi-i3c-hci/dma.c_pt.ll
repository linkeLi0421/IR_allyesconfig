; ModuleID = '/llk/IR_all_yes/drivers/i3c/master/mipi-i3c-hci/dma.c_pt.bc'
source_filename = "../drivers/i3c/master/mipi-i3c-hci/dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hci_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hci_cmd_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i3c_hci = type { %struct.i3c_master_controller, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i32, i32, i32, ptr }
%struct.i3c_master_controller = type { %struct.device, ptr, %struct.i2c_adapter, ptr, i8, %struct.anon.83, %struct.i3c_bus, ptr }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.83 = type { %struct.list_head, %struct.list_head }
%struct.i3c_bus = type { ptr, i32, [8 x i32], i32, %struct.anon.78, %struct.anon.79, %struct.rw_semaphore }
%struct.anon.78 = type { i32, i32 }
%struct.anon.79 = type { %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.hci_rings_data = type { i32, [0 x %struct.hci_rh_data] }
%struct.hci_rh_data = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.spinlock, %struct.completion }
%struct.i3c_dev_desc = type { %struct.i3c_i2c_dev_desc, %struct.i3c_device_info, %struct.mutex, ptr, ptr, ptr }
%struct.i3c_i2c_dev_desc = type { %struct.list_head, ptr, ptr }
%struct.i3c_device_info = type { i64, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16 }
%struct.i3c_hci_dev_data = type { i32, ptr }
%struct.hci_dma_dev_ibi_data = type { ptr, i32 }
%struct.i3c_ibi_slot = type { %struct.work_struct, ptr, i32, ptr }
%struct.hci_xfer = type { [4 x i32], i32, i8, ptr, i32, i32, ptr, %union.anon.84 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { ptr, ptr, ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.anon.86 = type { i32, i32, i32 }

@mipi_i3c_hci_dma = dso_local constant { %struct.hci_io_ops, [32 x i8] } { %struct.hci_io_ops { ptr @hci_dma_irq_handler, ptr @hci_dma_queue_xfer, ptr @hci_dma_dequeue_xfer, ptr @hci_dma_request_ibi, ptr @hci_dma_free_ibi, ptr @hci_dma_recycle_ibi_slot, ptr @hci_dma_init, ptr @hci_dma_cleanup }, [32 x i8] zeroinitializer }, align 32
@hci_dma_irq_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hci_dma_irq_handler = private unnamed_addr constant [20 x i8] c"hci_dma_irq_handler\00", align 1
@hci_dma_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.hci_dma_irq_handler, ptr @.str.2, i32 761, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ring %d: Transfer Aborted\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/i3c/master/mipi-i3c-hci/dma.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hci_dma_irq_handler._entry_ptr = internal global ptr @hci_dma_irq_handler._entry, section ".printk_index", align 4
@hci_dma_irq_handler._rs.5 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hci_dma_irq_handler._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.hci_dma_irq_handler, ptr @.str.2, i32 764, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ring %d: Inserted Stop on Mode Change\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hci_dma_irq_handler._entry_ptr.9 = internal global ptr @hci_dma_irq_handler._entry.6, section ".printk_index", align 4
@hci_dma_irq_handler._rs.10 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hci_dma_irq_handler._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.hci_dma_irq_handler, ptr @.str.2, i32 767, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ring %d: IBI Ring Full Condition\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@hci_dma_irq_handler._entry_ptr.14 = internal global ptr @hci_dma_irq_handler._entry.11, section ".printk_index", align 4
@hci_dma_process_ibi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 650, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IBI error from %#x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hci_dma_process_ibi\00", [44 x i8] zeroinitializer }, align 32
@hci_dma_process_ibi._entry_ptr = internal global ptr @hci_dma_process_ibi._entry, section ".printk_index", align 4
@hci_dma_process_ibi._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 658, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IBI for unknown device %#x\0A\00", [36 x i8] zeroinitializer }, align 32
@hci_dma_process_ibi._entry_ptr.19 = internal global ptr @hci_dma_process_ibi._entry.17, section ".printk_index", align 4
@hci_dma_process_ibi._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 666, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IBI payload too big (%d > %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@hci_dma_process_ibi._entry_ptr.22 = internal global ptr @hci_dma_process_ibi._entry.20, section ".printk_index", align 4
@hci_dma_process_ibi._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.2, i32 682, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no free slot for IBI\0A\00", [42 x i8] zeroinitializer }, align 32
@hci_dma_process_ibi._entry_ptr.25 = internal global ptr @hci_dma_process_ibi._entry.23, section ".printk_index", align 4
@hci_dma_xfer_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 521, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"response tid=%d when expecting %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hci_dma_xfer_done\00", [46 x i8] zeroinitializer }, align 32
@hci_dma_xfer_done._entry_ptr = internal global ptr @hci_dma_xfer_done._entry, section ".printk_index", align 4
@mipi_i3c_hci_cmd_v2 = external dso_local constant %struct.hci_cmd_ops, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@hci_dma_dequeue_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 455, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to abort the ring\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hci_dma_dequeue_xfer\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@hci_dma_dequeue_xfer._entry_ptr = internal global ptr @hci_dma_dequeue_xfer._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hci_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 219, ptr @.str.35, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%d DMA rings available\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hci_dma_init\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hci_dma_init._entry_ptr = internal global ptr @hci_dma_init._entry, section ".printk_index", align 4
@hci_dma_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.34, ptr @.str.2, i32 221, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"number of rings should be <= 8\0A\00", [32 x i8] zeroinitializer }, align 32
@hci_dma_init._entry_ptr.38 = internal global ptr @hci_dma_init._entry.36, section ".printk_index", align 4
@hci_dma_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.34, ptr @.str.2, i32 235, ptr @.str.35, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Ring %d at offset %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@hci_dma_init._entry_ptr.41 = internal global ptr @hci_dma_init._entry.39, section ".printk_index", align 4
@hci_dma_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&rh->lock\00", [22 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"mipi_i3c_hci_dma\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 775, i32 25 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 760, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 763, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 766, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 650, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 657, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 665, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 682, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 519, i32 5 }
@___asan_gen_.132 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 326, i32 6 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 455, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 219, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 221, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 235, i32 3 }
@___asan_gen_.174 = private constant [41 x i8] c"../drivers/i3c/master/mipi-i3c-hci/dma.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 241, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 87, i32 2 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @hci_dma_dequeue_xfer._entry, ptr @hci_dma_dequeue_xfer._entry_ptr, ptr @hci_dma_init._entry, ptr @hci_dma_init._entry.36, ptr @hci_dma_init._entry.39, ptr @hci_dma_init._entry_ptr, ptr @hci_dma_init._entry_ptr.38, ptr @hci_dma_init._entry_ptr.41, ptr @hci_dma_irq_handler._entry, ptr @hci_dma_irq_handler._entry.11, ptr @hci_dma_irq_handler._entry.6, ptr @hci_dma_irq_handler._entry_ptr, ptr @hci_dma_irq_handler._entry_ptr.14, ptr @hci_dma_irq_handler._entry_ptr.9, ptr @hci_dma_process_ibi._entry, ptr @hci_dma_process_ibi._entry.17, ptr @hci_dma_process_ibi._entry.20, ptr @hci_dma_process_ibi._entry.23, ptr @hci_dma_process_ibi._entry_ptr, ptr @hci_dma_process_ibi._entry_ptr.19, ptr @hci_dma_process_ibi._entry_ptr.22, ptr @hci_dma_process_ibi._entry_ptr.25, ptr @hci_dma_xfer_done._entry, ptr @hci_dma_xfer_done._entry_ptr, ptr @mipi_i3c_hci_dma, ptr @hci_dma_irq_handler._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @hci_dma_irq_handler._rs.5, ptr @.str.7, ptr @.str.8, ptr @hci_dma_irq_handler._rs.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @hci_dma_init.__key, ptr @.str.42, ptr @init_completion.__key, ptr @.str.43], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_i3c_hci_dma to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_dma_irq_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_dma_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_dma_irq_handler._rs.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_dma_irq_handler._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_dma_irq_handler._rs.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_dma_irq_handler._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_dma_process_ibi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_dma_process_ibi._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_dma_process_ibi._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_dma_process_ibi._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_dma_xfer_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_dma_dequeue_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_dma_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_dma_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_dma_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hci_dma_irq_handler(ptr noundef %hci, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io_data = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 10
  %0 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool.not120.not = icmp eq i32 %mask, 0
  br i1 %tobool.not120.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %devs.i.i = getelementptr inbounds %struct.i3c_master_controller, ptr %hci, i32 0, i32 6, i32 5
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %mask.addr.0131 = phi i32 [ %mask, %for.body.lr.ph ], [ %mask.addr.1, %cleanup.for.body_crit_edge ]
  %i.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %handled.0.off0121 = phi i1 [ false, %for.body.lr.ph ], [ %handled.1.off0, %cleanup.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0122
  %and = and i32 %mask.addr.0131, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %neg = xor i32 %shl, -1
  %and3 = and i32 %mask.addr.0131, %neg
  %arrayidx = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.0122
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !85
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %4) #6, !srcloc !88
  %and11 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body.if.end14_crit_edge, label %if.then13

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then13:                                        ; preds = %do.body
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 40
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  %11 = lshr i32 %10, 8
  %shr.i = and i32 %11, 255
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %add.ptr18.i = getelementptr i8, ptr %13, i32 44
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #6, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %15 = lshr i32 %14, 8
  %shr39.i = and i32 %15, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %shr39.i)
  %cmp.not381.i = icmp eq i32 %shr.i, %shr39.i
  br i1 %cmp.not381.i, label %if.then13.if.end14_crit_edge, label %for.body.lr.ph.i

if.then13.if.end14_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

for.body.lr.ph.i:                                 ; preds = %if.then13
  %ibi_status40.i = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.0122, i32 3
  %16 = ptrtoint ptr %ibi_status40.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ibi_status40.i, align 4
  %ibi_status_sz.i = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.0122, i32 14
  %18 = ptrtoint ptr %ibi_status_sz.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ibi_status_sz.i, align 4
  %ibi_chunk_sz.i = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.0122, i32 15
  %ibi_status_entries.i = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.0122, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ibi_status_error.0386.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ibi_status_error.1.i, %for.inc.i.for.body.i_crit_edge ]
  %ptr.0385.i = phi i32 [ %shr.i, %for.body.lr.ph.i ], [ %rem.i, %for.inc.i.for.body.i_crit_edge ]
  %ibi_size.0384.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ibi_size.1366.i, %for.inc.i.for.body.i_crit_edge ]
  %ibi_chunks.0383.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %ibi_addr.0382.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %ibi_addr.1.i, %for.inc.i.for.body.i_crit_edge ]
  %mul.i = mul i32 %ptr.0385.i, %19
  %add.ptr41.i = getelementptr i8, ptr %17, i32 %mul.i
  %20 = ptrtoint ptr %add.ptr41.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ibi_status_error.0386.i)
  %tobool.not.i = icmp eq i32 %ibi_status_error.0386.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.body.i.do.end105.i_crit_edge

for.body.i.do.end105.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end105.i

if.else.i:                                        ; preds = %for.body.i
  %and43.i = and i32 %21, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.else46.i, label %if.else.i.do.end105.i_crit_edge

if.else.i.do.end105.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end105.i

if.else46.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ibi_addr.0382.i)
  %cmp47.i = icmp eq i32 %ibi_addr.0382.i, -1
  %and65.i = lshr i32 %21, 9
  %shr66.i = and i32 %and65.i, 127
  br i1 %cmp47.i, label %if.else46.i.do.end105.i_crit_edge, label %if.else67.i

if.else46.i.do.end105.i_crit_edge:                ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end105.i

if.else67.i:                                      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %ibi_addr.0382.i, i32 %shr66.i)
  %cmp86.not.i = icmp eq i32 %ibi_addr.0382.i, %shr66.i
  %spec.select.i = select i1 %cmp86.not.i, i32 0, i32 %21
  br label %do.end105.i

do.end105.i:                                      ; preds = %if.else67.i, %if.else46.i.do.end105.i_crit_edge, %if.else.i.do.end105.i_crit_edge, %for.body.i.do.end105.i_crit_edge
  %ibi_addr.1.i = phi i32 [ %ibi_addr.0382.i, %for.body.i.do.end105.i_crit_edge ], [ %ibi_addr.0382.i, %if.else.i.do.end105.i_crit_edge ], [ %ibi_addr.0382.i, %if.else67.i ], [ %shr66.i, %if.else46.i.do.end105.i_crit_edge ]
  %ibi_status_error.1.i = phi i32 [ %ibi_status_error.0386.i, %for.body.i.do.end105.i_crit_edge ], [ %21, %if.else.i.do.end105.i_crit_edge ], [ %spec.select.i, %if.else67.i ], [ 0, %if.else46.i.do.end105.i_crit_edge ]
  %and107.i = lshr i32 %21, 16
  %shr108.i = and i32 %and107.i, 255
  %add.i = add i32 %shr108.i, %ibi_chunks.0383.i
  %and109.i = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109.i)
  %tobool110.not.i = icmp eq i32 %and109.i, 0
  br i1 %tobool110.not.i, label %for.inc.i, label %if.end141.i

for.inc.i:                                        ; preds = %do.end105.i
  %22 = ptrtoint ptr %ibi_chunk_sz.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ibi_chunk_sz.i, align 4
  %mul112.i = mul i32 %23, %shr108.i
  %ibi_size.1366.i = add i32 %mul112.i, %ibi_size.0384.i
  %add137.i = add i32 %ptr.0385.i, 1
  %24 = ptrtoint ptr %ibi_status_entries.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ibi_status_entries.i, align 4
  %rem.i = urem i32 %add137.i, %25
  %cmp.not.i = icmp eq i32 %rem.i, %shr39.i
  br i1 %cmp.not.i, label %for.inc.i.if.end14_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end14_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end141.i:                                      ; preds = %do.end105.i
  %and131.i = and i32 %21, 255
  %ibi_size.1.i = add i32 %and131.i, %ibi_size.0384.i
  %add142.i = add nuw i32 %ptr.0385.i, 1
  %26 = ptrtoint ptr %ibi_status_entries.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ibi_status_entries.i, align 4
  %rem144.i = urem i32 %add142.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ibi_status_error.1.i)
  %tobool145.not.i = icmp eq i32 %ibi_status_error.1.i, 0
  br i1 %tobool145.not.i, label %if.end141.i.for.cond.i.i_crit_edge, label %do.end149.i

if.end141.i.for.cond.i.i_crit_edge:               ; preds = %if.end141.i
  br label %for.cond.i.i

do.end149.i:                                      ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.15, i32 noundef %ibi_addr.1.i) #9
  br label %done.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end141.i.for.cond.i.i_crit_edge
  %dev.0.in.i.i = phi ptr [ %dev.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %devs.i.i, %if.end141.i.for.cond.i.i_crit_edge ]
  %28 = ptrtoint ptr %dev.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %dev.0.i.i = load ptr, ptr %dev.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %dev.0.i.i, %devs.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.do.end157.i_crit_edge, label %for.body.i.i

for.cond.i.i.do.end157.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end157.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %dyn_addr.i.i = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev.0.i.i, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %dyn_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dyn_addr.i.i, align 1
  %conv.i.i = zext i8 %30 to i32
  %cmp3.i.i = icmp eq i32 %ibi_addr.1.i, %conv.i.i
  br i1 %cmp3.i.i, label %i3c_hci_addr_to_dev.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i

i3c_hci_addr_to_dev.exit.i:                       ; preds = %for.body.i.i
  %tobool153.not.i = icmp eq ptr %dev.0.i.i, null
  br i1 %tobool153.not.i, label %i3c_hci_addr_to_dev.exit.i.do.end157.i_crit_edge, label %if.end160.i

i3c_hci_addr_to_dev.exit.i.do.end157.i_crit_edge: ; preds = %i3c_hci_addr_to_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end157.i

do.end157.i:                                      ; preds = %i3c_hci_addr_to_dev.exit.i.do.end157.i_crit_edge, %for.cond.i.i.do.end157.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.18, i32 noundef %ibi_addr.1.i) #9
  br label %done.i

if.end160.i:                                      ; preds = %i3c_hci_addr_to_dev.exit.i
  %master_priv.i.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev.0.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %master_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %master_priv.i.i, align 4
  %ibi_data.i = getelementptr inbounds %struct.i3c_hci_dev_data, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %ibi_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ibi_data.i, align 4
  %max_len.i = getelementptr inbounds %struct.hci_dma_dev_ibi_data, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %max_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ibi_size.1.i, i32 %36)
  %cmp162.i = icmp ugt i32 %ibi_size.1.i, %36
  br i1 %cmp162.i, label %do.end166.i, label %if.end170.i

do.end166.i:                                      ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.21, i32 noundef %ibi_size.1.i, i32 noundef %36) #9
  br label %done.i

if.end170.i:                                      ; preds = %if.end160.i
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 4
  %call171.i = tail call ptr @i3c_generic_ibi_get_free_slot(ptr noundef %38) #6
  %tobool172.not.i = icmp eq ptr %call171.i, null
  br i1 %tobool172.not.i, label %do.end176.i, label %if.end179.i

do.end176.i:                                      ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.24) #9
  br label %done.i

if.end179.i:                                      ; preds = %if.end170.i
  %39 = ptrtoint ptr %ibi_chunk_sz.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ibi_chunk_sz.i, align 4
  %ibi_chunk_ptr.i = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.0122, i32 17
  %41 = ptrtoint ptr %ibi_chunk_ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ibi_chunk_ptr.i, align 4
  %mul181.i = mul i32 %42, %40
  %ibi_data182.i = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.0122, i32 4
  %43 = ptrtoint ptr %ibi_data182.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ibi_data182.i, align 4
  %add.ptr183.i = getelementptr i8, ptr %44, i32 %mul181.i
  %ibi_data_dma.i = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.0122, i32 8
  %45 = ptrtoint ptr %ibi_data_dma.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ibi_data_dma.i, align 4
  %add184.i = add i32 %46, %mul181.i
  %ibi_chunks_total.i = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.0122, i32 11
  %47 = ptrtoint ptr %ibi_chunks_total.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ibi_chunks_total.i, align 4
  %sub.i = sub i32 %48, %42
  %mul187.i = mul i32 %sub.i, %40
  %49 = tail call i32 @llvm.umin.i32(i32 %mul187.i, i32 %ibi_size.1.i) #6
  tail call void @dma_sync_single_for_cpu(ptr noundef %hci, i32 noundef %add184.i, i32 noundef %49, i32 noundef 2) #6
  %data.i = getelementptr inbounds %struct.i3c_ibi_slot, ptr %call171.i, i32 0, i32 3
  %50 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i, align 4
  %52 = call ptr @memcpy(ptr %51, ptr %add.ptr183.i, i32 %49)
  call void @__sanitizer_cov_trace_cmp4(i32 %ibi_size.1.i, i32 %mul187.i)
  %cmp193.i = icmp ugt i32 %ibi_size.1.i, %mul187.i
  br i1 %cmp193.i, label %if.then194.i, label %if.end179.i.if.end203.i_crit_edge

if.end179.i.if.end203.i_crit_edge:                ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end203.i

if.then194.i:                                     ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %ibi_data182.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ibi_data182.i, align 4
  %55 = ptrtoint ptr %ibi_data_dma.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ibi_data_dma.i, align 4
  %sub199.i = sub i32 %ibi_size.1.i, %49
  tail call void @dma_sync_single_for_cpu(ptr noundef %hci, i32 noundef %56, i32 noundef %sub199.i, i32 noundef 2) #6
  %57 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i, align 4
  %add.ptr201.i = getelementptr i8, ptr %58, i32 %49
  %59 = call ptr @memcpy(ptr %add.ptr201.i, ptr %54, i32 %sub199.i)
  br label %if.end203.i

if.end203.i:                                      ; preds = %if.then194.i, %if.end179.i.if.end203.i_crit_edge
  %dev204.i = getelementptr inbounds %struct.i3c_ibi_slot, ptr %call171.i, i32 0, i32 1
  %60 = ptrtoint ptr %dev204.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %dev.0.i.i, ptr %dev204.i, align 4
  %len.i = getelementptr inbounds %struct.i3c_ibi_slot, ptr %call171.i, i32 0, i32 2
  %61 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %ibi_size.1.i, ptr %len.i, align 4
  tail call void @i3c_master_queue_ibi(ptr noundef nonnull %dev.0.i.i, ptr noundef nonnull %call171.i) #6
  br label %done.i

done.i:                                           ; preds = %if.end203.i, %do.end176.i, %do.end166.i, %do.end157.i, %do.end149.i
  %lock.i = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.0122, i32 19
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx, align 4
  %add.ptr208.i = getelementptr i8, ptr %63, i32 40
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr208.i) #6, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %65 = and i32 %64, -65281
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #6
  %shl.i = shl i32 %rem144.i, 16
  %and233.i = and i32 %shl.i, 16711680
  %or.i = or i32 %66, %and233.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %67 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx, align 4
  %add.ptr238.i = getelementptr i8, ptr %69, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr238.i, i32 %67) #6, !srcloc !88
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  %ibi_chunk_ptr240.i = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.0122, i32 17
  %70 = ptrtoint ptr %ibi_chunk_ptr240.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ibi_chunk_ptr240.i, align 4
  %add241.i = add i32 %71, %add.i
  %ibi_chunks_total242.i = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.0122, i32 11
  %72 = ptrtoint ptr %ibi_chunks_total242.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ibi_chunks_total242.i, align 4
  %rem244.i = urem i32 %add241.i, %73
  store i32 %rem244.i, ptr %ibi_chunk_ptr240.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx, align 4
  %add.ptr251.i = getelementptr i8, ptr %75, i32 8
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr251.i) #6, !srcloc !85
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %add255.i = add i32 %77, %add.i
  %78 = tail call i32 @llvm.bswap.i32(i32 %add255.i) #6
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx, align 4
  %add.ptr257.i = getelementptr i8, ptr %80, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr257.i, i32 %78) #6, !srcloc !88
  br label %if.end14

if.end14:                                         ; preds = %done.i, %for.inc.i.if.end14_crit_edge, %if.then13.if.end14_crit_edge, %do.body.if.end14_crit_edge
  %and15 = and i32 %5, 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  %done_ptr1.i = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.0122, i32 16
  %81 = ptrtoint ptr %done_ptr1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %done_ptr1.i, align 4
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx, align 4
  %add.ptr118.i = getelementptr i8, ptr %84, i32 44
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118.i) #6, !srcloc !85
  %86 = lshr i32 %85, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %86)
  %cmp119.i = icmp eq i32 %82, %86
  br i1 %cmp119.i, label %if.then17.for.end.i_crit_edge, label %if.end.lr.ph.i

if.then17.for.end.i_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end.lr.ph.i:                                   ; preds = %if.then17
  %resp16.i = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.0122, i32 2
  %resp_struct_sz.i = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.0122, i32 13
  %src_xfers.i = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.0122, i32 18
  %xfer_entries.i = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.0122, i32 9
  br label %if.end.i

if.end.i:                                         ; preds = %if.end50.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %done_ptr.0120.i = phi i32 [ %82, %if.end.lr.ph.i ], [ %rem.i104, %if.end50.i.if.end.i_crit_edge ]
  %87 = ptrtoint ptr %resp16.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %resp16.i, align 4
  %89 = ptrtoint ptr %resp_struct_sz.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %resp_struct_sz.i, align 4
  %mul.i101 = mul i32 %90, %done_ptr.0120.i
  %add.ptr17.i = getelementptr i8, ptr %88, i32 %mul.i101
  %91 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr17.i, align 4
  %and34.i = lshr i32 %92, 24
  %shr35.i = and i32 %and34.i, 15
  %93 = ptrtoint ptr %src_xfers.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %src_xfers.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %94, i32 %done_ptr.0120.i
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i102 = icmp eq ptr %96, null
  br i1 %tobool.not.i102, label %if.end.i.if.end50.i_crit_edge, label %for.body.i.preheader.i

if.end.i.if.end50.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

for.body.i.preheader.i:                           ; preds = %if.end.i
  %97 = getelementptr %struct.hci_xfer, ptr %96, i32 0, i32 7
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  %data_len.i.i = getelementptr %struct.hci_xfer, ptr %96, i32 0, i32 4
  %100 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %data_len.i.i, align 4
  %rnw.i.i = getelementptr %struct.hci_xfer, ptr %96, i32 0, i32 2
  %102 = ptrtoint ptr %rnw.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %rnw.i.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i.i = icmp eq i8 %103, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  tail call void @dma_unmap_page_attrs(ptr noundef %hci, i32 noundef %99, i32 noundef %101, i32 noundef %cond.i.i, i32 noundef 0) #6
  %ring_entry.i = getelementptr inbounds %struct.hci_xfer, ptr %96, i32 0, i32 7, i32 0, i32 2
  %104 = ptrtoint ptr %ring_entry.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -1, ptr %ring_entry.i, align 4
  %response.i = getelementptr inbounds %struct.hci_xfer, ptr %96, i32 0, i32 1
  %105 = ptrtoint ptr %response.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %92, ptr %response.i, align 4
  %cmd_tid.i = getelementptr inbounds %struct.hci_xfer, ptr %96, i32 0, i32 5
  %106 = ptrtoint ptr %cmd_tid.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cmd_tid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr35.i, i32 %107)
  %cmp39.not.i = icmp eq i32 %shr35.i, %107
  br i1 %cmp39.not.i, label %for.body.i.preheader.i.if.end45.i_crit_edge, label %do.end43.i

for.body.i.preheader.i.if.end45.i_crit_edge:      ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

do.end43.i:                                       ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.26, i32 noundef %shr35.i, i32 noundef %107) #9
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end43.i, %for.body.i.preheader.i.if.end45.i_crit_edge
  %completion.i = getelementptr inbounds %struct.hci_xfer, ptr %96, i32 0, i32 6
  %108 = ptrtoint ptr %completion.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %completion.i, align 4
  %tobool46.not.i = icmp eq ptr %109, null
  br i1 %tobool46.not.i, label %if.end45.i.if.end50.i_crit_edge, label %if.then47.i

if.end45.i.if.end50.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

if.then47.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @complete(ptr noundef nonnull %109) #6
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then47.i, %if.end45.i.if.end50.i_crit_edge, %if.end.i.if.end50.i_crit_edge
  %add.i103 = add i32 %done_ptr.0120.i, 1
  %110 = ptrtoint ptr %xfer_entries.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %xfer_entries.i, align 4
  %rem.i104 = urem i32 %add.i103, %111
  %112 = ptrtoint ptr %done_ptr1.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %rem.i104, ptr %done_ptr1.i, align 4
  %113 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i105 = getelementptr i8, ptr %114, i32 44
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #6, !srcloc !85
  %116 = lshr i32 %115, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %cmp.i = icmp eq i32 %rem.i104, %116
  br i1 %cmp.i, label %if.end50.i.for.end.i_crit_edge, label %if.end50.i.if.end.i_crit_edge

if.end50.i.if.end.i_crit_edge:                    ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end50.i.for.end.i_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end50.i.for.end.i_crit_edge, %if.then17.for.end.i_crit_edge
  %done_ptr.0.lcssa.i = phi i32 [ %82, %if.then17.for.end.i_crit_edge ], [ %rem.i104, %if.end50.i.for.end.i_crit_edge ]
  %lock.i106 = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.0122, i32 19
  tail call void @_raw_spin_lock(ptr noundef %lock.i106) #6
  %117 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx, align 4
  %add.ptr55.i = getelementptr i8, ptr %118, i32 40
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55.i) #6, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %120 = and i32 %119, -16711681
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #6
  %shl.i109 = shl i32 %done_ptr.0.lcssa.i, 8
  %and80.i = and i32 %shl.i109, 65280
  %or.i110 = or i32 %121, %and80.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %122 = tail call i32 @llvm.bswap.i32(i32 %or.i110) #6
  %123 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx, align 4
  %add.ptr85.i = getelementptr i8, ptr %124, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i, i32 %122) #6, !srcloc !88
  tail call void @_raw_spin_unlock(ptr noundef %lock.i106) #6
  br label %if.end18

if.end18:                                         ; preds = %for.end.i, %if.end14.if.end18_crit_edge
  %and19 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end22_crit_edge, label %if.then21

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %op_done = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.0122, i32 20
  tail call void @complete(ptr noundef %op_done) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  %and23 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end36_crit_edge, label %do.body26

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

do.body26:                                        ; preds = %if.end22
  %call27 = tail call i32 @___ratelimit(ptr noundef nonnull @hci_dma_irq_handler._rs, ptr noundef nonnull @__func__.hci_dma_irq_handler) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.body26.if.end36_crit_edge, label %do.end32

do.body26.if.end36_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %hci, ptr noundef nonnull @.str.1, i32 noundef %i.0122) #9
  br label %if.end36

if.end36:                                         ; preds = %do.end32, %do.body26.if.end36_crit_edge, %if.end22.if.end36_crit_edge
  %and37 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end52_crit_edge, label %do.body40

if.end36.if.end52_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.body40:                                        ; preds = %if.end36
  %call41 = tail call i32 @___ratelimit(ptr noundef nonnull @hci_dma_irq_handler._rs.5, ptr noundef nonnull @__func__.hci_dma_irq_handler) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %do.body40.if.end52_crit_edge, label %do.end46

do.body40.if.end52_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %hci, ptr noundef nonnull @.str.7, i32 noundef %i.0122) #9
  br label %if.end52

if.end52:                                         ; preds = %do.end46, %do.body40.if.end52_crit_edge, %if.end36.if.end52_crit_edge
  %and53 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.cleanup_crit_edge, label %do.body56

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body56:                                        ; preds = %if.end52
  %call57 = tail call i32 @___ratelimit(ptr noundef nonnull @hci_dma_irq_handler._rs.10, ptr noundef nonnull @__func__.hci_dma_irq_handler) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %do.body56.cleanup_crit_edge, label %do.end62

do.body56.cleanup_crit_edge:                      ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end62:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.12, i32 noundef %i.0122) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %do.body56.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %handled.1.off0 = phi i1 [ %handled.0.off0121, %for.body.cleanup_crit_edge ], [ %handled.0.off0121, %if.end.cleanup_crit_edge ], [ true, %do.body56.cleanup_crit_edge ], [ true, %do.end62 ], [ true, %if.end52.cleanup_crit_edge ]
  %mask.addr.1 = phi i32 [ %mask.addr.0131, %for.body.cleanup_crit_edge ], [ %and3, %if.end.cleanup_crit_edge ], [ %and3, %do.body56.cleanup_crit_edge ], [ %and3, %do.end62 ], [ %and3, %if.end52.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.0122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.addr.1)
  %tobool.not = icmp ne i32 %mask.addr.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0122)
  %cmp = icmp ult i32 %i.0122, 7
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %handled.0.off0.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ %handled.1.off0, %cleanup.for.end_crit_edge ]
  ret i1 %handled.0.off0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_dma_queue_xfer(ptr noundef %hci, ptr noundef %xfer_list, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io_data = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 10
  %0 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_data, align 4
  %headers = getelementptr inbounds %struct.hci_rings_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %headers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %headers, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 40
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !85
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp242.not = icmp eq i32 %n, 0
  br i1 %cmp242.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %xfer16 = getelementptr inbounds %struct.hci_rings_data, ptr %1, i32 2
  %xfer_struct_sz = getelementptr inbounds %struct.hci_rings_data, ptr %1, i32 13
  %cmd = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 11
  %sub = add i32 %n, -1
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %hci, i32 0, i32 3
  %src_xfers = getelementptr inbounds %struct.hci_rings_data, ptr %1, i32 19
  %xfer_entries = getelementptr inbounds %struct.hci_rings_data, ptr %1, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0244 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %enqueue_ptr.0243 = phi i32 [ %5, %for.body.lr.ph ], [ %rem, %for.inc.for.body_crit_edge ]
  %add.ptr15 = getelementptr %struct.hci_xfer, ptr %xfer_list, i32 %i.0244
  %6 = ptrtoint ptr %xfer16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xfer16, align 4
  %8 = ptrtoint ptr %xfer_struct_sz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xfer_struct_sz, align 4
  %mul = mul i32 %9, %enqueue_ptr.0243
  %add.ptr17 = getelementptr i8, ptr %7, i32 %mul
  %10 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr15, align 4
  %incdec.ptr = getelementptr i32, ptr %add.ptr17, i32 1
  %12 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %add.ptr17, align 4
  %arrayidx20 = getelementptr [4 x i32], ptr %add.ptr15, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx20, align 4
  %incdec.ptr21 = getelementptr i32, ptr %incdec.ptr, i32 1
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %incdec.ptr, align 4
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd, align 8
  %cmp22 = icmp eq ptr %17, @mipi_i3c_hci_cmd_v2
  br i1 %cmp22, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx24 = getelementptr [4 x i32], ptr %add.ptr15, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx24, align 4
  %incdec.ptr25 = getelementptr i32, ptr %incdec.ptr21, i32 1
  %20 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %incdec.ptr21, align 4
  %arrayidx27 = getelementptr [4 x i32], ptr %add.ptr15, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx27, align 4
  %incdec.ptr28 = getelementptr i32, ptr %incdec.ptr25, i32 1
  %23 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %incdec.ptr25, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %ring_data.0 = phi ptr [ %incdec.ptr28, %if.then ], [ %incdec.ptr21, %for.body.if.end_crit_edge ]
  %data = getelementptr %struct.hci_xfer, ptr %xfer_list, i32 %i.0244, i32 3
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %if.then29, label %if.end.do.body37_crit_edge

if.end.do.body37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body37

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %data_len = getelementptr %struct.hci_xfer, ptr %xfer_list, i32 %i.0244, i32 4
  %26 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %data_len, align 4
  br label %do.body37

do.body37:                                        ; preds = %if.then29, %if.end.do.body37_crit_edge
  %data_len38 = getelementptr %struct.hci_xfer, ptr %xfer_list, i32 %i.0244, i32 4
  %27 = ptrtoint ptr %data_len38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len38, align 4
  %and54 = and i32 %28, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0244, i32 %sub)
  %cmp55 = icmp eq i32 %i.0244, %sub
  %cond = select i1 %cmp55, i32 1073741824, i32 0
  %or = or i32 %and54, %cond
  %incdec.ptr56 = getelementptr i32, ptr %ring_data.0, i32 1
  %29 = ptrtoint ptr %ring_data.0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or, ptr %ring_data.0, align 4
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %tobool58.not = icmp eq ptr %31, null
  br i1 %tobool58.not, label %do.body37.if.end80_crit_edge, label %if.then59

do.body37.if.end80_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then59:                                        ; preds = %do.body37
  %32 = ptrtoint ptr %data_len38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len38, align 4
  %rnw = getelementptr %struct.hci_xfer, ptr %xfer_list, i32 %i.0244, i32 2
  %34 = ptrtoint ptr %rnw to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rnw, align 4, !range !96
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %31) #6
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then59
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !100

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %hci) #6
  %36 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %39, %if.end.i.i ], [ %37, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool62.not = icmp eq i8 %35, 0
  %cond63 = select i1 %tobool62.not, i32 1, i32 2
  tail call void @debug_dma_map_single(ptr noundef %hci, ptr noundef nonnull %31, i32 noundef %33) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %40 = load ptr, ptr @mem_map, align 4
  %41 = ptrtoint ptr %31 to i32
  %sub.i = add i32 %41, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %40, i32 %shr.i
  %and.i = and i32 %41, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %hci, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %33, i32 noundef %cond63, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %42 = getelementptr %struct.hci_xfer, ptr %xfer_list, i32 %i.0244, i32 7
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i, ptr %42, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %hci, i32 noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then70, label %if.end71

if.then70:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0244)
  %cmp5.not.i = icmp eq i32 %i.0244, 0
  br i1 %cmp5.not.i, label %if.then70.cleanup151_crit_edge, label %if.then70.for.body.i_crit_edge

if.then70.for.body.i_crit_edge:                   ; preds = %if.then70
  br label %for.body.i

if.then70.cleanup151_crit_edge:                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup151

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then70.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then70.for.body.i_crit_edge ]
  %44 = getelementptr %struct.hci_xfer, ptr %xfer_list, i32 %i.06.i, i32 7
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %data_len.i = getelementptr %struct.hci_xfer, ptr %xfer_list, i32 %i.06.i, i32 4
  %47 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_len.i, align 4
  %rnw.i = getelementptr %struct.hci_xfer, ptr %xfer_list, i32 %i.06.i, i32 2
  %49 = ptrtoint ptr %rnw.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %rnw.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i = icmp eq i8 %50, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 2
  tail call void @dma_unmap_page_attrs(ptr noundef %hci, i32 noundef %46, i32 noundef %48, i32 noundef %cond.i, i32 noundef 0) #6
  %inc.i = add nuw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.0244
  br i1 %exitcond.not.i, label %for.body.i.cleanup151_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.cleanup151_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup151

if.end71:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %42, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.end71, %do.body37.if.end80_crit_edge
  %.sink = phi i32 [ %52, %if.end71 ], [ 0, %do.body37.if.end80_crit_edge ]
  %incdec.ptr78 = getelementptr i32, ptr %ring_data.0, i32 2
  %53 = ptrtoint ptr %incdec.ptr56 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink, ptr %incdec.ptr56, align 4
  %54 = ptrtoint ptr %incdec.ptr78 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %incdec.ptr78, align 4
  %55 = ptrtoint ptr %src_xfers to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %src_xfers, align 4
  %arrayidx81 = getelementptr ptr, ptr %56, i32 %enqueue_ptr.0243
  %57 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr15, ptr %arrayidx81, align 4
  %58 = getelementptr %struct.hci_xfer, ptr %xfer_list, i32 %i.0244, i32 7
  %ring_number = getelementptr inbounds %struct.anon.86, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %ring_number to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %ring_number, align 4
  %ring_entry = getelementptr inbounds %struct.anon.86, ptr %58, i32 0, i32 2
  %60 = ptrtoint ptr %ring_entry to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %enqueue_ptr.0243, ptr %ring_entry, align 4
  %add = add i32 %enqueue_ptr.0243, 1
  %61 = ptrtoint ptr %xfer_entries to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %xfer_entries, align 4
  %rem = urem i32 %add, %62
  %63 = ptrtoint ptr %headers to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %headers, align 4
  %add.ptr85 = getelementptr i8, ptr %64, i32 44
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #6, !srcloc !85
  %66 = lshr i32 %65, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %66)
  %cmp107 = icmp eq i32 %rem, %66
  br i1 %cmp107, label %if.then108, label %for.inc

if.then108:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0244)
  %cmp5.not.i221 = icmp eq i32 %i.0244, -1
  br i1 %cmp5.not.i221, label %if.then108.cleanup151_crit_edge, label %if.then108.for.body.i229_crit_edge

if.then108.for.body.i229_crit_edge:               ; preds = %if.then108
  br label %for.body.i229

if.then108.cleanup151_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup151

for.body.i229:                                    ; preds = %for.body.i229.for.body.i229_crit_edge, %if.then108.for.body.i229_crit_edge
  %i.06.i222 = phi i32 [ %inc.i227, %for.body.i229.for.body.i229_crit_edge ], [ 0, %if.then108.for.body.i229_crit_edge ]
  %67 = getelementptr %struct.hci_xfer, ptr %xfer_list, i32 %i.06.i222, i32 7
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %data_len.i223 = getelementptr %struct.hci_xfer, ptr %xfer_list, i32 %i.06.i222, i32 4
  %70 = ptrtoint ptr %data_len.i223 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %data_len.i223, align 4
  %rnw.i224 = getelementptr %struct.hci_xfer, ptr %xfer_list, i32 %i.06.i222, i32 2
  %72 = ptrtoint ptr %rnw.i224 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %rnw.i224, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i225 = icmp eq i8 %73, 0
  %cond.i226 = select i1 %tobool.not.i225, i32 1, i32 2
  tail call void @dma_unmap_page_attrs(ptr noundef %hci, i32 noundef %69, i32 noundef %71, i32 noundef %cond.i226, i32 noundef 0) #6
  %inc.i227 = add nuw i32 %i.06.i222, 1
  %exitcond.not.i228 = icmp eq i32 %i.06.i222, %i.0244
  br i1 %exitcond.not.i228, label %for.body.i229.cleanup151_crit_edge, label %for.body.i229.for.body.i229_crit_edge

for.body.i229.for.body.i229_crit_edge:            ; preds = %for.body.i229
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i229

for.body.i229.cleanup151_crit_edge:               ; preds = %for.body.i229
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup151

for.inc:                                          ; preds = %if.end80
  %inc = add nuw i32 %i.0244, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %enqueue_ptr.0.lcssa = phi i32 [ %5, %entry.for.end_crit_edge ], [ %rem, %for.inc.for.end_crit_edge ]
  %lock = getelementptr inbounds %struct.hci_rings_data, ptr %1, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %74 = ptrtoint ptr %headers to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %headers, align 4
  %add.ptr115 = getelementptr i8, ptr %75, i32 40
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #6, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %77 = and i32 %76, 16777215
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %and143 = and i32 %enqueue_ptr.0.lcssa, 255
  %or144 = or i32 %78, %and143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %79 = tail call i32 @llvm.bswap.i32(i32 %or144)
  %80 = ptrtoint ptr %headers to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %headers, align 4
  %add.ptr149 = getelementptr i8, ptr %81, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr149, i32 %79) #6, !srcloc !88
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  br label %cleanup151

cleanup151:                                       ; preds = %for.end, %for.body.i229.cleanup151_crit_edge, %if.then108.cleanup151_crit_edge, %for.body.i.cleanup151_crit_edge, %if.then70.cleanup151_crit_edge
  %retval.2 = phi i32 [ 0, %for.end ], [ -16, %if.then108.cleanup151_crit_edge ], [ -12, %if.then70.cleanup151_crit_edge ], [ -16, %for.body.i229.cleanup151_crit_edge ], [ -12, %for.body.i.cleanup151_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hci_dma_dequeue_xfer(ptr noundef %hci, ptr nocapture noundef readonly %xfer_list, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io_data = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 10
  %0 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_data, align 4
  %ring_number = getelementptr inbounds %struct.hci_xfer, ptr %xfer_list, i32 0, i32 7, i32 0, i32 1
  %2 = ptrtoint ptr %ring_number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring_number, align 4
  %arrayidx1 = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #6, !srcloc !88
  %op_done = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %3, i32 20
  %call = tail call i32 @wait_for_completion_timeout(ptr noundef %op_done, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.end4, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp1163.not = icmp eq i32 %n, 0
  br i1 %cmp1163.not, label %for.cond.preheader.do.body40_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body40_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %xfer15 = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %3, i32 1
  %xfer_struct_sz = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %3, i32 12
  %cmd = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 11
  %src_xfers = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %3, i32 18
  br label %for.body

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %hci, ptr noundef nonnull @.str.30) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/i3c/master/mipi-i3c-hci/dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 456, 0\0A.popsection", ""() #6, !srcloc !105
  unreachable

for.body:                                         ; preds = %if.end39.for.body_crit_edge, %for.body.lr.ph
  %did_unqueue.0.off065 = phi i1 [ false, %for.body.lr.ph ], [ %did_unqueue.1.off0, %if.end39.for.body_crit_edge ]
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end39.for.body_crit_edge ]
  %ring_entry = getelementptr %struct.hci_xfer, ptr %xfer_list, i32 %i.064, i32 7, i32 0, i32 2
  %6 = ptrtoint ptr %ring_entry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ring_entry, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp13 = icmp sgt i32 %7, -1
  br i1 %cmp13, label %if.then14, label %for.body.if.end39_crit_edge

for.body.if.end39_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then14:                                        ; preds = %for.body
  %8 = ptrtoint ptr %xfer15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xfer15, align 4
  %10 = ptrtoint ptr %xfer_struct_sz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xfer_struct_sz, align 4
  %mul = mul i32 %11, %7
  %add.ptr16 = getelementptr i8, ptr %9, i32 %mul
  %incdec.ptr = getelementptr i32, ptr %add.ptr16, i32 1
  %12 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 7, ptr %add.ptr16, align 4
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %incdec.ptr, align 4
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd, align 8
  %cmp33 = icmp eq ptr %15, @mipi_i3c_hci_cmd_v2
  br i1 %cmp33, label %if.then34, label %if.then14.if.end37_crit_edge

if.then14.if.end37_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then34:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr32 = getelementptr i32, ptr %incdec.ptr, i32 1
  %incdec.ptr35 = getelementptr i32, ptr %incdec.ptr32, i32 1
  %16 = ptrtoint ptr %incdec.ptr32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %incdec.ptr32, align 4
  %17 = ptrtoint ptr %incdec.ptr35 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %incdec.ptr35, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.then14.if.end37_crit_edge
  %18 = ptrtoint ptr %src_xfers to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src_xfers, align 4
  %arrayidx38 = getelementptr ptr, ptr %19, i32 %7
  %20 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx38, align 4
  %21 = getelementptr %struct.hci_xfer, ptr %xfer_list, i32 %i.064, i32 7
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %data_len.i = getelementptr %struct.hci_xfer, ptr %xfer_list, i32 %i.064, i32 4
  %24 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i, align 4
  %rnw.i = getelementptr %struct.hci_xfer, ptr %xfer_list, i32 %i.064, i32 2
  %26 = ptrtoint ptr %rnw.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rnw.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 2
  tail call void @dma_unmap_page_attrs(ptr noundef %hci, i32 noundef %23, i32 noundef %25, i32 noundef %cond.i, i32 noundef 0) #6
  br label %if.end39

if.end39:                                         ; preds = %if.end37, %for.body.if.end39_crit_edge
  %did_unqueue.1.off0 = phi i1 [ %did_unqueue.0.off065, %for.body.if.end39_crit_edge ], [ true, %if.end37 ]
  %inc = add nuw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %if.end39.do.body40_crit_edge, label %if.end39.for.body_crit_edge

if.end39.for.body_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end39.do.body40_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40

do.body40:                                        ; preds = %if.end39.do.body40_crit_edge, %for.cond.preheader.do.body40_crit_edge
  %did_unqueue.0.off0.lcssa = phi i1 [ false, %for.cond.preheader.do.body40_crit_edge ], [ %did_unqueue.1.off0, %if.end39.do.body40_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx1, align 4
  %add.ptr44 = getelementptr i8, ptr %29, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 16777216) #6, !srcloc !88
  ret i1 %did_unqueue.0.off0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_dma_request_ibi(ptr nocapture noundef readnone %hci, ptr noundef %dev, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 8) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @i3c_generic_ibi_alloc_pool(ptr noundef %dev, ptr noundef %req) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %call7.i, align 8
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 4
  %max_len = getelementptr inbounds %struct.hci_dma_dev_ibi_data, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %max_len, align 4
  %ibi_data = getelementptr inbounds %struct.i3c_hci_dev_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %ibi_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i, ptr %ibi_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then4 ], [ 0, %if.end6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_dma_free_ibi(ptr nocapture noundef readnone %hci, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_priv.i, align 4
  %ibi_data = getelementptr inbounds %struct.i3c_hci_dev_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ibi_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibi_data, align 4
  store ptr null, ptr %ibi_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @i3c_generic_ibi_free_pool(ptr noundef %5) #6
  tail call void @kfree(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_dma_recycle_ibi_slot(ptr nocapture noundef readnone %hci, ptr nocapture noundef readonly %dev, ptr noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_priv.i, align 4
  %ibi_data = getelementptr inbounds %struct.i3c_hci_dev_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ibi_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibi_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @i3c_generic_ibi_recycle_slot(ptr noundef %5, ptr noundef %slot) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_dma_init(ptr noundef %hci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %RHS_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 4
  %0 = ptrtoint ptr %RHS_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %RHS_regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !85
  %3 = lshr i32 %2, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.33, i32 noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1879048193, i32 %2)
  %cmp = icmp ugt i32 %2, -1879048193
  br i1 %cmp, label %do.end21, label %entry.if.end_crit_edge, !prof !108

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.37) #9
  br label %if.end

if.end:                                           ; preds = %do.end21, %entry.if.end_crit_edge
  %nr_rings.0 = phi i32 [ 8, %do.end21 ], [ %3, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_rings.0)
  %4 = icmp ne i32 %nr_rings.0, 0
  %5 = select i1 %4, i32 180, i32 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #11
  %tobool29.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool29.not, label %if.end.cleanup452_crit_edge, label %if.end31

if.end.cleanup452_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup452

if.end31:                                         ; preds = %if.end
  %6 = zext i1 %4 to i32
  %io_data = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 10
  %7 = ptrtoint ptr %io_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i.i, ptr %io_data, align 4
  %8 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %call9.i.i, align 128
  br i1 %4, label %for.body.lr.ph, label %if.end31.do.end442_crit_edge

if.end31.do.end442_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end442

for.body.lr.ph:                                   ; preds = %if.end31
  %base_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %hci, i32 0, i32 3
  %ibi_status_sz = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 14
  %ibi_status_entries = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 10
  %ibi_chunks_total = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 11
  %ibi_chunk_sz = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 15
  %ibi_status_dma = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 7
  %ibi_status = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 3
  %ibi_data = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 4
  %ibi_data_dma = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0651 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %RHS_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %RHS_regs, align 4
  %mul = shl i32 %i.0651, 2
  %add = add i32 %mul, 4
  %add.ptr37 = getelementptr i8, ptr %10, i32 %add
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #6, !srcloc !85
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.40, i32 noundef %i.0651, i32 noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool46.not = icmp eq i32 %11, 0
  br i1 %tobool46.not, label %for.body.err_out_crit_edge, label %if.end48

for.body.err_out_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end48:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 %i.0651
  %13 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_regs, align 8
  %add.ptr49 = getelementptr i8, ptr %14, i32 %12
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr49, ptr %arrayidx, align 4
  %lock = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 %i.0651, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.42, ptr noundef nonnull @hci_dma_init.__key, i16 noundef signext 3) #6
  %op_done = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 %i.0651, i32 20
  %16 = ptrtoint ptr %op_done to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %op_done, align 4
  %wait.i = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 %i.0651, i32 20, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @init_completion.__key) #6
  %xfer_entries = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 %i.0651, i32 9
  %17 = ptrtoint ptr %xfer_entries to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %xfer_entries, align 8
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !85
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  %shr78 = lshr i32 %21, 24
  %xfer_struct_sz = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 %i.0651, i32 12
  %22 = ptrtoint ptr %xfer_struct_sz to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr78, ptr %xfer_struct_sz, align 4
  %and95 = lshr i32 %21, 16
  %shr96 = and i32 %and95, 255
  %resp_struct_sz = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 %i.0651, i32 13
  %23 = ptrtoint ptr %resp_struct_sz to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr96, ptr %resp_struct_sz, align 8
  %24 = ptrtoint ptr %xfer_entries to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xfer_entries, align 8
  %mul100 = mul i32 %25, %shr78
  %mul103 = mul i32 %25, %shr96
  %xfer_dma = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 %i.0651, i32 5
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %hci, i32 noundef %mul100, ptr noundef %xfer_dma, i32 noundef 3264, i32 noundef 0) #6
  %xfer = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 %i.0651, i32 1
  %26 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %xfer, align 8
  %resp_dma = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 %i.0651, i32 6
  %call.i591 = tail call ptr @dma_alloc_attrs(ptr noundef %hci, i32 noundef %mul103, ptr noundef %resp_dma, i32 noundef 3264, i32 noundef 0) #6
  %resp = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 %i.0651, i32 2
  %27 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i591, ptr %resp, align 4
  %28 = ptrtoint ptr %xfer_entries to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xfer_entries, align 8
  %30 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 4) #6
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %if.end48.kmalloc_array.exit_crit_edge, label %if.end7.i, !prof !108

if.end48.kmalloc_array.exit_crit_edge:            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %kmalloc_array.exit

if.end7.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %32 = extractvalue { i32, i1 } %30, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %32, i32 noundef 3264) #11
  br label %kmalloc_array.exit

kmalloc_array.exit:                               ; preds = %if.end7.i, %if.end48.kmalloc_array.exit_crit_edge
  %retval.0.i618 = phi ptr [ %call8.i, %if.end7.i ], [ null, %if.end48.kmalloc_array.exit_crit_edge ]
  %src_xfers = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 %i.0651, i32 18
  %33 = ptrtoint ptr %src_xfers to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %retval.0.i618, ptr %src_xfers, align 4
  %34 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %xfer, align 8
  %tobool113.not = icmp eq ptr %35, null
  br i1 %tobool113.not, label %kmalloc_array.exit.err_out_crit_edge, label %lor.lhs.false

kmalloc_array.exit.err_out_crit_edge:             ; preds = %kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

lor.lhs.false:                                    ; preds = %kmalloc_array.exit
  %36 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %resp, align 4
  %tobool115.not = icmp eq ptr %37, null
  %tobool118.not = icmp eq ptr %retval.0.i618, null
  %or.cond = select i1 %tobool115.not, i1 true, i1 %tobool118.not
  br i1 %or.cond, label %lor.lhs.false.err_out_crit_edge, label %do.body121

lor.lhs.false.err_out_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

do.body121:                                       ; preds = %lor.lhs.false
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %xfer_dma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %xfer_dma, align 8
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %add.ptr127 = getelementptr i8, ptr %42, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127, i32 %40) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %add.ptr134 = getelementptr i8, ptr %44, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 0) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %resp_dma to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %resp_dma, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx, align 4
  %add.ptr141 = getelementptr i8, ptr %49, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %47) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx, align 4
  %add.ptr148 = getelementptr i8, ptr %51, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 0) #6, !srcloc !88
  %52 = ptrtoint ptr %xfer_entries to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %xfer_entries, align 8
  %and172 = and i32 %53, 511
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %54 = tail call i32 @llvm.bswap.i32(i32 %and172)
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx, align 4
  %add.ptr182 = getelementptr i8, ptr %58, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr182, i32 -1) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx, align 4
  %add.ptr187 = getelementptr i8, ptr %60, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr187, i32 -534904832) #6, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0651)
  %cmp188.not = icmp eq i32 %i.0651, 0
  br i1 %cmp188.not, label %kmalloc.exit, label %do.body121.for.inc_crit_edge

do.body121.for.inc_crit_edge:                     ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

kmalloc.exit:                                     ; preds = %do.body121
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx, align 4
  %add.ptr194 = getelementptr i8, ptr %62, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr194) #6, !srcloc !85
  %64 = and i32 %63, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %65 = ptrtoint ptr %ibi_status_sz to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %ibi_status_sz, align 4
  %66 = ptrtoint ptr %ibi_status_entries to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 32, ptr %ibi_status_entries, align 4
  %67 = ptrtoint ptr %ibi_chunks_total to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 128, ptr %ibi_chunks_total, align 16
  %68 = ptrtoint ptr %ibi_chunk_sz to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 128, ptr %ibi_chunk_sz, align 64
  %mul240 = shl nuw nsw i32 %64, 5
  %call.i619 = tail call ptr @dma_alloc_attrs(ptr noundef %hci, i32 noundef %mul240, ptr noundef %ibi_status_dma, i32 noundef 3264, i32 noundef 0) #6
  %69 = ptrtoint ptr %ibi_status to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i619, ptr %ibi_status, align 16
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3264, i32 noundef 2) #11
  %70 = ptrtoint ptr %ibi_data to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call1.i.i, ptr %ibi_data, align 4
  %71 = ptrtoint ptr %ibi_status to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ibi_status, align 16
  %tobool249.not = icmp eq ptr %72, null
  %tobool252.not = icmp eq ptr %call1.i.i, null
  %or.cond582 = select i1 %tobool249.not, i1 true, i1 %tobool252.not
  br i1 %or.cond582, label %kmalloc.exit.err_out_crit_edge, label %if.end254

kmalloc.exit.err_out_crit_edge:                   ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end254:                                        ; preds = %kmalloc.exit
  %call.i620 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call1.i.i) #6
  br i1 %call.i620, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end254
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i622, !prof !100

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread

if.then.i622:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %hci) #6
  %73 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i621 = icmp eq ptr %74, null
  br i1 %tobool.not.i.i621, label %if.end.i.i623, label %if.then.i622.dev_name.exit.i_crit_edge

if.then.i622.dev_name.exit.i_crit_edge:           ; preds = %if.then.i622
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i623:                                    ; preds = %if.then.i622
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hci, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i623, %if.then.i622.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %76, %if.end.i.i623 ], [ %74, %if.then.i622.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %ibi_data_dma658 = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 8
  %77 = ptrtoint ptr %ibi_data_dma658 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %ibi_data_dma658, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %hci, i32 noundef -1) #6
  br label %if.then264

dma_map_single_attrs.exit:                        ; preds = %if.end254
  tail call void @debug_dma_map_single(ptr noundef %hci, ptr noundef nonnull %call1.i.i, i32 noundef 16384) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %78 = load ptr, ptr @mem_map, align 4
  %79 = ptrtoint ptr %call1.i.i to i32
  %sub.i = add i32 %79, 1073741824
  %shr.i = lshr exact i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %78, i32 %shr.i
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %hci, ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 16384, i32 noundef 2, i32 noundef 0) #6
  %80 = ptrtoint ptr %ibi_data_dma to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call41.i, ptr %ibi_data_dma, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %hci, i32 noundef %call41.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i625 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i625, label %if.then264.loopexit, label %do.end289

if.then264.loopexit:                              ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %ibi_data_dma.le = getelementptr %struct.hci_rings_data, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 8
  br label %if.then264

if.then264:                                       ; preds = %if.then264.loopexit, %dma_map_single_attrs.exit.thread
  %ibi_data_dma660 = phi ptr [ %ibi_data_dma658, %dma_map_single_attrs.exit.thread ], [ %ibi_data_dma.le, %if.then264.loopexit ]
  %81 = ptrtoint ptr %ibi_data_dma660 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %ibi_data_dma660, align 4
  br label %err_out

do.end289:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %ibi_status_entries to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ibi_status_entries, align 4
  %shl292 = shl i32 %83, 16
  %and293 = and i32 %shl292, 16711680
  %84 = ptrtoint ptr %ibi_chunk_sz to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ibi_chunk_sz, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i.i631 = icmp eq i32 %85, 0
  %86 = tail call i32 @llvm.ctlz.i32(i32 %85, i1 true) #6, !range !119
  %87 = ptrtoint ptr %ibi_chunks_total to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ibi_chunks_total, align 16
  %sub.i.op.i632 = shl nuw nsw i32 %86, 10
  %sub.i.op.i632.op = xor i32 %sub.i.op.i632, 7168
  %sub.i.op.i632.op.op = add nuw nsw i32 %sub.i.op.i632.op, 6144
  %sub.i.op.i632.op.op.op = and i32 %sub.i.op.i632.op.op, 7168
  %and368 = select i1 %tobool.not.i.i631, i32 5120, i32 %sub.i.op.i632.op.op.op
  %and395 = and i32 %88, 1023
  %or = or i32 %and395, %and293
  %or396 = or i32 %or, %and368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %89 = tail call i32 @llvm.bswap.i32(i32 %or396)
  %90 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx, align 4
  %add.ptr401 = getelementptr i8, ptr %91, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr401, i32 %89) #6, !srcloc !88
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx, align 4
  %add.ptr405 = getelementptr i8, ptr %93, i32 24
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr405) #6, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %95 = or i32 %94, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx, align 4
  %add.ptr414 = getelementptr i8, ptr %97, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr414, i32 %95) #6, !srcloc !88
  br label %for.inc

for.inc:                                          ; preds = %do.end289, %do.body121.for.inc_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %98 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx, align 4
  %add.ptr419 = getelementptr i8, ptr %99, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr419, i32 16777216) #6, !srcloc !88
  %inc = add nuw i32 %i.0651, 1
  %100 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %call9.i.i, align 128
  %cmp33 = icmp ult i32 %inc, %101
  br i1 %cmp33, label %for.inc.for.body_crit_edge, label %do.body426.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body426.loopexit:                              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo = shl i32 %101, 24
  %phi.bo666 = and i32 %phi.bo, 251658240
  br label %do.end442

do.end442:                                        ; preds = %do.body426.loopexit, %if.end31.do.end442_crit_edge
  %.lcssa = phi i32 [ 0, %if.end31.do.end442_crit_edge ], [ %phi.bo666, %do.body426.loopexit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  tail call void @arm_heavy_mb() #6
  %102 = ptrtoint ptr %RHS_regs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %RHS_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %.lcssa) #6, !srcloc !88
  br label %cleanup452

err_out:                                          ; preds = %if.then264, %kmalloc.exit.err_out_crit_edge, %lor.lhs.false.err_out_crit_edge, %kmalloc_array.exit.err_out_crit_edge, %for.body.err_out_crit_edge
  %ret.1.ph = phi i32 [ -12, %if.then264 ], [ -22, %for.body.err_out_crit_edge ], [ -12, %lor.lhs.false.err_out_crit_edge ], [ -12, %kmalloc_array.exit.err_out_crit_edge ], [ -12, %kmalloc.exit.err_out_crit_edge ]
  tail call void @hci_dma_cleanup(ptr noundef %hci)
  br label %cleanup452

cleanup452:                                       ; preds = %err_out, %do.end442, %if.end.cleanup452_crit_edge
  %retval.0 = phi i32 [ %ret.1.ph, %err_out ], [ 0, %do.end442 ], [ -12, %if.end.cleanup452_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_dma_cleanup(ptr noundef %hci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io_data = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 10
  %0 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp88.not = icmp eq i32 %3, 0
  br i1 %cmp88.not, label %for.cond.preheader.do.body42_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body42_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body42

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.089 = phi i32 [ %inc, %if.end41.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.089
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %add.ptr10 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %add.ptr15 = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #6, !srcloc !88
  %xfer = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.089, i32 1
  %12 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xfer, align 4
  %tobool16.not = icmp eq ptr %13, null
  br i1 %tobool16.not, label %for.body.if.end19_crit_edge, label %if.then17

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %xfer_struct_sz = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.089, i32 12
  %14 = ptrtoint ptr %xfer_struct_sz to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xfer_struct_sz, align 4
  %xfer_entries = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.089, i32 9
  %16 = ptrtoint ptr %xfer_entries to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xfer_entries, align 4
  %mul = mul i32 %17, %15
  %xfer_dma = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.089, i32 5
  %18 = ptrtoint ptr %xfer_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xfer_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %hci, i32 noundef %mul, ptr noundef nonnull %13, i32 noundef %19, i32 noundef 0) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.body.if.end19_crit_edge
  %resp = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.089, i32 2
  %20 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resp, align 4
  %tobool20.not = icmp eq ptr %21, null
  br i1 %tobool20.not, label %if.end19.if.end27_crit_edge, label %if.then21

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %resp_struct_sz = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.089, i32 13
  %22 = ptrtoint ptr %resp_struct_sz to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resp_struct_sz, align 4
  %xfer_entries24 = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.089, i32 9
  %24 = ptrtoint ptr %xfer_entries24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xfer_entries24, align 4
  %mul25 = mul i32 %25, %23
  %resp_dma = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.089, i32 6
  %26 = ptrtoint ptr %resp_dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %resp_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %hci, i32 noundef %mul25, ptr noundef nonnull %21, i32 noundef %27, i32 noundef 0) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %if.end19.if.end27_crit_edge
  %src_xfers = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.089, i32 18
  %28 = ptrtoint ptr %src_xfers to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %src_xfers, align 4
  tail call void @kfree(ptr noundef %29) #6
  %ibi_status = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.089, i32 3
  %30 = ptrtoint ptr %ibi_status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ibi_status, align 4
  %tobool28.not = icmp eq ptr %31, null
  br i1 %tobool28.not, label %if.end27.if.end34_crit_edge, label %if.then29

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %ibi_status_sz = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.089, i32 14
  %32 = ptrtoint ptr %ibi_status_sz to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ibi_status_sz, align 4
  %ibi_status_entries = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.089, i32 10
  %34 = ptrtoint ptr %ibi_status_entries to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ibi_status_entries, align 4
  %mul32 = mul i32 %35, %33
  %ibi_status_dma = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.089, i32 7
  %36 = ptrtoint ptr %ibi_status_dma to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ibi_status_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %hci, i32 noundef %mul32, ptr noundef nonnull %31, i32 noundef %37, i32 noundef 0) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end27.if.end34_crit_edge
  %ibi_data_dma = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.089, i32 8
  %38 = ptrtoint ptr %ibi_data_dma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ibi_data_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool35.not = icmp eq i32 %39, 0
  br i1 %tobool35.not, label %if.end34.if.end41_crit_edge, label %if.then36

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %ibi_chunk_sz = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.089, i32 15
  %40 = ptrtoint ptr %ibi_chunk_sz to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ibi_chunk_sz, align 4
  %ibi_chunks_total = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.089, i32 11
  %42 = ptrtoint ptr %ibi_chunks_total to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ibi_chunks_total, align 4
  %mul40 = mul i32 %43, %41
  tail call void @dma_unmap_page_attrs(ptr noundef %hci, i32 noundef %39, i32 noundef %mul40, i32 noundef 2, i32 noundef 0) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.end34.if.end41_crit_edge
  %ibi_data = getelementptr %struct.hci_rings_data, ptr %1, i32 0, i32 1, i32 %i.089, i32 4
  %44 = ptrtoint ptr %ibi_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ibi_data, align 4
  tail call void @kfree(ptr noundef %45) #6
  %inc = add nuw i32 %i.089, 1
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %47
  br i1 %cmp, label %if.end41.for.body_crit_edge, label %if.end41.do.body42_crit_edge

if.end41.do.body42_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body42

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body42:                                        ; preds = %if.end41.do.body42_crit_edge, %for.cond.preheader.do.body42_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %RHS_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 4
  %48 = ptrtoint ptr %RHS_regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %RHS_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 0) #6, !srcloc !88
  tail call void @kfree(ptr noundef nonnull %1) #6
  %50 = ptrtoint ptr %io_data to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %io_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body42, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i3c_generic_ibi_get_free_slot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i3c_master_queue_ibi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i3c_generic_ibi_alloc_pool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i3c_generic_ibi_free_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i3c_generic_ibi_recycle_slot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !56, !58, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @mipi_i3c_hci_dma, !1, !"mipi_i3c_hci_dma", i1 false, i1 false}
!1 = !{!"../drivers/i3c/master/mipi-i3c-hci/dma.c", i32 775, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/i3c/master/mipi-i3c-hci/dma.c", i32 760, i32 4}
!4 = !{ptr @hci_dma_irq_handler._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.hci_dma_irq_handler, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @hci_dma_irq_handler._entry, !3, !"_entry", i1 false, i1 false}
!11 = !{ptr @hci_dma_irq_handler._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @hci_dma_irq_handler._rs.5, !13, !"_rs", i1 false, i1 false}
!13 = !{!"../drivers/i3c/master/mipi-i3c-hci/dma.c", i32 763, i32 4}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @hci_dma_irq_handler._entry.6, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @hci_dma_irq_handler._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @hci_dma_irq_handler._rs.10, !19, !"_rs", i1 false, i1 false}
!19 = !{!"../drivers/i3c/master/mipi-i3c-hci/dma.c", i32 766, i32 4}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hci_dma_irq_handler._entry.11, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @hci_dma_irq_handler._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i3c/master/mipi-i3c-hci/dma.c", i32 650, i32 3}
!26 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @hci_dma_process_ibi._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @hci_dma_process_ibi._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i3c/master/mipi-i3c-hci/dma.c", i32 657, i32 3}
!31 = !{ptr @hci_dma_process_ibi._entry.17, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @hci_dma_process_ibi._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/i3c/master/mipi-i3c-hci/dma.c", i32 665, i32 3}
!35 = !{ptr @hci_dma_process_ibi._entry.20, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @hci_dma_process_ibi._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i3c/master/mipi-i3c-hci/dma.c", i32 682, i32 3}
!39 = !{ptr @hci_dma_process_ibi._entry.23, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @hci_dma_process_ibi._entry_ptr.25, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/i3c/master/mipi-i3c-hci/dma.c", i32 519, i32 5}
!43 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @hci_dma_xfer_done._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @hci_dma_xfer_done._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!48 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i3c/master/mipi-i3c-hci/dma.c", i32 455, i32 3}
!52 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @hci_dma_dequeue_xfer._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @hci_dma_dequeue_xfer._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i3c/master/mipi-i3c-hci/dma.c", i32 219, i32 2}
!58 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @hci_dma_init._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @hci_dma_init._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/i3c/master/mipi-i3c-hci/dma.c", i32 221, i32 3}
!64 = !{ptr @hci_dma_init._entry.36, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @hci_dma_init._entry_ptr.38, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i3c/master/mipi-i3c-hci/dma.c", i32 235, i32 3}
!68 = !{ptr @hci_dma_init._entry.39, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @hci_dma_init._entry_ptr.41, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @hci_dma_init.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/i3c/master/mipi-i3c-hci/dma.c", i32 241, i32 3}
!72 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @init_completion.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../include/linux/completion.h", i32 87, i32 2}
!75 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 6264662}
!86 = !{i64 2156741356}
!87 = !{i64 2156743481}
!88 = !{i64 6264244}
!89 = !{i64 2156433002}
!90 = !{i64 2156473731}
!91 = !{i64 2156692889}
!92 = !{i64 2156738148}
!93 = !{i64 2156739699}
!94 = !{i64 2156740628}
!95 = !{i64 2156301452}
!96 = !{i8 0, i8 2}
!97 = !{i64 2156391149}
!98 = !{i64 2156432056}
!99 = !{i64 2156082906}
!100 = !{!"branch_weights", i32 2000, i32 1}
!101 = !{i64 2156163270}
!102 = !{i64 2156207475}
!103 = !{i64 2156248115}
!104 = !{i64 2156248719}
!105 = !{i64 2156250890, i64 2156251392, i64 2156250927, i64 2156250983, i64 2156251017, i64 2156251041, i64 2156251082, i64 2156251103, i64 2156251131, i64 2156251165}
!106 = !{i64 2156300642}
!107 = !{i64 2155682392}
!108 = !{!"branch_weights", i32 1, i32 2000}
!109 = !{i64 2155730697}
!110 = !{i64 2155733071}
!111 = !{i64 2155820530}
!112 = !{i64 2155821075}
!113 = !{i64 2155821622}
!114 = !{i64 2155822169}
!115 = !{i64 2155862401}
!116 = !{i64 2155862898}
!117 = !{i64 2155864387}
!118 = !{i64 2155865736}
!119 = !{i32 0, i32 33}
!120 = !{i64 2156036002}
!121 = !{i64 2156036755}
!122 = !{i64 2156037142}
!123 = !{i64 2156037743}
!124 = !{i64 2156082025}
!125 = !{i64 2155679696}
!126 = !{i64 2155680140}
!127 = !{i64 2155680586}
!128 = !{i64 2155681050}
!129 = !{i64 2155681632}
