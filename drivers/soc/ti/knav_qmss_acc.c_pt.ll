; ModuleID = '/llk/IR_all_yes/drivers/soc/ti/knav_qmss_acc.c_pt.bc'
source_filename = "../drivers/soc/ti/knav_qmss_acc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+knav_init_acc_range\22, \22a\22\09"
module asm "\09.weak\09__crc_knav_init_acc_range\09\09\09\09"
module asm "\09.long\09__crc_knav_init_acc_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_knav_init_acc_range:\09\09\09\09\09"
module asm "\09.asciz \09\22knav_init_acc_range\22\09\09\09\09\09"
module asm "__kstrtabns_knav_init_acc_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.knav_range_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.knav_range_info = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr, %struct.knav_acc_info, ptr, i32, [64 x %struct.knav_irq_info] }
%struct.list_head = type { ptr, ptr }
%struct.knav_acc_info = type { i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.knav_irq_info = type { i32, ptr }
%struct.knav_device = type { ptr, i32, i32, i32, i32, [2 x %struct.knav_link_ram_block], ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.knav_link_ram_block = type { i32, ptr, i32 }
%struct.knav_acc_channel = type { i32, i32, i32, [2 x ptr], [2 x i32], [32 x i8], %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.knav_queue_inst = type { ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, %struct.list_head, ptr, ptr }
%struct.knav_pdsp_info = type { ptr, ptr, %union.anon.71, ptr, ptr, i32, %struct.list_head, i8, i8 }
%union.anon.71 = type { ptr }
%struct.knav_reg_acc_command = type { i32, i32, i32, i32, i32 }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"accumulator\00", [20 x i8] zeroinitializer }, align 32
@knav_init_acc_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 499, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"channel %d invalid for range %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"knav_init_acc_range\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/soc/ti/knav_qmss_acc.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@knav_init_acc_range._entry_ptr = internal global ptr @knav_init_acc_range._entry, section ".printk_index", align 4
@knav_init_acc_range._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 505, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pacing mode %d invalid for range %s\0A\00", [59 x i8] zeroinitializer }, align 32
@knav_init_acc_range._entry_ptr.8 = internal global ptr @knav_init_acc_range._entry.6, section ".printk_index", align 4
@knav_init_acc_range._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 512, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pdsp id %d not found for range %s\0A\00", [61 x i8] zeroinitializer }, align 32
@knav_init_acc_range._entry_ptr.11 = internal global ptr @knav_init_acc_range._entry.9, section ".printk_index", align 4
@knav_init_acc_range._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 518, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pdsp id %d not started for range %s\0A\00", [59 x i8] zeroinitializer }, align 32
@knav_init_acc_range._entry_ptr.14 = internal global ptr @knav_init_acc_range._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"multi-queue\00", [20 x i8] zeroinitializer }, align 32
@knav_init_acc_range._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 530, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"misaligned multi-queue accumulator range %s\0A\00", [51 x i8] zeroinitializer }, align 32
@knav_init_acc_range._entry_ptr.18 = internal global ptr @knav_init_acc_range._entry.16, section ".printk_index", align 4
@knav_init_acc_range._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 536, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"too many queues in accumulator range %s\0A\00", [55 x i8] zeroinitializer }, align 32
@knav_init_acc_range._entry_ptr.21 = internal global ptr @knav_init_acc_range._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hwqueue-acc-%d\00", [17 x i8] zeroinitializer }, align 32
@knav_init_acc_range.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.2, ptr @.str.3, ptr @.str.24, i8 0, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"knav_qmss\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: channel %d, dma %pad, virt %8p\0A\00", [60 x i8] zeroinitializer }, align 32
@knav_acc_range_ops = internal global { %struct.knav_range_ops, [40 x i8] } { %struct.knav_range_ops { ptr @knav_acc_init_range, ptr @knav_acc_free_range, ptr @knav_acc_init_queue, ptr @knav_acc_open_queue, ptr @knav_acc_close_queue, ptr @knav_acc_set_notify }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_knav_init_acc_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_knav_init_acc_range = external dso_local constant [0 x i8], align 1
@__ksymtab_knav_init_acc_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @knav_init_acc_range to i32), ptr @__kstrtab_knav_init_acc_range, ptr @__kstrtabns_knav_init_acc_range }, section "___ksymtab_gpl+knav_init_acc_range", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@knav_acc_stop.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"knav_acc_stop\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"stopped acc channel %s, result %s\0A\00", [61 x i8] zeroinitializer }, align 32
@knav_acc_write.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"knav_acc_write\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"acc command %08x %08x %08x %08x %08x\0A\00", [58 x i8] zeroinitializer }, align 32
@knav_acc_result_str.result_str = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"success\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid command\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid channel\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"inactive channel\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"active channel\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid queue\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid return code\00", [44 x i8] zeroinitializer }, align 32
@knav_acc_start.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"knav_acc_start\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"started acc channel %s, result %s\0A\00", [61 x i8] zeroinitializer }, align 32
@knav_range_setup_acc_irq.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"knav_range_setup_acc_irq\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"setup-acc-irq: open mask old %08x, new %08x, channel %s\0A\00", [39 x i8] zeroinitializer }, align 32
@knav_range_setup_acc_irq.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.41, ptr @.str.3, ptr @.str.43, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"setup-acc-irq: requesting %s for channel %s\0A\00", [51 x i8] zeroinitializer }, align 32
@knav_range_setup_acc_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.41, ptr @.str.3, i32 238, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set IRQ affinity\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@knav_range_setup_acc_irq._entry_ptr = internal global ptr @knav_range_setup_acc_irq._entry, section ".printk_index", align 4
@knav_range_setup_acc_irq.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.41, ptr @.str.3, ptr @.str.46, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"setup-acc-irq: freeing %s for channel %s\0A\00", [54 x i8] zeroinitializer }, align 32
@knav_range_setup_acc_irq._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.41, ptr @.str.3, i32 250, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@knav_range_setup_acc_irq._entry_ptr.48 = internal global ptr @knav_range_setup_acc_irq._entry.47, section ".printk_index", align 4
@knav_acc_int_handler.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"knav_acc_int_handler\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"acc-irq: channel %d, list %d, virt %p, dma %pad\0A\00", [47 x i8] zeroinitializer }, align 32
@knav_acc_int_handler.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.49, ptr @.str.3, ptr @.str.51, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"acc-irq: list %d, entry @%p, %08x %08x\0A\00", [56 x i8] zeroinitializer }, align 32
@knav_acc_int_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.49, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bad queue %d, expecting %d-%d\0A\00", [33 x i8] zeroinitializer }, align 32
@knav_acc_int_handler._entry_ptr = internal global ptr @knav_acc_int_handler._entry, section ".printk_index", align 4
@knav_acc_int_handler._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.3, i32 166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"acc-irq: queue %d full, entry dropped\0A\00", [57 x i8] zeroinitializer }, align 32
@knav_acc_int_handler._entry_ptr.55 = internal global ptr @knav_acc_int_handler._entry.53, section ".printk_index", align 4
@knav_acc_int_handler.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.49, ptr @.str.3, ptr @.str.56, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"acc-irq: enqueue %08x at %d, queue %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__knav_acc_notify.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 0, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__knav_acc_notify\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"acc-irq: notifying %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__knav_acc_notify.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 0, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@knav_acc_set_notify.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"knav_acc_set_notify\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"setup-notify: re-triggering irq for %s\0A\00", [56 x i8] zeroinitializer }, align 32
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 487, i32 41 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 498, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 504, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 511, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 517, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 524, i32 28 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 528, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 534, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 571, i32 43 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 577, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [19 x i8] c"knav_acc_range_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 453, i32 30 }
@___asan_gen_.131 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 326, i32 6 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 348, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 282, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [11 x i8] c"result_str\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 259, i32 28 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 260, i32 22 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 261, i32 24 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 262, i32 31 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 263, i32 31 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 264, i32 32 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 265, i32 30 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 266, i32 30 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 267, i32 28 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 366, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 221, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 229, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 237, i32 5 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 245, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 249, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 108, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 133, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 151, i32 5 }
@___asan_gen_.217 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 164, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 173, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 38, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.236 = private constant [34 x i8] c"../drivers/soc/ti/knav_qmss_acc.c\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 71, i32 2 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__ksymtab_knav_init_acc_range, ptr @knav_acc_int_handler._entry, ptr @knav_acc_int_handler._entry.53, ptr @knav_acc_int_handler._entry_ptr, ptr @knav_acc_int_handler._entry_ptr.55, ptr @knav_init_acc_range._entry, ptr @knav_init_acc_range._entry.12, ptr @knav_init_acc_range._entry.16, ptr @knav_init_acc_range._entry.19, ptr @knav_init_acc_range._entry.6, ptr @knav_init_acc_range._entry.9, ptr @knav_init_acc_range._entry_ptr, ptr @knav_init_acc_range._entry_ptr.11, ptr @knav_init_acc_range._entry_ptr.14, ptr @knav_init_acc_range._entry_ptr.18, ptr @knav_init_acc_range._entry_ptr.21, ptr @knav_init_acc_range._entry_ptr.8, ptr @knav_range_setup_acc_irq._entry, ptr @knav_range_setup_acc_irq._entry.47, ptr @knav_range_setup_acc_irq._entry_ptr, ptr @knav_range_setup_acc_irq._entry_ptr.48, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @knav_acc_range_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @knav_acc_result_str.result_str, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_init_acc_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_init_acc_range._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_init_acc_range._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_init_acc_range._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_init_acc_range._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_init_acc_range._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_acc_range_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_acc_result_str.result_str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_range_setup_acc_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_range_setup_acc_irq._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_acc_int_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_acc_int_handler._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @knav_init_acc_range(ptr noundef readonly %kdev, ptr noundef %node, ptr nocapture noundef %range) #0 align 64 {
entry:
  %list_dma = alloca i32, align 4
  %config = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %list_dma) #7
  %0 = ptrtoint ptr %list_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %list_dma, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %config) #7
  %flags = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 5
  %1 = call ptr @memset(ptr %config, i32 255, i32 20)
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 4
  store i32 %or, ptr %flags, align 4
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str, ptr noundef nonnull %config, i32 noundef 5, i32 noundef 0) #7
  %4 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds [5 x i32], ptr %config, i32 0, i32 4
  %6 = getelementptr inbounds [5 x i32], ptr %config, i32 0, i32 3
  %7 = getelementptr inbounds [5 x i32], ptr %config, i32 0, i32 2
  %8 = getelementptr inbounds [5 x i32], ptr %config, i32 0, i32 1
  %acc_info = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 8
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %config, align 4
  %11 = ptrtoint ptr %acc_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %acc_info, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %8, align 4
  %start_channel = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %start_channel to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %start_channel, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %7, align 4
  %list_entries = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 8, i32 2
  %17 = ptrtoint ptr %list_entries to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %list_entries, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %6, align 4
  %pacing_mode = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 8, i32 3
  %20 = ptrtoint ptr %pacing_mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pacing_mode, align 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %5, align 4
  %div = udiv i32 %22, 25
  %timer_count = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 8, i32 4
  %23 = ptrtoint ptr %timer_count to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div, ptr %timer_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %13)
  %cmp = icmp ugt i32 %13, 48
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %kdev, align 4
  %26 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %range, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.1, i32 noundef %13, ptr noundef %27) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp10 = icmp ugt i32 %19, 3
  br i1 %cmp10, label %do.end14, label %if.end18

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %kdev, align 4
  %30 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %range, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.7, i32 noundef %19, ptr noundef %31) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %pdsps.i = getelementptr inbounds %struct.knav_device, ptr %kdev, i32 0, i32 10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end18
  %.pn.in.i = phi ptr [ %pdsps.i, %if.end18 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %32 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %pdsps.i
  br i1 %cmp.not.i, label %for.cond.i.do.end25_crit_edge, label %for.body.i

for.cond.i.do.end25_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

for.body.i:                                       ; preds = %for.cond.i
  %id.i = getelementptr i8, ptr %.pn.i, i32 -4
  %33 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id.i, align 4
  %cmp2.i = icmp eq i32 %34, %10
  br i1 %cmp2.i, label %knav_find_pdsp.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

knav_find_pdsp.exit:                              ; preds = %for.body.i
  %pdsp.0.le.i = getelementptr i8, ptr %.pn.i, i32 -24
  %tobool21.not = icmp eq ptr %pdsp.0.le.i, null
  br i1 %tobool21.not, label %knav_find_pdsp.exit.do.end25_crit_edge, label %if.end29

knav_find_pdsp.exit.do.end25_crit_edge:           ; preds = %knav_find_pdsp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

do.end25:                                         ; preds = %knav_find_pdsp.exit.do.end25_crit_edge, %for.cond.i.do.end25_crit_edge
  %35 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %kdev, align 4
  %37 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %range, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.10, i32 noundef %10, ptr noundef %38) #10
  br label %cleanup

if.end29:                                         ; preds = %knav_find_pdsp.exit
  %started = getelementptr i8, ptr %.pn.i, i32 9
  %39 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %started, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool30.not = icmp eq i8 %40, 0
  br i1 %tobool30.not, label %do.end34, label %if.end38

do.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %kdev, align 4
  %43 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %range, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.13, i32 noundef %10, ptr noundef %44) #10
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  %pdsp39 = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 8, i32 7
  %45 = ptrtoint ptr %pdsp39 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %pdsp.0.le.i, ptr %pdsp39, align 4
  %num_queues = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 3
  %46 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_queues, align 4
  %call40 = call ptr @of_get_property(ptr noundef %node, ptr noundef nonnull @.str.15, ptr noundef null) #7
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.end38.if.end62_crit_edge, label %if.then42

if.end38.if.end62_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then42:                                        ; preds = %if.end38
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  %or44 = or i32 %49, 8
  store i32 %or44, ptr %flags, align 4
  %queue_base = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 2
  %50 = ptrtoint ptr %queue_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %queue_base, align 4
  %and = and i32 %51, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %if.end52, label %do.end49

do.end49:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %kdev, align 4
  %54 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %range, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.17, ptr noundef %55) #10
  br label %cleanup

if.end52:                                         ; preds = %if.then42
  %56 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %57)
  %cmp54 = icmp ugt i32 %57, 32
  br i1 %cmp54, label %do.end58, label %if.end52.if.end62_crit_edge

if.end52.if.end62_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %kdev, align 4
  %60 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %range, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.20, ptr noundef %61) #10
  br label %cleanup

if.end62:                                         ; preds = %if.end52.if.end62_crit_edge, %if.end38.if.end62_crit_edge
  %channels.0 = phi i32 [ 1, %if.end52.if.end62_crit_edge ], [ %47, %if.end38.if.end62_crit_edge ]
  %62 = ptrtoint ptr %list_entries to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %list_entries, align 4
  %mul = shl i32 %63, 3
  %list_size64 = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 8, i32 6
  %64 = ptrtoint ptr %list_size64 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %mul, ptr %list_size64, align 4
  %mul65 = shl i32 %63, 4
  %add = add i32 %mul65, 4095
  %and66 = and i32 %add, -4096
  %mem_size67 = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 8, i32 5
  %65 = ptrtoint ptr %mem_size67 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and66, ptr %mem_size67, align 4
  %66 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %channels.0, i32 64) #7
  %67 = extractvalue { i32, i1 } %66, 1
  br i1 %67, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !133

devm_kcalloc.exit.thread:                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %acc70210 = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 9
  %68 = ptrtoint ptr %acc70210 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %acc70210, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end62
  %69 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %kdev, align 4
  %71 = extractvalue { i32, i1 } %66, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %70, i32 noundef %71, i32 noundef 3520) #7
  %acc70 = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 9
  %72 = ptrtoint ptr %acc70 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call5.i.i, ptr %acc70, align 4
  %tobool72.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool72.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channels.0)
  %cmp75216.not = icmp eq i32 %channels.0, 0
  br i1 %cmp75216.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %channel.0217 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %73 = ptrtoint ptr %acc70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %acc70, align 4
  %add.ptr = getelementptr %struct.knav_acc_channel, ptr %74, i32 %channel.0217
  %75 = ptrtoint ptr %start_channel to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %start_channel, align 4
  %add78 = add i32 %76, %channel.0217
  %77 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add78, ptr %add.ptr, align 4
  %call80 = call noalias ptr @alloc_pages_exact(i32 noundef %and66, i32 noundef 3265) #11
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %for.body.cleanup_crit_edge, label %if.end83

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end83:                                         ; preds = %for.body
  %78 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %kdev, align 4
  %call.i203 = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call80) #7
  br i1 %call.i203, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end83
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !134

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = call ptr @dev_driver_string(ptr noundef %79) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i, label %if.end.i.i204, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i204:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %79, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i204, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i205 = phi ptr [ %83, %if.end.i.i204 ], [ %81, %if.then.i.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.26, ptr noundef %call16.i, ptr noundef %retval.0.i.i205) #7
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  call void @debug_dma_map_single(ptr noundef %79, ptr noundef nonnull %call80, i32 noundef %and66) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %84 = load ptr, ptr @mem_map, align 4
  %85 = ptrtoint ptr %call80 to i32
  %sub.i = add i32 %85, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %84, i32 %shr.i
  %and.i = and i32 %85, 4095
  %call41.i = call i32 @dma_map_page_attrs(ptr noundef %79, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %and66, i32 noundef 0, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i206 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %86 = ptrtoint ptr %list_dma to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %retval.0.i206, ptr %list_dma, align 4
  %87 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %kdev, align 4
  call void @debug_dma_mapping_error(ptr noundef %88, i32 noundef %retval.0.i206) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i206)
  %cmp.i = icmp eq i32 %retval.0.i206, -1
  br i1 %cmp.i, label %if.then89, label %if.end90

if.then89:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @free_pages_exact(ptr noundef nonnull %call80, i32 noundef %and66) #7
  br label %cleanup

if.end90:                                         ; preds = %dma_map_single_attrs.exit
  %89 = call ptr @memset(ptr %call80, i32 0, i32 %and66)
  %90 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %kdev, align 4
  %92 = ptrtoint ptr %list_dma to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %list_dma, align 4
  call void @dma_sync_single_for_device(ptr noundef %91, i32 noundef %93, i32 noundef %and66, i32 noundef 1) #7
  %name92 = getelementptr %struct.knav_acc_channel, ptr %74, i32 %channel.0217, i32 5
  %94 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr, align 4
  %call95 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %name92, i32 noundef 32, ptr noundef nonnull @.str.22, i32 noundef %95) #7
  %list_cpu = getelementptr %struct.knav_acc_channel, ptr %74, i32 %channel.0217, i32 3
  %96 = ptrtoint ptr %list_cpu to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call80, ptr %list_cpu, align 4
  %add.ptr97 = getelementptr i8, ptr %call80, i32 %mul
  %arrayidx99 = getelementptr %struct.knav_acc_channel, ptr %74, i32 %channel.0217, i32 3, i32 1
  %97 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %add.ptr97, ptr %arrayidx99, align 4
  %98 = ptrtoint ptr %list_dma to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %list_dma, align 4
  %list_dma100 = getelementptr %struct.knav_acc_channel, ptr %74, i32 %channel.0217, i32 4
  %100 = ptrtoint ptr %list_dma100 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %list_dma100, align 4
  %101 = load i32, ptr %list_dma, align 4
  %add102 = add i32 %101, %mul
  %arrayidx104 = getelementptr %struct.knav_acc_channel, ptr %74, i32 %channel.0217, i32 4, i32 1
  %102 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add102, ptr %arrayidx104, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @knav_init_acc_range.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@knav_init_acc_range, %if.then110)) #7
          to label %for.inc [label %if.then110], !srcloc !135

if.then110:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %kdev, align 4
  %105 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @knav_init_acc_range.__UNIQUE_ID_ddebug248, ptr noundef %104, ptr noundef nonnull @.str.24, ptr noundef %name92, i32 noundef %106, ptr noundef nonnull %list_dma, ptr noundef nonnull %call80) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then110, %if.end90
  %inc = add nuw nsw i32 %channel.0217, 1
  %exitcond.not = icmp eq i32 %inc, %channels.0
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %ops = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 7
  %107 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @knav_acc_range_ops, ptr %ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then89, %for.body.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end58, %do.end49, %do.end34, %do.end25, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end14 ], [ -22, %do.end49 ], [ -22, %do.end58 ], [ -12, %if.then89 ], [ 0, %for.end ], [ -19, %do.end34 ], [ -22, %do.end25 ], [ %4, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %config) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %list_dma) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @alloc_pages_exact(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @knav_acc_init_range(ptr nocapture noundef readonly %range) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %kdev1 = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 1
  %0 = ptrtoint ptr %kdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kdev1, align 4
  %acc2 = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 9
  %flags = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 5
  %num_queues = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 3
  %2 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp19.not = icmp eq i32 %3, 0
  br i1 %cmp19.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %inc = add nuw i32 %queue.020, 1
  %4 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_queues, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %queue.020 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %acc2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %acc2, align 4
  tail call fastcc void @knav_acc_stop(ptr noundef %1, ptr noundef %range, i32 noundef %queue.020)
  %list_index = getelementptr %struct.knav_acc_channel, ptr %7, i32 %queue.020, i32 1
  %8 = ptrtoint ptr %list_index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %list_index, align 4
  %call = tail call fastcc i32 @knav_acc_start(ptr noundef %1, ptr noundef %range, i32 noundef %queue.020)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp3.not = icmp eq i32 %call, 1
  br i1 %cmp3.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @knav_acc_free_range(ptr nocapture noundef readonly %range) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %kdev1 = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 1
  %0 = ptrtoint ptr %kdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kdev1, align 4
  %flags = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.for.body.lr.ph_crit_edge

entry.for.body.lr.ph_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

if.end:                                           ; preds = %entry
  %num_queues = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 3
  %4 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp24 = icmp sgt i32 %5, 0
  br i1 %cmp24, label %if.end.for.body.lr.ph_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body.lr.ph_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end.for.body.lr.ph_crit_edge, %entry.for.body.lr.ph_crit_edge
  %channels.029 = phi i32 [ %5, %if.end.for.body.lr.ph_crit_edge ], [ 1, %entry.for.body.lr.ph_crit_edge ]
  %acc2 = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 9
  %mem_size = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 8, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %channel.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %acc2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %acc2, align 4
  %list_cpu = getelementptr %struct.knav_acc_channel, ptr %7, i32 %channel.025, i32 3
  %8 = ptrtoint ptr %list_cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list_cpu, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.end5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end5:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %list_dma = getelementptr %struct.knav_acc_channel, ptr %7, i32 %channel.025, i32 4
  %12 = ptrtoint ptr %list_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %list_dma, align 4
  %14 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem_size, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef 0, i32 noundef 0) #7
  %16 = ptrtoint ptr %list_cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %list_cpu, align 4
  %18 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mem_size, align 4
  tail call void @free_pages_exact(ptr noundef %17, i32 noundef %19) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %channel.025, 1
  %exitcond.not = icmp eq i32 %inc, %channels.029
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %20 = ptrtoint ptr %kdev1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kdev1, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %acc12 = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 9
  %24 = ptrtoint ptr %acc12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %acc12, align 4
  tail call void @devm_kfree(ptr noundef %23, ptr noundef %25) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @knav_acc_init_queue(ptr nocapture noundef readonly %range, ptr nocapture noundef %kq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr inbounds %struct.knav_queue_inst, ptr %kq, i32 0, i32 8
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id1, align 4
  %queue_base = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 2
  %2 = ptrtoint ptr %queue_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_base, align 4
  %sub = sub i32 %1, %3
  %kdev = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 1
  %4 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kdev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 4096, i32 noundef 3520) #7
  %8 = ptrtoint ptr %kq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %kq, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %acc = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 9
  %9 = ptrtoint ptr %acc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %acc, align 4
  %acc3 = getelementptr inbounds %struct.knav_queue_inst, ptr %kq, i32 0, i32 4
  %11 = ptrtoint ptr %acc3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %acc3, align 4
  %flags = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 5
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr %struct.knav_acc_channel, ptr %10, i32 %sub
  %14 = ptrtoint ptr %acc3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %acc3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @knav_acc_open_queue(ptr noundef %range, ptr nocapture noundef readonly %inst, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr inbounds %struct.knav_queue_inst, ptr %inst, i32 0, i32 8
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id1, align 4
  %queue_base = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 2
  %2 = ptrtoint ptr %queue_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_base, align 4
  %sub = sub i32 %1, %3
  %call = tail call fastcc i32 @knav_range_setup_acc_irq(ptr noundef %range, i32 noundef %sub, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @knav_acc_close_queue(ptr noundef %range, ptr nocapture noundef readonly %inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr inbounds %struct.knav_queue_inst, ptr %inst, i32 0, i32 8
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id1, align 4
  %queue_base = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 2
  %2 = ptrtoint ptr %queue_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_base, align 4
  %sub = sub i32 %1, %3
  %call = tail call fastcc i32 @knav_range_setup_acc_irq(ptr noundef %range, i32 noundef %sub, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @knav_acc_set_notify(ptr nocapture noundef readonly %range, ptr noundef %kq, i1 noundef zeroext %enabled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdsp1 = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 8, i32 7
  %0 = ptrtoint ptr %pdsp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdsp1, align 4
  %kdev2 = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 1
  %2 = ptrtoint ptr %kdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kdev2, align 4
  br i1 %enabled, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %desc_count = getelementptr inbounds %struct.knav_queue_inst, ptr %kq, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %desc_count, i32 noundef 4) #7
  %4 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %desc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %notify_needed = getelementptr inbounds %struct.knav_queue_inst, ptr %kq, i32 0, i32 10
  %6 = ptrtoint ptr %notify_needed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %notify_needed, align 4
  %acc = getelementptr inbounds %struct.knav_queue_inst, ptr %kq, i32 0, i32 4
  %7 = ptrtoint ptr %acc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %acc, align 4
  %retrigger_count = getelementptr inbounds %struct.knav_acc_channel, ptr %8, i32 0, i32 6
  %call.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %retrigger_count, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %retrigger_count, i32 1, i32 3, i32 1) #7
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %retrigger_count, ptr %retrigger_count, i32 1, ptr elementtype(i32) %retrigger_count) #7, !srcloc !136
  %10 = ptrtoint ptr %acc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %acc, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %rem = and i32 %13, 31
  %shl = shl nuw i32 1, %rem
  %14 = lshr i32 %13, 3
  %mul = and i32 %14, 536870908
  %add = add nuw nsw i32 %mul, 512
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @knav_acc_set_notify.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@knav_acc_set_notify, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !135

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %17 = ptrtoint ptr %acc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %acc, align 4
  %name = getelementptr inbounds %struct.knav_acc_channel, ptr %18, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @knav_acc_set_notify.__UNIQUE_ID_ddebug236, ptr noundef %16, ptr noundef nonnull @.str.60, ptr noundef %name) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end
  %19 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %intd = getelementptr inbounds %struct.knav_pdsp_info, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %intd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %intd, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #7, !srcloc !137
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @knav_acc_stop(ptr nocapture noundef readonly %kdev, ptr nocapture noundef readonly %range, i32 noundef %queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %acc1 = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 9
  %0 = ptrtoint ptr %acc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acc1, align 4
  %flags.i = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 5
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %queue_base2.i = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 2
  %4 = ptrtoint ptr %queue_base2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue_base2.i, align 4
  %num_queues.i = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 3
  %6 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_queues.i, align 4
  %notmask.i = shl nsw i32 -1, %7
  %sub.i = xor i32 %notmask.i, -1
  br label %knav_acc_setup_cmd.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr %struct.knav_acc_channel, ptr %1, i32 %queue
  %queue_base4.i = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 2
  %8 = ptrtoint ptr %queue_base4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_base4.i, align 4
  %add.i = add i32 %9, %queue
  br label %knav_acc_setup_cmd.exit

knav_acc_setup_cmd.exit:                          ; preds = %if.else.i, %if.then.i
  %spec.store.select.i = phi i32 [ 2359296, %if.then.i ], [ 262144, %if.else.i ]
  %acc.0.i = phi ptr [ %1, %if.then.i ], [ %add.ptr.i, %if.else.i ]
  %queue_base.0.i = phi i32 [ %5, %if.then.i ], [ %add.i, %if.else.i ]
  %queue_mask.0.i = phi i32 [ %sub.i, %if.then.i ], [ 0, %if.else.i ]
  %10 = ptrtoint ptr %acc.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %acc.0.i, align 4
  %list_dma.i = getelementptr inbounds %struct.knav_acc_channel, ptr %acc.0.i, i32 0, i32 4
  %12 = ptrtoint ptr %list_dma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %list_dma.i, align 4
  %list_entries.i = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 8, i32 2
  %14 = ptrtoint ptr %list_entries.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %list_entries.i, align 4
  %shl7.i = shl i32 %15, 16
  %or.i = or i32 %shl7.i, %queue_base.0.i
  %pacing_mode.i = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 8, i32 3
  %16 = ptrtoint ptr %pacing_mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pacing_mode.i, align 4
  %shl16.i = shl i32 %17, 16
  %or18.i = or i32 %shl16.i, %spec.store.select.i
  %timer_count.i = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 8, i32 4
  %18 = ptrtoint ptr %timer_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timer_count.i, align 4
  %or20.i = or i32 %or18.i, %19
  %or = or i32 %11, 32768
  %pdsp = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 8, i32 7
  %20 = ptrtoint ptr %pdsp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdsp, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @knav_acc_write.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@knav_acc_stop, %if.then.i14)) #7
          to label %do.end.i [label %if.then.i14], !srcloc !135

if.then.i14:                                      ; preds = %knav_acc_setup_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %kdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @knav_acc_write.__UNIQUE_ID_ddebug245, ptr noundef %23, ptr noundef nonnull @.str.30, i32 noundef %or, i32 noundef %queue_mask.0.i, i32 noundef %13, i32 noundef %or.i, i32 noundef %or20.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i14, %knav_acc_setup_cmd.exit
  %24 = tail call i32 @llvm.bswap.i32(i32 %or20.i) #7
  %25 = getelementptr inbounds %struct.knav_pdsp_info, ptr %21, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %timer_config4.i = getelementptr inbounds %struct.knav_reg_acc_command, ptr %27, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %timer_config4.i, i32 %24) #7, !srcloc !137
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %25, align 4
  %queue_num6.i = getelementptr inbounds %struct.knav_reg_acc_command, ptr %30, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %queue_num6.i, i32 %28) #7, !srcloc !137
  %31 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %25, align 4
  %list_dma8.i = getelementptr inbounds %struct.knav_reg_acc_command, ptr %33, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %list_dma8.i, i32 %31) #7, !srcloc !137
  %34 = tail call i32 @llvm.bswap.i32(i32 %queue_mask.0.i) #7
  %35 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %25, align 4
  %queue_mask10.i = getelementptr inbounds %struct.knav_reg_acc_command, ptr %36, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %queue_mask10.i, i32 %34) #7, !srcloc !137
  %37 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %38 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #7, !srcloc !137
  br label %do.body13.i

do.body13.i:                                      ; preds = %do.body13.i.do.body13.i_crit_edge, %do.end.i
  %40 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %25, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #7, !srcloc !138
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  %44 = and i32 %43, 65280
  %tobool18.not.i = icmp eq i32 %44, 0
  br i1 %tobool18.not.i, label %knav_acc_write.exit, label %do.body13.i.do.body13.i_crit_edge

do.body13.i.do.body13.i_crit_edge:                ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13.i

knav_acc_write.exit:                              ; preds = %do.body13.i
  %shr20.i = lshr i32 %43, 24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @knav_acc_stop.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@knav_acc_stop, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !135

if.then:                                          ; preds = %knav_acc_write.exit
  %45 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %kdev, align 4
  %name = getelementptr %struct.knav_acc_channel, ptr %1, i32 %queue, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217727, i32 %43)
  %cmp.i = icmp ugt i32 %43, 134217727
  br i1 %cmp.i, label %if.then.knav_acc_result_str.exit_crit_edge, label %if.else.i15

if.then.knav_acc_result_str.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %knav_acc_result_str.exit

if.else.i15:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [8 x ptr], ptr @knav_acc_result_str.result_str, i32 0, i32 %shr20.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  br label %knav_acc_result_str.exit

knav_acc_result_str.exit:                         ; preds = %if.else.i15, %if.then.knav_acc_result_str.exit_crit_edge
  %retval.0.i16 = phi ptr [ %48, %if.else.i15 ], [ @.str.38, %if.then.knav_acc_result_str.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @knav_acc_stop.__UNIQUE_ID_ddebug246, ptr noundef %46, ptr noundef nonnull @.str.28, ptr noundef %name, ptr noundef %retval.0.i16) #7
  br label %do.end

do.end:                                           ; preds = %knav_acc_result_str.exit, %knav_acc_write.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @knav_acc_start(ptr nocapture noundef readonly %kdev, ptr nocapture noundef readonly %range, i32 noundef %queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %acc1 = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 9
  %0 = ptrtoint ptr %acc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acc1, align 4
  %flags.i = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 5
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %queue_base2.i = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 2
  %4 = ptrtoint ptr %queue_base2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue_base2.i, align 4
  %num_queues.i = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 3
  %6 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_queues.i, align 4
  %notmask.i = shl nsw i32 -1, %7
  %sub.i = xor i32 %notmask.i, -1
  br label %knav_acc_setup_cmd.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr %struct.knav_acc_channel, ptr %1, i32 %queue
  %queue_base4.i = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 2
  %8 = ptrtoint ptr %queue_base4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_base4.i, align 4
  %add.i = add i32 %9, %queue
  br label %knav_acc_setup_cmd.exit

knav_acc_setup_cmd.exit:                          ; preds = %if.else.i, %if.then.i
  %spec.store.select.i = phi i32 [ 2359296, %if.then.i ], [ 262144, %if.else.i ]
  %acc.0.i = phi ptr [ %1, %if.then.i ], [ %add.ptr.i, %if.else.i ]
  %queue_base.0.i = phi i32 [ %5, %if.then.i ], [ %add.i, %if.else.i ]
  %queue_mask.0.i = phi i32 [ %sub.i, %if.then.i ], [ 0, %if.else.i ]
  %10 = ptrtoint ptr %acc.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %acc.0.i, align 4
  %list_dma.i = getelementptr inbounds %struct.knav_acc_channel, ptr %acc.0.i, i32 0, i32 4
  %12 = ptrtoint ptr %list_dma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %list_dma.i, align 4
  %list_entries.i = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 8, i32 2
  %14 = ptrtoint ptr %list_entries.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %list_entries.i, align 4
  %shl7.i = shl i32 %15, 16
  %or.i = or i32 %shl7.i, %queue_base.0.i
  %pacing_mode.i = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 8, i32 3
  %16 = ptrtoint ptr %pacing_mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pacing_mode.i, align 4
  %shl16.i = shl i32 %17, 16
  %or18.i = or i32 %shl16.i, %spec.store.select.i
  %timer_count.i = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 8, i32 4
  %18 = ptrtoint ptr %timer_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timer_count.i, align 4
  %or20.i = or i32 %or18.i, %19
  %or = or i32 %11, 33024
  %pdsp = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 8, i32 7
  %20 = ptrtoint ptr %pdsp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdsp, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @knav_acc_write.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@knav_acc_start, %if.then.i15)) #7
          to label %do.end.i [label %if.then.i15], !srcloc !135

if.then.i15:                                      ; preds = %knav_acc_setup_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %kdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @knav_acc_write.__UNIQUE_ID_ddebug245, ptr noundef %23, ptr noundef nonnull @.str.30, i32 noundef %or, i32 noundef %queue_mask.0.i, i32 noundef %13, i32 noundef %or.i, i32 noundef %or20.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i15, %knav_acc_setup_cmd.exit
  %24 = tail call i32 @llvm.bswap.i32(i32 %or20.i) #7
  %25 = getelementptr inbounds %struct.knav_pdsp_info, ptr %21, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %timer_config4.i = getelementptr inbounds %struct.knav_reg_acc_command, ptr %27, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %timer_config4.i, i32 %24) #7, !srcloc !137
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %25, align 4
  %queue_num6.i = getelementptr inbounds %struct.knav_reg_acc_command, ptr %30, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %queue_num6.i, i32 %28) #7, !srcloc !137
  %31 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %25, align 4
  %list_dma8.i = getelementptr inbounds %struct.knav_reg_acc_command, ptr %33, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %list_dma8.i, i32 %31) #7, !srcloc !137
  %34 = tail call i32 @llvm.bswap.i32(i32 %queue_mask.0.i) #7
  %35 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %25, align 4
  %queue_mask10.i = getelementptr inbounds %struct.knav_reg_acc_command, ptr %36, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %queue_mask10.i, i32 %34) #7, !srcloc !137
  %37 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %38 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #7, !srcloc !137
  br label %do.body13.i

do.body13.i:                                      ; preds = %do.body13.i.do.body13.i_crit_edge, %do.end.i
  %40 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %25, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #7, !srcloc !138
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  %44 = and i32 %43, 65280
  %tobool18.not.i = icmp eq i32 %44, 0
  br i1 %tobool18.not.i, label %knav_acc_write.exit, label %do.body13.i.do.body13.i_crit_edge

do.body13.i.do.body13.i_crit_edge:                ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13.i

knav_acc_write.exit:                              ; preds = %do.body13.i
  %shr20.i = lshr i32 %43, 24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @knav_acc_start.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@knav_acc_start, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !135

if.then:                                          ; preds = %knav_acc_write.exit
  %45 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %kdev, align 4
  %name = getelementptr %struct.knav_acc_channel, ptr %1, i32 %queue, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217727, i32 %43)
  %cmp.i = icmp ugt i32 %43, 134217727
  br i1 %cmp.i, label %if.then.knav_acc_result_str.exit_crit_edge, label %if.else.i16

if.then.knav_acc_result_str.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %knav_acc_result_str.exit

if.else.i16:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [8 x ptr], ptr @knav_acc_result_str.result_str, i32 0, i32 %shr20.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  br label %knav_acc_result_str.exit

knav_acc_result_str.exit:                         ; preds = %if.else.i16, %if.then.knav_acc_result_str.exit_crit_edge
  %retval.0.i17 = phi ptr [ %48, %if.else.i16 ], [ @.str.38, %if.then.knav_acc_result_str.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @knav_acc_start.__UNIQUE_ID_ddebug247, ptr noundef %46, ptr noundef nonnull @.str.40, ptr noundef %name, ptr noundef %retval.0.i17) #7
  br label %do.end

do.end:                                           ; preds = %knav_acc_result_str.exit, %knav_acc_write.exit
  ret i32 %shr20.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @knav_range_setup_acc_irq(ptr noundef %range, i32 noundef %queue, i1 noundef zeroext %enabled) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %kdev1 = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 1
  %0 = ptrtoint ptr %kdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kdev1, align 4
  %flags = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %acc7 = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 9
  %4 = ptrtoint ptr %acc7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acc7, align 4
  %arrayidx9 = getelementptr %struct.knav_range_info, ptr %range, i32 0, i32 11, i32 %queue
  %irqs = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 11
  %queue.sink = select i1 %tobool.not, i32 %queue, i32 0
  %irq.0.in = select i1 %tobool.not, ptr %arrayidx9, ptr %irqs
  %acc.0.idx = select i1 %tobool.not, i32 %queue, i32 0
  %cpu_mask13 = getelementptr %struct.knav_range_info, ptr %range, i32 0, i32 11, i32 %queue.sink, i32 1
  %6 = ptrtoint ptr %cpu_mask13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %cpu_mask.0 = load ptr, ptr %cpu_mask13, align 4
  %7 = ptrtoint ptr %irq.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %irq.0 = load i32, ptr %irq.0.in, align 4
  %open_mask = getelementptr %struct.knav_acc_channel, ptr %5, i32 %acc.0.idx, i32 2
  %8 = ptrtoint ptr %open_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %open_mask, align 4
  %shl = shl nuw i32 1, %queue
  %or = or i32 %9, %shl
  %neg = xor i32 %shl, -1
  %and18 = and i32 %9, %neg
  %new.0 = select i1 %enabled, i32 %or, i32 %and18
  store i32 %new.0, ptr %open_mask, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @knav_range_setup_acc_irq.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@knav_range_setup_acc_irq, %if.then25)) #7
          to label %do.end [label %if.then25], !srcloc !135

if.then25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %name = getelementptr %struct.knav_acc_channel, ptr %5, i32 %acc.0.idx, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @knav_range_setup_acc_irq.__UNIQUE_ID_ddebug242, ptr noundef %11, ptr noundef nonnull @.str.42, i32 noundef %9, i32 noundef %new.0, ptr noundef %name) #7
  br label %do.end

do.end:                                           ; preds = %if.then25, %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %new.0, i32 %9)
  %cmp = icmp eq i32 %new.0, %9
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end34, !prof !134

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new.0)
  %tobool35.not = icmp ne i32 %new.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool36.not = icmp eq i32 %9, 0
  %or.cond = select i1 %tobool35.not, i1 %tobool36.not, i1 false
  br i1 %or.cond, label %do.body38, label %if.end34.if.end76_crit_edge

if.end34.if.end76_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

do.body38:                                        ; preds = %if.end34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @knav_range_setup_acc_irq.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@knav_range_setup_acc_irq, %if.then50)) #7
          to label %do.end58 [label %if.then50], !srcloc !135

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %name52 = getelementptr %struct.knav_acc_channel, ptr %5, i32 %acc.0.idx, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @knav_range_setup_acc_irq.__UNIQUE_ID_ddebug243, ptr noundef %13, ptr noundef nonnull @.str.43, ptr noundef %name52, ptr noundef %name52) #7
  br label %do.end58

do.end58:                                         ; preds = %if.then50, %do.body38
  %name59 = getelementptr %struct.knav_acc_channel, ptr %5, i32 %acc.0.idx, i32 5
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %irq.0, ptr noundef nonnull @knav_acc_int_handler, ptr noundef null, i32 noundef 0, ptr noundef %name59, ptr noundef %range) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool62.not = icmp eq i32 %call.i, 0
  br i1 %tobool62.not, label %land.lhs.true63, label %do.end58.if.end76_crit_edge

do.end58.if.end76_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

land.lhs.true63:                                  ; preds = %do.end58
  %tobool64.not = icmp eq ptr %cpu_mask.0, null
  br i1 %tobool64.not, label %land.lhs.true63.if.end76_crit_edge, label %if.then65

land.lhs.true63.if.end76_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then65:                                        ; preds = %land.lhs.true63
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %irq.0, ptr noundef nonnull %cpu_mask.0, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool67.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool67.not, label %if.then65.if.end76_crit_edge, label %do.end71

if.then65.if.end76_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

do.end71:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %kdev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kdev1, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.44) #10
  br label %cleanup

if.end76:                                         ; preds = %if.then65.if.end76_crit_edge, %land.lhs.true63.if.end76_crit_edge, %do.end58.if.end76_crit_edge, %if.end34.if.end76_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end58.if.end76_crit_edge ], [ 0, %if.then65.if.end76_crit_edge ], [ 0, %land.lhs.true63.if.end76_crit_edge ], [ 0, %if.end34.if.end76_crit_edge ]
  %brmerge = select i1 %tobool36.not, i1 true, i1 %tobool35.not
  br i1 %brmerge, label %if.end76.cleanup_crit_edge, label %do.body81

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body81:                                        ; preds = %if.end76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @knav_range_setup_acc_irq.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@knav_range_setup_acc_irq, %if.then93)) #7
          to label %do.end101 [label %if.then93], !srcloc !135

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %name95 = getelementptr %struct.knav_acc_channel, ptr %5, i32 %acc.0.idx, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @knav_range_setup_acc_irq.__UNIQUE_ID_ddebug244, ptr noundef %19, ptr noundef nonnull @.str.46, ptr noundef %name95, ptr noundef %name95) #7
  br label %do.end101

do.end101:                                        ; preds = %if.then93, %do.body81
  %call.i.i167 = tail call i32 @__irq_apply_affinity_hint(i32 noundef %irq.0, ptr noundef null, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i167)
  %tobool103.not = icmp eq i32 %call.i.i167, 0
  br i1 %tobool103.not, label %do.end101.if.end110_crit_edge, label %do.end107

do.end101.if.end110_crit_edge:                    ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

do.end107:                                        ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %kdev1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kdev1, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.44) #10
  br label %if.end110

if.end110:                                        ; preds = %do.end107, %do.end101.if.end110_crit_edge
  %call111 = tail call ptr @free_irq(i32 noundef %irq.0, ptr noundef %range) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %if.end76.cleanup_crit_edge, %do.end71, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end71 ], [ 0, %do.end.cleanup_crit_edge ], [ %call.i.i167, %if.end110 ], [ %ret.0, %if.end76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @knav_acc_int_handler(i32 noundef %irq, ptr nocapture noundef readonly %_instdata) #0 align 64 {
entry:
  %list_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %list_dma) #7
  %kdev1 = getelementptr inbounds %struct.knav_range_info, ptr %_instdata, i32 0, i32 1
  %0 = ptrtoint ptr %kdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kdev1, align 4
  %pdsp3 = getelementptr inbounds %struct.knav_range_info, ptr %_instdata, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %pdsp3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdsp3, align 4
  %acc4 = getelementptr inbounds %struct.knav_range_info, ptr %_instdata, i32 0, i32 9
  %4 = ptrtoint ptr %acc4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acc4, align 4
  %base_id = getelementptr inbounds %struct.knav_device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_id, align 4
  %queue_base = getelementptr inbounds %struct.knav_range_info, ptr %_instdata, i32 0, i32 2
  %8 = ptrtoint ptr %queue_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_base, align 4
  %add = add i32 %9, %7
  %flags = getelementptr inbounds %struct.knav_range_info, ptr %_instdata, i32 0, i32 5
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %for.cond.preheader, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

for.cond.preheader:                               ; preds = %entry
  %num_irqs = getelementptr inbounds %struct.knav_range_info, ptr %_instdata, i32 0, i32 10
  %12 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp5276.not = icmp eq i32 %13, 0
  br i1 %cmp5276.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %queue.0277 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.knav_range_info, ptr %_instdata, i32 0, i32 11, i32 %queue.0277
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %irq)
  %cmp7 = icmp eq i32 %15, %irq
  br i1 %cmp7, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %queue.0277, 1
  %exitcond.not = icmp eq i32 %inc, %13
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %queue.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %queue.0277, %for.body.for.end_crit_edge ], [ %13, %for.inc.for.end_crit_edge ]
  %queue_base_inst = getelementptr inbounds %struct.knav_range_info, ptr %_instdata, i32 0, i32 4
  %16 = ptrtoint ptr %queue_base_inst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %queue_base_inst, align 4
  %inst_shift = getelementptr inbounds %struct.knav_device, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %inst_shift to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inst_shift, align 4
  %shl = shl i32 %queue.0.lcssa, %19
  %add.ptr = getelementptr i8, ptr %17, i32 %shl
  %add.ptr9 = getelementptr %struct.knav_acc_channel, ptr %5, i32 %queue.0.lcssa
  br label %if.end10

if.end10:                                         ; preds = %for.end, %entry.if.end10_crit_edge
  %queue.1 = phi i32 [ %queue.0.lcssa, %for.end ], [ 0, %entry.if.end10_crit_edge ]
  %kq.0 = phi ptr [ %add.ptr, %for.end ], [ null, %entry.if.end10_crit_edge ]
  %acc.0 = phi ptr [ %add.ptr9, %for.end ], [ %5, %entry.if.end10_crit_edge ]
  %20 = ptrtoint ptr %acc.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %acc.0, align 4
  %list_index = getelementptr inbounds %struct.knav_acc_channel, ptr %acc.0, i32 0, i32 1
  %22 = ptrtoint ptr %list_index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %list_index, align 4
  %arrayidx13 = getelementptr %struct.knav_acc_channel, ptr %acc.0, i32 0, i32 4, i32 %23
  %24 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx13, align 4
  %26 = ptrtoint ptr %list_dma to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %list_dma, align 4
  %arrayidx16 = getelementptr %struct.knav_acc_channel, ptr %acc.0, i32 0, i32 3, i32 %23
  %27 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx16, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @knav_acc_int_handler.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@knav_acc_int_handler, %if.then19)) #7
          to label %do.end [label %if.then19], !srcloc !135

if.then19:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %31 = ptrtoint ptr %list_index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %list_index, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @knav_acc_int_handler.__UNIQUE_ID_ddebug237, ptr noundef %30, ptr noundef nonnull @.str.50, i32 noundef %21, i32 noundef %32, ptr noundef %28, ptr noundef nonnull %list_dma) #7
  br label %do.end

do.end:                                           ; preds = %if.then19, %if.end10
  %retrigger_count = getelementptr inbounds %struct.knav_acc_channel, ptr %acc.0, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %retrigger_count, i32 noundef 4) #7
  %33 = ptrtoint ptr %retrigger_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %retrigger_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool23.not = icmp eq i32 %34, 0
  br i1 %tobool23.not, label %if.end31, label %if.then24

if.then24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i262 = call zeroext i1 @__kasan_check_write(ptr noundef %retrigger_count, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %retrigger_count, i32 1, i32 3, i32 1) #7
  %35 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %retrigger_count, ptr %retrigger_count, i32 1, ptr elementtype(i32) %retrigger_count) #7, !srcloc !139
  call fastcc void @__knav_acc_notify(ptr noundef %_instdata, ptr noundef %acc.0)
  %intd = getelementptr inbounds %struct.knav_pdsp_info, ptr %3, i32 0, i32 3
  %36 = ptrtoint ptr %intd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %intd, align 4
  %mul = shl i32 %21, 2
  %add26 = add i32 %mul, 768
  %add.ptr27 = getelementptr i8, ptr %37, i32 %add26
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 16777216) #7, !srcloc !137
  %add28 = add i32 %21, 2
  %38 = call i32 @llvm.bswap.i32(i32 %add28)
  %39 = ptrtoint ptr %intd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %intd, align 4
  %add.ptr30 = getelementptr i8, ptr %40, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %38) #7, !srcloc !137
  br label %cleanup

if.end31:                                         ; preds = %do.end
  %intd32 = getelementptr inbounds %struct.knav_pdsp_info, ptr %3, i32 0, i32 3
  %41 = ptrtoint ptr %intd32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %intd32, align 4
  %mul33 = shl i32 %21, 2
  %add34 = add i32 %mul33, 768
  %add.ptr35 = getelementptr i8, ptr %42, i32 %add34
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #7, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool38.not = icmp eq i32 %43, 0
  br i1 %tobool38.not, label %do.end56, label %if.end31.if.end62_crit_edge, !prof !133

if.end31.if.end62_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

do.end56:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 122, i32 noundef 9, ptr noundef null) #7
  br label %if.end62

if.end62:                                         ; preds = %do.end56, %if.end31.if.end62_crit_edge
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %46 = ptrtoint ptr %list_dma to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %list_dma, align 4
  %list_size = getelementptr inbounds %struct.knav_range_info, ptr %_instdata, i32 0, i32 8, i32 6
  %48 = ptrtoint ptr %list_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %list_size, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef 2) #7
  %50 = ptrtoint ptr %list_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %list_size, align 4
  %div261279 = lshr i32 %51, 2
  %add.ptr73280 = getelementptr i32, ptr %28, i32 %div261279
  %cmp74281 = icmp ult ptr %28, %add.ptr73280
  br i1 %cmp74281, label %do.body76.lr.ph, label %if.end62.for.end154_crit_edge

if.end62.for.end154_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end154

do.body76.lr.ph:                                  ; preds = %if.end62
  %num_queues = getelementptr inbounds %struct.knav_range_info, ptr %_instdata, i32 0, i32 3
  %queue_base_inst116 = getelementptr inbounds %struct.knav_range_info, ptr %_instdata, i32 0, i32 4
  %inst_shift117 = getelementptr inbounds %struct.knav_device, ptr %1, i32 0, i32 4
  br label %do.body76

do.body76:                                        ; preds = %for.inc152.do.body76_crit_edge, %do.body76.lr.ph
  %kq.1286 = phi ptr [ %kq.0, %do.body76.lr.ph ], [ %kq.2, %for.inc152.do.body76_crit_edge ]
  %list.0283 = phi ptr [ %28, %do.body76.lr.ph ], [ %add.ptr153, %for.inc152.do.body76_crit_edge ]
  %queue.2282 = phi i32 [ %queue.1, %do.body76.lr.ph ], [ %queue.3, %for.inc152.do.body76_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @knav_acc_int_handler.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@knav_acc_int_handler, %if.then88)) #7
          to label %do.end95 [label %if.then88], !srcloc !135

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %54 = ptrtoint ptr %list_index to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %list_index, align 4
  %56 = ptrtoint ptr %list.0283 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %list.0283, align 4
  %arrayidx92 = getelementptr i32, ptr %list.0283, i32 1
  %58 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx92, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @knav_acc_int_handler.__UNIQUE_ID_ddebug239, ptr noundef %53, ptr noundef nonnull @.str.51, i32 noundef %55, ptr noundef %list.0283, i32 noundef %57, i32 noundef %59) #7
  br label %do.end95

do.end95:                                         ; preds = %if.then88, %do.body76
  %arrayidx96 = getelementptr i32, ptr %list.0283, i32 1
  %60 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool97.not = icmp eq i32 %61, 0
  br i1 %tobool97.not, label %do.end95.for.end154_crit_edge, label %if.end99

do.end95.for.end154_crit_edge:                    ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end154

if.end99:                                         ; preds = %do.end95
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 4
  %and101 = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end99.if.end120_crit_edge, label %if.then103

if.end99.if.end120_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.then103:                                       ; preds = %if.end99
  %64 = ptrtoint ptr %list.0283 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %list.0283, align 4
  %shr = lshr i32 %65, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %add)
  %cmp105 = icmp slt i32 %shr, %add
  br i1 %cmp105, label %if.then103.do.end111_crit_edge, label %lor.lhs.false

if.then103.do.end111_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end111

lor.lhs.false:                                    ; preds = %if.then103
  %66 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_queues, align 4
  %add106 = add i32 %67, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %add106)
  %cmp107.not = icmp ult i32 %shr, %add106
  br i1 %cmp107.not, label %if.end115, label %lor.lhs.false.do.end111_crit_edge

lor.lhs.false.do.end111_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end111

do.end111:                                        ; preds = %lor.lhs.false.do.end111_crit_edge, %if.then103.do.end111_crit_edge
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %70 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_queues, align 4
  %add114 = add i32 %71, %add
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.52, i32 noundef %shr, i32 noundef %add, i32 noundef %add114) #10
  br label %for.end154

if.end115:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %shr, %add
  %72 = ptrtoint ptr %queue_base_inst116 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %queue_base_inst116, align 4
  %74 = ptrtoint ptr %inst_shift117 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %inst_shift117, align 4
  %shl118 = shl i32 %sub, %75
  %add.ptr119 = getelementptr i8, ptr %73, i32 %shl118
  br label %if.end120

if.end120:                                        ; preds = %if.end115, %if.end99.if.end120_crit_edge
  %queue.3 = phi i32 [ %sub, %if.end115 ], [ %queue.2282, %if.end99.if.end120_crit_edge ]
  %kq.2 = phi ptr [ %add.ptr119, %if.end115 ], [ %kq.1286, %if.end99.if.end120_crit_edge ]
  %desc_count = getelementptr inbounds %struct.knav_queue_inst, ptr %kq.2, i32 0, i32 3
  %call.i.i266 = call zeroext i1 @__kasan_check_write(ptr noundef %desc_count, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !140
  call void @llvm.prefetch.p0(ptr %desc_count, i32 1, i32 3, i32 1) #7
  %76 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %desc_count, ptr %desc_count, i32 1, ptr elementtype(i32) %desc_count) #7, !srcloc !141
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %76, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %asmresult.i.i.i.i)
  %cmp122 = icmp sgt i32 %asmresult.i.i.i.i, 1023
  br i1 %cmp122, label %if.then123, label %if.end130

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i267 = call zeroext i1 @__kasan_check_write(ptr noundef %desc_count, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %desc_count, i32 1, i32 3, i32 1) #7
  %77 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %desc_count, ptr %desc_count, i32 1, ptr elementtype(i32) %desc_count) #7, !srcloc !139
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %add129 = add i32 %queue.3, %add
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.54, i32 noundef %add129) #10
  br label %for.inc152

if.end130:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  %desc_tail = getelementptr inbounds %struct.knav_queue_inst, ptr %kq.2, i32 0, i32 2
  %call.i.i268 = call zeroext i1 @__kasan_check_write(ptr noundef %desc_tail, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !140
  call void @llvm.prefetch.p0(ptr %desc_tail, i32 1, i32 3, i32 1) #7
  %80 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %desc_tail, ptr %desc_tail, i32 1, ptr elementtype(i32) %desc_tail) #7, !srcloc !141
  %asmresult.i.i.i.i269 = extractvalue { i32, i32 } %80, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !142
  %and132 = and i32 %asmresult.i.i.i.i269, 1023
  %81 = ptrtoint ptr %kq.2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %kq.2, align 4
  %arrayidx133 = getelementptr i32, ptr %82, i32 %and132
  %83 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %61, ptr %arrayidx133, align 4
  %notify_needed = getelementptr inbounds %struct.knav_queue_inst, ptr %kq.2, i32 0, i32 10
  %84 = ptrtoint ptr %notify_needed to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %notify_needed, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @knav_acc_int_handler.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@knav_acc_int_handler, %if.then146)) #7
          to label %for.inc152 [label %if.then146], !srcloc !135

if.then146:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %add148 = add i32 %queue.3, %add
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @knav_acc_int_handler.__UNIQUE_ID_ddebug241, ptr noundef %86, ptr noundef nonnull @.str.56, i32 noundef %61, i32 noundef %and132, i32 noundef %add148) #7
  br label %for.inc152

for.inc152:                                       ; preds = %if.then146, %if.end130, %if.then123
  %add.ptr153 = getelementptr i32, ptr %list.0283, i32 2
  %87 = ptrtoint ptr %list_size to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %list_size, align 4
  %div261 = lshr i32 %88, 2
  %add.ptr73 = getelementptr i32, ptr %28, i32 %div261
  %cmp74 = icmp ult ptr %add.ptr153, %add.ptr73
  br i1 %cmp74, label %for.inc152.do.body76_crit_edge, label %for.inc152.for.end154_crit_edge

for.inc152.for.end154_crit_edge:                  ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end154

for.inc152.do.body76_crit_edge:                   ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body76

for.end154:                                       ; preds = %for.inc152.for.end154_crit_edge, %do.end111, %do.end95.for.end154_crit_edge, %if.end62.for.end154_crit_edge
  call fastcc void @__knav_acc_notify(ptr noundef %_instdata, ptr noundef %acc.0)
  %89 = ptrtoint ptr %list_size to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %list_size, align 4
  %91 = call ptr @memset(ptr %28, i32 0, i32 %90)
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %94 = ptrtoint ptr %list_dma to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %list_dma, align 4
  %96 = load i32, ptr %list_size, align 4
  call void @dma_sync_single_for_device(ptr noundef %93, i32 noundef %95, i32 noundef %96, i32 noundef 1) #7
  %97 = ptrtoint ptr %list_index to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %list_index, align 4
  %xor = xor i32 %98, 1
  store i32 %xor, ptr %list_index, align 4
  %99 = ptrtoint ptr %intd32 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %intd32, align 4
  %add.ptr162 = getelementptr i8, ptr %100, i32 %add34
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162, i32 16777216) #7, !srcloc !137
  %add163 = add i32 %21, 2
  %101 = call i32 @llvm.bswap.i32(i32 %add163)
  %102 = ptrtoint ptr %intd32 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %intd32, align 4
  %add.ptr165 = getelementptr i8, ptr %103, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr165, i32 %101) #7, !srcloc !137
  br label %cleanup

cleanup:                                          ; preds = %for.end154, %if.then24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %list_dma) #7
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__knav_acc_notify(ptr nocapture noundef readonly %range, ptr nocapture noundef readonly %acc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %kdev1 = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 1
  %0 = ptrtoint ptr %kdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kdev1, align 4
  %base_id = getelementptr inbounds %struct.knav_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_id, align 4
  %queue_base = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 2
  %4 = ptrtoint ptr %queue_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue_base, align 4
  %add = add i32 %5, %3
  %flags = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 5
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %num_queues = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 3
  %8 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp58.not = icmp eq i32 %9, 0
  br i1 %cmp58.not, label %for.cond.preheader.if.end33_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end33_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %queue_base_inst = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 4
  %inst_shift = getelementptr inbounds %struct.knav_device, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %queue.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %queue_base_inst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue_base_inst, align 4
  %12 = ptrtoint ptr %inst_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inst_shift, align 4
  %shl = shl i32 %queue.059, %13
  %add.ptr = getelementptr i8, ptr %11, i32 %shl
  %notify_needed = getelementptr inbounds %struct.knav_queue_inst, ptr %add.ptr, i32 0, i32 10
  %14 = ptrtoint ptr %notify_needed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %notify_needed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not = icmp eq i32 %15, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then3:                                         ; preds = %for.body
  %16 = ptrtoint ptr %notify_needed to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %notify_needed, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__knav_acc_notify.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__knav_acc_notify, %if.then8)) #7
          to label %do.end [label %if.then8], !srcloc !135

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add9 = add i32 %queue.059, %add
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__knav_acc_notify.__UNIQUE_ID_ddebug234, ptr noundef %18, ptr noundef nonnull @.str.58, i32 noundef %add9) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.then3
  tail call void @knav_queue_notify(ptr noundef %add.ptr) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %queue.059, 1
  %19 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_queues, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end33_crit_edge

for.inc.if.end33_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.else:                                          ; preds = %entry
  %21 = ptrtoint ptr %acc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %acc, align 4
  %start_channel = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %start_channel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %start_channel, align 4
  %sub = sub i32 %22, %24
  %queue_base_inst11 = getelementptr inbounds %struct.knav_range_info, ptr %range, i32 0, i32 4
  %25 = ptrtoint ptr %queue_base_inst11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %queue_base_inst11, align 4
  %inst_shift12 = getelementptr inbounds %struct.knav_device, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %inst_shift12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %inst_shift12, align 4
  %shl13 = shl i32 %sub, %28
  %add.ptr14 = getelementptr i8, ptr %26, i32 %shl13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__knav_acc_notify.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__knav_acc_notify, %if.then27)) #7
          to label %do.end32 [label %if.then27], !srcloc !135

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %add29 = add i32 %sub, %add
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__knav_acc_notify.__UNIQUE_ID_ddebug235, ptr noundef %30, ptr noundef nonnull @.str.58, i32 noundef %add29) #7
  br label %do.end32

do.end32:                                         ; preds = %if.then27, %if.else
  tail call void @knav_queue_notify(ptr noundef %add.ptr14) #7
  br label %if.end33

if.end33:                                         ; preds = %do.end32, %for.inc.if.end33_crit_edge, %for.cond.preheader.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @knav_queue_notify(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !87, !88, !90, !91, !93, !94, !96, !97, !98, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !116, !118, !120, !121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 487, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 498, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @knav_init_acc_range._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @knav_init_acc_range._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 504, i32 3}
!12 = !{ptr @knav_init_acc_range._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @knav_init_acc_range._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 511, i32 3}
!16 = !{ptr @knav_init_acc_range._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @knav_init_acc_range._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 517, i32 3}
!20 = !{ptr @knav_init_acc_range._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @knav_init_acc_range._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 524, i32 28}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 528, i32 4}
!26 = !{ptr @knav_init_acc_range._entry.16, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @knav_init_acc_range._entry_ptr.18, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.20, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 534, i32 4}
!30 = !{ptr @knav_init_acc_range._entry.19, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @knav_init_acc_range._entry_ptr.21, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 571, i32 43}
!34 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 577, i32 3}
!36 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @knav_init_acc_range.__UNIQUE_ID_ddebug248, !35, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!38 = !{ptr @__ksymtab_knav_init_acc_range, !39, !"__ksymtab_knav_init_acc_range", i1 false, i1 false}
!39 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 584, i32 1}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!42 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @knav_acc_range_ops, !45, !"knav_acc_range_ops", i1 false, i1 false}
!45 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 453, i32 30}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 348, i32 2}
!48 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @knav_acc_stop.__UNIQUE_ID_ddebug246, !47, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 282, i32 2}
!52 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @knav_acc_write.__UNIQUE_ID_ddebug245, !51, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 260, i32 22}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 261, i32 24}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 262, i32 31}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 263, i32 31}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 264, i32 32}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 265, i32 30}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 266, i32 30}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 267, i32 28}
!70 = !{ptr @knav_acc_result_str.result_str, !71, !"result_str", i1 false, i1 false}
!71 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 259, i32 28}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 366, i32 2}
!74 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @knav_acc_start.__UNIQUE_ID_ddebug247, !73, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 221, i32 2}
!78 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @knav_range_setup_acc_irq.__UNIQUE_ID_ddebug242, !77, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 229, i32 3}
!82 = !{ptr @knav_range_setup_acc_irq.__UNIQUE_ID_ddebug243, !81, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 237, i32 5}
!85 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @knav_range_setup_acc_irq._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @knav_range_setup_acc_irq._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 245, i32 3}
!90 = !{ptr @knav_range_setup_acc_irq.__UNIQUE_ID_ddebug244, !89, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!91 = !{ptr @knav_range_setup_acc_irq._entry.47, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 249, i32 4}
!93 = !{ptr @knav_range_setup_acc_irq._entry_ptr.48, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 108, i32 2}
!96 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @knav_acc_int_handler.__UNIQUE_ID_ddebug237, !95, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 133, i32 4}
!100 = !{ptr @knav_acc_int_handler.__UNIQUE_ID_ddebug239, !99, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 151, i32 5}
!103 = !{ptr @knav_acc_int_handler._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @knav_acc_int_handler._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 164, i32 4}
!107 = !{ptr @knav_acc_int_handler._entry.53, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @knav_acc_int_handler._entry_ptr.55, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 173, i32 3}
!111 = !{ptr @knav_acc_int_handler.__UNIQUE_ID_ddebug241, !110, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 38, i32 5}
!114 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @__knav_acc_notify.__UNIQUE_ID_ddebug234, !113, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!116 = !{ptr @__knav_acc_notify.__UNIQUE_ID_ddebug235, !117, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!117 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 46, i32 3}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/soc/ti/knav_qmss_acc.c", i32 71, i32 2}
!120 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @knav_acc_set_notify.__UNIQUE_ID_ddebug236, !119, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"auto-init"}
!132 = !{i8 0, i8 2}
!133 = !{!"branch_weights", i32 1, i32 2000}
!134 = !{!"branch_weights", i32 2000, i32 1}
!135 = !{i64 2148335420, i64 2148335425, i64 2148335438, i64 2148335482, i64 2148335516, i64 2148335537}
!136 = !{i64 2148522027, i64 2148522053, i64 2148522082, i64 2148522116, i64 2148522147, i64 2148522170}
!137 = !{i64 6230485}
!138 = !{i64 6230903}
!139 = !{i64 2148524492, i64 2148524518, i64 2148524547, i64 2148524581, i64 2148524612, i64 2148524635}
!140 = !{i64 2148607438}
!141 = !{i64 2148522747, i64 2148522779, i64 2148522808, i64 2148522842, i64 2148522873, i64 2148522896}
!142 = !{i64 2148607667}
