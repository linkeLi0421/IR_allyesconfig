; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_dma.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+serial8250_rx_dma_flush\22, \22a\22\09"
module asm "\09.weak\09__crc_serial8250_rx_dma_flush\09\09\09\09"
module asm "\09.long\09__crc_serial8250_rx_dma_flush\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_rx_dma_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_rx_dma_flush\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_rx_dma_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+serial8250_request_dma\22, \22a\22\09"
module asm "\09.weak\09__crc_serial8250_request_dma\09\09\09\09"
module asm "\09.long\09__crc_serial8250_request_dma\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_request_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_request_dma\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_request_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+serial8250_release_dma\22, \22a\22\09"
module asm "\09.weak\09__crc_serial8250_release_dma\09\09\09\09"
module asm "\09.long\09__crc_serial8250_release_dma\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_release_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_release_dma\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_release_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.uart_8250_dma = type { ptr, ptr, ptr, ptr, ptr, %struct.dma_slave_config, %struct.dma_slave_config, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.2, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.2 = type { ptr }
%struct.llist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.71, %struct.anon.72, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.71 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.72 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.page = type { i32, %union.anon.3, %union.anon.67, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }

@__kstrtab_serial8250_rx_dma_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_rx_dma_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_rx_dma_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_rx_dma_flush to i32), ptr @__kstrtab_serial8250_rx_dma_flush, ptr @__kstrtabns_serial8250_rx_dma_flush }, section "___ksymtab_gpl+serial8250_rx_dma_flush", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@serial8250_request_dma._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@serial8250_request_dma.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"8250_base\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"serial8250_request_dma\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/tty/serial/8250/8250_dma.c\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"got both dma channels\0A\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_serial8250_request_dma = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_request_dma = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_request_dma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_request_dma to i32), ptr @__kstrtab_serial8250_request_dma, ptr @__kstrtabns_serial8250_request_dma }, section "___ksymtab_gpl+serial8250_request_dma", align 4
@serial8250_release_dma._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@serial8250_release_dma.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.7, ptr @.str.5, ptr @.str.8, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"serial8250_release_dma\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dma channels released\0A\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_serial8250_release_dma = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_release_dma = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_release_dma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_release_dma to i32), ptr @__kstrtab_serial8250_release_dma, ptr @__kstrtabns_serial8250_release_dma }, section "___ksymtab_gpl+serial8250_release_dma", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 172, i32 27 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 191, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 231, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.43 = private constant [38 x i8] c"../drivers/tty/serial/8250/8250_dma.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 264, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 326, i32 6 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 1169, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_serial8250_release_dma, ptr @__ksymtab_serial8250_request_dma, ptr @__ksymtab_serial8250_rx_dma_flush, ptr @.str, ptr @.str.1, ptr @serial8250_request_dma._rs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @serial8250_release_dma._rs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial8250_request_dma._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial8250_release_dma._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @serial8250_tx_dma(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 19
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %state = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 30
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %tx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %tx_running to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

if.end.uart_tx_stopped.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %if.end
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %stopped.i, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not.i = icmp eq i8 %9, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.if.then5_crit_edge

land.lhs.true.i.if.then5_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %if.end.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 35
  %10 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not.i.not = icmp eq i32 %11, 0
  br i1 %tobool4.not.i.not, label %lor.lhs.false, label %uart_tx_stopped.exit.if.then5_crit_edge

uart_tx_stopped.exit.if.then5_crit_edge:          ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

lor.lhs.false:                                    ; preds = %uart_tx_stopped.exit
  %head = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp = icmp eq i32 %13, %15
  br i1 %cmp, label %lor.lhs.false.if.then5_crit_edge, label %if.end6

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %uart_tx_stopped.exit.if.then5_crit_edge, %land.lhs.true.i.if.then5_crit_edge
  tail call void @serial8250_rpm_put_tx(ptr noundef %p) #5
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %sub = sub i32 4096, %15
  %add = add i32 %sub, %13
  %and = and i32 %add, 4095
  %16 = tail call i32 @llvm.smin.i32(i32 %and, i32 %sub)
  %tx_size = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 17
  %17 = ptrtoint ptr %tx_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tx_size, align 4
  %txchan = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %txchan, align 4
  %tx_addr = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %tx_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_addr, align 4
  %22 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tail, align 4
  %add11 = add i32 %23, %21
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #5
  %24 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %25 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %26 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #5
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add11, ptr %24, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %16, ptr %25, align 4
  %tobool.not.i59 = icmp eq ptr %19, null
  br i1 %tobool.not.i59, label %if.end6.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i60

if.end6.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i60:                                ; preds = %if.end6
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %19, align 4
  %tobool1.not.i = icmp eq ptr %30, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i60.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i60.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i60
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %30, i32 0, i32 39
  %31 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i61 = icmp eq ptr %32, null
  br i1 %tobool4.not.i61, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i60.dmaengine_prep_slave_single.exit.thread_crit_edge, %if.end6.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #5
  br label %if.then15

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i = call ptr %32(ptr noundef nonnull %19, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #5
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %dmaengine_prep_slave_single.exit.if.then15_crit_edge, label %if.end16

dmaengine_prep_slave_single.exit.if.then15_crit_edge: ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

if.then15:                                        ; preds = %dmaengine_prep_slave_single.exit.if.then15_crit_edge, %dmaengine_prep_slave_single.exit.thread
  %tx_err27 = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 19
  %33 = ptrtoint ptr %tx_err27 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %tx_err27, align 1
  br label %cleanup

if.end16:                                         ; preds = %dmaengine_prep_slave_single.exit
  %34 = ptrtoint ptr %tx_running to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %tx_running, align 4
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %35 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @__dma_tx_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %36 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %p, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %37 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_submit.i, align 4
  %call.i63 = call i32 %38(ptr noundef nonnull %call.i) #5
  %tx_cookie = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 14
  %39 = ptrtoint ptr %tx_cookie to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call.i63, ptr %tx_cookie, align 4
  %40 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %txchan, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %43, i32 0, i32 15
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %46 = ptrtoint ptr %tx_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_addr, align 4
  call void @dma_sync_single_for_device(ptr noundef %45, i32 noundef %47, i32 noundef 4096, i32 noundef 1) #5
  %48 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %txchan, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %51, i32 0, i32 50
  %52 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device_issue_pending.i, align 4
  call void %53(ptr noundef %49) #5
  %tx_err = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 19
  %54 = ptrtoint ptr %tx_err to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tx_err, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool22.not = icmp eq i8 %55, 0
  br i1 %tobool22.not, label %if.end16.cleanup_crit_edge, label %if.then23

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then23:                                        ; preds = %if.end16
  %56 = ptrtoint ptr %tx_err to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %tx_err, align 1
  %ier.i = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 9
  %57 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ier.i, align 2
  %59 = and i8 %58, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i64 = icmp eq i8 %59, 0
  br i1 %tobool.not.i64, label %if.then23.cleanup_crit_edge, label %if.end.i65

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i65:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %and3.i = and i8 %58, -3
  %60 = ptrtoint ptr %ier.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %and3.i, ptr %ier.i, align 2
  %conv6.i = zext i8 %and3.i to i32
  %serial_out.i.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 4
  %61 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %serial_out.i.i, align 4
  call void %62(ptr noundef %p, i32 noundef 1, i32 noundef %conv6.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i65, %if.then23.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then15, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then5 ], [ -16, %if.then15 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %if.then23.cleanup_crit_edge ], [ 0, %if.end.i65 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_rpm_put_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__dma_tx_complete(ptr noundef %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %param, i32 0, i32 19
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %state = getelementptr inbounds %struct.uart_port, ptr %param, i32 0, i32 30
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %txchan = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %txchan, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %tx_addr = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %tx_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_addr, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %9, i32 noundef %11, i32 noundef 4096, i32 noundef 1) #5
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %param) #5
  %tx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %tx_running to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %tx_running, align 4
  %tx_size = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 17
  %13 = ptrtoint ptr %tx_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_size, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tail, align 4
  %add = add i32 %16, %14
  %and = and i32 %add, 4095
  store i32 %and, ptr %tail, align 4
  %17 = load i32, ptr %tx_size, align 4
  %tx = getelementptr inbounds %struct.uart_port, ptr %param, i32 0, i32 31, i32 5
  %18 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx, align 4
  %add11 = add i32 %19, %17
  store i32 %add11, ptr %tx, align 4
  %head = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %head, align 4
  %22 = load i32, ptr %tail, align 4
  %sub = sub i32 %21, %22
  %and13 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %cmp14 = icmp eq i32 %and13, 0
  br i1 %cmp14, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @uart_write_wakeup(ptr noundef %param) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call17 = tail call i32 @serial8250_tx_dma(ptr noundef %param)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.end.if.end20_crit_edge, label %if.then18

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then18:                                        ; preds = %if.end
  %ier.i = getelementptr inbounds %struct.uart_8250_port, ptr %param, i32 0, i32 9
  %23 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ier.i, align 2
  %25 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then18.if.end20_crit_edge

if.then18.if.end20_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end.i:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i8 %24, 2
  %26 = ptrtoint ptr %ier.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %or.i, ptr %ier.i, align 2
  %conv5.i = zext i8 %or.i to i32
  %serial_out.i.i = getelementptr inbounds %struct.uart_port, ptr %param, i32 0, i32 4
  %27 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %28(ptr noundef %param, i32 noundef 1, i32 noundef %conv5.i) #5
  br label %if.end20

if.end20:                                         ; preds = %if.end.i, %if.then18.if.end20_crit_edge, %if.end.if.end20_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %param, i32 noundef %call5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @serial8250_rx_dma(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 19
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %rx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %rx_running to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_running, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %rxchan = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rxchan, align 4
  %rx_addr = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %rx_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_addr, align 4
  %rx_size = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_size, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #5
  %10 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %11 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %12 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #5
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %7, ptr %10, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %11, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %tobool1.not.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 39
  %17 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %18, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %if.end.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #5
  br label %cleanup

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i = call ptr %18(ptr noundef nonnull %5, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #5
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %dmaengine_prep_slave_single.exit.cleanup_crit_edge, label %if.end4

dmaengine_prep_slave_single.exit.cleanup_crit_edge: ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %rx_running to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %rx_running, align 2
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @__dma_rx_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %21 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %p, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_submit.i, align 4
  %call.i19 = call i32 %23(ptr noundef nonnull %call.i) #5
  %rx_cookie = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 13
  %24 = ptrtoint ptr %rx_cookie to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call.i19, ptr %rx_cookie, align 4
  %25 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rxchan, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 50
  %29 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device_issue_pending.i, align 4
  call void %30(ptr noundef %26) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %dmaengine_prep_slave_single.exit.cleanup_crit_edge, %dmaengine_prep_slave_single.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ -16, %dmaengine_prep_slave_single.exit.cleanup_crit_edge ], [ -16, %dmaengine_prep_slave_single.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__dma_rx_complete(ptr nocapture noundef %param) #0 align 64 {
entry:
  %state3 = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %param, i32 0, i32 19
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %state = getelementptr inbounds %struct.uart_port, ptr %param, i32 0, i32 30
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state3) #5
  %4 = getelementptr inbounds %struct.dma_tx_state, ptr %state3, i32 0, i32 2
  %rx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 20
  %5 = call ptr @memset(ptr %state3, i32 255, i32 16)
  %6 = ptrtoint ptr %rx_running to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %rx_running, align 2
  %rxchan = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rxchan, align 4
  %rx_cookie = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %rx_cookie to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_cookie, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 49
  %13 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %14(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %state3) #5
  %rx_size = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_size, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %4, align 4
  %sub = sub i32 %16, %18
  %rx_buf = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_buf, align 4
  %call.i14 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %3, ptr noundef %20, i8 noundef zeroext 0, i32 noundef %sub) #5
  %rx = getelementptr inbounds %struct.uart_port, ptr %param, i32 0, i32 31, i32 4
  %21 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx, align 4
  %add = add i32 %22, %sub
  store i32 %add, ptr %rx, align 4
  call void @tty_flip_buffer_push(ptr noundef %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @serial8250_rx_dma_flush(ptr nocapture noundef %p) #0 align 64 {
entry:
  %state3.i = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 19
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %rx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %rx_running to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_running, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %rxchan = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rxchan, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %device_pause.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 45
  %8 = ptrtoint ptr %device_pause.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_pause.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.dmaengine_pause.exit_crit_edge, label %if.then.i

if.then.dmaengine_pause.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_pause.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %9(ptr noundef %5) #5
  br label %dmaengine_pause.exit

dmaengine_pause.exit:                             ; preds = %if.then.i, %if.then.dmaengine_pause.exit_crit_edge
  %10 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma1, align 4
  %state.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 30
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state3.i) #5
  %14 = getelementptr inbounds %struct.dma_tx_state, ptr %state3.i, i32 0, i32 2
  %rx_running.i = getelementptr inbounds %struct.uart_8250_dma, ptr %11, i32 0, i32 20
  %15 = call ptr @memset(ptr %state3.i, i32 255, i32 16)
  %16 = ptrtoint ptr %rx_running.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %rx_running.i, align 2
  %rxchan.i = getelementptr inbounds %struct.uart_8250_dma, ptr %11, i32 0, i32 7
  %17 = ptrtoint ptr %rxchan.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rxchan.i, align 4
  %rx_cookie.i = getelementptr inbounds %struct.uart_8250_dma, ptr %11, i32 0, i32 13
  %19 = ptrtoint ptr %rx_cookie.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_cookie.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %device_tx_status.i.i = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 49
  %23 = ptrtoint ptr %device_tx_status.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device_tx_status.i.i, align 4
  %call.i.i = call i32 %24(ptr noundef %18, i32 noundef %20, ptr noundef nonnull %state3.i) #5
  %rx_size.i = getelementptr inbounds %struct.uart_8250_dma, ptr %11, i32 0, i32 16
  %25 = ptrtoint ptr %rx_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_size.i, align 4
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %14, align 4
  %sub.i = sub i32 %26, %28
  %rx_buf.i = getelementptr inbounds %struct.uart_8250_dma, ptr %11, i32 0, i32 15
  %29 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_buf.i, align 4
  %call.i14.i = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %13, ptr noundef %30, i8 noundef zeroext 0, i32 noundef %sub.i) #5
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 31, i32 4
  %31 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx.i, align 4
  %add.i = add i32 %32, %sub.i
  store i32 %add.i, ptr %rx.i, align 4
  call void @tty_flip_buffer_push(ptr noundef %13) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state3.i) #5
  %33 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rxchan, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 47
  %37 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i7 = icmp eq ptr %38, null
  br i1 %tobool.not.i7, label %dmaengine_pause.exit.if.end_crit_edge, label %if.then.i9

dmaengine_pause.exit.if.end_crit_edge:            ; preds = %dmaengine_pause.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i9:                                       ; preds = %dmaengine_pause.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i8 = call i32 %38(ptr noundef %34) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i9, %dmaengine_pause.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @serial8250_request_dma(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %mask.i158 = alloca %struct.dma_cap_mask_t, align 4
  %mask.i = alloca %struct.dma_cap_mask_t, align 4
  %mask = alloca %struct.dma_cap_mask_t, align 4
  %caps = alloca %struct.dma_slave_caps, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 19
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %rx_dma_addr2 = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %rx_dma_addr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_dma_addr2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 43
  %4 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mapbase, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.false ], [ %3, %entry.cond.end_crit_edge ]
  %tx_dma_addr4 = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %tx_dma_addr4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_dma_addr4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %cond.false8, label %cond.end.cond.end11_crit_edge

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end11

cond.false8:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %mapbase10 = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 43
  %8 = ptrtoint ptr %mapbase10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mapbase10, align 4
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false8, %cond.end.cond.end11_crit_edge
  %cond12 = phi i32 [ %9, %cond.false8 ], [ %7, %cond.end.cond.end11_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %caps) #5
  %10 = call ptr @memset(ptr %caps, i32 255, i32 36)
  %rxconf = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %rxconf to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %rxconf, align 4
  %src_addr_width = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %src_addr_width, align 4
  %src_addr = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond, ptr %src_addr, align 4
  %txconf = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %txconf to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %txconf, align 4
  %dst_addr_width = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 6, i32 4
  %15 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %dst_addr_width, align 4
  %dst_addr = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond12, ptr %dst_addr, align 4
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #5
  %fn = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fn, align 4
  %rx_param = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %rx_param to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_param, align 4
  %dev = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 45
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %24 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %.fca.0.load = load i32, ptr %mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i)
  %25 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.fca.0.load, ptr %mask.i, align 4
  %call.i.i = call ptr @dma_request_chan(ptr noundef %23, ptr noundef nonnull @.str) #5
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %tobool.not9.i = icmp eq ptr %call.i.i, null
  %tobool.not.i = or i1 %cmp.i.i.i, %tobool.not9.i
  br i1 %tobool.not.i, label %if.end.i, label %dma_request_slave_channel_compat.exit.thread180

dma_request_slave_channel_compat.exit.thread180:  ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i)
  %rxchan182 = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %rxchan182 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i, ptr %rxchan182, align 4
  br label %if.end

if.end.i:                                         ; preds = %cond.end11
  %tobool1.not.i = icmp eq ptr %19, null
  %tobool2.not.i = icmp eq ptr %21, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool2.not.i
  br i1 %or.cond.i, label %dma_request_slave_channel_compat.exit.thread, label %dma_request_slave_channel_compat.exit

dma_request_slave_channel_compat.exit.thread:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i)
  %rxchan178 = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %rxchan178 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rxchan178, align 4
  br label %cleanup

dma_request_slave_channel_compat.exit:            ; preds = %if.end.i
  %call5.i = call ptr @__dma_request_channel(ptr noundef nonnull %mask.i, ptr noundef nonnull %19, ptr noundef nonnull %21, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i)
  %rxchan = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %rxchan to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call5.i, ptr %rxchan, align 4
  %tobool21.not = icmp eq ptr %call5.i, null
  br i1 %tobool21.not, label %dma_request_slave_channel_compat.exit.cleanup_crit_edge, label %dma_request_slave_channel_compat.exit.if.end_crit_edge

dma_request_slave_channel_compat.exit.if.end_crit_edge: ; preds = %dma_request_slave_channel_compat.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

dma_request_slave_channel_compat.exit.cleanup_crit_edge: ; preds = %dma_request_slave_channel_compat.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %dma_request_slave_channel_compat.exit.if.end_crit_edge, %dma_request_slave_channel_compat.exit.thread180
  %rxchan185 = phi ptr [ %rxchan182, %dma_request_slave_channel_compat.exit.thread180 ], [ %rxchan, %dma_request_slave_channel_compat.exit.if.end_crit_edge ]
  %retval.0.i156184 = phi ptr [ %call.i.i, %dma_request_slave_channel_compat.exit.thread180 ], [ %call5.i, %dma_request_slave_channel_compat.exit.if.end_crit_edge ]
  %call23 = call i32 @dma_get_slave_caps(ptr noundef nonnull %retval.0.i156184, ptr noundef nonnull %caps) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end.release_rx_crit_edge

if.end.release_rx_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_rx

if.end26:                                         ; preds = %if.end
  %cmd_pause = getelementptr inbounds %struct.dma_slave_caps, ptr %caps, i32 0, i32 6
  %29 = ptrtoint ptr %cmd_pause to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cmd_pause, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool27.not = icmp eq i8 %30, 0
  br i1 %tobool27.not, label %if.end26.release_rx_crit_edge, label %lor.lhs.false

if.end26.release_rx_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_rx

lor.lhs.false:                                    ; preds = %if.end26
  %cmd_terminate = getelementptr inbounds %struct.dma_slave_caps, ptr %caps, i32 0, i32 8
  %31 = ptrtoint ptr %cmd_terminate to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cmd_terminate, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool28.not = icmp eq i8 %32, 0
  br i1 %tobool28.not, label %lor.lhs.false.release_rx_crit_edge, label %lor.lhs.false29

lor.lhs.false.release_rx_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_rx

lor.lhs.false29:                                  ; preds = %lor.lhs.false
  %residue_granularity = getelementptr inbounds %struct.dma_slave_caps, ptr %caps, i32 0, i32 9
  %33 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %residue_granularity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp = icmp eq i32 %34, 0
  br i1 %cmp, label %lor.lhs.false29.release_rx_crit_edge, label %if.end31

lor.lhs.false29.release_rx_crit_edge:             ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_rx

if.end31:                                         ; preds = %lor.lhs.false29
  %35 = ptrtoint ptr %rxchan185 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rxchan185, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i157 = icmp eq ptr %40, null
  br i1 %tobool.not.i157, label %if.end31.dmaengine_slave_config.exit_crit_edge, label %if.then.i

if.end31.dmaengine_slave_config.exit_crit_edge:   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_slave_config.exit

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 %40(ptr noundef %36, ptr noundef %rxconf) #5
  br label %dmaengine_slave_config.exit

dmaengine_slave_config.exit:                      ; preds = %if.then.i, %if.end31.dmaengine_slave_config.exit_crit_edge
  %41 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fn, align 4
  %tx_param = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %tx_param to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_param, align 4
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %47 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %47)
  %.fca.0.load107 = load i32, ptr %mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i158)
  %48 = ptrtoint ptr %mask.i158 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.fca.0.load107, ptr %mask.i158, align 4
  %call.i.i159 = call ptr @dma_request_chan(ptr noundef %46, ptr noundef nonnull @.str.1) #5
  %cmp.i.i.i160 = icmp ugt ptr %call.i.i159, inttoptr (i32 -4096 to ptr)
  %tobool.not9.i161 = icmp eq ptr %call.i.i159, null
  %tobool.not.i162 = or i1 %cmp.i.i.i160, %tobool.not9.i161
  br i1 %tobool.not.i162, label %if.end.i166, label %dma_request_slave_channel_compat.exit170.thread189

dma_request_slave_channel_compat.exit170.thread189: ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i158)
  %txchan191 = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 8
  %49 = ptrtoint ptr %txchan191 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i.i159, ptr %txchan191, align 4
  br label %if.end43

if.end.i166:                                      ; preds = %dmaengine_slave_config.exit
  %tobool1.not.i163 = icmp eq ptr %42, null
  %tobool2.not.i164 = icmp eq ptr %44, null
  %or.cond.i165 = or i1 %tobool1.not.i163, %tobool2.not.i164
  br i1 %or.cond.i165, label %dma_request_slave_channel_compat.exit170.thread, label %dma_request_slave_channel_compat.exit170

dma_request_slave_channel_compat.exit170.thread:  ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i158)
  %txchan187 = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 8
  %50 = ptrtoint ptr %txchan187 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %txchan187, align 4
  br label %release_rx

dma_request_slave_channel_compat.exit170:         ; preds = %if.end.i166
  %call5.i167 = call ptr @__dma_request_channel(ptr noundef nonnull %mask.i158, ptr noundef nonnull %42, ptr noundef nonnull %44, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i158)
  %txchan = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 8
  %51 = ptrtoint ptr %txchan to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call5.i167, ptr %txchan, align 4
  %tobool41.not = icmp eq ptr %call5.i167, null
  br i1 %tobool41.not, label %dma_request_slave_channel_compat.exit170.release_rx_crit_edge, label %dma_request_slave_channel_compat.exit170.if.end43_crit_edge

dma_request_slave_channel_compat.exit170.if.end43_crit_edge: ; preds = %dma_request_slave_channel_compat.exit170
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

dma_request_slave_channel_compat.exit170.release_rx_crit_edge: ; preds = %dma_request_slave_channel_compat.exit170
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_rx

if.end43:                                         ; preds = %dma_request_slave_channel_compat.exit170.if.end43_crit_edge, %dma_request_slave_channel_compat.exit170.thread189
  %txchan194 = phi ptr [ %txchan191, %dma_request_slave_channel_compat.exit170.thread189 ], [ %txchan, %dma_request_slave_channel_compat.exit170.if.end43_crit_edge ]
  %retval.0.i169193 = phi ptr [ %call.i.i159, %dma_request_slave_channel_compat.exit170.thread189 ], [ %call5.i167, %dma_request_slave_channel_compat.exit170.if.end43_crit_edge ]
  %call45 = call i32 @dma_get_slave_caps(ptr noundef nonnull %retval.0.i169193, ptr noundef nonnull %caps) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.err_crit_edge

if.end43.err_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end48:                                         ; preds = %if.end43
  %52 = ptrtoint ptr %cmd_terminate to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %cmd_terminate, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool50.not = icmp eq i8 %53, 0
  br i1 %tobool50.not, label %if.end48.err_crit_edge, label %if.end52

if.end48.err_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end52:                                         ; preds = %if.end48
  %54 = ptrtoint ptr %txchan194 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %txchan194, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %device_config.i171 = getelementptr inbounds %struct.dma_device, ptr %57, i32 0, i32 44
  %58 = ptrtoint ptr %device_config.i171 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device_config.i171, align 4
  %tobool.not.i172 = icmp eq ptr %59, null
  br i1 %tobool.not.i172, label %if.end52.dmaengine_slave_config.exit175_crit_edge, label %if.then.i174

if.end52.dmaengine_slave_config.exit175_crit_edge: ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_slave_config.exit175

if.then.i174:                                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %call.i173 = call i32 %59(ptr noundef %55, ptr noundef %txconf) #5
  br label %dmaengine_slave_config.exit175

dmaengine_slave_config.exit175:                   ; preds = %if.then.i174, %if.end52.dmaengine_slave_config.exit175_crit_edge
  %rx_size = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 16
  %60 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool56.not = icmp eq i32 %61, 0
  br i1 %tobool56.not, label %if.then57, label %dmaengine_slave_config.exit175.if.end59_crit_edge

dmaengine_slave_config.exit175.if.end59_crit_edge: ; preds = %dmaengine_slave_config.exit175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then57:                                        ; preds = %dmaengine_slave_config.exit175
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %rx_size to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 4096, ptr %rx_size, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %dmaengine_slave_config.exit175.if.end59_crit_edge
  %63 = ptrtoint ptr %rxchan185 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rxchan185, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %dev61 = getelementptr inbounds %struct.dma_device, ptr %66, i32 0, i32 15
  %67 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev61, align 4
  %69 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_size, align 4
  %rx_addr = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 11
  %call.i176 = call ptr @dma_alloc_attrs(ptr noundef %68, i32 noundef %70, ptr noundef %rx_addr, i32 noundef 3264, i32 noundef 0) #5
  %rx_buf = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 15
  %71 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i176, ptr %rx_buf, align 4
  %tobool65.not = icmp eq ptr %call.i176, null
  br i1 %tobool65.not, label %if.end59.err_crit_edge, label %if.end67

if.end59.err_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end67:                                         ; preds = %if.end59
  %72 = ptrtoint ptr %txchan194 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %txchan194, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %dev70 = getelementptr inbounds %struct.dma_device, ptr %75, i32 0, i32 15
  %76 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev70, align 4
  %state = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 30
  %78 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %state, align 4
  %xmit = getelementptr inbounds %struct.uart_state, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %xmit, align 4
  %call72 = call fastcc i32 @dma_map_single_attrs(ptr noundef %77, ptr noundef %81)
  %tx_addr = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 12
  %82 = ptrtoint ptr %tx_addr to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call72, ptr %tx_addr, align 4
  %83 = ptrtoint ptr %txchan194 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %txchan194, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %dev75 = getelementptr inbounds %struct.dma_device, ptr %86, i32 0, i32 15
  %87 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev75, align 4
  call void @debug_dma_mapping_error(ptr noundef %88, i32 noundef %call72) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call72)
  %cmp.i.not = icmp eq i32 %call72, -1
  br i1 %cmp.i.not, label %if.then79, label %do.body

if.then79:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %89 = ptrtoint ptr %rxchan185 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rxchan185, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %dev82 = getelementptr inbounds %struct.dma_device, ptr %92, i32 0, i32 15
  %93 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev82, align 4
  %95 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_size, align 4
  %97 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rx_buf, align 4
  %99 = ptrtoint ptr %rx_addr to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rx_addr, align 4
  call void @dma_free_attrs(ptr noundef %94, i32 noundef %96, ptr noundef %98, i32 noundef %100, i32 noundef 0) #5
  br label %err

do.body:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial8250_request_dma.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial8250_request_dma, %land.lhs.true)) #5
          to label %cleanup [label %land.lhs.true], !srcloc !39

land.lhs.true:                                    ; preds = %do.body
  %call91 = call i32 @___ratelimit(ptr noundef nonnull @serial8250_request_dma._rs, ptr noundef nonnull @.str.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %land.lhs.true.cleanup_crit_edge, label %if.then93

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then93:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %101 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial8250_request_dma.descriptor, ptr noundef %102, ptr noundef nonnull @.str.6) #5
  br label %cleanup

err:                                              ; preds = %if.then79, %if.end59.err_crit_edge, %if.end48.err_crit_edge, %if.end43.err_crit_edge
  %ret.0 = phi i32 [ %call45, %if.end43.err_crit_edge ], [ -12, %if.then79 ], [ -22, %if.end48.err_crit_edge ], [ -12, %if.end59.err_crit_edge ]
  %103 = ptrtoint ptr %txchan194 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %txchan194, align 4
  call void @dma_release_channel(ptr noundef %104) #5
  br label %release_rx

release_rx:                                       ; preds = %err, %dma_request_slave_channel_compat.exit170.release_rx_crit_edge, %dma_request_slave_channel_compat.exit170.thread, %lor.lhs.false29.release_rx_crit_edge, %lor.lhs.false.release_rx_crit_edge, %if.end26.release_rx_crit_edge, %if.end.release_rx_crit_edge
  %ret.1 = phi i32 [ %call23, %if.end.release_rx_crit_edge ], [ %ret.0, %err ], [ -22, %lor.lhs.false29.release_rx_crit_edge ], [ -22, %lor.lhs.false.release_rx_crit_edge ], [ -22, %if.end26.release_rx_crit_edge ], [ -19, %dma_request_slave_channel_compat.exit170.release_rx_crit_edge ], [ -19, %dma_request_slave_channel_compat.exit170.thread ]
  %105 = ptrtoint ptr %rxchan185 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rxchan185, align 4
  call void @dma_release_channel(ptr noundef %106) #5
  br label %cleanup

cleanup:                                          ; preds = %release_rx, %if.then93, %land.lhs.true.cleanup_crit_edge, %do.body, %dma_request_slave_channel_compat.exit.cleanup_crit_edge, %dma_request_slave_channel_compat.exit.thread
  %retval.0 = phi i32 [ %ret.1, %release_rx ], [ -19, %dma_request_slave_channel_compat.exit.cleanup_crit_edge ], [ 0, %if.then93 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -19, %dma_request_slave_channel_compat.exit.thread ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %caps) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_slave_caps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_map_single_attrs(ptr noundef %dev, ptr noundef %ptr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %ptr) #5
  br i1 %call, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b1 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1, label %land.rhs.return_crit_edge, label %if.then, !prof !40

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16 = tail call ptr @dev_driver_string(ptr noundef %dev) #5
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %call16, ptr noundef %retval.0.i) #5
  br label %return

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %ptr, i32 noundef 4096) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %5 = ptrtoint ptr %ptr to i32
  %sub = add i32 %5, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %4, i32 %shr
  %and = and i32 %5, 4095
  %call41 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr, i32 noundef %and, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #5
  br label %return

return:                                           ; preds = %if.end39, %dev_name.exit, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ %call41, %if.end39 ], [ -1, %dev_name.exit ], [ -1, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @serial8250_release_dma(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 19
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %rxchan = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rxchan, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 47
  %6 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

if.end.dmaengine_terminate_sync.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %if.end
  %call.i.i = tail call i32 %7(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 1169) #5
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 48
  %10 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %11, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %11(ptr noundef %3) #5
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %if.end.dmaengine_terminate_sync.exit_crit_edge
  %12 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rxchan, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %rx_size = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_size, align 4
  %rx_buf = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 15
  %20 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_buf, align 4
  %rx_addr = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %rx_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %17, i32 noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef 0) #5
  %24 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rxchan, align 4
  tail call void @dma_release_channel(ptr noundef %25) #5
  %26 = ptrtoint ptr %rxchan to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rxchan, align 4
  %txchan = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %txchan, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %device_terminate_all.i.i34 = getelementptr inbounds %struct.dma_device, ptr %30, i32 0, i32 47
  %31 = ptrtoint ptr %device_terminate_all.i.i34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device_terminate_all.i.i34, align 4
  %tobool.not.i.i35 = icmp eq ptr %32, null
  br i1 %tobool.not.i.i35, label %dmaengine_terminate_sync.exit.dmaengine_terminate_sync.exit43_crit_edge, label %dmaengine_terminate_async.exit.i38

dmaengine_terminate_sync.exit.dmaengine_terminate_sync.exit43_crit_edge: ; preds = %dmaengine_terminate_sync.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_terminate_sync.exit43

dmaengine_terminate_async.exit.i38:               ; preds = %dmaengine_terminate_sync.exit
  %call.i.i36 = tail call i32 %32(ptr noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36)
  %tobool.not.i37 = icmp eq i32 %call.i.i36, 0
  br i1 %tobool.not.i37, label %if.end.i41, label %dmaengine_terminate_async.exit.i38.dmaengine_terminate_sync.exit43_crit_edge

dmaengine_terminate_async.exit.i38.dmaengine_terminate_sync.exit43_crit_edge: ; preds = %dmaengine_terminate_async.exit.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_terminate_sync.exit43

if.end.i41:                                       ; preds = %dmaengine_terminate_async.exit.i38
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 1169) #5
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %28, align 4
  %device_synchronize.i.i39 = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 48
  %35 = ptrtoint ptr %device_synchronize.i.i39 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device_synchronize.i.i39, align 4
  %tobool.not.i1.i40 = icmp eq ptr %36, null
  br i1 %tobool.not.i1.i40, label %if.end.i41.dmaengine_terminate_sync.exit43_crit_edge, label %if.then.i2.i42

if.end.i41.dmaengine_terminate_sync.exit43_crit_edge: ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_terminate_sync.exit43

if.then.i2.i42:                                   ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %36(ptr noundef %28) #5
  br label %dmaengine_terminate_sync.exit43

dmaengine_terminate_sync.exit43:                  ; preds = %if.then.i2.i42, %if.end.i41.dmaengine_terminate_sync.exit43_crit_edge, %dmaengine_terminate_async.exit.i38.dmaengine_terminate_sync.exit43_crit_edge, %dmaengine_terminate_sync.exit.dmaengine_terminate_sync.exit43_crit_edge
  %37 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %txchan, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %dev8 = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 15
  %41 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev8, align 4
  %tx_addr = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 12
  %43 = ptrtoint ptr %tx_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_addr, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %42, i32 noundef %44, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #5
  %45 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %txchan, align 4
  tail call void @dma_release_channel(ptr noundef %46) #5
  %47 = ptrtoint ptr %txchan to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %txchan, align 4
  %tx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 18
  %48 = ptrtoint ptr %tx_running to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %tx_running, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial8250_release_dma.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial8250_release_dma, %land.lhs.true)) #5
          to label %cleanup [label %land.lhs.true], !srcloc !39

land.lhs.true:                                    ; preds = %dmaengine_terminate_sync.exit43
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @serial8250_release_dma._rs, ptr noundef nonnull @.str.7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.cleanup_crit_edge, label %if.then17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %dev18 = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 45
  %49 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial8250_release_dma.descriptor, ptr noundef %50, ptr noundef nonnull @.str.8) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %land.lhs.true.cleanup_crit_edge, %dmaengine_terminate_sync.exit43, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !20, !21, !23, !25, !26, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__ksymtab_serial8250_rx_dma_flush, !1, !"__ksymtab_serial8250_rx_dma_flush", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_dma.c", i32 144, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/8250/8250_dma.c", i32 172, i32 27}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/8250/8250_dma.c", i32 191, i32 27}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/8250/8250_dma.c", i32 231, i32 2}
!8 = !{ptr @serial8250_request_dma._rs, !7, !"_rs", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @serial8250_request_dma.descriptor, !7, !"descriptor", i1 false, i1 false}
!14 = !{ptr @__ksymtab_serial8250_request_dma, !15, !"__ksymtab_serial8250_request_dma", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/8250/8250_dma.c", i32 240, i32 1}
!16 = !{ptr @serial8250_release_dma._rs, !17, !"_rs", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/8250/8250_dma.c", i32 264, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @serial8250_release_dma.descriptor, !17, !"descriptor", i1 false, i1 false}
!21 = !{ptr @__ksymtab_serial8250_release_dma, !22, !"__ksymtab_serial8250_release_dma", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/8250/8250_dma.c", i32 266, i32 1}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i8 0, i8 2}
!39 = !{i64 2148499595, i64 2148499600, i64 2148499613, i64 2148499657, i64 2148499691, i64 2148499712}
!40 = !{!"branch_weights", i32 2000, i32 1}
