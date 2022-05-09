; ModuleID = '/llk/IR_all_yes/drivers/i3c/master/mipi-i3c-hci/pio.c_pt.bc'
source_filename = "../drivers/i3c/master/mipi-i3c-hci/pio.c"
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
%struct.hci_pio_data = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hci_pio_ibi_data, i32, i32, i32, i32, i32 }
%struct.hci_pio_ibi_data = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.i3c_dev_desc = type { %struct.i3c_i2c_dev_desc, %struct.i3c_device_info, %struct.mutex, ptr, ptr, ptr }
%struct.i3c_i2c_dev_desc = type { %struct.list_head, ptr, ptr }
%struct.i3c_device_info = type { i64, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16 }
%struct.i3c_hci_dev_data = type { i32, ptr }
%struct.hci_pio_dev_ibi_data = type { ptr, i32 }
%struct.i3c_ibi_slot = type { %struct.work_struct, ptr, i32, ptr }
%struct.hci_xfer = type { [4 x i32], i32, i8, ptr, i32, i32, ptr, %union.anon.84 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { ptr, ptr, ptr, i32, i32 }

@mipi_i3c_hci_pio = dso_local constant { %struct.hci_io_ops, [32 x i8] } { %struct.hci_io_ops { ptr @hci_pio_irq_handler, ptr @hci_pio_queue_xfer, ptr @hci_pio_dequeue_xfer, ptr @hci_pio_request_ibi, ptr @hci_pio_free_ibi, ptr @hci_pio_recycle_ibi_slot, ptr @hci_pio_init, ptr @hci_pio_cleanup }, [32 x i8] zeroinitializer }, align 32
@hci_pio_irq_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hci_pio_irq_handler = private unnamed_addr constant [20 x i8] c"hci_pio_irq_handler\00", align 1
@hci_pio_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.hci_pio_irq_handler, ptr @.str.2, i32 1013, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"encountered warning condition %#lx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/i3c/master/mipi-i3c-hci/pio.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hci_pio_irq_handler._entry_ptr = internal global ptr @hci_pio_irq_handler._entry, section ".printk_index", align 4
@hci_pio_process_ibi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 924, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unexp IBI address changed from %d to %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hci_pio_process_ibi\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@hci_pio_process_ibi._entry_ptr = internal global ptr @hci_pio_process_ibi._entry, section ".printk_index", align 4
@hci_pio_process_ibi._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 933, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IBI payload too big (%d > %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@hci_pio_process_ibi._entry_ptr.10 = internal global ptr @hci_pio_process_ibi._entry.8, section ".printk_index", align 4
@hci_pio_prep_new_ibi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 826, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IBI error from %#x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hci_pio_prep_new_ibi\00", [43 x i8] zeroinitializer }, align 32
@hci_pio_prep_new_ibi._entry_ptr = internal global ptr @hci_pio_prep_new_ibi._entry, section ".printk_index", align 4
@hci_pio_prep_new_ibi._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 837, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IBI for unknown device %#x\0A\00", [36 x i8] zeroinitializer }, align 32
@hci_pio_prep_new_ibi._entry_ptr.15 = internal global ptr @hci_pio_prep_new_ibi._entry.13, section ".printk_index", align 4
@hci_pio_prep_new_ibi._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.12, ptr @.str.2, i32 847, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hci_pio_prep_new_ibi._entry_ptr.17 = internal global ptr @hci_pio_prep_new_ibi._entry.16, section ".printk_index", align 4
@hci_pio_prep_new_ibi._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.12, ptr @.str.2, i32 853, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no free slot for IBI\0A\00", [42 x i8] zeroinitializer }, align 32
@hci_pio_prep_new_ibi._entry_ptr.20 = internal global ptr @hci_pio_prep_new_ibi._entry.18, section ".printk_index", align 4
@hci_pio_process_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 488, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"response tid=%d when expecting %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hci_pio_process_resp\00", [43 x i8] zeroinitializer }, align 32
@hci_pio_process_resp._entry_ptr = internal global ptr @hci_pio_process_resp._entry, section ".printk_index", align 4
@hci_pio_push_to_next_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 417, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pushing RX data to unexistent xfer\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hci_pio_push_to_next_rx\00", [40 x i8] zeroinitializer }, align 32
@hci_pio_push_to_next_rx._entry_ptr = internal global ptr @hci_pio_push_to_next_rx._entry, section ".printk_index", align 4
@hci_pio_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 709, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"orphan response (%#x) on error\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hci_pio_err\00", [20 x i8] zeroinitializer }, align 32
@hci_pio_err._entry_ptr = internal global ptr @hci_pio_err._entry, section ".printk_index", align 4
@hci_pio_err._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 724, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"prog error %#lx (C/R/I = %ld/%ld/%ld, TX/RX = %ld/%ld)\0A\00", [40 x i8] zeroinitializer }, align 32
@hci_pio_err._entry_ptr.29 = internal global ptr @hci_pio_err._entry.27, section ".printk_index", align 4
@mipi_i3c_hci_cmd_v2 = external dso_local constant %struct.hci_cmd_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hci_pio_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pio->lock\00", [21 x i8] zeroinitializer }, align 32
@hci_pio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 153, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CMD/RESP FIFO = %ld entries\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hci_pio_init\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hci_pio_init._entry_ptr = internal global ptr @hci_pio_init._entry, section ".printk_index", align 4
@hci_pio_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.2, i32 155, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IBI FIFO = %ld bytes\0A\00", [42 x i8] zeroinitializer }, align 32
@hci_pio_init._entry_ptr.36 = internal global ptr @hci_pio_init._entry.34, section ".printk_index", align 4
@hci_pio_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.2, i32 157, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RX data FIFO = %d bytes\0A\00", [39 x i8] zeroinitializer }, align 32
@hci_pio_init._entry_ptr.39 = internal global ptr @hci_pio_init._entry.37, section ".printk_index", align 4
@hci_pio_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.32, ptr @.str.2, i32 159, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TX data FIFO = %d bytes\0A\00", [39 x i8] zeroinitializer }, align 32
@hci_pio_init._entry_ptr.42 = internal global ptr @hci_pio_init._entry.40, section ".printk_index", align 4
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"mipi_i3c_hci_pio\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1032, i32 25 }
@___asan_gen_.46 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1011, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 922, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 931, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 826, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 836, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 846, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 853, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 486, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 417, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 708, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 717, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 149, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 152, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 154, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 156, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [41 x i8] c"../drivers/i3c/master/mipi-i3c-hci/pio.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 158, i32 2 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @hci_pio_err._entry, ptr @hci_pio_err._entry.27, ptr @hci_pio_err._entry_ptr, ptr @hci_pio_err._entry_ptr.29, ptr @hci_pio_init._entry, ptr @hci_pio_init._entry.34, ptr @hci_pio_init._entry.37, ptr @hci_pio_init._entry.40, ptr @hci_pio_init._entry_ptr, ptr @hci_pio_init._entry_ptr.36, ptr @hci_pio_init._entry_ptr.39, ptr @hci_pio_init._entry_ptr.42, ptr @hci_pio_irq_handler._entry, ptr @hci_pio_irq_handler._entry_ptr, ptr @hci_pio_prep_new_ibi._entry, ptr @hci_pio_prep_new_ibi._entry.13, ptr @hci_pio_prep_new_ibi._entry.16, ptr @hci_pio_prep_new_ibi._entry.18, ptr @hci_pio_prep_new_ibi._entry_ptr, ptr @hci_pio_prep_new_ibi._entry_ptr.15, ptr @hci_pio_prep_new_ibi._entry_ptr.17, ptr @hci_pio_prep_new_ibi._entry_ptr.20, ptr @hci_pio_process_ibi._entry, ptr @hci_pio_process_ibi._entry.8, ptr @hci_pio_process_ibi._entry_ptr, ptr @hci_pio_process_ibi._entry_ptr.10, ptr @hci_pio_process_resp._entry, ptr @hci_pio_process_resp._entry_ptr, ptr @hci_pio_push_to_next_rx._entry, ptr @hci_pio_push_to_next_rx._entry_ptr, ptr @mipi_i3c_hci_pio, ptr @hci_pio_irq_handler._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @hci_pio_init.__key, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_i3c_hci_pio to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_pio_irq_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_pio_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_pio_process_ibi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_pio_process_ibi._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_pio_prep_new_ibi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_pio_prep_new_ibi._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_pio_prep_new_ibi._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_pio_prep_new_ibi._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_pio_process_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_pio_push_to_next_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_pio_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_pio_err._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_pio_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_pio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_pio_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_pio_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_pio_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hci_pio_irq_handler(ptr noundef %hci, i32 noundef %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %io_data = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 10
  %0 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_data, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #5
  %PIO_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 5
  %2 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PIO_regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !87
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %enabled_irqs = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %enabled_irqs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enabled_irqs, align 4
  %or = or i32 %7, 348288
  %and = and i32 %or, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and4 = and i32 %and, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %if.end
  %ibi1.i = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %ibi1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ibi1.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then6.if.end6.i_crit_edge

if.then6.if.end6.i_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.then6
  %seg_cnt.i = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 9, i32 4
  %10 = ptrtoint ptr %seg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seg_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i = icmp eq i32 %11, 0
  br i1 %tobool2.not.i, label %land.lhs.true3.i, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %last_seg.i = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 9, i32 6
  %12 = ptrtoint ptr %last_seg.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %last_seg.i, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not.i = icmp eq i8 %13, 0
  br i1 %tobool4.not.i, label %land.lhs.true3.i.if.end6.i_crit_edge, label %if.then.i

land.lhs.true3.i.if.end6.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  %14 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %PIO_regs, align 8
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !87
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and.i.i = lshr i32 %17, 9
  %shr.i.i = and i32 %and.i.i, 127
  %addr.i.i = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr.i.i, ptr %addr.i.i, align 4
  %and17.i.i = and i32 %17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %hci_pio_prep_new_ibi.exit.thread.i

hci_pio_prep_new_ibi.exit.thread.i:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.11, i32 noundef %shr.i.i) #8
  br label %if.end8

if.end.i.i:                                       ; preds = %if.then.i
  %and23.i.i = lshr i32 %17, 24
  %19 = trunc i32 %and23.i.i to i8
  %20 = and i8 %19, 1
  %21 = ptrtoint ptr %last_seg.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %last_seg.i, align 4
  %and41.i.i = and i32 %17, 255
  %seg_len.i.i = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 9, i32 3
  %22 = ptrtoint ptr %seg_len.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and41.i.i, ptr %seg_len.i.i, align 4
  %23 = ptrtoint ptr %seg_cnt.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and41.i.i, ptr %seg_cnt.i, align 4
  %devs.i.i.i = getelementptr inbounds %struct.i3c_master_controller, ptr %hci, i32 0, i32 6, i32 5
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end.i.i
  %dev.0.in.i.i.i = phi ptr [ %devs.i.i.i, %if.end.i.i ], [ %dev.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %24 = ptrtoint ptr %dev.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %dev.0.i.i.i = load ptr, ptr %dev.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %dev.0.i.i.i, %devs.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.do.end50.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.do.end50.i.i_crit_edge:            ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %dyn_addr.i.i.i = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev.0.i.i.i, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %dyn_addr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dyn_addr.i.i.i, align 1
  %conv.i.i.i = zext i8 %26 to i32
  %cmp3.i.i.i = icmp eq i32 %shr.i.i, %conv.i.i.i
  br i1 %cmp3.i.i.i, label %i3c_hci_addr_to_dev.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i.i

i3c_hci_addr_to_dev.exit.i.i:                     ; preds = %for.body.i.i.i
  %tobool46.not.i.i = icmp eq ptr %dev.0.i.i.i, null
  br i1 %tobool46.not.i.i, label %i3c_hci_addr_to_dev.exit.i.i.do.end50.i.i_crit_edge, label %if.end54.i.i

i3c_hci_addr_to_dev.exit.i.i.do.end50.i.i_crit_edge: ; preds = %i3c_hci_addr_to_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50.i.i

do.end50.i.i:                                     ; preds = %i3c_hci_addr_to_dev.exit.i.i.do.end50.i.i_crit_edge, %for.cond.i.i.i.do.end50.i.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.14, i32 noundef %shr.i.i) #8
  br label %if.end6.i

if.end54.i.i:                                     ; preds = %i3c_hci_addr_to_dev.exit.i.i
  %master_priv.i.i.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev.0.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %master_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %master_priv.i.i.i, align 4
  %ibi_data.i.i = getelementptr inbounds %struct.i3c_hci_dev_data, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %ibi_data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ibi_data.i.i, align 4
  %max_len.i.i = getelementptr inbounds %struct.hci_pio_dev_ibi_data, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %max_len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_len.i.i, align 4
  %max_len56.i.i = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 9, i32 5
  %33 = ptrtoint ptr %max_len56.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %max_len56.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and41.i.i, i32 %32)
  %cmp.i.i = icmp ugt i32 %and41.i.i, %32
  br i1 %cmp.i.i, label %do.end62.i.i, label %if.end67.i.i

do.end62.i.i:                                     ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.9, i32 noundef %and41.i.i, i32 noundef %32) #8
  br label %if.end6.i

if.end67.i.i:                                     ; preds = %if.end54.i.i
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %30, align 4
  %call68.i.i = tail call ptr @i3c_generic_ibi_get_free_slot(ptr noundef %35) #5
  %36 = ptrtoint ptr %ibi1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call68.i.i, ptr %ibi1.i, align 4
  %tobool70.not.i.i = icmp eq ptr %call68.i.i, null
  br i1 %tobool70.not.i.i, label %do.end74.i.i, label %if.else.i.i

do.end74.i.i:                                     ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.19) #8
  br label %if.end6.i

if.else.i.i:                                      ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %len.i.i = getelementptr inbounds %struct.i3c_ibi_slot, ptr %call68.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %len.i.i, align 4
  %38 = ptrtoint ptr %ibi1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ibi1.i, align 4
  %data.i.i = getelementptr inbounds %struct.i3c_ibi_slot, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i, align 4
  %data_ptr.i.i = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 9, i32 1
  %42 = ptrtoint ptr %data_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %data_ptr.i.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i.i, %do.end74.i.i, %do.end62.i.i, %do.end50.i.i, %land.lhs.true3.i.if.end6.i_crit_edge, %land.lhs.true.i.if.end6.i_crit_edge, %if.then6.if.end6.i_crit_edge
  %data_ptr.i5.i = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 9, i32 1
  %seg_len.i6.i = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 9, i32 3
  %seg_cnt.i7.i = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 9, i32 4
  %max_ibi_thresh.i.i = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 12
  %reg_queue_thresh.i.i.i = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 13
  %last_seg15.i = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 9, i32 6
  %addr.i = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 9, i32 2
  %max_len.i = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 9, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %if.end6.i
  %43 = ptrtoint ptr %ibi1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ibi1.i, align 4
  %tobool8.not.i = icmp eq ptr %44, null
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %for.cond.i
  %45 = ptrtoint ptr %data_ptr.i5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data_ptr.i5.i, align 4
  %47 = ptrtoint ptr %seg_len.i6.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %seg_len.i6.i, align 4
  %49 = ptrtoint ptr %seg_cnt.i7.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %seg_cnt.i7.i, align 4
  %sub.i.i = sub i32 %48, %50
  %div81.i.i = lshr i32 %sub.i.i, 2
  %add.ptr.i8.i = getelementptr i32, ptr %46, i32 %div81.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %tobool.not100.i.i = icmp ult i32 %50, 4
  br i1 %tobool.not100.i.i, label %if.then9.i.while.end21.i.i_crit_edge, label %if.then9.i.while.body.i.i_crit_edge

if.then9.i.while.body.i.i_crit_edge:              ; preds = %if.then9.i
  br label %while.body.i.i

if.then9.i.while.end21.i.i_crit_edge:             ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end21.i.i

while.condthread-pre-splitthread-pre-split.i.i:   ; preds = %while.body13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %seg_cnt.i7.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr.pr.i.i = load i32, ptr %seg_cnt.i7.i, align 4
  br label %while.condthread-pre-split.i.i

while.condthread-pre-split.i.i:                   ; preds = %if.end.i11.i.while.condthread-pre-split.i.i_crit_edge, %while.condthread-pre-splitthread-pre-split.i.i
  %.pr.i.i = phi i32 [ %.pr.pr.i.i, %while.condthread-pre-splitthread-pre-split.i.i ], [ %sub9.i.i, %if.end.i11.i.while.condthread-pre-split.i.i_crit_edge ]
  %p.1.lcssa.i.i = phi ptr [ %incdec.ptr.i.i, %while.condthread-pre-splitthread-pre-split.i.i ], [ %p.0101.i.i, %if.end.i11.i.while.condthread-pre-split.i.i_crit_edge ]
  %tobool.not.i9.i = icmp ult i32 %.pr.i.i, 4
  br i1 %tobool.not.i9.i, label %while.condthread-pre-split.i.i.while.end21.i.i_crit_edge, label %while.condthread-pre-split.i.i.while.body.i.i_crit_edge

while.condthread-pre-split.i.i.while.body.i.i_crit_edge: ; preds = %while.condthread-pre-split.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

while.condthread-pre-split.i.i.while.end21.i.i_crit_edge: ; preds = %while.condthread-pre-split.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end21.i.i

while.body.i.i:                                   ; preds = %while.condthread-pre-split.i.i.while.body.i.i_crit_edge, %if.then9.i.while.body.i.i_crit_edge
  %p.0101.i.i = phi ptr [ %p.1.lcssa.i.i, %while.condthread-pre-split.i.i.while.body.i.i_crit_edge ], [ %add.ptr.i8.i, %if.then9.i.while.body.i.i_crit_edge ]
  %52 = phi i32 [ %.pr.i.i, %while.condthread-pre-split.i.i.while.body.i.i_crit_edge ], [ %50, %if.then9.i.while.body.i.i_crit_edge ]
  %div382.i.i = lshr i32 %52, 2
  %53 = ptrtoint ptr %max_ibi_thresh.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_ibi_thresh.i.i, align 4
  %55 = tail call i32 @llvm.umin.i32(i32 %div382.i.i, i32 %54) #5
  %56 = ptrtoint ptr %reg_queue_thresh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %reg_queue_thresh.i.i.i, align 4
  %and.i.i.i = and i32 %57, 16777215
  %shl.i.i.i = shl i32 %55, 24
  %or.i.i.i = or i32 %and.i.i.i, %shl.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i.i, i32 %57)
  %cmp.not.i.i10.i = icmp eq i32 %or.i.i.i, %57
  br i1 %cmp.not.i.i10.i, label %while.body.i.i.hci_pio_set_ibi_thresh.exit.i.i_crit_edge, label %do.body17.i.i.i

while.body.i.i.hci_pio_set_ibi_thresh.exit.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_set_ibi_thresh.exit.i.i

do.body17.i.i.i:                                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #5
  %59 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %PIO_regs, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %60, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %58) #5, !srcloc !92
  %61 = ptrtoint ptr %reg_queue_thresh.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or.i.i.i, ptr %reg_queue_thresh.i.i.i, align 4
  br label %hci_pio_set_ibi_thresh.exit.i.i

hci_pio_set_ibi_thresh.exit.i.i:                  ; preds = %do.body17.i.i.i, %while.body.i.i.hci_pio_set_ibi_thresh.exit.i.i_crit_edge
  %62 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %PIO_regs, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %63, i32 32
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  %65 = and i32 %64, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool7.not.i.i = icmp eq i32 %65, 0
  br i1 %tobool7.not.i.i, label %hci_pio_set_ibi_thresh.exit.i.i.if.end8_crit_edge, label %if.end.i11.i

hci_pio_set_ibi_thresh.exit.i.i.if.end8_crit_edge: ; preds = %hci_pio_set_ibi_thresh.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end.i11.i:                                     ; preds = %hci_pio_set_ibi_thresh.exit.i.i
  %mul.neg.i.i = mul i32 %55, -4
  %66 = ptrtoint ptr %seg_cnt.i7.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %seg_cnt.i7.i, align 4
  %sub9.i.i = add i32 %67, %mul.neg.i.i
  store i32 %sub9.i.i, ptr %seg_cnt.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool12.not97.i.i = icmp eq i32 %55, 0
  br i1 %tobool12.not97.i.i, label %if.end.i11.i.while.condthread-pre-split.i.i_crit_edge, label %if.end.i11.i.while.body13.i.i_crit_edge

if.end.i11.i.while.body13.i.i_crit_edge:          ; preds = %if.end.i11.i
  br label %while.body13.i.i

if.end.i11.i.while.condthread-pre-split.i.i_crit_edge: ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.condthread-pre-split.i.i

while.body13.i.i:                                 ; preds = %while.body13.i.i.while.body13.i.i_crit_edge, %if.end.i11.i.while.body13.i.i_crit_edge
  %nr_words.099.i.i = phi i32 [ %dec.i.i, %while.body13.i.i.while.body13.i.i_crit_edge ], [ %55, %if.end.i11.i.while.body13.i.i_crit_edge ]
  %p.198.i.i = phi ptr [ %incdec.ptr.i.i, %while.body13.i.i.while.body13.i.i_crit_edge ], [ %p.0101.i.i, %if.end.i11.i.while.body13.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %nr_words.099.i.i, -1
  %68 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %PIO_regs, align 8
  %add.ptr17.i.i = getelementptr i8, ptr %69, i32 12
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i) #5, !srcloc !87
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  %incdec.ptr.i.i = getelementptr i32, ptr %p.198.i.i, i32 1
  %72 = ptrtoint ptr %p.198.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %p.198.i.i, align 4
  %tobool12.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool12.not.i.i, label %while.condthread-pre-splitthread-pre-split.i.i, label %while.body13.i.i.while.body13.i.i_crit_edge

while.body13.i.i.while.body13.i.i_crit_edge:      ; preds = %while.body13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body13.i.i

while.end21.i.i:                                  ; preds = %while.condthread-pre-split.i.i.while.end21.i.i_crit_edge, %if.then9.i.while.end21.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %50, %if.then9.i.while.end21.i.i_crit_edge ], [ %.pr.i.i, %while.condthread-pre-split.i.i.while.end21.i.i_crit_edge ]
  %p.0.lcssa.i.i = phi ptr [ %add.ptr.i8.i, %if.then9.i.while.end21.i.i_crit_edge ], [ %p.1.lcssa.i.i, %while.condthread-pre-split.i.i.while.end21.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa.i.i)
  %tobool23.not.i.i = icmp eq i32 %.lcssa.i.i, 0
  br i1 %tobool23.not.i.i, label %while.end21.i.i.if.end12.i_crit_edge, label %if.then24.i.i

while.end21.i.i.if.end12.i_crit_edge:             ; preds = %while.end21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.then24.i.i:                                    ; preds = %while.end21.i.i
  %73 = ptrtoint ptr %reg_queue_thresh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %reg_queue_thresh.i.i.i, align 4
  %and.i84.i.i = and i32 %74, 16777215
  %or.i85.i.i = or i32 %and.i84.i.i, 16777216
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i85.i.i, i32 %74)
  %cmp.not.i86.i.i = icmp eq i32 %or.i85.i.i, %74
  br i1 %cmp.not.i86.i.i, label %if.then24.i.i.hci_pio_set_ibi_thresh.exit91.i.i_crit_edge, label %do.body17.i90.i.i

if.then24.i.i.hci_pio_set_ibi_thresh.exit91.i.i_crit_edge: ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_set_ibi_thresh.exit91.i.i

do.body17.i90.i.i:                                ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %75 = tail call i32 @llvm.bswap.i32(i32 %or.i85.i.i) #5
  %76 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %PIO_regs, align 8
  %add.ptr.i89.i.i = getelementptr i8, ptr %77, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i.i, i32 %75) #5, !srcloc !92
  %78 = ptrtoint ptr %reg_queue_thresh.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or.i85.i.i, ptr %reg_queue_thresh.i.i.i, align 4
  br label %hci_pio_set_ibi_thresh.exit91.i.i

hci_pio_set_ibi_thresh.exit91.i.i:                ; preds = %do.body17.i90.i.i, %if.then24.i.i.hci_pio_set_ibi_thresh.exit91.i.i_crit_edge
  %79 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %PIO_regs, align 8
  %add.ptr28.i.i = getelementptr i8, ptr %80, i32 32
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  %82 = and i32 %81, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool33.not.i.i = icmp eq i32 %82, 0
  br i1 %tobool33.not.i.i, label %hci_pio_set_ibi_thresh.exit91.i.i.if.end8_crit_edge, label %if.end35.i.i

hci_pio_set_ibi_thresh.exit91.i.i.if.end8_crit_edge: ; preds = %hci_pio_set_ibi_thresh.exit91.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end35.i.i:                                     ; preds = %hci_pio_set_ibi_thresh.exit91.i.i
  %83 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %PIO_regs, align 8
  %add.ptr40.i.i = getelementptr i8, ptr %84, i32 12
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  %86 = ptrtoint ptr %seg_cnt.i7.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %seg_cnt.i7.i, align 4
  %dec46104.i.i = add i32 %87, -1
  store i32 %dec46104.i.i, ptr %seg_cnt.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool47.not105.i.i = icmp eq i32 %87, 0
  br i1 %tobool47.not105.i.i, label %if.end35.i.i.if.end12.i_crit_edge, label %if.end35.i.i.while.body48.i.i_crit_edge

if.end35.i.i.while.body48.i.i_crit_edge:          ; preds = %if.end35.i.i
  br label %while.body48.i.i

if.end35.i.i.if.end12.i_crit_edge:                ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

while.body48.i.i:                                 ; preds = %while.body48.i.i.while.body48.i.i_crit_edge, %if.end35.i.i.while.body48.i.i_crit_edge
  %data.0107.i.i = phi i32 [ %shr.i12.i, %while.body48.i.i.while.body48.i.i_crit_edge ], [ %85, %if.end35.i.i.while.body48.i.i_crit_edge ]
  %p_byte.0106.i.i = phi ptr [ %incdec.ptr49.i.i, %while.body48.i.i.while.body48.i.i_crit_edge ], [ %p.0.lcssa.i.i, %if.end35.i.i.while.body48.i.i_crit_edge ]
  %conv.i.i = trunc i32 %data.0107.i.i to i8
  %incdec.ptr49.i.i = getelementptr i8, ptr %p_byte.0106.i.i, i32 1
  %88 = ptrtoint ptr %p_byte.0106.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv.i.i, ptr %p_byte.0106.i.i, align 1
  %shr.i12.i = lshr i32 %data.0107.i.i, 8
  %89 = ptrtoint ptr %seg_cnt.i7.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %seg_cnt.i7.i, align 4
  %dec46.i.i = add i32 %90, -1
  store i32 %dec46.i.i, ptr %seg_cnt.i7.i, align 4
  %tobool47.not.i.i = icmp eq i32 %90, 0
  br i1 %tobool47.not.i.i, label %while.body48.i.i.if.end12.i_crit_edge, label %while.body48.i.i.while.body48.i.i_crit_edge

while.body48.i.i.while.body48.i.i_crit_edge:      ; preds = %while.body48.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body48.i.i

while.body48.i.i.if.end12.i_crit_edge:            ; preds = %while.body48.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.end12.i:                                       ; preds = %while.body48.i.i.if.end12.i_crit_edge, %if.end35.i.i.if.end12.i_crit_edge, %while.end21.i.i.if.end12.i_crit_edge
  %91 = ptrtoint ptr %seg_len.i6.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %seg_len.i6.i, align 4
  %93 = ptrtoint ptr %ibi1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ibi1.i, align 4
  %len.i = getelementptr inbounds %struct.i3c_ibi_slot, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len.i, align 4
  %add.i = add i32 %96, %92
  store i32 %add.i, ptr %len.i, align 4
  %97 = load i32, ptr %seg_len.i6.i, align 4
  %98 = ptrtoint ptr %data_ptr.i5.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data_ptr.i5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %99, i32 %97
  store ptr %add.ptr.i, ptr %data_ptr.i5.i, align 4
  %100 = ptrtoint ptr %last_seg15.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %last_seg15.i, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool16.not.i = icmp eq i8 %101, 0
  br i1 %tobool16.not.i, label %if.end12.i.if.end45.i_crit_edge, label %if.then17.i

if.end12.i.if.end45.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

if.then17.i:                                      ; preds = %if.end12.i
  %102 = ptrtoint ptr %ibi1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ibi1.i, align 4
  %dev.i = getelementptr inbounds %struct.i3c_ibi_slot, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev.i, align 4
  tail call void @i3c_master_queue_ibi(ptr noundef %105, ptr noundef %103) #5
  %106 = ptrtoint ptr %ibi1.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %ibi1.i, align 4
  %107 = ptrtoint ptr %reg_queue_thresh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %reg_queue_thresh.i.i.i, align 4
  %and.i13.i = and i32 %108, 16777215
  %or.i.i = or i32 %and.i13.i, 16777216
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %108)
  %cmp.not.i.i = icmp eq i32 %or.i.i, %108
  br i1 %cmp.not.i.i, label %if.then17.i.if.end8_crit_edge, label %do.body17.i.i

if.then17.i.if.end8_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.body17.i.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %109 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %110 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %PIO_regs, align 8
  %add.ptr.i15.i = getelementptr i8, ptr %111, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %109) #5, !srcloc !92
  %112 = ptrtoint ptr %reg_queue_thresh.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %or.i.i, ptr %reg_queue_thresh.i.i.i, align 4
  br label %if.end8

if.else.i:                                        ; preds = %for.cond.i
  %113 = ptrtoint ptr %seg_cnt.i7.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %seg_cnt.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool23.not.i = icmp eq i32 %114, 0
  br i1 %tobool23.not.i, label %if.else.i.if.end45.i_crit_edge, label %if.then24.i

if.else.i.if.end45.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

if.then24.i:                                      ; preds = %if.else.i
  %115 = ptrtoint ptr %reg_queue_thresh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %reg_queue_thresh.i.i.i, align 4
  %and.i17.i = and i32 %116, 16777215
  %or.i18.i = or i32 %and.i17.i, 16777216
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i18.i, i32 %116)
  %cmp.not.i19.i = icmp eq i32 %or.i18.i, %116
  br i1 %cmp.not.i19.i, label %if.then24.i.do.body.i.preheader_crit_edge, label %do.body17.i22.i

if.then24.i.do.body.i.preheader_crit_edge:        ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.preheader

do.body17.i22.i:                                  ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %117 = tail call i32 @llvm.bswap.i32(i32 %or.i18.i) #5
  %118 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %PIO_regs, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %119, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %117) #5, !srcloc !92
  %120 = ptrtoint ptr %reg_queue_thresh.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %or.i18.i, ptr %reg_queue_thresh.i.i.i, align 4
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %do.body17.i22.i, %if.then24.i.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %if.end30.i.do.body.i_crit_edge, %do.body.i.preheader
  %121 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %PIO_regs, align 8
  %add.ptr25.i = getelementptr i8, ptr %122, i32 32
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  %124 = and i32 %123, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool28.not.i = icmp eq i32 %124, 0
  br i1 %tobool28.not.i, label %do.body.i.if.end8_crit_edge, label %if.end30.i

do.body.i.if.end8_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end30.i:                                       ; preds = %do.body.i
  %125 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %PIO_regs, align 8
  %add.ptr34.i = getelementptr i8, ptr %126, i32 12
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  %128 = ptrtoint ptr %seg_cnt.i7.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %seg_cnt.i7.i, align 4
  %dec.i = add i32 %129, -1
  store i32 %dec.i, ptr %seg_cnt.i7.i, align 4
  %tobool39.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool39.not.i, label %do.end.i, label %if.end30.i.do.body.i_crit_edge

if.end30.i.do.body.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end.i:                                         ; preds = %if.end30.i
  %130 = ptrtoint ptr %last_seg15.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %last_seg15.i, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool41.not.i = icmp eq i8 %131, 0
  br i1 %tobool41.not.i, label %do.end.i.if.end45.i_crit_edge, label %do.end.i.if.end8_crit_edge

do.end.i.if.end8_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.end.i.if.end45.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end.i.if.end45.i_crit_edge, %if.else.i.if.end45.i_crit_edge, %if.end12.i.if.end45.i_crit_edge
  %132 = ptrtoint ptr %reg_queue_thresh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %reg_queue_thresh.i.i.i, align 4
  %and.i25.i = and i32 %133, 16777215
  %or.i26.i = or i32 %and.i25.i, 16777216
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i26.i, i32 %133)
  %cmp.not.i27.i = icmp eq i32 %or.i26.i, %133
  br i1 %cmp.not.i27.i, label %if.end45.i.hci_pio_set_ibi_thresh.exit31.i_crit_edge, label %do.body17.i30.i

if.end45.i.hci_pio_set_ibi_thresh.exit31.i_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_set_ibi_thresh.exit31.i

do.body17.i30.i:                                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %134 = tail call i32 @llvm.bswap.i32(i32 %or.i26.i) #5
  %135 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %PIO_regs, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %136, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %134) #5, !srcloc !92
  %137 = ptrtoint ptr %reg_queue_thresh.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %or.i26.i, ptr %reg_queue_thresh.i.i.i, align 4
  br label %hci_pio_set_ibi_thresh.exit31.i

hci_pio_set_ibi_thresh.exit31.i:                  ; preds = %do.body17.i30.i, %if.end45.i.hci_pio_set_ibi_thresh.exit31.i_crit_edge
  %138 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %PIO_regs, align 8
  %add.ptr49.i = getelementptr i8, ptr %139, i32 32
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  %141 = and i32 %140, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool54.not.i = icmp eq i32 %141, 0
  br i1 %tobool54.not.i, label %hci_pio_set_ibi_thresh.exit31.i.if.end8_crit_edge, label %if.end56.i

hci_pio_set_ibi_thresh.exit31.i.if.end8_crit_edge: ; preds = %hci_pio_set_ibi_thresh.exit31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end56.i:                                       ; preds = %hci_pio_set_ibi_thresh.exit31.i
  %142 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %PIO_regs, align 8
  %add.ptr60.i = getelementptr i8, ptr %143, i32 12
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60.i) #5, !srcloc !87
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  %and80.i = lshr i32 %145, 9
  %shr.i = and i32 %and80.i, 127
  %146 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %shr.i)
  %cmp.not.i = icmp eq i32 %147, %shr.i
  br i1 %cmp.not.i, label %if.end56.i.if.end87.i_crit_edge, label %do.end84.i

if.end56.i.if.end87.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.i

do.end84.i:                                       ; preds = %if.end56.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.5, i32 noundef %147, i32 noundef %shr.i) #8
  %148 = ptrtoint ptr %ibi1.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ibi1.i, align 4
  %tobool.not.i33.i = icmp eq ptr %149, null
  br i1 %tobool.not.i33.i, label %do.end84.i.if.end87.i_crit_edge, label %if.then.i.i

do.end84.i.if.end87.i_crit_edge:                  ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.i

if.then.i.i:                                      ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.i3c_ibi_slot, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev.i.i, align 4
  %master_priv.i.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %master_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %master_priv.i.i, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  tail call void @i3c_generic_ibi_recycle_slot(ptr noundef %155, ptr noundef nonnull %149) #5
  %156 = ptrtoint ptr %ibi1.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %ibi1.i, align 4
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then.i.i, %do.end84.i.if.end87.i_crit_edge, %if.end56.i.if.end87.i_crit_edge
  %and88.i = lshr i32 %145, 24
  %157 = trunc i32 %and88.i to i8
  %158 = and i8 %157, 1
  %159 = ptrtoint ptr %last_seg15.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %158, ptr %last_seg15.i, align 4
  %and107.i = and i32 %145, 255
  %160 = ptrtoint ptr %seg_len.i6.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %and107.i, ptr %seg_len.i6.i, align 4
  %161 = ptrtoint ptr %seg_cnt.i7.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %and107.i, ptr %seg_cnt.i7.i, align 4
  %162 = ptrtoint ptr %ibi1.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ibi1.i, align 4
  %tobool113.not.i = icmp eq ptr %163, null
  br i1 %tobool113.not.i, label %if.end87.i.for.cond.i.backedge_crit_edge, label %land.lhs.true114.i

if.end87.i.for.cond.i.backedge_crit_edge:         ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.backedge

land.lhs.true114.i:                               ; preds = %if.end87.i
  %len116.i = getelementptr inbounds %struct.i3c_ibi_slot, ptr %163, i32 0, i32 2
  %164 = ptrtoint ptr %len116.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %len116.i, align 4
  %add118.i = add i32 %165, %and107.i
  %166 = ptrtoint ptr %max_len.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %max_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add118.i, i32 %167)
  %cmp119.i = icmp ugt i32 %add118.i, %167
  br i1 %cmp119.i, label %do.end123.i, label %land.lhs.true114.i.for.cond.i.backedge_crit_edge

land.lhs.true114.i.for.cond.i.backedge_crit_edge: ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.backedge

do.end123.i:                                      ; preds = %land.lhs.true114.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.9, i32 noundef %add118.i, i32 noundef %167) #8
  %168 = ptrtoint ptr %ibi1.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ibi1.i, align 4
  %tobool.not.i36.i = icmp eq ptr %169, null
  br i1 %tobool.not.i36.i, label %do.end123.i.for.cond.i.backedge_crit_edge, label %if.then.i39.i

do.end123.i.for.cond.i.backedge_crit_edge:        ; preds = %do.end123.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.backedge

if.then.i39.i:                                    ; preds = %do.end123.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i37.i = getelementptr inbounds %struct.i3c_ibi_slot, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %dev.i37.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev.i37.i, align 4
  %master_priv.i38.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %master_priv.i38.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %master_priv.i38.i, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %173, align 4
  tail call void @i3c_generic_ibi_recycle_slot(ptr noundef %175, ptr noundef nonnull %169) #5
  %176 = ptrtoint ptr %ibi1.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %ibi1.i, align 4
  br label %for.cond.i.backedge

for.cond.i.backedge:                              ; preds = %if.then.i39.i, %do.end123.i.for.cond.i.backedge_crit_edge, %land.lhs.true114.i.for.cond.i.backedge_crit_edge, %if.end87.i.for.cond.i.backedge_crit_edge
  br label %for.cond.i

if.end8:                                          ; preds = %hci_pio_set_ibi_thresh.exit31.i.if.end8_crit_edge, %do.end.i.if.end8_crit_edge, %do.body.i.if.end8_crit_edge, %do.body17.i.i, %if.then17.i.if.end8_crit_edge, %hci_pio_set_ibi_thresh.exit91.i.i.if.end8_crit_edge, %hci_pio_set_ibi_thresh.exit.i.i.if.end8_crit_edge, %hci_pio_prep_new_ibi.exit.thread.i, %if.end.if.end8_crit_edge
  %and9 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end17_crit_edge, label %if.then11

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then11:                                        ; preds = %if.end8
  %curr_rx.i = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 3
  %177 = ptrtoint ptr %curr_rx.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %curr_rx.i, align 4
  %tobool.not13.i = icmp eq ptr %178, null
  br i1 %tobool.not13.i, label %if.then11.if.then13_crit_edge, label %land.rhs.lr.ph.i

if.then11.if.then13_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

land.rhs.lr.ph.i:                                 ; preds = %if.then11
  %rx_thresh_size.i.i = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 10
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %179 = phi ptr [ %178, %land.rhs.lr.ph.i ], [ %205, %while.body.i.land.rhs.i_crit_edge ]
  %data_left.i.i = getelementptr inbounds %struct.hci_xfer, ptr %179, i32 0, i32 7, i32 0, i32 3
  %180 = ptrtoint ptr %data_left.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %data_left.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %181)
  %cmp45.i.i = icmp ugt i32 %181, 3
  br i1 %cmp45.i.i, label %while.body.lr.ph.i.i, label %land.rhs.i.hci_pio_do_rx.exit.i_crit_edge

land.rhs.i.hci_pio_do_rx.exit.i_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_do_rx.exit.i

while.body.lr.ph.i.i:                             ; preds = %land.rhs.i
  %data.i.i129 = getelementptr inbounds %struct.hci_xfer, ptr %179, i32 0, i32 3
  %182 = ptrtoint ptr %data.i.i129 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %data.i.i129, align 4
  %data_len.i.i = getelementptr inbounds %struct.hci_xfer, ptr %179, i32 0, i32 4
  %184 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %data_len.i.i, align 4
  %sub.i.i130 = sub i32 %185, %181
  %div39.i.i = lshr i32 %sub.i.i130, 2
  %add.ptr.i.i131 = getelementptr i32, ptr %183, i32 %div39.i.i
  br label %while.body.i.i139

while.condthread-pre-splitthread-pre-split.i.i133: ; preds = %while.body13.i.i147
  call void @__sanitizer_cov_trace_pc() #7
  %186 = ptrtoint ptr %data_left.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %.pr.pr.i.i132 = load i32, ptr %data_left.i.i, align 4
  br label %while.condthread-pre-split.i.i137

while.condthread-pre-split.i.i137:                ; preds = %if.end.i.i142.while.condthread-pre-split.i.i137_crit_edge, %while.condthread-pre-splitthread-pre-split.i.i133
  %.pr.i.i134 = phi i32 [ %.pr.pr.i.i132, %while.condthread-pre-splitthread-pre-split.i.i133 ], [ %sub9.i.i141, %if.end.i.i142.while.condthread-pre-split.i.i137_crit_edge ]
  %p.1.lcssa.i.i135 = phi ptr [ %incdec.ptr.i.i145, %while.condthread-pre-splitthread-pre-split.i.i133 ], [ %p.046.i.i, %if.end.i.i142.while.condthread-pre-split.i.i137_crit_edge ]
  %cmp.i.i136 = icmp ugt i32 %.pr.i.i134, 3
  br i1 %cmp.i.i136, label %while.condthread-pre-split.i.i137.while.body.i.i139_crit_edge, label %while.condthread-pre-split.i.i137.hci_pio_do_rx.exit.i_crit_edge

while.condthread-pre-split.i.i137.hci_pio_do_rx.exit.i_crit_edge: ; preds = %while.condthread-pre-split.i.i137
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_do_rx.exit.i

while.condthread-pre-split.i.i137.while.body.i.i139_crit_edge: ; preds = %while.condthread-pre-split.i.i137
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i139

while.body.i.i139:                                ; preds = %while.condthread-pre-split.i.i137.while.body.i.i139_crit_edge, %while.body.lr.ph.i.i
  %p.046.i.i = phi ptr [ %add.ptr.i.i131, %while.body.lr.ph.i.i ], [ %p.1.lcssa.i.i135, %while.condthread-pre-split.i.i137.while.body.i.i139_crit_edge ]
  %187 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %PIO_regs, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %188, i32 32
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  %190 = and i32 %189, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool.not.i.i138 = icmp eq i32 %190, 0
  br i1 %tobool.not.i.i138, label %while.body.i.i139.hci_pio_process_rx.exit_crit_edge, label %if.end.i.i142

while.body.i.i139.hci_pio_process_rx.exit_crit_edge: ; preds = %while.body.i.i139
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_process_rx.exit

if.end.i.i142:                                    ; preds = %while.body.i.i139
  %191 = ptrtoint ptr %data_left.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %data_left.i.i, align 4
  %div540.i.i = lshr i32 %192, 2
  %193 = ptrtoint ptr %rx_thresh_size.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %rx_thresh_size.i.i, align 4
  %195 = tail call i32 @llvm.umin.i32(i32 %div540.i.i, i32 %194) #5
  %mul.neg.i.i140 = mul i32 %195, -4
  %sub9.i.i141 = add i32 %mul.neg.i.i140, %192
  %196 = ptrtoint ptr %data_left.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %sub9.i.i141, ptr %data_left.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool12.not42.i.i = icmp eq i32 %195, 0
  br i1 %tobool12.not42.i.i, label %if.end.i.i142.while.condthread-pre-split.i.i137_crit_edge, label %if.end.i.i142.while.body13.i.i147_crit_edge

if.end.i.i142.while.body13.i.i147_crit_edge:      ; preds = %if.end.i.i142
  br label %while.body13.i.i147

if.end.i.i142.while.condthread-pre-split.i.i137_crit_edge: ; preds = %if.end.i.i142
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.condthread-pre-split.i.i137

while.body13.i.i147:                              ; preds = %while.body13.i.i147.while.body13.i.i147_crit_edge, %if.end.i.i142.while.body13.i.i147_crit_edge
  %nr_words.044.i.i = phi i32 [ %dec.i.i143, %while.body13.i.i147.while.body13.i.i147_crit_edge ], [ %195, %if.end.i.i142.while.body13.i.i147_crit_edge ]
  %p.143.i.i = phi ptr [ %incdec.ptr.i.i145, %while.body13.i.i147.while.body13.i.i147_crit_edge ], [ %p.046.i.i, %if.end.i.i142.while.body13.i.i147_crit_edge ]
  %dec.i.i143 = add nsw i32 %nr_words.044.i.i, -1
  %197 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %PIO_regs, align 8
  %add.ptr17.i.i144 = getelementptr i8, ptr %198, i32 8
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i144) #5, !srcloc !87
  %200 = tail call i32 @llvm.bswap.i32(i32 %199) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  %incdec.ptr.i.i145 = getelementptr i32, ptr %p.143.i.i, i32 1
  %201 = ptrtoint ptr %p.143.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %p.143.i.i, align 4
  %tobool12.not.i.i146 = icmp eq i32 %dec.i.i143, 0
  br i1 %tobool12.not.i.i146, label %while.condthread-pre-splitthread-pre-split.i.i133, label %while.body13.i.i147.while.body13.i.i147_crit_edge

while.body13.i.i147.while.body13.i.i147_crit_edge: ; preds = %while.body13.i.i147
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body13.i.i147

hci_pio_do_rx.exit.i:                             ; preds = %while.condthread-pre-split.i.i137.hci_pio_do_rx.exit.i_crit_edge, %land.rhs.i.hci_pio_do_rx.exit.i_crit_edge
  %.lcssa.i.i148 = phi i32 [ %181, %land.rhs.i.hci_pio_do_rx.exit.i_crit_edge ], [ %.pr.i.i134, %while.condthread-pre-split.i.i137.hci_pio_do_rx.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa.i.i148)
  %tobool23.not.i.i149 = icmp eq i32 %.lcssa.i.i148, 0
  br i1 %tobool23.not.i.i149, label %while.body.i, label %hci_pio_do_rx.exit.i.hci_pio_process_rx.exit_crit_edge

hci_pio_do_rx.exit.i.hci_pio_process_rx.exit_crit_edge: ; preds = %hci_pio_do_rx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_process_rx.exit

while.body.i:                                     ; preds = %hci_pio_do_rx.exit.i
  %202 = ptrtoint ptr %curr_rx.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %curr_rx.i, align 4
  %next_data.i = getelementptr inbounds %struct.hci_xfer, ptr %203, i32 0, i32 7, i32 0, i32 1
  %204 = ptrtoint ptr %next_data.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %next_data.i, align 4
  store ptr %205, ptr %curr_rx.i, align 4
  %tobool.not.i150 = icmp eq ptr %205, null
  br i1 %tobool.not.i150, label %while.body.i.if.then13_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

while.body.i.if.then13_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

hci_pio_process_rx.exit:                          ; preds = %hci_pio_do_rx.exit.i.hci_pio_process_rx.exit_crit_edge, %while.body.i.i139.hci_pio_process_rx.exit_crit_edge
  %206 = ptrtoint ptr %curr_rx.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %.pr = load ptr, ptr %curr_rx.i, align 4
  %tobool4.not.i151 = icmp eq ptr %.pr, null
  br i1 %tobool4.not.i151, label %hci_pio_process_rx.exit.if.then13_crit_edge, label %hci_pio_process_rx.exit.if.end17_crit_edge

hci_pio_process_rx.exit.if.end17_crit_edge:       ; preds = %hci_pio_process_rx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

hci_pio_process_rx.exit.if.then13_crit_edge:      ; preds = %hci_pio_process_rx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.then13:                                        ; preds = %hci_pio_process_rx.exit.if.then13_crit_edge, %while.body.i.if.then13_crit_edge, %if.then11.if.then13_crit_edge
  %207 = ptrtoint ptr %enabled_irqs to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %enabled_irqs, align 4
  %and15 = and i32 %208, -3
  store i32 %and15, ptr %enabled_irqs, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %hci_pio_process_rx.exit.if.end17_crit_edge, %if.end8.if.end17_crit_edge
  %and18 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end26_crit_edge, label %if.then20

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then20:                                        ; preds = %if.end17
  %call21 = tail call fastcc zeroext i1 @hci_pio_process_tx(ptr noundef %hci, ptr noundef %1)
  br i1 %call21, label %if.then22, label %if.then20.if.end26_crit_edge

if.then20.if.end26_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %209 = ptrtoint ptr %enabled_irqs to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %enabled_irqs, align 4
  %and24 = and i32 %210, -2
  store i32 %and24, ptr %enabled_irqs, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.then20.if.end26_crit_edge, %if.end17.if.end26_crit_edge
  %and27 = and i32 %and, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end35_crit_edge, label %if.then29

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then29:                                        ; preds = %if.end26
  %call30 = tail call fastcc zeroext i1 @hci_pio_process_resp(ptr noundef %hci, ptr noundef %1)
  br i1 %call30, label %if.then31, label %if.then29.if.end35_crit_edge

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then31:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  %211 = ptrtoint ptr %enabled_irqs to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %enabled_irqs, align 4
  %and33 = and i32 %212, -17
  store i32 %and33, ptr %enabled_irqs, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.then29.if.end35_crit_edge, %if.end26.if.end35_crit_edge
  %and36 = and i32 %5, 348288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end55_crit_edge, label %do.body, !prof !103

if.end35.if.end55_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

do.body:                                          ; preds = %if.end35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %213 = tail call i32 @llvm.bswap.i32(i32 %and36)
  %214 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %PIO_regs, align 8
  %add.ptr43 = getelementptr i8, ptr %215, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %213) #5, !srcloc !92
  %call45 = tail call i32 @___ratelimit(ptr noundef nonnull @hci_pio_irq_handler._rs, ptr noundef nonnull @__func__.hci_pio_irq_handler) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.body.if.end55_crit_edge, label %do.end50

do.body.if.end55_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

do.end50:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %hci, ptr noundef nonnull @.str.1, i32 noundef %and36) #8
  br label %if.end55

if.end55:                                         ; preds = %do.end50, %do.body.if.end55_crit_edge, %if.end35.if.end55_crit_edge
  %and56 = and i32 %and, 66757152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end72_crit_edge, label %do.body65, !prof !103

if.end55.if.end72_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

do.body65:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %216 = tail call i32 @llvm.bswap.i32(i32 %and56)
  %217 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %PIO_regs, align 8
  %add.ptr70 = getelementptr i8, ptr %218, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %216) #5, !srcloc !92
  tail call fastcc void @hci_pio_err(ptr noundef %hci, ptr noundef %1, i32 noundef %and56)
  br label %if.end72

if.end72:                                         ; preds = %do.body65, %if.end55.if.end72_crit_edge
  %and73 = and i32 %and, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end72.do.body82_crit_edge, label %if.then75

if.end72.do.body82_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body82

if.then75:                                        ; preds = %if.end72
  %call76 = tail call fastcc zeroext i1 @hci_pio_process_cmd(ptr noundef %hci, ptr noundef %1)
  br i1 %call76, label %if.then77, label %if.then75.do.body82_crit_edge

if.then75.do.body82_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body82

if.then77:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  %219 = ptrtoint ptr %enabled_irqs to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %enabled_irqs, align 4
  %and79 = and i32 %220, -9
  store i32 %and79, ptr %enabled_irqs, align 4
  br label %do.body82

do.body82:                                        ; preds = %if.then77, %if.then75.do.body82_crit_edge, %if.end72.do.body82_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %221 = ptrtoint ptr %enabled_irqs to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %enabled_irqs, align 4
  %223 = tail call i32 @llvm.bswap.i32(i32 %222)
  %224 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %PIO_regs, align 8
  %add.ptr87 = getelementptr i8, ptr %225, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %223) #5, !srcloc !92
  br label %cleanup

cleanup:                                          ; preds = %do.body82, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %1) #5
  %226 = xor i1 %tobool.not, true
  ret i1 %226
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_pio_queue_xfer(ptr noundef %hci, ptr noundef %xfer, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %io_data = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 10
  %0 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp45 = icmp sgt i32 %n, 0
  br i1 %cmp45, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.046 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.046, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %n)
  %cmp1 = icmp slt i32 %add, %n
  %arrayidx = getelementptr %struct.hci_xfer, ptr %xfer, i32 %add
  %spec.select = select i1 %cmp1, ptr %arrayidx, ptr null
  %2 = getelementptr %struct.hci_xfer, ptr %xfer, i32 %i.046, i32 7
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spec.select, ptr %2, align 4
  %next_data = getelementptr inbounds %struct.anon.85, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %next_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %next_data, align 4
  %next_resp = getelementptr inbounds %struct.anon.85, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %next_resp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %next_resp, align 4
  %data_len = getelementptr %struct.hci_xfer, ptr %xfer, i32 %i.046, i32 4
  %6 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len, align 4
  %data_left = getelementptr inbounds %struct.anon.85, ptr %2, i32 0, i32 3
  %8 = ptrtoint ptr %data_left to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %data_left, align 4
  %exitcond.not = icmp eq i32 %add, %n
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #5
  %xfer_queue = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %xfer_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xfer_queue, align 4
  %sub = add i32 %n, -1
  %arrayidx8 = getelementptr %struct.hci_xfer, ptr %xfer, i32 %sub
  store ptr %arrayidx8, ptr %xfer_queue, align 4
  %curr_xfer = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %curr_xfer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %curr_xfer, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = getelementptr inbounds %struct.hci_xfer, ptr %10, i32 0, i32 7
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %xfer, ptr %13, align 4
  br label %if.end15

if.else:                                          ; preds = %for.end
  %15 = ptrtoint ptr %curr_xfer to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %xfer, ptr %curr_xfer, align 4
  %call = tail call fastcc zeroext i1 @hci_pio_process_cmd(ptr noundef %hci, ptr noundef %1)
  br i1 %call, label %if.else.do.body_crit_edge, label %if.then12

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %enabled_irqs = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %enabled_irqs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %enabled_irqs, align 4
  %or = or i32 %17, 8
  store i32 %or, ptr %enabled_irqs, align 4
  br label %do.body

do.body:                                          ; preds = %if.then12, %if.else.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %enabled_irqs13 = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %enabled_irqs13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %enabled_irqs13, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %PIO_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 5
  %21 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %PIO_regs, align 8
  %add.ptr = getelementptr i8, ptr %22, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %20) #5, !srcloc !92
  br label %if.end15

if.end15:                                         ; preds = %do.body, %if.then
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hci_pio_dequeue_xfer(ptr nocapture noundef readonly %hci, ptr noundef %xfer, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %io_data = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 10
  %0 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #5
  %call = tail call fastcc zeroext i1 @hci_pio_dequeue_xfer_common(ptr noundef %1, ptr noundef %xfer, i32 noundef %n)
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #5
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_pio_request_ibi(ptr nocapture noundef readnone %hci, ptr noundef %dev, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 8) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @i3c_generic_ibi_alloc_pool(ptr noundef %dev, ptr noundef %req) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %call7.i, align 8
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 4
  %max_len = getelementptr inbounds %struct.hci_pio_dev_ibi_data, ptr %call7.i, i32 0, i32 1
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
define internal void @hci_pio_free_ibi(ptr nocapture noundef readnone %hci, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void @i3c_generic_ibi_free_pool(ptr noundef %5) #5
  tail call void @kfree(ptr noundef %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_pio_recycle_ibi_slot(ptr nocapture noundef readnone %hci, ptr nocapture noundef readonly %dev, ptr noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void @i3c_generic_ibi_recycle_slot(ptr noundef %5, ptr noundef %slot) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_pio_init(ptr noundef %hci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 124) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_data = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 10
  %1 = ptrtoint ptr %io_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %io_data, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @hci_pio_init.__key, i16 noundef signext 3) #5
  %PIO_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 5
  %2 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PIO_regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !87
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  %and = and i32 %5, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.31, i32 noundef %and) #8
  %and44 = lshr i32 %5, 8
  %shr45 = and i32 %and44, 255
  %mul = shl nuw nsw i32 %shr45, 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.35, i32 noundef %mul) #8
  %and67 = lshr i32 %5, 16
  %shr68 = and i32 %and67, 255
  %mul69 = shl i32 8, %shr68
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.38, i32 noundef %mul69) #8
  %shr92 = lshr i32 %5, 24
  %mul94 = shl i32 8, %shr92
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.41, i32 noundef %mul94) #8
  %version_major = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 20
  %6 = ptrtoint ptr %version_major to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %version_major, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %if.then132, label %if.else

if.then132:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr68)
  %tobool133.not = icmp eq i32 %shr68, 0
  %sub = add nsw i32 %shr68, -1
  %spec.select = select i1 %tobool133.not, i32 0, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %5)
  %tobool136.not = icmp ult i32 %5, 16777216
  %sub138 = add nsw i32 %shr92, -1
  %tx_thresh.0 = select i1 %tobool136.not, i32 0, i32 %sub138
  %shl140 = shl i32 2, %spec.select
  %shl141 = shl i32 2, %tx_thresh.0
  br label %do.body153

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl142 = shl nuw i32 1, %shr68
  %shl144 = shl nuw i32 1, %shr92
  br label %do.body153

do.body153:                                       ; preds = %if.else, %if.then132
  %shl142.sink = phi i32 [ %shl140, %if.then132 ], [ %shl142, %if.else ]
  %shl144.sink = phi i32 [ %shl141, %if.then132 ], [ %shl144, %if.else ]
  %tx_thresh.1 = phi i32 [ %tx_thresh.0, %if.then132 ], [ %shr92, %if.else ]
  %rx_thresh.1 = phi i32 [ %spec.select, %if.then132 ], [ %shr68, %if.else ]
  %8 = getelementptr inbounds %struct.hci_pio_data, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shl142.sink, ptr %8, align 8
  %10 = getelementptr inbounds %struct.hci_pio_data, ptr %call7.i.i, i32 0, i32 11
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl144.sink, ptr %10, align 4
  %shl167 = shl nuw nsw i32 %rx_thresh.1, 8
  %and168 = and i32 %shl167, 1792
  %and192 = and i32 %tx_thresh.1, 7
  %or = or i32 %and168, %and192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %PIO_regs, align 8
  %add.ptr197 = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197, i32 %12) #5, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr45)
  %cmp217 = icmp ugt i32 %shr45, 3
  %div372 = lshr i32 %shr45, 1
  %15 = tail call i32 @llvm.umin.i32(i32 %div372, i32 63)
  %16 = select i1 %cmp217, i32 %15, i32 1
  %max_ibi_thresh = getelementptr inbounds %struct.hci_pio_data, ptr %call7.i.i, i32 0, i32 12
  %17 = ptrtoint ptr %max_ibi_thresh to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %max_ibi_thresh, align 8
  %shl269 = shl nuw nsw i32 %16, 16
  %or305 = or i32 %shl269, 16777473
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %or305)
  %19 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %PIO_regs, align 8
  %add.ptr310 = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr310, i32 %18) #5, !srcloc !92
  %reg_queue_thresh = getelementptr inbounds %struct.hci_pio_data, ptr %call7.i.i, i32 0, i32 13
  %21 = ptrtoint ptr %reg_queue_thresh to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or305, ptr %reg_queue_thresh, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %PIO_regs, align 8
  %add.ptr315 = getelementptr i8, ptr %23, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr315, i32 0) #5, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %PIO_regs, align 8
  %add.ptr320 = getelementptr i8, ptr %25, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr320, i32 -1) #5, !srcloc !92
  %enabled_irqs = getelementptr inbounds %struct.hci_pio_data, ptr %call7.i.i, i32 0, i32 14
  %26 = ptrtoint ptr %enabled_irqs to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 66757152, ptr %enabled_irqs, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body153, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body153 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_pio_cleanup(ptr nocapture noundef %hci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %io_data = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 10
  %0 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %PIO_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 5
  %2 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PIO_regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !92
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end69_crit_edge, label %if.then

entry.if.end69_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then:                                          ; preds = %entry
  %curr_xfer = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %curr_xfer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curr_xfer, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %do.body14, label %do.body6, !prof !103

do.body6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/i3c/master/mipi-i3c-hci/pio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !114
  unreachable

do.body14:                                        ; preds = %if.then
  %curr_rx = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %curr_rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %curr_rx, align 4
  %tobool15.not = icmp eq ptr %7, null
  br i1 %tobool15.not, label %do.body32, label %do.body23, !prof !103

do.body23:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/i3c/master/mipi-i3c-hci/pio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #5, !srcloc !115
  unreachable

do.body32:                                        ; preds = %do.body14
  %curr_tx = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %curr_tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %curr_tx, align 4
  %tobool33.not = icmp eq ptr %9, null
  br i1 %tobool33.not, label %do.body50, label %do.body41, !prof !103

do.body41:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/i3c/master/mipi-i3c-hci/pio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 220, 0\0A.popsection", ""() #5, !srcloc !116
  unreachable

do.body50:                                        ; preds = %do.body32
  %curr_resp = getelementptr inbounds %struct.hci_pio_data, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %curr_resp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %curr_resp, align 4
  %tobool51.not = icmp eq ptr %11, null
  br i1 %tobool51.not, label %do.end67, label %do.body59, !prof !103

do.body59:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/i3c/master/mipi-i3c-hci/pio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 221, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

do.end67:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %1) #5
  %12 = ptrtoint ptr %io_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %io_data, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %entry.if.end69_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @hci_pio_process_tx(ptr nocapture noundef readonly %hci, ptr nocapture noundef %pio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_tx = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 5
  %0 = ptrtoint ptr %curr_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr_tx, align 4
  %tobool.not13 = icmp eq ptr %1, null
  br i1 %tobool.not13, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %PIO_regs.i = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 5
  %tx_thresh_size.i = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 11
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %2 = phi ptr [ %1, %land.rhs.lr.ph ], [ %38, %while.body.land.rhs_crit_edge ]
  %data.i = getelementptr inbounds %struct.hci_xfer, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %data_len.i = getelementptr inbounds %struct.hci_xfer, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_len.i, align 4
  %data_left.i = getelementptr inbounds %struct.hci_xfer, ptr %2, i32 0, i32 7, i32 0, i32 3
  %7 = ptrtoint ptr %data_left.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_left.i, align 4
  %sub.i = sub i32 %6, %8
  %div58.i = lshr i32 %sub.i, 2
  %add.ptr.i = getelementptr i32, ptr %4, i32 %div58.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp65.i = icmp ugt i32 %8, 3
  br i1 %cmp65.i, label %land.rhs.while.body.i_crit_edge, label %land.rhs.while.end16.i_crit_edge

land.rhs.while.end16.i_crit_edge:                 ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end16.i

land.rhs.while.body.i_crit_edge:                  ; preds = %land.rhs
  br label %while.body.i

while.condthread-pre-splitthread-pre-split.i:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %data_left.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr.pr.i = load i32, ptr %data_left.i, align 4
  br label %while.condthread-pre-split.i

while.condthread-pre-split.i:                     ; preds = %if.end.i.while.condthread-pre-split.i_crit_edge, %while.condthread-pre-splitthread-pre-split.i
  %.pr.i = phi i32 [ %.pr.pr.i, %while.condthread-pre-splitthread-pre-split.i ], [ %sub9.i, %if.end.i.while.condthread-pre-split.i_crit_edge ]
  %p.1.lcssa.i = phi ptr [ %incdec.ptr.i, %while.condthread-pre-splitthread-pre-split.i ], [ %p.066.i, %if.end.i.while.condthread-pre-split.i_crit_edge ]
  %cmp.i = icmp ugt i32 %.pr.i, 3
  br i1 %cmp.i, label %while.condthread-pre-split.i.while.body.i_crit_edge, label %while.condthread-pre-split.i.while.end16.i_crit_edge

while.condthread-pre-split.i.while.end16.i_crit_edge: ; preds = %while.condthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end16.i

while.condthread-pre-split.i.while.body.i_crit_edge: ; preds = %while.condthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i:                                     ; preds = %while.condthread-pre-split.i.while.body.i_crit_edge, %land.rhs.while.body.i_crit_edge
  %p.066.i = phi ptr [ %p.1.lcssa.i, %while.condthread-pre-split.i.while.body.i_crit_edge ], [ %add.ptr.i, %land.rhs.while.body.i_crit_edge ]
  %10 = ptrtoint ptr %PIO_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %PIO_regs.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %11, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %while.body.i.while.end_crit_edge, label %if.end.i

while.body.i.while.end_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end.i:                                         ; preds = %while.body.i
  %14 = ptrtoint ptr %data_left.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_left.i, align 4
  %div559.i = lshr i32 %15, 2
  %16 = ptrtoint ptr %tx_thresh_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_thresh_size.i, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %div559.i, i32 %17) #5
  %mul.neg.i = mul i32 %18, -4
  %sub9.i = add i32 %mul.neg.i, %15
  %19 = ptrtoint ptr %data_left.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub9.i, ptr %data_left.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.not62.i = icmp eq i32 %18, 0
  br i1 %tobool12.not62.i, label %if.end.i.while.condthread-pre-split.i_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  br label %do.body.i

if.end.i.while.condthread-pre-split.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.condthread-pre-split.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %nr_words.064.i = phi i32 [ %dec.i, %do.body.i.do.body.i_crit_edge ], [ %18, %if.end.i.do.body.i_crit_edge ]
  %p.163.i = phi ptr [ %incdec.ptr.i, %do.body.i.do.body.i_crit_edge ], [ %p.066.i, %if.end.i.do.body.i_crit_edge ]
  %dec.i = add nsw i32 %nr_words.064.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void @arm_heavy_mb() #5
  %incdec.ptr.i = getelementptr i32, ptr %p.163.i, i32 1
  %20 = ptrtoint ptr %p.163.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %p.163.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  %23 = ptrtoint ptr %PIO_regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %PIO_regs.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %22) #5, !srcloc !92
  %tobool12.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool12.not.i, label %while.condthread-pre-splitthread-pre-split.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

while.end16.i:                                    ; preds = %while.condthread-pre-split.i.while.end16.i_crit_edge, %land.rhs.while.end16.i_crit_edge
  %.lcssa.i = phi i32 [ %8, %land.rhs.while.end16.i_crit_edge ], [ %.pr.i, %while.condthread-pre-split.i.while.end16.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %add.ptr.i, %land.rhs.while.end16.i_crit_edge ], [ %p.1.lcssa.i, %while.condthread-pre-split.i.while.end16.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa.i)
  %tobool18.not.i = icmp eq i32 %.lcssa.i, 0
  br i1 %tobool18.not.i, label %while.end16.i.while.body_crit_edge, label %if.then19.i

while.end16.i.while.body_crit_edge:               ; preds = %while.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.then19.i:                                      ; preds = %while.end16.i
  %25 = ptrtoint ptr %PIO_regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %PIO_regs.i, align 8
  %add.ptr23.i = getelementptr i8, ptr %26, i32 32
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool28.not.i = icmp eq i32 %28, 0
  br i1 %tobool28.not.i, label %if.then19.i.while.end_crit_edge, label %if.end30.i

if.then19.i.while.end_crit_edge:                  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end30.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %p.0.lcssa.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  %32 = ptrtoint ptr %PIO_regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %PIO_regs.i, align 8
  %add.ptr36.i = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %31) #5, !srcloc !92
  %34 = ptrtoint ptr %data_left.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %data_left.i, align 4
  br label %while.body

while.body:                                       ; preds = %if.end30.i, %while.end16.i.while.body_crit_edge
  %35 = ptrtoint ptr %curr_tx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %curr_tx, align 4
  %next_data = getelementptr inbounds %struct.hci_xfer, ptr %36, i32 0, i32 7, i32 0, i32 1
  %37 = ptrtoint ptr %next_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %next_data, align 4
  store ptr %38, ptr %curr_tx, align 4
  %tobool.not = icmp eq ptr %38, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then19.i.while.end_crit_edge, %while.body.i.while.end_crit_edge, %entry.while.end_crit_edge
  %39 = ptrtoint ptr %curr_tx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %curr_tx, align 4
  %tobool4.not = icmp eq ptr %40, null
  ret i1 %tobool4.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @hci_pio_process_resp(ptr noundef %hci, ptr nocapture noundef %pio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_resp = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 7
  %PIO_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 5
  %curr_rx = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 3
  %rx_thresh_size.i.i = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 10
  %enabled_irqs = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 14
  %curr_tx = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 5
  %0 = ptrtoint ptr %curr_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr_resp, align 4
  %tobool.not153 = icmp eq ptr %1, null
  br i1 %tobool.not153, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %2 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PIO_regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  %5 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %6 = ptrtoint ptr %curr_resp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %curr_resp, align 4
  %8 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %PIO_regs, align 8
  %add.ptr7 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !87
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %and24 = lshr i32 %11, 24
  %shr = and i32 %and24, 15
  %cmd_tid = getelementptr inbounds %struct.hci_xfer, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %cmd_tid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmd_tid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %13)
  %cmp.not = icmp eq i32 %shr, %13
  br i1 %cmp.not, label %if.end, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.21, i32 noundef %shr, i32 noundef %13) #8
  tail call fastcc void @hci_pio_err(ptr noundef %hci, ptr noundef %pio, i32 noundef 66060288)
  br label %return

if.end:                                           ; preds = %while.body
  %response = getelementptr inbounds %struct.hci_xfer, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %response, align 4
  %15 = ptrtoint ptr %curr_rx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %curr_rx, align 4
  %cmp30 = icmp eq ptr %16, %7
  br i1 %cmp30, label %if.then31, label %if.end.if.end63_crit_edge

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then31:                                        ; preds = %if.end
  %data_len = getelementptr inbounds %struct.hci_xfer, ptr %7, i32 0, i32 4
  %17 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len, align 4
  %data_left = getelementptr inbounds %struct.hci_xfer, ptr %7, i32 0, i32 7, i32 0, i32 3
  %19 = ptrtoint ptr %data_left to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_left, align 4
  %sub = sub i32 %18, %20
  %and49 = and i32 %11, 4194303
  call void @__sanitizer_cov_trace_cmp4(i32 %and49, i32 %sub)
  %cmp51 = icmp ugt i32 %and49, %sub
  br i1 %cmp51, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.then31
  %sub53 = sub i32 %and49, %sub
  %data.i = getelementptr inbounds %struct.hci_xfer, ptr %7, i32 0, i32 3
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %23 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len, align 4
  %25 = ptrtoint ptr %data_left to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_left, align 4
  %sub.i = sub i32 %24, %26
  %div44.i = lshr i32 %sub.i, 2
  %add.ptr.i = getelementptr i32, ptr %22, i32 %div44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub53)
  %cmp.i = icmp ugt i32 %sub53, 3
  br i1 %cmp.i, label %while.body.lr.ph.i, label %if.then52.if.end.i_crit_edge

if.then52.if.end.i_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

while.body.lr.ph.i:                               ; preds = %if.then52
  %mul.i = and i32 %sub53, -4
  %sub3.i = sub i32 %26, %mul.i
  %27 = ptrtoint ptr %data_left to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub3.i, ptr %data_left, align 4
  %div145.i = lshr i32 %sub53, 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %p.048.i = phi ptr [ %add.ptr.i, %while.body.lr.ph.i ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %nr_words.047.i = phi i32 [ %div145.i, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %nr_words.047.i, -1
  %28 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %PIO_regs, align 8
  %add.ptr5.i = getelementptr i8, ptr %29, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #5, !srcloc !87
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  %incdec.ptr.i = getelementptr i32, ptr %p.048.i, i32 1
  %32 = ptrtoint ptr %p.048.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %p.048.i, align 4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.if.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %while.body.i.if.end.i_crit_edge, %if.then52.if.end.i_crit_edge
  %p.1.i = phi ptr [ %add.ptr.i, %if.then52.if.end.i_crit_edge ], [ %incdec.ptr.i, %while.body.i.if.end.i_crit_edge ]
  %and.i = and i32 %sub53, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end58_crit_edge, label %if.then9.i

if.end.i.if.end58_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then9.i:                                       ; preds = %if.end.i
  %33 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %PIO_regs, align 8
  %add.ptr14.i = getelementptr i8, ptr %34, i32 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #5, !srcloc !87
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  %data_word_before_partial.i = getelementptr inbounds %struct.hci_xfer, ptr %7, i32 0, i32 7, i32 0, i32 4
  %37 = ptrtoint ptr %data_word_before_partial.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %data_word_before_partial.i, align 4
  %38 = ptrtoint ptr %data_left to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_left, align 4
  %sub19.i = sub i32 %39, %and.i
  store i32 %sub19.i, ptr %data_left, align 4
  %conv.i = trunc i32 %35 to i8
  %40 = ptrtoint ptr %p.1.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv.i, ptr %p.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %tobool22.not.i = icmp eq i32 %and.i, 1
  br i1 %tobool22.not.i, label %if.then9.i.if.end58_crit_edge, label %while.body23.i.1

if.then9.i.if.end58_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

while.body23.i.1:                                 ; preds = %if.then9.i
  %shr.i = lshr i32 %35, 8
  %incdec.ptr24.i = getelementptr i8, ptr %p.1.i, i32 1
  %conv.i.1 = trunc i32 %shr.i to i8
  %41 = ptrtoint ptr %incdec.ptr24.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i.1, ptr %incdec.ptr24.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %tobool22.not.i.1 = icmp eq i32 %and.i, 2
  br i1 %tobool22.not.i.1, label %while.body23.i.1.if.end58_crit_edge, label %while.body23.i.2

while.body23.i.1.if.end58_crit_edge:              ; preds = %while.body23.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

while.body23.i.2:                                 ; preds = %while.body23.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i.1 = lshr i32 %35, 16
  %incdec.ptr24.i.1 = getelementptr i8, ptr %p.1.i, i32 2
  %conv.i.2 = trunc i32 %shr.i.1 to i8
  %42 = ptrtoint ptr %incdec.ptr24.i.1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.i.2, ptr %incdec.ptr24.i.1, align 1
  br label %if.end58

if.else:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_cmp4(i32 %and49, i32 %sub)
  %cmp54 = icmp ult i32 %and49, %sub
  br i1 %cmp54, label %if.then55, label %if.else.if.end58_crit_edge

if.else.if.end58_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %sub56 = add nuw nsw i32 %and49, 3
  %div138 = lshr i32 %sub56, 2
  tail call fastcc void @hci_pio_push_to_next_rx(ptr noundef %hci, ptr noundef %7, i32 noundef %div138)
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.else.if.end58_crit_edge, %while.body23.i.2, %while.body23.i.1.if.end58_crit_edge, %if.then9.i.if.end58_crit_edge, %if.end.i.if.end58_crit_edge
  %43 = ptrtoint ptr %curr_rx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %curr_rx, align 4
  %tobool.not13.i = icmp eq ptr %44, null
  br i1 %tobool.not13.i, label %if.end58.if.then60_crit_edge, label %if.end58.land.rhs.i_crit_edge

if.end58.land.rhs.i_crit_edge:                    ; preds = %if.end58
  br label %land.rhs.i

if.end58.if.then60_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60

land.rhs.i:                                       ; preds = %while.body.i141.land.rhs.i_crit_edge, %if.end58.land.rhs.i_crit_edge
  %45 = phi ptr [ %71, %while.body.i141.land.rhs.i_crit_edge ], [ %44, %if.end58.land.rhs.i_crit_edge ]
  %data_left.i.i = getelementptr inbounds %struct.hci_xfer, ptr %45, i32 0, i32 7, i32 0, i32 3
  %46 = ptrtoint ptr %data_left.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_left.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp45.i.i = icmp ugt i32 %47, 3
  br i1 %cmp45.i.i, label %while.body.lr.ph.i.i, label %land.rhs.i.hci_pio_do_rx.exit.i_crit_edge

land.rhs.i.hci_pio_do_rx.exit.i_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_do_rx.exit.i

while.body.lr.ph.i.i:                             ; preds = %land.rhs.i
  %data.i.i = getelementptr inbounds %struct.hci_xfer, ptr %45, i32 0, i32 3
  %48 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.hci_xfer, ptr %45, i32 0, i32 4
  %50 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data_len.i.i, align 4
  %sub.i.i = sub i32 %51, %47
  %div39.i.i = lshr i32 %sub.i.i, 2
  %add.ptr.i.i = getelementptr i32, ptr %49, i32 %div39.i.i
  br label %while.body.i.i

while.condthread-pre-splitthread-pre-split.i.i:   ; preds = %while.body13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %data_left.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr.pr.i.i = load i32, ptr %data_left.i.i, align 4
  br label %while.condthread-pre-split.i.i

while.condthread-pre-split.i.i:                   ; preds = %if.end.i.i.while.condthread-pre-split.i.i_crit_edge, %while.condthread-pre-splitthread-pre-split.i.i
  %.pr.i.i = phi i32 [ %.pr.pr.i.i, %while.condthread-pre-splitthread-pre-split.i.i ], [ %sub9.i.i, %if.end.i.i.while.condthread-pre-split.i.i_crit_edge ]
  %p.1.lcssa.i.i = phi ptr [ %incdec.ptr.i.i, %while.condthread-pre-splitthread-pre-split.i.i ], [ %p.046.i.i, %if.end.i.i.while.condthread-pre-split.i.i_crit_edge ]
  %cmp.i.i = icmp ugt i32 %.pr.i.i, 3
  br i1 %cmp.i.i, label %while.condthread-pre-split.i.i.while.body.i.i_crit_edge, label %while.condthread-pre-split.i.i.hci_pio_do_rx.exit.i_crit_edge

while.condthread-pre-split.i.i.hci_pio_do_rx.exit.i_crit_edge: ; preds = %while.condthread-pre-split.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_do_rx.exit.i

while.condthread-pre-split.i.i.while.body.i.i_crit_edge: ; preds = %while.condthread-pre-split.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.condthread-pre-split.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %p.046.i.i = phi ptr [ %add.ptr.i.i, %while.body.lr.ph.i.i ], [ %p.1.lcssa.i.i, %while.condthread-pre-split.i.i.while.body.i.i_crit_edge ]
  %53 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %PIO_regs, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %54, i32 32
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  %56 = and i32 %55, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.hci_pio_process_rx.exit_crit_edge, label %if.end.i.i

while.body.i.i.hci_pio_process_rx.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_process_rx.exit

if.end.i.i:                                       ; preds = %while.body.i.i
  %57 = ptrtoint ptr %data_left.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data_left.i.i, align 4
  %div540.i.i = lshr i32 %58, 2
  %59 = ptrtoint ptr %rx_thresh_size.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_thresh_size.i.i, align 4
  %61 = tail call i32 @llvm.umin.i32(i32 %div540.i.i, i32 %60) #5
  %mul.neg.i.i = mul i32 %61, -4
  %sub9.i.i = add i32 %mul.neg.i.i, %58
  %62 = ptrtoint ptr %data_left.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub9.i.i, ptr %data_left.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool12.not42.i.i = icmp eq i32 %61, 0
  br i1 %tobool12.not42.i.i, label %if.end.i.i.while.condthread-pre-split.i.i_crit_edge, label %if.end.i.i.while.body13.i.i_crit_edge

if.end.i.i.while.body13.i.i_crit_edge:            ; preds = %if.end.i.i
  br label %while.body13.i.i

if.end.i.i.while.condthread-pre-split.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.condthread-pre-split.i.i

while.body13.i.i:                                 ; preds = %while.body13.i.i.while.body13.i.i_crit_edge, %if.end.i.i.while.body13.i.i_crit_edge
  %nr_words.044.i.i = phi i32 [ %dec.i.i, %while.body13.i.i.while.body13.i.i_crit_edge ], [ %61, %if.end.i.i.while.body13.i.i_crit_edge ]
  %p.143.i.i = phi ptr [ %incdec.ptr.i.i, %while.body13.i.i.while.body13.i.i_crit_edge ], [ %p.046.i.i, %if.end.i.i.while.body13.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %nr_words.044.i.i, -1
  %63 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %PIO_regs, align 8
  %add.ptr17.i.i = getelementptr i8, ptr %64, i32 8
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i) #5, !srcloc !87
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  %incdec.ptr.i.i = getelementptr i32, ptr %p.143.i.i, i32 1
  %67 = ptrtoint ptr %p.143.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %p.143.i.i, align 4
  %tobool12.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool12.not.i.i, label %while.condthread-pre-splitthread-pre-split.i.i, label %while.body13.i.i.while.body13.i.i_crit_edge

while.body13.i.i.while.body13.i.i_crit_edge:      ; preds = %while.body13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body13.i.i

hci_pio_do_rx.exit.i:                             ; preds = %while.condthread-pre-split.i.i.hci_pio_do_rx.exit.i_crit_edge, %land.rhs.i.hci_pio_do_rx.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %47, %land.rhs.i.hci_pio_do_rx.exit.i_crit_edge ], [ %.pr.i.i, %while.condthread-pre-split.i.i.hci_pio_do_rx.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa.i.i)
  %tobool23.not.i.i = icmp eq i32 %.lcssa.i.i, 0
  br i1 %tobool23.not.i.i, label %while.body.i141, label %hci_pio_do_rx.exit.i.hci_pio_process_rx.exit_crit_edge

hci_pio_do_rx.exit.i.hci_pio_process_rx.exit_crit_edge: ; preds = %hci_pio_do_rx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_process_rx.exit

while.body.i141:                                  ; preds = %hci_pio_do_rx.exit.i
  %68 = ptrtoint ptr %curr_rx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %curr_rx, align 4
  %next_data.i = getelementptr inbounds %struct.hci_xfer, ptr %69, i32 0, i32 7, i32 0, i32 1
  %70 = ptrtoint ptr %next_data.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %next_data.i, align 4
  store ptr %71, ptr %curr_rx, align 4
  %tobool.not.i140 = icmp eq ptr %71, null
  br i1 %tobool.not.i140, label %while.body.i141.if.then60_crit_edge, label %while.body.i141.land.rhs.i_crit_edge

while.body.i141.land.rhs.i_crit_edge:             ; preds = %while.body.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

while.body.i141.if.then60_crit_edge:              ; preds = %while.body.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60

hci_pio_process_rx.exit:                          ; preds = %hci_pio_do_rx.exit.i.hci_pio_process_rx.exit_crit_edge, %while.body.i.i.hci_pio_process_rx.exit_crit_edge
  %72 = ptrtoint ptr %curr_rx to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pr = load ptr, ptr %curr_rx, align 4
  %tobool4.not.i = icmp eq ptr %.pr, null
  br i1 %tobool4.not.i, label %hci_pio_process_rx.exit.if.then60_crit_edge, label %hci_pio_process_rx.exit.if.end63_crit_edge

hci_pio_process_rx.exit.if.end63_crit_edge:       ; preds = %hci_pio_process_rx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

hci_pio_process_rx.exit.if.then60_crit_edge:      ; preds = %hci_pio_process_rx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60

if.then60:                                        ; preds = %hci_pio_process_rx.exit.if.then60_crit_edge, %while.body.i141.if.then60_crit_edge, %if.end58.if.then60_crit_edge
  %73 = ptrtoint ptr %enabled_irqs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %enabled_irqs, align 4
  %and61 = and i32 %74, -3
  store i32 %and61, ptr %enabled_irqs, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %hci_pio_process_rx.exit.if.end63_crit_edge, %if.end.if.end63_crit_edge
  %75 = ptrtoint ptr %curr_rx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %curr_rx, align 4
  %cmp65 = icmp eq ptr %76, %7
  br i1 %cmp65, label %if.end63.if.end84.sink.split_crit_edge, label %if.else70

if.end63.if.end84.sink.split_crit_edge:           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84.sink.split

if.else70:                                        ; preds = %if.end63
  %77 = ptrtoint ptr %curr_tx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %curr_tx, align 4
  %cmp71 = icmp eq ptr %78, %7
  br i1 %cmp71, label %if.else70.if.end84.sink.split_crit_edge, label %if.else70.if.end84_crit_edge

if.else70.if.end84_crit_edge:                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.else70.if.end84.sink.split_crit_edge:          ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84.sink.split

if.end84.sink.split:                              ; preds = %if.else70.if.end84.sink.split_crit_edge, %if.end63.if.end84.sink.split_crit_edge
  %curr_tx.sink = phi ptr [ %curr_rx, %if.end63.if.end84.sink.split_crit_edge ], [ %curr_tx, %if.else70.if.end84.sink.split_crit_edge ]
  %next_data75 = getelementptr inbounds %struct.hci_xfer, ptr %7, i32 0, i32 7, i32 0, i32 1
  %79 = ptrtoint ptr %next_data75 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %next_data75, align 4
  %81 = ptrtoint ptr %curr_tx.sink to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %curr_tx.sink, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.end84.sink.split, %if.else70.if.end84_crit_edge
  %next_resp = getelementptr inbounds %struct.hci_xfer, ptr %7, i32 0, i32 7, i32 0, i32 2
  %82 = ptrtoint ptr %next_resp to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %next_resp, align 4
  %84 = ptrtoint ptr %curr_resp to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %curr_resp, align 4
  %completion = getelementptr inbounds %struct.hci_xfer, ptr %7, i32 0, i32 6
  %85 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %completion, align 4
  %tobool86.not = icmp eq ptr %86, null
  br i1 %tobool86.not, label %if.end84.cleanup_crit_edge, label %if.then87

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @complete(ptr noundef nonnull %86) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %if.end84.cleanup_crit_edge
  %87 = ptrtoint ptr %curr_resp to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %curr_resp, align 4
  %tobool.not = icmp eq ptr %88, null
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %89 = ptrtoint ptr %curr_resp to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %curr_resp, align 4
  %tobool93.not = icmp eq ptr %90, null
  br label %return

return:                                           ; preds = %while.end, %cleanup.thread
  %retval.2 = phi i1 [ %tobool93.not, %while.end ], [ false, %cleanup.thread ]
  ret i1 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hci_pio_err(ptr noundef %hci, ptr nocapture noundef %pio, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %PIO_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 5
  %0 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PIO_regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  %3 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %PIO_regs, align 8
  %add.ptr5 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !87
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.25, i32 noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and9 = and i32 %status, 66060288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end121_crit_edge, label %if.then11

if.end.if.end121_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %PIO_regs, align 8
  %add.ptr15 = getelementptr i8, ptr %9, i32 56
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #5, !srcloc !87
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  %12 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %PIO_regs, align 8
  %add.ptr22 = getelementptr i8, ptr %13, i32 60
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #5, !srcloc !87
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  %and48 = and i32 %11, 511
  %and65 = lshr i32 %11, 10
  %shr66 = and i32 %and65, 511
  %and83 = lshr i32 %11, 20
  %shr84 = and i32 %and83, 511
  %and101 = and i32 %15, 2047
  %and119 = lshr i32 %15, 16
  %shr120 = and i32 %and119, 2047
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.28, i32 noundef %and9, i32 noundef %and48, i32 noundef %shr66, i32 noundef %shr84, i32 noundef %and101, i32 noundef %shr120) #8
  br label %if.end121

if.end121:                                        ; preds = %if.then11, %if.end.if.end121_crit_edge
  %curr_resp = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 7
  %16 = ptrtoint ptr %curr_resp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %curr_resp, align 4
  %18 = tail call fastcc zeroext i1 @hci_pio_dequeue_xfer_common(ptr noundef %pio, ptr noundef %17, i32 noundef 1)
  %curr_tx = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 5
  %19 = ptrtoint ptr %curr_tx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %curr_tx, align 4
  %tobool123.not = icmp eq ptr %20, null
  br i1 %tobool123.not, label %if.end121.if.end129_crit_edge, label %land.lhs.true

if.end121.if.end129_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129

land.lhs.true:                                    ; preds = %if.end121
  %data_left = getelementptr inbounds %struct.hci_xfer, ptr %20, i32 0, i32 7, i32 0, i32 3
  %21 = ptrtoint ptr %data_left to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_left, align 4
  %data_len = getelementptr inbounds %struct.hci_xfer, ptr %20, i32 0, i32 4
  %23 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.not = icmp eq i32 %22, %24
  br i1 %cmp.not, label %land.lhs.true.if.end129_crit_edge, label %if.then126

land.lhs.true.if.end129_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129

if.then126:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %25 = tail call fastcc zeroext i1 @hci_pio_dequeue_xfer_common(ptr noundef %pio, ptr noundef nonnull %20, i32 noundef 1)
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %land.lhs.true.if.end129_crit_edge, %if.end121.if.end129_crit_edge
  tail call void @mipi_i3c_hci_pio_reset(ptr noundef %hci) #5
  tail call void @mipi_i3c_hci_resume(ptr noundef %hci) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @hci_pio_process_cmd(ptr noundef %hci, ptr nocapture noundef %pio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %PIO_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 5
  %curr_xfer = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 1
  %0 = ptrtoint ptr %curr_xfer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr_xfer, align 4
  %tobool.not27 = icmp eq ptr %1, null
  br i1 %tobool.not27, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %rx_queue.i = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 4
  %curr_rx.i = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 3
  %rx_thresh_size.i.i.i = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 10
  %enabled_irqs.i = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 14
  %tx_queue.i = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 6
  %curr_tx.i = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 5
  %resp_queue.i = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 8
  %curr_resp.i = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 7
  %cmd.i = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 11
  br label %land.rhs

land.rhs:                                         ; preds = %hci_pio_write_cmd.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %2 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PIO_regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  %5 = and i32 %4, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %6 = ptrtoint ptr %curr_xfer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %curr_xfer, align 4
  %data.i = getelementptr inbounds %struct.hci_xfer, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %data_left.i = getelementptr inbounds %struct.hci_xfer, ptr %7, i32 0, i32 7, i32 0, i32 3
  %10 = ptrtoint ptr %data_left.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %data_left.i, align 4
  %data_len.i = getelementptr inbounds %struct.hci_xfer, ptr %7, i32 0, i32 4
  %11 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %data_len.i, align 4
  br label %hci_pio_queue_data.exit

if.end.i:                                         ; preds = %while.body
  %rnw.i = getelementptr inbounds %struct.hci_xfer, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %rnw.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rnw.i, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i = icmp eq i8 %13, 0
  br i1 %tobool1.not.i, label %if.else10.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %rx_queue.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_queue.i, align 4
  store ptr %7, ptr %rx_queue.i, align 4
  %16 = ptrtoint ptr %curr_rx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %curr_rx.i, align 4
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  %next_data.i = getelementptr inbounds %struct.hci_xfer, ptr %15, i32 0, i32 7, i32 0, i32 1
  %18 = ptrtoint ptr %next_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %7, ptr %next_data.i, align 4
  br label %hci_pio_queue_data.exit

if.else.i:                                        ; preds = %if.then2.i
  %19 = ptrtoint ptr %curr_rx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %7, ptr %curr_rx.i, align 4
  %tobool.not13.i.i = icmp eq ptr %7, null
  br i1 %tobool.not13.i.i, label %if.else.i.hci_pio_queue_data.exit_crit_edge, label %if.else.i.land.rhs.i.i_crit_edge

if.else.i.land.rhs.i.i_crit_edge:                 ; preds = %if.else.i
  br label %land.rhs.i.i

if.else.i.hci_pio_queue_data.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_queue_data.exit

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %if.else.i.land.rhs.i.i_crit_edge
  %20 = phi ptr [ %46, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %7, %if.else.i.land.rhs.i.i_crit_edge ]
  %data_left.i.i.i = getelementptr inbounds %struct.hci_xfer, ptr %20, i32 0, i32 7, i32 0, i32 3
  %21 = ptrtoint ptr %data_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_left.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp45.i.i.i = icmp ugt i32 %22, 3
  br i1 %cmp45.i.i.i, label %while.body.lr.ph.i.i.i, label %land.rhs.i.i.hci_pio_do_rx.exit.i.i_crit_edge

land.rhs.i.i.hci_pio_do_rx.exit.i.i_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_do_rx.exit.i.i

while.body.lr.ph.i.i.i:                           ; preds = %land.rhs.i.i
  %data.i.i.i = getelementptr inbounds %struct.hci_xfer, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.hci_xfer, ptr %20, i32 0, i32 4
  %25 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i.i, align 4
  %sub.i.i.i = sub i32 %26, %22
  %div39.i.i.i = lshr i32 %sub.i.i.i, 2
  %add.ptr.i.i.i = getelementptr i32, ptr %24, i32 %div39.i.i.i
  br label %while.body.i.i.i

while.condthread-pre-splitthread-pre-split.i.i.i: ; preds = %while.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %data_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr.pr.i.i.i = load i32, ptr %data_left.i.i.i, align 4
  br label %while.condthread-pre-split.i.i.i

while.condthread-pre-split.i.i.i:                 ; preds = %if.end.i.i.i.while.condthread-pre-split.i.i.i_crit_edge, %while.condthread-pre-splitthread-pre-split.i.i.i
  %.pr.i.i.i = phi i32 [ %.pr.pr.i.i.i, %while.condthread-pre-splitthread-pre-split.i.i.i ], [ %sub9.i.i.i, %if.end.i.i.i.while.condthread-pre-split.i.i.i_crit_edge ]
  %p.1.lcssa.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.condthread-pre-splitthread-pre-split.i.i.i ], [ %p.046.i.i.i, %if.end.i.i.i.while.condthread-pre-split.i.i.i_crit_edge ]
  %cmp.i.i.i = icmp ugt i32 %.pr.i.i.i, 3
  br i1 %cmp.i.i.i, label %while.condthread-pre-split.i.i.i.while.body.i.i.i_crit_edge, label %while.condthread-pre-split.i.i.i.hci_pio_do_rx.exit.i.i_crit_edge

while.condthread-pre-split.i.i.i.hci_pio_do_rx.exit.i.i_crit_edge: ; preds = %while.condthread-pre-split.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_do_rx.exit.i.i

while.condthread-pre-split.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.condthread-pre-split.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.condthread-pre-split.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %p.046.i.i.i = phi ptr [ %add.ptr.i.i.i, %while.body.lr.ph.i.i.i ], [ %p.1.lcssa.i.i.i, %while.condthread-pre-split.i.i.i.while.body.i.i.i_crit_edge ]
  %28 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %PIO_regs, align 8
  %add.ptr2.i.i.i = getelementptr i8, ptr %29, i32 32
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  %31 = and i32 %30, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.hci_pio_process_rx.exit.i_crit_edge, label %if.end.i.i.i

while.body.i.i.i.hci_pio_process_rx.exit.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_process_rx.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  %32 = ptrtoint ptr %data_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_left.i.i.i, align 4
  %div540.i.i.i = lshr i32 %33, 2
  %34 = ptrtoint ptr %rx_thresh_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_thresh_size.i.i.i, align 4
  %36 = tail call i32 @llvm.umin.i32(i32 %div540.i.i.i, i32 %35) #5
  %mul.neg.i.i.i = mul i32 %36, -4
  %sub9.i.i.i = add i32 %mul.neg.i.i.i, %33
  %37 = ptrtoint ptr %data_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub9.i.i.i, ptr %data_left.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool12.not42.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool12.not42.i.i.i, label %if.end.i.i.i.while.condthread-pre-split.i.i.i_crit_edge, label %if.end.i.i.i.while.body13.i.i.i_crit_edge

if.end.i.i.i.while.body13.i.i.i_crit_edge:        ; preds = %if.end.i.i.i
  br label %while.body13.i.i.i

if.end.i.i.i.while.condthread-pre-split.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.condthread-pre-split.i.i.i

while.body13.i.i.i:                               ; preds = %while.body13.i.i.i.while.body13.i.i.i_crit_edge, %if.end.i.i.i.while.body13.i.i.i_crit_edge
  %nr_words.044.i.i.i = phi i32 [ %dec.i.i.i, %while.body13.i.i.i.while.body13.i.i.i_crit_edge ], [ %36, %if.end.i.i.i.while.body13.i.i.i_crit_edge ]
  %p.143.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.body13.i.i.i.while.body13.i.i.i_crit_edge ], [ %p.046.i.i.i, %if.end.i.i.i.while.body13.i.i.i_crit_edge ]
  %dec.i.i.i = add nsw i32 %nr_words.044.i.i.i, -1
  %38 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %PIO_regs, align 8
  %add.ptr17.i.i.i = getelementptr i8, ptr %39, i32 8
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i) #5, !srcloc !87
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  %incdec.ptr.i.i.i = getelementptr i32, ptr %p.143.i.i.i, i32 1
  %42 = ptrtoint ptr %p.143.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %p.143.i.i.i, align 4
  %tobool12.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %while.condthread-pre-splitthread-pre-split.i.i.i, label %while.body13.i.i.i.while.body13.i.i.i_crit_edge

while.body13.i.i.i.while.body13.i.i.i_crit_edge:  ; preds = %while.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body13.i.i.i

hci_pio_do_rx.exit.i.i:                           ; preds = %while.condthread-pre-split.i.i.i.hci_pio_do_rx.exit.i.i_crit_edge, %land.rhs.i.i.hci_pio_do_rx.exit.i.i_crit_edge
  %.lcssa.i.i.i = phi i32 [ %22, %land.rhs.i.i.hci_pio_do_rx.exit.i.i_crit_edge ], [ %.pr.i.i.i, %while.condthread-pre-split.i.i.i.hci_pio_do_rx.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa.i.i.i)
  %tobool23.not.i.i.i = icmp eq i32 %.lcssa.i.i.i, 0
  br i1 %tobool23.not.i.i.i, label %while.body.i.i, label %hci_pio_do_rx.exit.i.i.hci_pio_process_rx.exit.i_crit_edge

hci_pio_do_rx.exit.i.i.hci_pio_process_rx.exit.i_crit_edge: ; preds = %hci_pio_do_rx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_process_rx.exit.i

while.body.i.i:                                   ; preds = %hci_pio_do_rx.exit.i.i
  %43 = ptrtoint ptr %curr_rx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %curr_rx.i, align 4
  %next_data.i.i = getelementptr inbounds %struct.hci_xfer, ptr %44, i32 0, i32 7, i32 0, i32 1
  %45 = ptrtoint ptr %next_data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %next_data.i.i, align 4
  store ptr %46, ptr %curr_rx.i, align 4
  %tobool.not.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i, label %while.body.i.i.hci_pio_queue_data.exit_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i.i

while.body.i.i.hci_pio_queue_data.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_queue_data.exit

hci_pio_process_rx.exit.i:                        ; preds = %hci_pio_do_rx.exit.i.i.hci_pio_process_rx.exit.i_crit_edge, %while.body.i.i.i.hci_pio_process_rx.exit.i_crit_edge
  %47 = ptrtoint ptr %curr_rx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr.i = load ptr, ptr %curr_rx.i, align 4
  %tobool4.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %tobool4.not.i.i, label %hci_pio_process_rx.exit.i.hci_pio_queue_data.exit_crit_edge, label %if.then7.i

hci_pio_process_rx.exit.i.hci_pio_queue_data.exit_crit_edge: ; preds = %hci_pio_process_rx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_queue_data.exit

if.then7.i:                                       ; preds = %hci_pio_process_rx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %enabled_irqs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %enabled_irqs.i, align 4
  %or.i = or i32 %49, 2
  store i32 %or.i, ptr %enabled_irqs.i, align 4
  br label %hci_pio_queue_data.exit

if.else10.i:                                      ; preds = %if.end.i
  %50 = ptrtoint ptr %tx_queue.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx_queue.i, align 4
  store ptr %7, ptr %tx_queue.i, align 4
  %52 = ptrtoint ptr %curr_tx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %curr_tx.i, align 4
  %tobool12.not.i = icmp eq ptr %53, null
  br i1 %tobool12.not.i, label %if.else15.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #7
  %next_data14.i = getelementptr inbounds %struct.hci_xfer, ptr %51, i32 0, i32 7, i32 0, i32 1
  %54 = ptrtoint ptr %next_data14.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %7, ptr %next_data14.i, align 4
  br label %hci_pio_queue_data.exit

if.else15.i:                                      ; preds = %if.else10.i
  %55 = ptrtoint ptr %curr_tx.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %7, ptr %curr_tx.i, align 4
  %call17.i = tail call fastcc zeroext i1 @hci_pio_process_tx(ptr noundef %hci, ptr noundef %pio) #5
  br i1 %call17.i, label %if.else15.i.hci_pio_queue_data.exit_crit_edge, label %if.then18.i

if.else15.i.hci_pio_queue_data.exit_crit_edge:    ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_queue_data.exit

if.then18.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %enabled_irqs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %enabled_irqs.i, align 4
  %or20.i = or i32 %57, 1
  store i32 %or20.i, ptr %enabled_irqs.i, align 4
  br label %hci_pio_queue_data.exit

hci_pio_queue_data.exit:                          ; preds = %if.then18.i, %if.else15.i.hci_pio_queue_data.exit_crit_edge, %if.then13.i, %if.then7.i, %hci_pio_process_rx.exit.i.hci_pio_queue_data.exit_crit_edge, %while.body.i.i.hci_pio_queue_data.exit_crit_edge, %if.else.i.hci_pio_queue_data.exit_crit_edge, %if.then5.i, %if.then.i
  %58 = ptrtoint ptr %curr_xfer to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %curr_xfer, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %and.i = and i32 %61, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i18 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i18, label %hci_pio_queue_data.exit.hci_pio_queue_resp.exit_crit_edge, label %if.end.i19

hci_pio_queue_data.exit.hci_pio_queue_resp.exit_crit_edge: ; preds = %hci_pio_queue_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_queue_resp.exit

if.end.i19:                                       ; preds = %hci_pio_queue_data.exit
  %62 = ptrtoint ptr %resp_queue.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %resp_queue.i, align 4
  store ptr %59, ptr %resp_queue.i, align 4
  %64 = ptrtoint ptr %curr_resp.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %curr_resp.i, align 4
  %tobool2.not.i = icmp eq ptr %65, null
  br i1 %tobool2.not.i, label %if.else.i20, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #7
  %next_resp.i = getelementptr inbounds %struct.hci_xfer, ptr %63, i32 0, i32 7, i32 0, i32 2
  %66 = ptrtoint ptr %next_resp.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %59, ptr %next_resp.i, align 4
  br label %hci_pio_queue_resp.exit

if.else.i20:                                      ; preds = %if.end.i19
  %67 = ptrtoint ptr %curr_resp.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %59, ptr %curr_resp.i, align 4
  %call.i = tail call fastcc zeroext i1 @hci_pio_process_resp(ptr noundef %hci, ptr noundef %pio) #5
  br i1 %call.i, label %if.else.i20.hci_pio_queue_resp.exit_crit_edge, label %if.then5.i23

if.else.i20.hci_pio_queue_resp.exit_crit_edge:    ; preds = %if.else.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_queue_resp.exit

if.then5.i23:                                     ; preds = %if.else.i20
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %enabled_irqs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %enabled_irqs.i, align 4
  %or.i22 = or i32 %69, 16
  store i32 %or.i22, ptr %enabled_irqs.i, align 4
  br label %hci_pio_queue_resp.exit

hci_pio_queue_resp.exit:                          ; preds = %if.then5.i23, %if.else.i20.hci_pio_queue_resp.exit_crit_edge, %if.then3.i, %hci_pio_queue_data.exit.hci_pio_queue_resp.exit_crit_edge
  %70 = ptrtoint ptr %curr_xfer to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %curr_xfer, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  tail call void @arm_heavy_mb() #5
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #5
  %75 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %PIO_regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #5, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %arrayidx5.i = getelementptr [4 x i32], ptr %71, i32 0, i32 1
  %77 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx5.i, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #5
  %80 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %PIO_regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #5, !srcloc !92
  %82 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cmd.i, align 8
  %cmp.i = icmp eq ptr %83, @mipi_i3c_hci_cmd_v2
  br i1 %cmp.i, label %if.then.i24, label %hci_pio_queue_resp.exit.hci_pio_write_cmd.exit_crit_edge

hci_pio_queue_resp.exit.hci_pio_write_cmd.exit_crit_edge: ; preds = %hci_pio_queue_resp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %hci_pio_write_cmd.exit

if.then.i24:                                      ; preds = %hci_pio_queue_resp.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %arrayidx13.i = getelementptr [4 x i32], ptr %71, i32 0, i32 2
  %84 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx13.i, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #5
  %87 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %PIO_regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #5, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %arrayidx19.i = getelementptr [4 x i32], ptr %71, i32 0, i32 3
  %89 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx19.i, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #5
  %92 = ptrtoint ptr %PIO_regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %PIO_regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #5, !srcloc !92
  br label %hci_pio_write_cmd.exit

hci_pio_write_cmd.exit:                           ; preds = %if.then.i24, %hci_pio_queue_resp.exit.hci_pio_write_cmd.exit_crit_edge
  %94 = ptrtoint ptr %curr_xfer to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %curr_xfer, align 4
  %96 = getelementptr inbounds %struct.hci_xfer, ptr %95, i32 0, i32 7
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  store ptr %98, ptr %curr_xfer, align 4
  %tobool.not = icmp eq ptr %98, null
  br i1 %tobool.not, label %hci_pio_write_cmd.exit.while.end_crit_edge, label %hci_pio_write_cmd.exit.land.rhs_crit_edge

hci_pio_write_cmd.exit.land.rhs_crit_edge:        ; preds = %hci_pio_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

hci_pio_write_cmd.exit.while.end_crit_edge:       ; preds = %hci_pio_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %hci_pio_write_cmd.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %99 = ptrtoint ptr %curr_xfer to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %curr_xfer, align 4
  %tobool7.not = icmp eq ptr %100, null
  ret i1 %tobool7.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @i3c_master_queue_ibi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i3c_generic_ibi_get_free_slot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i3c_generic_ibi_recycle_slot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hci_pio_push_to_next_rx(ptr noundef %hci, ptr nocapture noundef readonly %xfer, i32 noundef %words_to_keep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %data_len = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 4
  %2 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len, align 4
  %data_left = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 7, i32 0, i32 3
  %4 = ptrtoint ptr %data_left to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_left, align 4
  %sub = sub i32 %3, %5
  %div139 = lshr i32 %sub, 2
  %and = and i32 %sub, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %data_word_before_partial = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 7, i32 0, i32 4
  %arrayidx = getelementptr i32, ptr %1, i32 %div139
  %not.tobool.not = xor i1 %tobool.not, true
  %add = zext i1 %not.tobool.not to i32
  %from_last.0.in = select i1 %tobool.not, ptr %arrayidx, ptr %data_word_before_partial
  %6 = ptrtoint ptr %from_last.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %from_last.0 = load i32, ptr %from_last.0.in, align 4
  %received.0 = sub i32 %div139, %words_to_keep
  %sub4 = add i32 %received.0, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4)
  %tobool5.not149 = icmp eq i32 %sub4, 0
  br i1 %tobool5.not149, label %entry.cleanup74_crit_edge, label %while.body.lr.ph

entry.cleanup74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup74

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr = getelementptr i32, ptr %1, i32 %words_to_keep
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %xfer.addr.0152 = phi ptr [ %xfer, %while.body.lr.ph ], [ %8, %cleanup.while.body_crit_edge ]
  %from.0151 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %from.1, %cleanup.while.body_crit_edge ]
  %count.0150 = phi i32 [ %sub4, %while.body.lr.ph ], [ %dec68, %cleanup.while.body_crit_edge ]
  %next_data = getelementptr inbounds %struct.hci_xfer, ptr %xfer.addr.0152, i32 0, i32 7, i32 0, i32 1
  %7 = ptrtoint ptr %next_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %next_data, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %cleanup.thread, label %if.end8

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.23) #8
  br label %cleanup74

if.end8:                                          ; preds = %while.body
  %data_len9 = getelementptr inbounds %struct.hci_xfer, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %data_len9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len9, align 4
  %sub11 = add i32 %10, 3
  %div12140 = lshr i32 %sub11, 2
  %data_left13 = getelementptr inbounds %struct.hci_xfer, ptr %8, i32 0, i32 7, i32 0, i32 3
  %11 = ptrtoint ptr %data_left13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_left13, align 4
  %sub15 = add i32 %12, 3
  %div16141 = lshr i32 %sub15, 2
  %13 = tail call i32 @llvm.umin.i32(i32 %count.0150, i32 %div12140)
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %div16141)
  %cmp17 = icmp ugt i32 %13, %div16141
  br i1 %cmp17, label %if.then18, label %if.end8.if.end21_crit_edge

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %sub19 = sub nsw i32 %13, %div16141
  tail call fastcc void @hci_pio_push_to_next_rx(ptr noundef %hci, ptr noundef nonnull %8, i32 noundef %sub19)
  %mul = shl nuw i32 %13, 2
  %14 = ptrtoint ptr %data_left13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %data_left13, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end8.if.end21_crit_edge
  %15 = ptrtoint ptr %data_len9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len9, align 4
  %17 = ptrtoint ptr %data_left13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_left13, align 4
  %sub24 = sub i32 %16, %18
  %and25 = and i32 %sub24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end21.if.end32_crit_edge, label %if.then27

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %data28 = getelementptr inbounds %struct.hci_xfer, ptr %8, i32 0, i32 3
  %19 = ptrtoint ptr %data28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data28, align 4
  %div29142 = lshr i32 %sub24, 2
  %arrayidx30 = getelementptr i32, ptr %20, i32 %div29142
  %21 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx30, align 4
  %data_word_before_partial31 = getelementptr inbounds %struct.hci_xfer, ptr %8, i32 0, i32 7, i32 0, i32 4
  %23 = ptrtoint ptr %data_word_before_partial31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %data_word_before_partial31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.end21.if.end32_crit_edge
  %data33 = getelementptr inbounds %struct.hci_xfer, ptr %8, i32 0, i32 3
  %24 = ptrtoint ptr %data33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data33, align 4
  %add.ptr34 = getelementptr i8, ptr %25, i32 %13
  %26 = call ptr @memmove(ptr %add.ptr34, ptr %25, i32 %sub24)
  %sub36 = add nsw i32 %13, -1
  %27 = load ptr, ptr %data33, align 4
  %mul38 = shl i32 %sub36, 2
  %28 = call ptr @memcpy(ptr %27, ptr %from.0151, i32 %mul38)
  %29 = ptrtoint ptr %data_left13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_left13, align 4
  %sub41 = sub i32 %30, %mul38
  store i32 %sub41, ptr %data_left13, align 4
  %add.ptr42 = getelementptr i32, ptr %from.0151, i32 %sub36
  %sub43 = sub i32 %count.0150, %sub36
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub43)
  %cmp44 = icmp eq i32 %sub43, 1
  br i1 %cmp44, label %if.end32.cond.end47_crit_edge, label %cond.false46

if.end32.cond.end47_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end47

cond.false46:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr i32, ptr %from.0151, i32 %13
  %31 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr42, align 4
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false46, %if.end32.cond.end47_crit_edge
  %from.1 = phi ptr [ %incdec.ptr, %cond.false46 ], [ %add.ptr42, %if.end32.cond.end47_crit_edge ]
  %cond48 = phi i32 [ %32, %cond.false46 ], [ %from_last.0, %if.end32.cond.end47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub41)
  %cmp50 = icmp ult i32 %sub41, 4
  %33 = ptrtoint ptr %data33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data33, align 4
  br i1 %cmp50, label %if.then51, label %if.else61

if.then51:                                        ; preds = %cond.end47
  %data_word_before_partial55 = getelementptr inbounds %struct.hci_xfer, ptr %8, i32 0, i32 7, i32 0, i32 4
  %35 = ptrtoint ptr %data_word_before_partial55 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond48, ptr %data_word_before_partial55, align 4
  %36 = ptrtoint ptr %data_left13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_left13, align 4
  %dec145 = add i32 %37, -1
  store i32 %dec145, ptr %data_left13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool58.not146 = icmp eq i32 %37, 0
  br i1 %tobool58.not146, label %if.then51.cleanup_crit_edge, label %while.body59.preheader

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body59.preheader:                           ; preds = %if.then51
  %38 = tail call i32 @llvm.bswap.i32(i32 %cond48)
  %add.ptr54 = getelementptr i8, ptr %34, i32 %mul38
  br label %while.body59

while.body59:                                     ; preds = %while.body59.while.body59_crit_edge, %while.body59.preheader
  %p_byte.0148 = phi ptr [ %incdec.ptr60, %while.body59.while.body59_crit_edge ], [ %add.ptr54, %while.body59.preheader ]
  %last_word.0147 = phi i32 [ %shr, %while.body59.while.body59_crit_edge ], [ %38, %while.body59.preheader ]
  %conv = trunc i32 %last_word.0147 to i8
  %incdec.ptr60 = getelementptr i8, ptr %p_byte.0148, i32 1
  %39 = ptrtoint ptr %p_byte.0148 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv, ptr %p_byte.0148, align 1
  %shr = lshr i32 %last_word.0147, 8
  %40 = ptrtoint ptr %data_left13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_left13, align 4
  %dec = add i32 %41, -1
  store i32 %dec, ptr %data_left13, align 4
  %tobool58.not = icmp eq i32 %41, 0
  br i1 %tobool58.not, label %while.body59.cleanup_crit_edge, label %while.body59.while.body59_crit_edge

while.body59.while.body59_crit_edge:              ; preds = %while.body59
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body59

while.body59.cleanup_crit_edge:                   ; preds = %while.body59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else61:                                        ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx64 = getelementptr i32, ptr %34, i32 %sub36
  %42 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %cond48, ptr %arrayidx64, align 4
  %43 = ptrtoint ptr %data_left13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_left13, align 4
  %sub66 = add i32 %44, -4
  store i32 %sub66, ptr %data_left13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else61, %while.body59.cleanup_crit_edge, %if.then51.cleanup_crit_edge
  %dec68 = add i32 %sub43, -1
  %tobool5.not = icmp eq i32 %dec68, 0
  br i1 %tobool5.not, label %cleanup.cleanup74_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup.cleanup74_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup74

cleanup74:                                        ; preds = %cleanup.cleanup74_crit_edge, %cleanup.thread, %entry.cleanup74_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @hci_pio_dequeue_xfer_common(ptr nocapture noundef %pio, ptr noundef readonly %xfer, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_resp = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 7
  %0 = ptrtoint ptr %curr_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.06 = load ptr, ptr %curr_resp, align 4
  %tobool.not7 = icmp eq ptr %p.06, null
  br i1 %tobool.not7, label %entry.for.end5_crit_edge, label %for.cond1.preheader.lr.ph

entry.for.end5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end5

for.cond1.preheader.lr.ph:                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp4 = icmp sgt i32 %n, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc4.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %p.08 = phi ptr [ %p.06, %for.cond1.preheader.lr.ph ], [ %p.0, %for.inc4.for.cond1.preheader_crit_edge ]
  br i1 %cmp4, label %for.cond1.preheader.for.body2_crit_edge, label %for.cond1.preheader.for.inc4_crit_edge

for.cond1.preheader.for.inc4_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc4

for.cond1.preheader.for.body2_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body2

for.cond1:                                        ; preds = %for.body2
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %for.cond1.for.inc4_crit_edge, label %for.cond1.for.body2_crit_edge

for.cond1.for.body2_crit_edge:                    ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body2

for.cond1.for.inc4_crit_edge:                     ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc4

for.body2:                                        ; preds = %for.cond1.for.body2_crit_edge, %for.cond1.preheader.for.body2_crit_edge
  %i.05 = phi i32 [ %inc, %for.cond1.for.body2_crit_edge ], [ 0, %for.cond1.preheader.for.body2_crit_edge ]
  %arrayidx = getelementptr %struct.hci_xfer, ptr %xfer, i32 %i.05
  %cmp3 = icmp eq ptr %p.08, %arrayidx
  br i1 %cmp3, label %for.body2.pio_screwed_crit_edge, label %for.cond1

for.body2.pio_screwed_crit_edge:                  ; preds = %for.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %pio_screwed

for.inc4:                                         ; preds = %for.cond1.for.inc4_crit_edge, %for.cond1.preheader.for.inc4_crit_edge
  %next_resp = getelementptr inbounds %struct.hci_xfer, ptr %p.08, i32 0, i32 7, i32 0, i32 2
  %1 = ptrtoint ptr %next_resp to i32
  call void @__asan_load4_noabort(i32 %1)
  %p.0 = load ptr, ptr %next_resp, align 4
  %tobool.not = icmp eq ptr %p.0, null
  br i1 %tobool.not, label %for.inc4.for.end5_crit_edge, label %for.inc4.for.cond1.preheader_crit_edge

for.inc4.for.cond1.preheader_crit_edge:           ; preds = %for.inc4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader

for.inc4.for.end5_crit_edge:                      ; preds = %for.inc4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end5

for.end5:                                         ; preds = %for.inc4.for.end5_crit_edge, %entry.for.end5_crit_edge
  %curr_rx = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 3
  %2 = ptrtoint ptr %curr_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %p.111 = load ptr, ptr %curr_rx, align 4
  %tobool7.not12 = icmp eq ptr %p.111, null
  br i1 %tobool7.not12, label %for.end5.for.end20_crit_edge, label %for.cond9.preheader.lr.ph

for.end5.for.end20_crit_edge:                     ; preds = %for.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end20

for.cond9.preheader.lr.ph:                        ; preds = %for.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp109 = icmp sgt i32 %n, 0
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.inc19.for.cond9.preheader_crit_edge, %for.cond9.preheader.lr.ph
  %p.113 = phi ptr [ %p.111, %for.cond9.preheader.lr.ph ], [ %p.1, %for.inc19.for.cond9.preheader_crit_edge ]
  br i1 %cmp109, label %for.cond9.preheader.for.body11_crit_edge, label %for.cond9.preheader.for.inc19_crit_edge

for.cond9.preheader.for.inc19_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc19

for.cond9.preheader.for.body11_crit_edge:         ; preds = %for.cond9.preheader
  br label %for.body11

for.cond9:                                        ; preds = %for.body11
  %inc17 = add nuw nsw i32 %i.110, 1
  %exitcond32.not = icmp eq i32 %inc17, %n
  br i1 %exitcond32.not, label %for.cond9.for.inc19_crit_edge, label %for.cond9.for.body11_crit_edge

for.cond9.for.body11_crit_edge:                   ; preds = %for.cond9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11

for.cond9.for.inc19_crit_edge:                    ; preds = %for.cond9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc19

for.body11:                                       ; preds = %for.cond9.for.body11_crit_edge, %for.cond9.preheader.for.body11_crit_edge
  %i.110 = phi i32 [ %inc17, %for.cond9.for.body11_crit_edge ], [ 0, %for.cond9.preheader.for.body11_crit_edge ]
  %arrayidx12 = getelementptr %struct.hci_xfer, ptr %xfer, i32 %i.110
  %cmp13 = icmp eq ptr %p.113, %arrayidx12
  br i1 %cmp13, label %for.body11.pio_screwed_crit_edge, label %for.cond9

for.body11.pio_screwed_crit_edge:                 ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %pio_screwed

for.inc19:                                        ; preds = %for.cond9.for.inc19_crit_edge, %for.cond9.preheader.for.inc19_crit_edge
  %next_data = getelementptr inbounds %struct.hci_xfer, ptr %p.113, i32 0, i32 7, i32 0, i32 1
  %3 = ptrtoint ptr %next_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %p.1 = load ptr, ptr %next_data, align 4
  %tobool7.not = icmp eq ptr %p.1, null
  br i1 %tobool7.not, label %for.inc19.for.end20_crit_edge, label %for.inc19.for.cond9.preheader_crit_edge

for.inc19.for.cond9.preheader_crit_edge:          ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader

for.inc19.for.end20_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end20

for.end20:                                        ; preds = %for.inc19.for.end20_crit_edge, %for.end5.for.end20_crit_edge
  %curr_tx = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 5
  %4 = ptrtoint ptr %curr_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %p.216 = load ptr, ptr %curr_tx, align 4
  %tobool22.not17 = icmp eq ptr %p.216, null
  br i1 %tobool22.not17, label %for.end20.for.end36_crit_edge, label %for.cond24.preheader.lr.ph

for.end20.for.end36_crit_edge:                    ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end36

for.cond24.preheader.lr.ph:                       ; preds = %for.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp2514 = icmp sgt i32 %n, 0
  br label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %for.inc34.for.cond24.preheader_crit_edge, %for.cond24.preheader.lr.ph
  %p.218 = phi ptr [ %p.216, %for.cond24.preheader.lr.ph ], [ %p.2, %for.inc34.for.cond24.preheader_crit_edge ]
  br i1 %cmp2514, label %for.cond24.preheader.for.body26_crit_edge, label %for.cond24.preheader.for.inc34_crit_edge

for.cond24.preheader.for.inc34_crit_edge:         ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34

for.cond24.preheader.for.body26_crit_edge:        ; preds = %for.cond24.preheader
  br label %for.body26

for.cond24:                                       ; preds = %for.body26
  %inc32 = add nuw nsw i32 %i.215, 1
  %exitcond33.not = icmp eq i32 %inc32, %n
  br i1 %exitcond33.not, label %for.cond24.for.inc34_crit_edge, label %for.cond24.for.body26_crit_edge

for.cond24.for.body26_crit_edge:                  ; preds = %for.cond24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body26

for.cond24.for.inc34_crit_edge:                   ; preds = %for.cond24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34

for.body26:                                       ; preds = %for.cond24.for.body26_crit_edge, %for.cond24.preheader.for.body26_crit_edge
  %i.215 = phi i32 [ %inc32, %for.cond24.for.body26_crit_edge ], [ 0, %for.cond24.preheader.for.body26_crit_edge ]
  %arrayidx27 = getelementptr %struct.hci_xfer, ptr %xfer, i32 %i.215
  %cmp28 = icmp eq ptr %p.218, %arrayidx27
  br i1 %cmp28, label %for.body26.pio_screwed_crit_edge, label %for.cond24

for.body26.pio_screwed_crit_edge:                 ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %pio_screwed

for.inc34:                                        ; preds = %for.cond24.for.inc34_crit_edge, %for.cond24.preheader.for.inc34_crit_edge
  %next_data35 = getelementptr inbounds %struct.hci_xfer, ptr %p.218, i32 0, i32 7, i32 0, i32 1
  %5 = ptrtoint ptr %next_data35 to i32
  call void @__asan_load4_noabort(i32 %5)
  %p.2 = load ptr, ptr %next_data35, align 4
  %tobool22.not = icmp eq ptr %p.2, null
  br i1 %tobool22.not, label %for.inc34.for.end36_crit_edge, label %for.inc34.for.cond24.preheader_crit_edge

for.inc34.for.cond24.preheader_crit_edge:         ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond24.preheader

for.inc34.for.end36_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end36

for.end36:                                        ; preds = %for.inc34.for.end36_crit_edge, %for.end20.for.end36_crit_edge
  %curr_xfer = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 1
  %6 = ptrtoint ptr %curr_xfer to i32
  call void @__asan_load4_noabort(i32 %6)
  %p.325 = load ptr, ptr %curr_xfer, align 4
  %tobool39.not26 = icmp eq ptr %p.325, null
  br i1 %tobool39.not26, label %for.end36.cleanup_crit_edge, label %for.body40.preheader

for.end36.cleanup_crit_edge:                      ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body40.preheader:                             ; preds = %for.end36
  %cmp4240 = icmp eq ptr %p.325, %xfer
  br i1 %cmp4240, label %for.body40.preheader.if.then43_crit_edge, label %for.body40.preheader.for.cond38_crit_edge

for.body40.preheader.for.cond38_crit_edge:        ; preds = %for.body40.preheader
  br label %for.cond38

for.body40.preheader.if.then43_crit_edge:         ; preds = %for.body40.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

for.cond38:                                       ; preds = %for.body40.for.cond38_crit_edge, %for.body40.preheader.for.cond38_crit_edge
  %p.32841 = phi ptr [ %p.3, %for.body40.for.cond38_crit_edge ], [ %p.325, %for.body40.preheader.for.cond38_crit_edge ]
  %7 = getelementptr inbounds %struct.hci_xfer, ptr %p.32841, i32 0, i32 7
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %p.3 = load ptr, ptr %7, align 4
  %tobool39.not = icmp eq ptr %p.3, null
  br i1 %tobool39.not, label %for.cond38.cleanup_crit_edge, label %for.body40

for.cond38.cleanup_crit_edge:                     ; preds = %for.cond38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body40:                                       ; preds = %for.cond38
  %cmp42 = icmp eq ptr %p.3, %xfer
  br i1 %cmp42, label %for.body40.if.then43_crit_edge, label %for.body40.for.cond38_crit_edge

for.body40.for.cond38_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond38

for.body40.if.then43_crit_edge:                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

if.then43:                                        ; preds = %for.body40.if.then43_crit_edge, %for.body40.preheader.if.then43_crit_edge
  %p_prev_next.027.lcssa = phi ptr [ %curr_xfer, %for.body40.preheader.if.then43_crit_edge ], [ %7, %for.body40.if.then43_crit_edge ]
  %sub = add i32 %n, -1
  %9 = getelementptr %struct.hci_xfer, ptr %xfer, i32 %sub, i32 7
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %p_prev_next.027.lcssa to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %p_prev_next.027.lcssa, align 4
  br label %cleanup

pio_screwed:                                      ; preds = %for.body26.pio_screwed_crit_edge, %for.body11.pio_screwed_crit_edge, %for.body2.pio_screwed_crit_edge
  %13 = ptrtoint ptr %curr_resp to i32
  call void @__asan_load4_noabort(i32 %13)
  %p.419 = load ptr, ptr %curr_resp, align 4
  %tobool54.not20 = icmp eq ptr %p.419, null
  br i1 %tobool54.not20, label %pio_screwed.for.end74_crit_edge, label %pio_screwed.do.end67_crit_edge

pio_screwed.do.end67_crit_edge:                   ; preds = %pio_screwed
  br label %do.end67

pio_screwed.for.end74_crit_edge:                  ; preds = %pio_screwed
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end74

do.end67:                                         ; preds = %for.inc72.do.end67_crit_edge, %pio_screwed.do.end67_crit_edge
  %p.421 = phi ptr [ %p.4, %for.inc72.do.end67_crit_edge ], [ %p.419, %pio_screwed.do.end67_crit_edge ]
  %response = getelementptr inbounds %struct.hci_xfer, ptr %p.421, i32 0, i32 1
  %14 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -2147483648, ptr %response, align 4
  %completion = getelementptr inbounds %struct.hci_xfer, ptr %p.421, i32 0, i32 6
  %15 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %completion, align 4
  %tobool68.not = icmp eq ptr %16, null
  br i1 %tobool68.not, label %do.end67.for.inc72_crit_edge, label %if.then69

do.end67.for.inc72_crit_edge:                     ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc72

if.then69:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @complete(ptr noundef nonnull %16) #5
  br label %for.inc72

for.inc72:                                        ; preds = %if.then69, %do.end67.for.inc72_crit_edge
  %next_resp73 = getelementptr inbounds %struct.hci_xfer, ptr %p.421, i32 0, i32 7, i32 0, i32 2
  %17 = ptrtoint ptr %next_resp73 to i32
  call void @__asan_load4_noabort(i32 %17)
  %p.4 = load ptr, ptr %next_resp73, align 4
  %tobool54.not = icmp eq ptr %p.4, null
  br i1 %tobool54.not, label %for.inc72.for.end74_crit_edge, label %for.inc72.do.end67_crit_edge

for.inc72.do.end67_crit_edge:                     ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

for.inc72.for.end74_crit_edge:                    ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end74

for.end74:                                        ; preds = %for.inc72.for.end74_crit_edge, %pio_screwed.for.end74_crit_edge
  %curr_xfer75 = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 1
  %18 = ptrtoint ptr %curr_xfer75 to i32
  call void @__asan_load4_noabort(i32 %18)
  %p.522 = load ptr, ptr %curr_xfer75, align 4
  %tobool77.not23 = icmp eq ptr %p.522, null
  br i1 %tobool77.not23, label %for.end74.for.end103_crit_edge, label %for.end74.do.end93_crit_edge

for.end74.do.end93_crit_edge:                     ; preds = %for.end74
  br label %do.end93

for.end74.for.end103_crit_edge:                   ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end103

do.end93:                                         ; preds = %for.inc101.do.end93_crit_edge, %for.end74.do.end93_crit_edge
  %p.524 = phi ptr [ %p.5, %for.inc101.do.end93_crit_edge ], [ %p.522, %for.end74.do.end93_crit_edge ]
  %response95 = getelementptr inbounds %struct.hci_xfer, ptr %p.524, i32 0, i32 1
  %19 = ptrtoint ptr %response95 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -2147483648, ptr %response95, align 4
  %completion96 = getelementptr inbounds %struct.hci_xfer, ptr %p.524, i32 0, i32 6
  %20 = ptrtoint ptr %completion96 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %completion96, align 4
  %tobool97.not = icmp eq ptr %21, null
  br i1 %tobool97.not, label %do.end93.for.inc101_crit_edge, label %if.then98

do.end93.for.inc101_crit_edge:                    ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc101

if.then98:                                        ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @complete(ptr noundef nonnull %21) #5
  br label %for.inc101

for.inc101:                                       ; preds = %if.then98, %do.end93.for.inc101_crit_edge
  %22 = getelementptr inbounds %struct.hci_xfer, ptr %p.524, i32 0, i32 7
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %p.5 = load ptr, ptr %22, align 4
  %tobool77.not = icmp eq ptr %p.5, null
  br i1 %tobool77.not, label %for.inc101.for.end103_crit_edge, label %for.inc101.do.end93_crit_edge

for.inc101.do.end93_crit_edge:                    ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end93

for.inc101.for.end103_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end103

for.end103:                                       ; preds = %for.inc101.for.end103_crit_edge, %for.end74.for.end103_crit_edge
  %24 = ptrtoint ptr %curr_resp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %curr_resp, align 4
  %curr_tx105 = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 5
  %25 = ptrtoint ptr %curr_tx105 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %curr_tx105, align 4
  %curr_rx106 = getelementptr inbounds %struct.hci_pio_data, ptr %pio, i32 0, i32 3
  %26 = ptrtoint ptr %curr_rx106 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %curr_rx106, align 4
  %27 = ptrtoint ptr %curr_xfer75 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %curr_xfer75, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end103, %if.then43, %for.cond38.cleanup_crit_edge, %for.end36.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %for.end103 ], [ true, %if.then43 ], [ false, %for.end36.cleanup_crit_edge ], [ false, %for.cond38.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_i3c_hci_pio_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_i3c_hci_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i3c_generic_ibi_alloc_pool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @i3c_generic_ibi_free_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @mipi_i3c_hci_pio, !1, !"mipi_i3c_hci_pio", i1 false, i1 false}
!1 = !{!"../drivers/i3c/master/mipi-i3c-hci/pio.c", i32 1032, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/i3c/master/mipi-i3c-hci/pio.c", i32 1011, i32 3}
!4 = !{ptr @hci_pio_irq_handler._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.hci_pio_irq_handler, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @hci_pio_irq_handler._entry, !3, !"_entry", i1 false, i1 false}
!11 = !{ptr @hci_pio_irq_handler._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i3c/master/mipi-i3c-hci/pio.c", i32 922, i32 4}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @hci_pio_process_ibi._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @hci_pio_process_ibi._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i3c/master/mipi-i3c-hci/pio.c", i32 931, i32 4}
!20 = !{ptr @hci_pio_process_ibi._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @hci_pio_process_ibi._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i3c/master/mipi-i3c-hci/pio.c", i32 826, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @hci_pio_prep_new_ibi._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @hci_pio_prep_new_ibi._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i3c/master/mipi-i3c-hci/pio.c", i32 836, i32 3}
!29 = !{ptr @hci_pio_prep_new_ibi._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @hci_pio_prep_new_ibi._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @hci_pio_prep_new_ibi._entry.16, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/i3c/master/mipi-i3c-hci/pio.c", i32 846, i32 3}
!33 = !{ptr @hci_pio_prep_new_ibi._entry_ptr.17, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i3c/master/mipi-i3c-hci/pio.c", i32 853, i32 3}
!36 = !{ptr @hci_pio_prep_new_ibi._entry.18, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @hci_pio_prep_new_ibi._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i3c/master/mipi-i3c-hci/pio.c", i32 486, i32 4}
!40 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @hci_pio_process_resp._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @hci_pio_process_resp._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i3c/master/mipi-i3c-hci/pio.c", i32 417, i32 4}
!45 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @hci_pio_push_to_next_rx._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @hci_pio_push_to_next_rx._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i3c/master/mipi-i3c-hci/pio.c", i32 708, i32 3}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @hci_pio_err._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @hci_pio_err._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i3c/master/mipi-i3c-hci/pio.c", i32 717, i32 3}
!55 = !{ptr @hci_pio_err._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @hci_pio_err._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @hci_pio_init.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/i3c/master/mipi-i3c-hci/pio.c", i32 149, i32 2}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/i3c/master/mipi-i3c-hci/pio.c", i32 152, i32 2}
!62 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @hci_pio_init._entry, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @hci_pio_init._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i3c/master/mipi-i3c-hci/pio.c", i32 154, i32 2}
!68 = !{ptr @hci_pio_init._entry.34, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @hci_pio_init._entry_ptr.36, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/i3c/master/mipi-i3c-hci/pio.c", i32 156, i32 2}
!72 = !{ptr @hci_pio_init._entry.37, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @hci_pio_init._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/i3c/master/mipi-i3c-hci/pio.c", i32 158, i32 2}
!76 = !{ptr @hci_pio_init._entry.40, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @hci_pio_init._entry_ptr.42, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 6903904}
!88 = !{i64 2156878160}
!89 = !{i8 0, i8 2}
!90 = !{i64 2156699513}
!91 = !{i64 2156685188}
!92 = !{i64 6903486}
!93 = !{i64 2156693248}
!94 = !{i64 2156695805}
!95 = !{i64 2156696385}
!96 = !{i64 2156698842}
!97 = !{i64 2156788231}
!98 = !{i64 2156788887}
!99 = !{i64 2156789467}
!100 = !{i64 2156790123}
!101 = !{i64 2156211501}
!102 = !{i64 2156219816}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{i64 2156883245}
!105 = !{i64 2156891776}
!106 = !{i64 2156895024}
!107 = !{i64 2156330150}
!108 = !{i64 2155625493}
!109 = !{i64 2155964666}
!110 = !{i64 2156187997}
!111 = !{i64 2156188488}
!112 = !{i64 2156188993}
!113 = !{i64 2156190915}
!114 = !{i64 2156194733, i64 2156195235, i64 2156194770, i64 2156194826, i64 2156194860, i64 2156194884, i64 2156194925, i64 2156194946, i64 2156194974, i64 2156195008}
!115 = !{i64 2156196367, i64 2156196869, i64 2156196404, i64 2156196460, i64 2156196494, i64 2156196518, i64 2156196559, i64 2156196580, i64 2156196608, i64 2156196642}
!116 = !{i64 2156198001, i64 2156198503, i64 2156198038, i64 2156198094, i64 2156198128, i64 2156198152, i64 2156198193, i64 2156198214, i64 2156198242, i64 2156198276}
!117 = !{i64 2156199639, i64 2156200141, i64 2156199676, i64 2156199732, i64 2156199766, i64 2156199790, i64 2156199831, i64 2156199852, i64 2156199880, i64 2156199914}
!118 = !{i64 2156225357}
!119 = !{i64 2156229328}
!120 = !{i64 2156230093}
!121 = !{i64 2156232290}
!122 = !{i64 2156236469}
!123 = !{i64 2156237147}
!124 = !{i64 2156224094}
!125 = !{i64 2156224680}
!126 = !{i64 2156425526}
!127 = !{i64 2156426204}
!128 = !{i64 2156429170}
!129 = !{i64 2156429772}
!130 = !{i64 2156327917}
!131 = !{i64 2156205132}
!132 = !{i64 2156205693}
!133 = !{i64 2156210136}
!134 = !{i64 2156210697}
