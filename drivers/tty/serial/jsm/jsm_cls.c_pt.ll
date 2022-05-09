; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/jsm/jsm_cls.c_pt.bc'
source_filename = "../drivers/tty/serial/jsm/jsm_cls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.board_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon.76 = type { i32, i32 }
%struct.jsm_board = type { i32, i32, i8, ptr, i32, %struct.spinlock, i32, i32, i64, i64, ptr, i64, i64, i32, [8 x ptr], i32, ptr, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.70, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.70 = type { ptr }
%struct.jsm_channel = type { %struct.uart_port, ptr, %struct.spinlock, %struct.wait_queue_head, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i8, ptr, ptr, i8, ptr, i16, i16, ptr, i16, i16, i64, i64, i8, i8, i8, i32, i64, i64, i64, i64, i64, i64 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.cls_uart_struct = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.2, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.2 = type { ptr }
%struct.llist_head = type { ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.68, %struct.anon.69, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.68 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.69 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }

@jsm_cls_ops = dso_local global { %struct.board_ops, [32 x i8] } { %struct.board_ops { ptr @cls_intr, ptr @cls_uart_init, ptr @cls_uart_off, ptr @cls_param, ptr @cls_assert_modem_signals, ptr @cls_flush_uart_write, ptr @cls_flush_uart_read, ptr @cls_disable_receiver, ptr @cls_enable_receiver, ptr @cls_send_break, ptr @cls_clear_break, ptr @cls_send_start_character, ptr @cls_send_stop_character, ptr @cls_copy_data_from_queue_to_uart, ptr @cls_get_uart_bytes_left, ptr @cls_send_immediate_char }, [32 x i8] zeroinitializer }, align 32
@jsm_debug = external dso_local local_unnamed_addr global i32, align 4
@cls_intr.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"jsm\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cls_intr\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/tty/serial/jsm/jsm_cls.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:%d uart_poll: %x\0A\00", [43 x i8] zeroinitializer }, align 32
@cls_intr.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Kernel interrupted to me, but no pending interrupts...\0A\00", [40 x i8] zeroinitializer }, align 32
@cls_parse_modem.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cls_parse_modem\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"neo_parse_modem: port: %d msignals: %x\0A\00", [56 x i8] zeroinitializer }, align 32
@cls_parse_modem.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Port: %d DTR: %d RTS: %d CTS: %d DSR: %d RI: %d CD: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@baud_rates = internal constant { [19 x %struct.anon.76], [40 x i8] } { [19 x %struct.anon.76] [%struct.anon.76 { i32 921600, i32 4103 }, %struct.anon.76 { i32 460800, i32 4100 }, %struct.anon.76 { i32 230400, i32 4099 }, %struct.anon.76 { i32 115200, i32 4098 }, %struct.anon.76 { i32 57600, i32 4097 }, %struct.anon.76 { i32 38400, i32 15 }, %struct.anon.76 { i32 19200, i32 14 }, %struct.anon.76 { i32 9600, i32 13 }, %struct.anon.76 { i32 4800, i32 12 }, %struct.anon.76 { i32 2400, i32 11 }, %struct.anon.76 { i32 1200, i32 9 }, %struct.anon.76 { i32 600, i32 8 }, %struct.anon.76 { i32 300, i32 7 }, %struct.anon.76 { i32 200, i32 6 }, %struct.anon.76 { i32 150, i32 5 }, %struct.anon.76 { i32 134, i32 4 }, %struct.anon.76 { i32 110, i32 3 }, %struct.anon.76 { i32 75, i32 2 }, %struct.anon.76 { i32 50, i32 1 }], [40 x i8] zeroinitializer }, align 32
@cls_flush_uart_write.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cls_flush_uart_write\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Still flushing TX UART... i: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@cls_clear_break.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cls_clear_break\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"clear break Finishing UART_LCR_SBC! finished: %lx\0A\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [21 x i64] [i64 19, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 13, i64 14, i64 15, i64 4097, i64 4098, i64 4099, i64 4100, i64 4103]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"jsm_cls_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 953, i32 18 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 835, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 839, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 503, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 539, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"baud_rates\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 30, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 620, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [36 x i8] c"../drivers/tty/serial/jsm/jsm_cls.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 318, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @jsm_cls_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @baud_rates, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_cls_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baud_rates to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cls_intr(i32 noundef %irq, ptr noundef %voidbrd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_intr_lock = getelementptr inbounds %struct.jsm_board, ptr %voidbrd, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bd_intr_lock) #3
  %re_map_membase = getelementptr inbounds %struct.jsm_board, ptr %voidbrd, i32 0, i32 10
  %0 = ptrtoint ptr %re_map_membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %re_map_membase, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %3 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end21_crit_edge, label %do.body9

entry.do.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end21

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cls_intr.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cls_intr, %if.then15)) #3
          to label %do.end21 [label %if.then15], !srcloc !39

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #5
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %voidbrd, i32 0, i32 3
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %conv16 = zext i8 %2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cls_intr.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 836, i32 noundef %conv16) #3
  br label %do.end21

do.end21:                                         ; preds = %if.then15, %do.body9, %entry.do.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool22.not = icmp eq i8 %2, 0
  br i1 %tobool22.not, label %do.body24, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end21
  %nasync = getelementptr inbounds %struct.jsm_board, ptr %voidbrd, i32 0, i32 6
  %6 = ptrtoint ptr %nasync to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nasync, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5176.not = icmp eq i32 %7, 0
  br i1 %cmp5176.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.if.end.i_crit_edge

for.cond.preheader.if.end.i_crit_edge:            ; preds = %for.cond.preheader
  br label %if.end.i

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body24:                                        ; preds = %do.end21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %8 = load i32, ptr @jsm_debug, align 4
  %and25 = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.cleanup_crit_edge, label %do.body28

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body28:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cls_intr.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cls_intr, %if.then40)) #3
          to label %cleanup [label %if.then40], !srcloc !39

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #5
  %pci_dev41 = getelementptr inbounds %struct.jsm_board, ptr %voidbrd, i32 0, i32 3
  %9 = ptrtoint ptr %pci_dev41 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev41, align 4
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cls_intr.__UNIQUE_ID_ddebug243, ptr noundef %dev42, ptr noundef nonnull @.str.4) #3
  br label %cleanup

if.end.i:                                         ; preds = %cls_parse_isr.exit.if.end.i_crit_edge, %for.cond.preheader.if.end.i_crit_edge
  %i.077 = phi i32 [ %inc, %cls_parse_isr.exit.if.end.i_crit_edge ], [ 0, %for.cond.preheader.if.end.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.jsm_board, ptr %voidbrd, i32 0, i32 14, i32 %i.077
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i.cls_parse_isr.exit_crit_edge, label %while.cond.preheader.i

if.end.i.cls_parse_isr.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cls_parse_isr.exit

while.cond.preheader.i:                           ; preds = %if.end.i
  %ch_cls_uart.i = getelementptr inbounds %struct.jsm_channel, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %ch_cls_uart.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ch_cls_uart.i, align 8
  %isr_fcr52.i = getelementptr inbounds %struct.cls_uart_struct, ptr %14, i32 0, i32 2
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr_fcr52.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  %conv53.i = zext i8 %15 to i32
  %and54.i = and i32 %conv53.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool4.not55.i = icmp eq i32 %and54.i, 0
  br i1 %tobool4.not55.i, label %if.end6.lr.ph.i, label %while.cond.preheader.i.cls_parse_isr.exit_crit_edge

while.cond.preheader.i.cls_parse_isr.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cls_parse_isr.exit

if.end6.lr.ph.i:                                  ; preds = %while.cond.preheader.i
  %ch_lock.i.i = getelementptr inbounds %struct.jsm_channel, ptr %12, i32 0, i32 2
  %ch_r_head.i.i = getelementptr inbounds %struct.jsm_channel, ptr %12, i32 0, i32 20
  %ch_r_tail.i.i = getelementptr inbounds %struct.jsm_channel, ptr %12, i32 0, i32 21
  %ch_cached_lsr.i.i = getelementptr inbounds %struct.jsm_channel, ptr %12, i32 0, i32 18
  %ch_c_iflag.i.i = getelementptr inbounds %struct.jsm_channel, ptr %12, i32 0, i32 8
  %ch_err_overrun.i.i = getelementptr inbounds %struct.jsm_channel, ptr %12, i32 0, i32 34
  %ch_equeue.i.i = getelementptr inbounds %struct.jsm_channel, ptr %12, i32 0, i32 22
  %ch_rqueue.i.i = getelementptr inbounds %struct.jsm_channel, ptr %12, i32 0, i32 19
  %ch_err_parity.i.i = getelementptr inbounds %struct.jsm_channel, ptr %12, i32 0, i32 31
  %ch_err_break.i.i = getelementptr inbounds %struct.jsm_channel, ptr %12, i32 0, i32 33
  %ch_err_frame.i.i = getelementptr inbounds %struct.jsm_channel, ptr %12, i32 0, i32 32
  %ch_rxcount.i.i = getelementptr inbounds %struct.jsm_channel, ptr %12, i32 0, i32 25
  %ch_e_head.i.i = getelementptr inbounds %struct.jsm_channel, ptr %12, i32 0, i32 23
  %ch_flags.i = getelementptr inbounds %struct.jsm_channel, ptr %12, i32 0, i32 6
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end25.i.if.end6.i_crit_edge, %if.end6.lr.ph.i
  %conv56.i = phi i32 [ %conv53.i, %if.end6.lr.ph.i ], [ %conv.i, %if.end25.i.if.end6.i_crit_edge ]
  %and8.i = and i32 %conv56.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end6.i.if.end11.i_crit_edge, label %do.body1.i.i

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i

do.body1.i.i:                                     ; preds = %if.end6.i
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ch_lock.i.i) #3
  %16 = ptrtoint ptr %ch_r_head.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ch_r_head.i.i, align 4
  %18 = and i16 %17, 8191
  %19 = ptrtoint ptr %ch_r_tail.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ch_r_tail.i.i, align 2
  %21 = ptrtoint ptr %ch_cached_lsr.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %ch_cached_lsr.i.i, align 4
  %22 = ptrtoint ptr %ch_c_iflag.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ch_c_iflag.i.i, align 8
  %and18.i.i = shl i32 %23, 4
  %24 = and i32 %and18.i.i, 16
  %25 = ptrtoint ptr %ch_cls_uart.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ch_cls_uart.i, align 8
  %lsr154165.i.i = getelementptr inbounds %struct.cls_uart_struct, ptr %26, i32 0, i32 5
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lsr154165.i.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  %conv27155166.i.i = zext i8 %27 to i32
  %and28156167.i.i = and i32 %conv27155166.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28156167.i.i)
  %tobool29.not157168.i.i = icmp eq i32 %and28156167.i.i, 0
  br i1 %tobool29.not157168.i.i, label %do.body1.i.i.cls_copy_data_from_uart_to_queue.exit.i_crit_edge, label %if.end31.lr.ph.lr.ph.i.i

do.body1.i.i.cls_copy_data_from_uart_to_queue.exit.i_crit_edge: ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cls_copy_data_from_uart_to_queue.exit.i

if.end31.lr.ph.lr.ph.i.i:                         ; preds = %do.body1.i.i
  %28 = and i16 %20, 8191
  %conv11.i.i = zext i16 %28 to i32
  %conv12.i.i = zext i16 %18 to i32
  %29 = xor i32 %conv12.i.i, -1
  %sub13.i.i = add nsw i32 %conv11.i.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub13.i.i)
  %cmp14.i.i = icmp slt i32 %sub13.i.i, 0
  %add.i.i = add nsw i32 %sub13.i.i, 8192
  %spec.select.i.i = select i1 %cmp14.i.i, i32 %add.i.i, i32 %sub13.i.i
  br label %if.end31.lr.ph.i.i

if.end31.lr.ph.i.i:                               ; preds = %if.end92.i.i.if.end31.lr.ph.i.i_crit_edge, %if.end31.lr.ph.lr.ph.i.i
  %conv27155172.i.i = phi i32 [ %conv27155166.i.i, %if.end31.lr.ph.lr.ph.i.i ], [ %conv27155.i.i, %if.end92.i.i.if.end31.lr.ph.i.i_crit_edge ]
  %30 = phi i8 [ %27, %if.end31.lr.ph.lr.ph.i.i ], [ %71, %if.end92.i.i.if.end31.lr.ph.i.i_crit_edge ]
  %qleft.1.ph171.i.i = phi i32 [ %spec.select.i.i, %if.end31.lr.ph.lr.ph.i.i ], [ %dec.i.i, %if.end92.i.i.if.end31.lr.ph.i.i_crit_edge ]
  %head.0.ph170.i.i = phi i16 [ %18, %if.end31.lr.ph.lr.ph.i.i ], [ %and95.i.i, %if.end92.i.i.if.end31.lr.ph.i.i_crit_edge ]
  %tail.0.ph169.i.i = phi i16 [ %28, %if.end31.lr.ph.lr.ph.i.i ], [ %tail.1.lcssa.i.i, %if.end92.i.i.if.end31.lr.ph.i.i_crit_edge ]
  %and34.i50.i = and i32 %conv27155172.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i50.i)
  %tobool35.not.i51.i = icmp eq i32 %and34.i50.i, 0
  br i1 %tobool35.not.i51.i, label %if.end31.lr.ph.i.i.while.cond44.preheader.i.i_crit_edge, label %if.end31.lr.ph.i.i.if.then36.i.i_crit_edge

if.end31.lr.ph.i.i.if.then36.i.i_crit_edge:       ; preds = %if.end31.lr.ph.i.i
  br label %if.then36.i.i

if.end31.lr.ph.i.i.while.cond44.preheader.i.i_crit_edge: ; preds = %if.end31.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond44.preheader.i.i

if.end31.i.i:                                     ; preds = %if.then36.i.i
  %and34.i.i = and i32 %24, %conv27.i.i
  %tobool35.not.i.i = icmp eq i32 %and34.i.i, 0
  br i1 %tobool35.not.i.i, label %if.end31.i.i.while.cond44.preheader.i.i_crit_edge, label %if.end31.i.i.if.then36.i.i_crit_edge

if.end31.i.i.if.then36.i.i_crit_edge:             ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then36.i.i

if.end31.i.i.while.cond44.preheader.i.i_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond44.preheader.i.i

while.cond44.preheader.i.i:                       ; preds = %if.end31.i.i.while.cond44.preheader.i.i_crit_edge, %if.end31.lr.ph.i.i.while.cond44.preheader.i.i_crit_edge
  %.lcssa.i = phi i8 [ %30, %if.end31.lr.ph.i.i.while.cond44.preheader.i.i_crit_edge ], [ %40, %if.end31.i.i.while.cond44.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %qleft.1.ph171.i.i)
  %cmp45160.i.i = icmp slt i32 %qleft.1.ph171.i.i, 1
  br i1 %cmp45160.i.i, label %while.body47.lr.ph.i.i, label %while.cond44.preheader.i.i.while.end.i.i_crit_edge

while.cond44.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond44.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i.i

while.body47.lr.ph.i.i:                           ; preds = %while.cond44.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %ch_err_overrun.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %ch_err_overrun.promoted.i.i = load i64, ptr %ch_err_overrun.i.i, align 8
  %32 = add i16 %tail.0.ph169.i.i, 1
  %33 = and i16 %32, 8191
  %inc.i.i = add i64 %ch_err_overrun.promoted.i.i, 1
  %34 = ptrtoint ptr %ch_r_tail.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %ch_r_tail.i.i, align 2
  store i64 %inc.i.i, ptr %ch_err_overrun.i.i, align 8
  br label %while.end.i.i

if.then36.i.i:                                    ; preds = %if.end31.i.i.if.then36.i.i_crit_edge, %if.end31.lr.ph.i.i.if.then36.i.i_crit_edge
  %35 = ptrtoint ptr %ch_cls_uart.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ch_cls_uart.i, align 8
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %36) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  %38 = ptrtoint ptr %ch_cls_uart.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ch_cls_uart.i, align 8
  %lsr.i.i = getelementptr inbounds %struct.cls_uart_struct, ptr %39, i32 0, i32 5
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lsr.i.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  %conv27.i.i = zext i8 %40 to i32
  %and28.i.i = and i32 %conv27.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i.i)
  %tobool29.not.i.i = icmp eq i32 %and28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.then36.i.i.cls_copy_data_from_uart_to_queue.exit.i_crit_edge, label %if.end31.i.i

if.then36.i.i.cls_copy_data_from_uart_to_queue.exit.i_crit_edge: ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cls_copy_data_from_uart_to_queue.exit.i

while.end.i.i:                                    ; preds = %while.body47.lr.ph.i.i, %while.cond44.preheader.i.i.while.end.i.i_crit_edge
  %tail.1.lcssa.i.i = phi i16 [ %33, %while.body47.lr.ph.i.i ], [ %tail.0.ph169.i.i, %while.cond44.preheader.i.i.while.end.i.i_crit_edge ]
  %qleft.2.lcssa.i.i = phi i32 [ 1, %while.body47.lr.ph.i.i ], [ %qleft.1.ph171.i.i, %while.cond44.preheader.i.i.while.end.i.i_crit_edge ]
  %and55.i.i = and i8 %.lcssa.i, 28
  %41 = ptrtoint ptr %ch_equeue.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ch_equeue.i.i, align 8
  %idxprom.i.i = zext i16 %head.0.ph170.i.i to i32
  %arrayidx.i.i = getelementptr i8, ptr %42, i32 %idxprom.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %and55.i.i, ptr %arrayidx.i.i, align 1
  %44 = ptrtoint ptr %ch_cls_uart.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ch_cls_uart.i, align 8
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %45) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  %47 = ptrtoint ptr %ch_rqueue.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ch_rqueue.i.i, align 8
  %arrayidx65.i.i = getelementptr i8, ptr %48, i32 %idxprom.i.i
  %49 = ptrtoint ptr %arrayidx65.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %46, ptr %arrayidx65.i.i, align 1
  %dec.i.i = add nsw i32 %qleft.2.lcssa.i.i, -1
  %50 = ptrtoint ptr %ch_equeue.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ch_equeue.i.i, align 8
  %arrayidx68.i.i = getelementptr i8, ptr %51, i32 %idxprom.i.i
  %52 = ptrtoint ptr %arrayidx68.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx68.i.i, align 1
  %54 = and i8 %53, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool71.not.i.i = icmp eq i8 %54, 0
  br i1 %tobool71.not.i.i, label %while.end.i.i.if.end74.i.i_crit_edge, label %if.then72.i.i

while.end.i.i.if.end74.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end74.i.i

if.then72.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %55 = ptrtoint ptr %ch_err_parity.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %ch_err_parity.i.i, align 8
  %inc73.i.i = add i64 %56, 1
  store i64 %inc73.i.i, ptr %ch_err_parity.i.i, align 8
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %if.then72.i.i, %while.end.i.i.if.end74.i.i_crit_edge
  %57 = ptrtoint ptr %arrayidx68.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx68.i.i, align 1
  %59 = and i8 %58, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool80.not.i.i = icmp eq i8 %59, 0
  br i1 %tobool80.not.i.i, label %if.end74.i.i.if.end83.i.i_crit_edge, label %if.then81.i.i

if.end74.i.i.if.end83.i.i_crit_edge:              ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end83.i.i

if.then81.i.i:                                    ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %60 = ptrtoint ptr %ch_err_break.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %ch_err_break.i.i, align 8
  %inc82.i.i = add i64 %61, 1
  store i64 %inc82.i.i, ptr %ch_err_break.i.i, align 8
  br label %if.end83.i.i

if.end83.i.i:                                     ; preds = %if.then81.i.i, %if.end74.i.i.if.end83.i.i_crit_edge
  %62 = ptrtoint ptr %arrayidx68.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx68.i.i, align 1
  %64 = and i8 %63, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool89.not.i.i = icmp eq i8 %64, 0
  br i1 %tobool89.not.i.i, label %if.end83.i.i.if.end92.i.i_crit_edge, label %if.then90.i.i

if.end83.i.i.if.end92.i.i_crit_edge:              ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end92.i.i

if.then90.i.i:                                    ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %65 = ptrtoint ptr %ch_err_frame.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %ch_err_frame.i.i, align 8
  %inc91.i.i = add i64 %66, 1
  store i64 %inc91.i.i, ptr %ch_err_frame.i.i, align 8
  br label %if.end92.i.i

if.end92.i.i:                                     ; preds = %if.then90.i.i, %if.end83.i.i.if.end92.i.i_crit_edge
  %add94.i.i = add nuw nsw i16 %head.0.ph170.i.i, 1
  %and95.i.i = and i16 %add94.i.i, 8191
  %67 = ptrtoint ptr %ch_rxcount.i.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %ch_rxcount.i.i, align 8
  %inc97.i.i = add i64 %68, 1
  store i64 %inc97.i.i, ptr %ch_rxcount.i.i, align 8
  %69 = ptrtoint ptr %ch_cls_uart.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ch_cls_uart.i, align 8
  %lsr154.i.i = getelementptr inbounds %struct.cls_uart_struct, ptr %70, i32 0, i32 5
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lsr154.i.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  %conv27155.i.i = zext i8 %71 to i32
  %and28156.i.i = and i32 %conv27155.i.i, 1
  %tobool29.not157.i.i = icmp eq i32 %and28156.i.i, 0
  br i1 %tobool29.not157.i.i, label %if.end92.i.i.cls_copy_data_from_uart_to_queue.exit.i_crit_edge, label %if.end92.i.i.if.end31.lr.ph.i.i_crit_edge

if.end92.i.i.if.end31.lr.ph.i.i_crit_edge:        ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31.lr.ph.i.i

if.end92.i.i.cls_copy_data_from_uart_to_queue.exit.i_crit_edge: ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cls_copy_data_from_uart_to_queue.exit.i

cls_copy_data_from_uart_to_queue.exit.i:          ; preds = %if.end92.i.i.cls_copy_data_from_uart_to_queue.exit.i_crit_edge, %if.then36.i.i.cls_copy_data_from_uart_to_queue.exit.i_crit_edge, %do.body1.i.i.cls_copy_data_from_uart_to_queue.exit.i_crit_edge
  %head.0.ph.lcssa.i.i = phi i16 [ %18, %do.body1.i.i.cls_copy_data_from_uart_to_queue.exit.i_crit_edge ], [ %head.0.ph170.i.i, %if.then36.i.i.cls_copy_data_from_uart_to_queue.exit.i_crit_edge ], [ %and95.i.i, %if.end92.i.i.cls_copy_data_from_uart_to_queue.exit.i_crit_edge ]
  %72 = ptrtoint ptr %ch_r_head.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %head.0.ph.lcssa.i.i, ptr %ch_r_head.i.i, align 4
  %73 = ptrtoint ptr %ch_e_head.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %head.0.ph.lcssa.i.i, ptr %ch_e_head.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ch_lock.i.i, i32 noundef %call2.i.i) #3
  tail call void @jsm_check_queue_flow_control(ptr noundef nonnull %12) #3
  br label %if.end11.i

if.end11.i:                                       ; preds = %cls_copy_data_from_uart_to_queue.exit.i, %if.end6.i.if.end11.i_crit_edge
  %and13.i = and i32 %conv56.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end11.i.if.end25.i_crit_edge, label %do.body16.i

if.end11.i.if.end25.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25.i

do.body16.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #5
  %call21.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ch_lock.i.i) #3
  %74 = ptrtoint ptr %ch_flags.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ch_flags.i, align 4
  %or.i = or i32 %75, 3072
  store i32 %or.i, ptr %ch_flags.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ch_lock.i.i, i32 noundef %call21.i) #3
  tail call void @cls_copy_data_from_queue_to_uart(ptr noundef nonnull %12) #3
  br label %if.end25.i

if.end25.i:                                       ; preds = %do.body16.i, %if.end11.i.if.end25.i_crit_edge
  %76 = ptrtoint ptr %ch_cls_uart.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ch_cls_uart.i, align 8
  %msr.i = getelementptr inbounds %struct.cls_uart_struct, ptr %77, i32 0, i32 6
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %msr.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  tail call fastcc void @cls_parse_modem(ptr noundef nonnull %12, i8 noundef zeroext %78) #3
  %79 = ptrtoint ptr %ch_cls_uart.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ch_cls_uart.i, align 8
  %isr_fcr.i = getelementptr inbounds %struct.cls_uart_struct, ptr %80, i32 0, i32 2
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr_fcr.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  %conv.i = zext i8 %81 to i32
  %and.i = and i32 %conv.i, 1
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end25.i.if.end6.i_crit_edge, label %if.end25.i.cls_parse_isr.exit_crit_edge

if.end25.i.cls_parse_isr.exit_crit_edge:          ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cls_parse_isr.exit

if.end25.i.if.end6.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6.i

cls_parse_isr.exit:                               ; preds = %if.end25.i.cls_parse_isr.exit_crit_edge, %while.cond.preheader.i.cls_parse_isr.exit_crit_edge, %if.end.i.cls_parse_isr.exit_crit_edge
  %inc = add nuw i32 %i.077, 1
  %82 = ptrtoint ptr %nasync to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nasync, align 8
  %cmp51 = icmp ult i32 %inc, %83
  br i1 %cmp51, label %cls_parse_isr.exit.if.end.i_crit_edge, label %cls_parse_isr.exit.cleanup_crit_edge

cls_parse_isr.exit.cleanup_crit_edge:             ; preds = %cls_parse_isr.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cls_parse_isr.exit.if.end.i_crit_edge:            ; preds = %cls_parse_isr.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

cleanup:                                          ; preds = %cls_parse_isr.exit.cleanup_crit_edge, %if.then40, %do.body28, %do.body24.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body28 ], [ 0, %if.then40 ], [ 0, %do.body24.cleanup_crit_edge ], [ 1, %for.cond.preheader.cleanup_crit_edge ], [ 1, %cls_parse_isr.exit.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bd_intr_lock, i32 noundef %call2) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cls_uart_init(ptr nocapture noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_cls_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 17
  %0 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_cls_uart, align 8
  %lcr = getelementptr inbounds %struct.cls_uart_struct, ptr %1, i32 0, i32 3
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lcr) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %3 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ch_cls_uart, align 8
  %ier = getelementptr inbounds %struct.cls_uart_struct, ptr %4, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier, i8 0) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  tail call void @arm_heavy_mb() #3
  %5 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ch_cls_uart, align 8
  %lcr7 = getelementptr inbounds %struct.cls_uart_struct, ptr %6, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr7, i8 -65) #3, !srcloc !47
  %7 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr11 = getelementptr inbounds %struct.cls_uart_struct, ptr %8, i32 0, i32 2
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr_fcr11) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  %10 = or i8 %9, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  tail call void @arm_heavy_mb() #3
  %11 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr20 = getelementptr inbounds %struct.cls_uart_struct, ptr %12, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr20, i8 %10) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  %13 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ch_cls_uart, align 8
  %lcr25 = getelementptr inbounds %struct.cls_uart_struct, ptr %14, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr25, i8 %2) #3, !srcloc !47
  %15 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ch_cls_uart, align 8
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  %18 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr36 = getelementptr inbounds %struct.cls_uart_struct, ptr %19, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr36, i8 7) #3, !srcloc !47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #3
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %21 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ch_flags, align 4
  %or37 = or i32 %22, 3584
  store i32 %or37, ptr %ch_flags, align 4
  %23 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ch_cls_uart, align 8
  %lsr = getelementptr inbounds %struct.cls_uart_struct, ptr %24, i32 0, i32 5
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lsr) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !54
  %26 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ch_cls_uart, align 8
  %msr = getelementptr inbounds %struct.cls_uart_struct, ptr %27, i32 0, i32 6
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %msr) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cls_uart_off(ptr nocapture noundef readonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !56
  tail call void @arm_heavy_mb() #3
  %ch_cls_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 17
  %0 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_cls_uart, align 8
  %ier = getelementptr inbounds %struct.cls_uart_struct, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier, i8 0) #3, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cls_param(ptr noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %0 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_bd, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %ch_c_cflag = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 9
  %2 = ptrtoint ptr %ch_c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_c_cflag, align 4
  %and = and i32 %3, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %ch_r_head = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 20
  %4 = ptrtoint ptr %ch_r_head to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %ch_r_head, align 4
  %ch_r_tail = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 21
  %5 = ptrtoint ptr %ch_r_tail to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %ch_r_tail, align 2
  %ch_e_head = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 23
  %6 = ptrtoint ptr %ch_e_head to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %ch_e_head, align 4
  %ch_e_tail = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 24
  %7 = ptrtoint ptr %ch_e_tail to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %ch_e_tail, align 2
  %tobool.not.i = icmp eq ptr %ch, null
  br i1 %tobool.not.i, label %cls_flush_uart_read.exit.thread, label %do.body.i

do.body.i:                                        ; preds = %if.then1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !57
  tail call void @arm_heavy_mb() #3
  %ch_cls_uart.i = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 17
  %8 = ptrtoint ptr %ch_cls_uart.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ch_cls_uart.i, align 8
  %isr_fcr.i = getelementptr inbounds %struct.cls_uart_struct, ptr %9, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr.i, i8 5) #3, !srcloc !47
  br label %for.body.i

for.body.i:                                       ; preds = %do.end26.i.for.body.i_crit_edge, %do.body.i
  %indvars.iv.i = phi i32 [ 0, %do.body.i ], [ %indvars.iv.next.i, %do.end26.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %ch_cls_uart.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ch_cls_uart.i, align 8
  %isr_fcr3.i = getelementptr inbounds %struct.cls_uart_struct, ptr %11, i32 0, i32 2
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr_fcr3.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !58
  %13 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not.i = icmp eq i8 %13, 0
  br i1 %tobool7.not.i, label %for.body.i.do.body.i254_crit_edge, label %do.body9.i

for.body.i.do.body.i254_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i254

do.body9.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %14 = load i32, ptr @jsm_debug, align 4
  %and10.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %do.body9.i.do.end26.i_crit_edge, label %do.body13.i

do.body9.i.do.end26.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end26.i

do.body13.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cls_flush_uart_write.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cls_param, %if.then19.i)) #3
          to label %do.end26.i [label %if.then19.i], !srcloc !39

if.then19.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ch_bd, align 8
  %pci_dev.i = getelementptr inbounds %struct.jsm_board, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cls_flush_uart_write.__UNIQUE_ID_ddebug241, ptr noundef %dev.i, ptr noundef nonnull @.str.9, i32 noundef %indvars.iv.i) #3
  br label %do.end26.i

do.end26.i:                                       ; preds = %if.then19.i, %do.body13.i, %do.body9.i.do.end26.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #3
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 10
  br i1 %exitcond.not.i, label %do.end26.i.do.body.i254_crit_edge, label %do.end26.i.for.body.i_crit_edge

do.end26.i.for.body.i_crit_edge:                  ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

do.end26.i.do.body.i254_crit_edge:                ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i254

cls_flush_uart_read.exit.thread:                  ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #5
  %ch_flags289 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %20 = ptrtoint ptr %ch_flags289 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ch_flags289, align 4
  %or290 = or i32 %21, 32768
  store i32 %or290, ptr %ch_flags289, align 4
  %ch_mostat291 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 14
  %22 = ptrtoint ptr %ch_mostat291 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ch_mostat291, align 2
  %24 = and i8 %23, -4
  store i8 %24, ptr %ch_mostat291, align 2
  br label %cleanup

do.body.i254:                                     ; preds = %do.end26.i.do.body.i254_crit_edge, %for.body.i.do.body.i254_crit_edge
  %ch_flags.i = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %25 = ptrtoint ptr %ch_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ch_flags.i, align 4
  %or.i = or i32 %26, 3072
  store i32 %or.i, ptr %ch_flags.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #3
  %28 = ptrtoint ptr %ch_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ch_flags.i, align 4
  %or = or i32 %29, 32768
  store i32 %or, ptr %ch_flags.i, align 4
  %ch_mostat = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 14
  %30 = ptrtoint ptr %ch_mostat to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ch_mostat, align 2
  %32 = and i8 %31, -4
  store i8 %32, ptr %ch_mostat, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !59
  tail call void @arm_heavy_mb() #3
  %33 = ptrtoint ptr %ch_mostat to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ch_mostat, align 2
  %35 = ptrtoint ptr %ch_cls_uart.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ch_cls_uart.i, align 8
  %mcr.i = getelementptr inbounds %struct.cls_uart_struct, ptr %36, i32 0, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mcr.i, i8 %34) #3, !srcloc !47
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.uart_port, ptr %ch, i32 0, i32 30
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %state, align 4
  %tty = getelementptr inbounds %struct.tty_port, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tty, align 4
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %40, i32 0, i32 13, i32 2
  %41 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %c_cflag, align 4
  %and5 = and i32 %42, 4111
  %43 = zext i32 %and5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and5, label %if.end4.for.end_crit_edge [
    i32 4103, label %if.end4.if.then11_crit_edge
    i32 4100, label %if.then11.fold.split
    i32 4099, label %if.then11.fold.split295
    i32 4098, label %if.then11.fold.split296
    i32 4097, label %if.then11.fold.split297
    i32 15, label %if.then11.fold.split298
    i32 14, label %if.then11.fold.split299
    i32 13, label %if.then11.fold.split300
    i32 12, label %if.then11.fold.split301
    i32 11, label %if.then11.fold.split302
    i32 9, label %if.then11.fold.split303
    i32 8, label %if.then11.fold.split304
    i32 7, label %if.then11.fold.split305
    i32 6, label %if.then11.fold.split306
    i32 5, label %if.then11.fold.split307
    i32 4, label %if.then11.fold.split308
    i32 3, label %if.then11.fold.split309
    i32 2, label %if.then11.fold.split310
    i32 1, label %if.then11.fold.split311
  ]

if.end4.if.then11_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.then11.fold.split:                             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11.fold.split295:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11.fold.split296:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11.fold.split297:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11.fold.split298:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11.fold.split299:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11.fold.split300:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11.fold.split301:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11.fold.split302:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11.fold.split303:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11.fold.split304:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11.fold.split305:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11.fold.split306:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11.fold.split307:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11.fold.split308:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11.fold.split309:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11.fold.split310:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11.fold.split311:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11:                                        ; preds = %if.then11.fold.split311, %if.then11.fold.split310, %if.then11.fold.split309, %if.then11.fold.split308, %if.then11.fold.split307, %if.then11.fold.split306, %if.then11.fold.split305, %if.then11.fold.split304, %if.then11.fold.split303, %if.then11.fold.split302, %if.then11.fold.split301, %if.then11.fold.split300, %if.then11.fold.split299, %if.then11.fold.split298, %if.then11.fold.split297, %if.then11.fold.split296, %if.then11.fold.split295, %if.then11.fold.split, %if.end4.if.then11_crit_edge
  %i.0293.lcssa = phi i32 [ 0, %if.end4.if.then11_crit_edge ], [ 1, %if.then11.fold.split ], [ 2, %if.then11.fold.split295 ], [ 3, %if.then11.fold.split296 ], [ 4, %if.then11.fold.split297 ], [ 5, %if.then11.fold.split298 ], [ 6, %if.then11.fold.split299 ], [ 7, %if.then11.fold.split300 ], [ 8, %if.then11.fold.split301 ], [ 9, %if.then11.fold.split302 ], [ 10, %if.then11.fold.split303 ], [ 11, %if.then11.fold.split304 ], [ 12, %if.then11.fold.split305 ], [ 13, %if.then11.fold.split306 ], [ 14, %if.then11.fold.split307 ], [ 15, %if.then11.fold.split308 ], [ 16, %if.then11.fold.split309 ], [ 17, %if.then11.fold.split310 ], [ 18, %if.then11.fold.split311 ]
  %arrayidx = getelementptr [19 x %struct.anon.76], ptr @baud_rates, i32 0, i32 %i.0293.lcssa
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  br label %for.end

for.end:                                          ; preds = %if.then11, %if.end4.for.end_crit_edge
  %baud.0 = phi i32 [ %45, %if.then11 ], [ 9600, %if.end4.for.end_crit_edge ]
  %ch_flags14 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %46 = ptrtoint ptr %ch_flags14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ch_flags14, align 4
  %and15 = and i32 %47, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %for.end.if.end20_crit_edge, label %if.then17

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.then17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %and19 = and i32 %47, -32769
  %48 = ptrtoint ptr %ch_flags14 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and19, ptr %ch_flags14, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %for.end.if.end20_crit_edge
  %and22 = lshr i32 %3, 5
  %49 = trunc i32 %and22 to i8
  %50 = and i8 %49, 8
  %and30 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %51 = or i8 %50, 16
  %lcr.1 = select i1 %tobool31.not, i8 %51, i8 %50
  %and38 = lshr i32 %3, 25
  %52 = trunc i32 %and38 to i8
  %53 = and i8 %52, 32
  %54 = trunc i32 %3 to i8
  %55 = lshr i8 %54, 4
  %56 = and i8 %55, 4
  %57 = or i8 %56, %53
  %58 = or i8 %57, %lcr.1
  %and54 = lshr i32 %3, 4
  %59 = and i32 %and54, 3
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %59, label %if.end52.unreachabledefault [
    i32 0, label %if.end20.sw.epilog_crit_edge
    i32 1, label %sw.bb58
    i32 2, label %sw.bb62
    i32 3, label %sw.default
  ]

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  %61 = or i8 %58, 1
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  %62 = or i8 %58, 2
  br label %sw.epilog

if.end52.unreachabledefault:                      ; preds = %if.end20
  unreachable

sw.default:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  %63 = or i8 %58, 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb62, %sw.bb58, %if.end20.sw.epilog_crit_edge
  %lcr.4 = phi i8 [ %63, %sw.default ], [ %62, %sw.bb62 ], [ %61, %sw.bb58 ], [ %58, %if.end20.sw.epilog_crit_edge ]
  %ch_cls_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 17
  %64 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ch_cls_uart, align 8
  %ier70 = getelementptr inbounds %struct.cls_uart_struct, ptr %65, i32 0, i32 1
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ier70) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !60
  %67 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ch_cls_uart, align 8
  %lcr75 = getelementptr inbounds %struct.cls_uart_struct, ptr %68, i32 0, i32 3
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lcr75) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !61
  %70 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ch_bd, align 8
  %bd_dividend = getelementptr inbounds %struct.jsm_board, ptr %71, i32 0, i32 15
  %72 = ptrtoint ptr %bd_dividend to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bd_dividend, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %baud.0, i32 %73)
  %cmp80.not = icmp ugt i32 %baud.0, %73
  br i1 %cmp80.not, label %sw.epilog.if.end102_crit_edge, label %do.body

sw.epilog.if.end102_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end102

do.body:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %div = udiv i32 %73, %baud.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void @arm_heavy_mb() #3
  %74 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ch_cls_uart, align 8
  %lcr84 = getelementptr inbounds %struct.cls_uart_struct, ptr %75, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr84, i8 -128) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  %conv89 = trunc i32 %div to i8
  %76 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ch_cls_uart, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %77, i8 %conv89) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !64
  tail call void @arm_heavy_mb() #3
  %78 = lshr i32 %div, 8
  %conv94 = trunc i32 %78 to i8
  %79 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ch_cls_uart, align 8
  %ier96 = getelementptr inbounds %struct.cls_uart_struct, ptr %80, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier96, i8 %conv94) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !65
  tail call void @arm_heavy_mb() #3
  %81 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ch_cls_uart, align 8
  %lcr101 = getelementptr inbounds %struct.cls_uart_struct, ptr %82, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr101, i8 %lcr.4) #3, !srcloc !47
  br label %if.end102

if.end102:                                        ; preds = %do.body, %sw.epilog.if.end102_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %69, i8 %lcr.4)
  %cmp105.not = icmp eq i8 %69, %lcr.4
  br i1 %cmp105.not, label %if.end102.if.end113_crit_edge, label %do.body108

if.end102.if.end113_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end113

do.body108:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !66
  tail call void @arm_heavy_mb() #3
  %83 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ch_cls_uart, align 8
  %lcr112 = getelementptr inbounds %struct.cls_uart_struct, ptr %84, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr112, i8 %lcr.4) #3, !srcloc !47
  br label %if.end113

if.end113:                                        ; preds = %do.body108, %if.end102.if.end113_crit_edge
  %85 = ptrtoint ptr %ch_c_cflag to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ch_c_cflag, align 4
  %and115 = and i32 %86, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  %87 = or i8 %66, 5
  %spec.select250 = select i1 %tobool116.not, i8 %66, i8 %87
  %88 = or i8 %spec.select250, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !67
  tail call void @arm_heavy_mb() #3
  %89 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ch_cls_uart, align 8
  %ier129 = getelementptr inbounds %struct.cls_uart_struct, ptr %90, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier129, i8 %88) #3, !srcloc !47
  %91 = ptrtoint ptr %ch_c_cflag to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ch_c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %tobool132.not = icmp sgt i32 %92, -1
  br i1 %tobool132.not, label %if.else, label %if.then133

if.then133:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #5
  %93 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ch_cls_uart, align 8
  %lcr.i = getelementptr inbounds %struct.cls_uart_struct, ptr %94, i32 0, i32 3
  %95 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lcr.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !68
  %96 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ch_cls_uart, align 8
  %ier5.i = getelementptr inbounds %struct.cls_uart_struct, ptr %97, i32 0, i32 1
  %98 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ier5.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !70
  tail call void @arm_heavy_mb() #3
  %99 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ch_cls_uart, align 8
  %lcr10.i = getelementptr inbounds %struct.cls_uart_struct, ptr %100, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr10.i, i8 -65) #3, !srcloc !47
  %101 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr14.i = getelementptr inbounds %struct.cls_uart_struct, ptr %102, i32 0, i32 2
  %103 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr_fcr14.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !71
  %104 = and i8 %103, 109
  %105 = or i8 %104, -112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !72
  tail call void @arm_heavy_mb() #3
  %106 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr25.i = getelementptr inbounds %struct.cls_uart_struct, ptr %107, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr25.i, i8 %105) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !73
  tail call void @arm_heavy_mb() #3
  %108 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ch_cls_uart, align 8
  %lcr30.i = getelementptr inbounds %struct.cls_uart_struct, ptr %109, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr30.i, i8 %95) #3, !srcloc !47
  %110 = and i8 %98, 95
  %111 = or i8 %110, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !74
  tail call void @arm_heavy_mb() #3
  %112 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ch_cls_uart, align 8
  %ier41.i = getelementptr inbounds %struct.cls_uart_struct, ptr %113, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier41.i, i8 %111) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !75
  tail call void @arm_heavy_mb() #3
  %114 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr46.i = getelementptr inbounds %struct.cls_uart_struct, ptr %115, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr46.i, i8 1) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !76
  tail call void @arm_heavy_mb() #3
  %116 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr51.i = getelementptr inbounds %struct.cls_uart_struct, ptr %117, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr51.i, i8 -109) #3, !srcloc !47
  %ch_t_tlevel.i = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 28
  %118 = ptrtoint ptr %ch_t_tlevel.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 16, ptr %ch_t_tlevel.i, align 1
  br label %if.end148

if.else:                                          ; preds = %if.end113
  %ch_c_iflag = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 8
  %119 = ptrtoint ptr %ch_c_iflag to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ch_c_iflag, align 8
  %and134 = and i32 %120, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.else146, label %if.then136

if.then136:                                       ; preds = %if.else
  %ch_startc = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 13
  %121 = ptrtoint ptr %ch_startc to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %ch_startc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %cmp138 = icmp eq i8 %122, 0
  br i1 %cmp138, label %if.then136.if.then143_crit_edge, label %lor.lhs.false

if.then136.if.then143_crit_edge:                  ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then143

lor.lhs.false:                                    ; preds = %if.then136
  %ch_stopc = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 12
  %123 = ptrtoint ptr %ch_stopc to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %ch_stopc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %cmp141 = icmp eq i8 %124, 0
  br i1 %cmp141, label %lor.lhs.false.if.then143_crit_edge, label %if.else144

lor.lhs.false.if.then143_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then143

if.then143:                                       ; preds = %lor.lhs.false.if.then143_crit_edge, %if.then136.if.then143_crit_edge
  tail call fastcc void @cls_set_no_output_flow_control(ptr noundef %ch)
  br label %if.end148

if.else144:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %125 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ch_cls_uart, align 8
  %lcr.i257 = getelementptr inbounds %struct.cls_uart_struct, ptr %126, i32 0, i32 3
  %127 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lcr.i257) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !77
  %128 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ch_cls_uart, align 8
  %ier5.i258 = getelementptr inbounds %struct.cls_uart_struct, ptr %129, i32 0, i32 1
  %130 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ier5.i258) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !79
  tail call void @arm_heavy_mb() #3
  %131 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ch_cls_uart, align 8
  %lcr10.i259 = getelementptr inbounds %struct.cls_uart_struct, ptr %132, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr10.i259, i8 -65) #3, !srcloc !47
  %133 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr14.i260 = getelementptr inbounds %struct.cls_uart_struct, ptr %134, i32 0, i32 2
  %135 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr_fcr14.i260) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !80
  %136 = and i8 %135, 109
  %137 = or i8 %136, 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !81
  tail call void @arm_heavy_mb() #3
  %138 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr25.i261 = getelementptr inbounds %struct.cls_uart_struct, ptr %139, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr25.i261, i8 %137) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !82
  tail call void @arm_heavy_mb() #3
  %140 = ptrtoint ptr %ch_startc to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %ch_startc, align 1
  %142 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ch_cls_uart, align 8
  %mcr.i262 = getelementptr inbounds %struct.cls_uart_struct, ptr %143, i32 0, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mcr.i262, i8 %141) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  tail call void @arm_heavy_mb() #3
  %144 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ch_cls_uart, align 8
  %lsr.i = getelementptr inbounds %struct.cls_uart_struct, ptr %145, i32 0, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lsr.i, i8 0) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !84
  tail call void @arm_heavy_mb() #3
  %146 = ptrtoint ptr %ch_stopc to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %ch_stopc, align 8
  %148 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ch_cls_uart, align 8
  %msr.i = getelementptr inbounds %struct.cls_uart_struct, ptr %149, i32 0, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %msr.i, i8 %147) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !85
  tail call void @arm_heavy_mb() #3
  %150 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ch_cls_uart, align 8
  %spr.i = getelementptr inbounds %struct.cls_uart_struct, ptr %151, i32 0, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %spr.i, i8 0) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !86
  tail call void @arm_heavy_mb() #3
  %152 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ch_cls_uart, align 8
  %lcr46.i = getelementptr inbounds %struct.cls_uart_struct, ptr %153, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr46.i, i8 %127) #3, !srcloc !47
  %154 = and i8 %130, 95
  %155 = or i8 %154, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !87
  tail call void @arm_heavy_mb() #3
  %156 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ch_cls_uart, align 8
  %ier57.i = getelementptr inbounds %struct.cls_uart_struct, ptr %157, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier57.i, i8 %155) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !88
  tail call void @arm_heavy_mb() #3
  %158 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr62.i = getelementptr inbounds %struct.cls_uart_struct, ptr %159, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr62.i, i8 1) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !89
  tail call void @arm_heavy_mb() #3
  %160 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr67.i = getelementptr inbounds %struct.cls_uart_struct, ptr %161, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr67.i, i8 83) #3, !srcloc !47
  br label %if.end148

if.else146:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @cls_set_no_output_flow_control(ptr noundef %ch)
  br label %if.end148

if.end148:                                        ; preds = %if.else146, %if.else144, %if.then143, %if.then133
  %162 = ptrtoint ptr %ch_c_cflag to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %ch_c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %163)
  %tobool151.not = icmp sgt i32 %163, -1
  br i1 %tobool151.not, label %if.else153, label %if.then152

if.then152:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #5
  %164 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ch_cls_uart, align 8
  %lcr.i264 = getelementptr inbounds %struct.cls_uart_struct, ptr %165, i32 0, i32 3
  %166 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lcr.i264) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !90
  %167 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ch_cls_uart, align 8
  %ier5.i265 = getelementptr inbounds %struct.cls_uart_struct, ptr %168, i32 0, i32 1
  %169 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ier5.i265) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !92
  tail call void @arm_heavy_mb() #3
  %170 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ch_cls_uart, align 8
  %lcr10.i266 = getelementptr inbounds %struct.cls_uart_struct, ptr %171, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr10.i266, i8 -65) #3, !srcloc !47
  %172 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr14.i267 = getelementptr inbounds %struct.cls_uart_struct, ptr %173, i32 0, i32 2
  %174 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr_fcr14.i267) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !93
  %175 = and i8 %174, -89
  %176 = or i8 %175, 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !94
  tail call void @arm_heavy_mb() #3
  %177 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr25.i268 = getelementptr inbounds %struct.cls_uart_struct, ptr %178, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr25.i268, i8 %176) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !95
  tail call void @arm_heavy_mb() #3
  %179 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ch_cls_uart, align 8
  %lcr30.i269 = getelementptr inbounds %struct.cls_uart_struct, ptr %180, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr30.i269, i8 %166) #3, !srcloc !47
  %181 = or i8 %169, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !96
  tail call void @arm_heavy_mb() #3
  %182 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ch_cls_uart, align 8
  %ier38.i = getelementptr inbounds %struct.cls_uart_struct, ptr %183, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier38.i, i8 %181) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !97
  tail call void @arm_heavy_mb() #3
  %184 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr43.i = getelementptr inbounds %struct.cls_uart_struct, ptr %185, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr43.i, i8 1) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !98
  tail call void @arm_heavy_mb() #3
  %186 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr48.i = getelementptr inbounds %struct.cls_uart_struct, ptr %187, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr48.i, i8 -109) #3, !srcloc !47
  %ch_r_watermark.i = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 29
  %188 = ptrtoint ptr %ch_r_watermark.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 4, ptr %ch_r_watermark.i, align 2
  %ch_r_tlevel.i = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 27
  %189 = ptrtoint ptr %ch_r_tlevel.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 8, ptr %ch_r_tlevel.i, align 8
  br label %if.end172

if.else153:                                       ; preds = %if.end148
  %ch_c_iflag154 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 8
  %190 = ptrtoint ptr %ch_c_iflag154 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %ch_c_iflag154, align 8
  %and155 = and i32 %191, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %if.else170, label %if.then157

if.then157:                                       ; preds = %if.else153
  %ch_startc158 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 13
  %192 = ptrtoint ptr %ch_startc158 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %ch_startc158, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %cmp160 = icmp eq i8 %193, 0
  br i1 %cmp160, label %if.then157.if.then167_crit_edge, label %lor.lhs.false162

if.then157.if.then167_crit_edge:                  ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then167

lor.lhs.false162:                                 ; preds = %if.then157
  %ch_stopc163 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 12
  %194 = ptrtoint ptr %ch_stopc163 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %ch_stopc163, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %cmp165 = icmp eq i8 %195, 0
  br i1 %cmp165, label %lor.lhs.false162.if.then167_crit_edge, label %if.else168

lor.lhs.false162.if.then167_crit_edge:            ; preds = %lor.lhs.false162
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then167

if.then167:                                       ; preds = %lor.lhs.false162.if.then167_crit_edge, %if.then157.if.then167_crit_edge
  tail call fastcc void @cls_set_no_input_flow_control(ptr noundef %ch)
  br label %if.end172

if.else168:                                       ; preds = %lor.lhs.false162
  call void @__sanitizer_cov_trace_pc() #5
  %196 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ch_cls_uart, align 8
  %lcr.i271 = getelementptr inbounds %struct.cls_uart_struct, ptr %197, i32 0, i32 3
  %198 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lcr.i271) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !99
  %199 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %ch_cls_uart, align 8
  %ier5.i272 = getelementptr inbounds %struct.cls_uart_struct, ptr %200, i32 0, i32 1
  %201 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ier5.i272) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !101
  tail call void @arm_heavy_mb() #3
  %202 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ch_cls_uart, align 8
  %lcr10.i273 = getelementptr inbounds %struct.cls_uart_struct, ptr %203, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr10.i273, i8 -65) #3, !srcloc !47
  %204 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr14.i274 = getelementptr inbounds %struct.cls_uart_struct, ptr %205, i32 0, i32 2
  %206 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr_fcr14.i274) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !102
  %207 = and i8 %206, -89
  %208 = or i8 %207, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !103
  tail call void @arm_heavy_mb() #3
  %209 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr25.i275 = getelementptr inbounds %struct.cls_uart_struct, ptr %210, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr25.i275, i8 %208) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !104
  tail call void @arm_heavy_mb() #3
  %211 = ptrtoint ptr %ch_startc158 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %ch_startc158, align 1
  %213 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %ch_cls_uart, align 8
  %mcr.i277 = getelementptr inbounds %struct.cls_uart_struct, ptr %214, i32 0, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mcr.i277, i8 %212) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !105
  tail call void @arm_heavy_mb() #3
  %215 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %ch_cls_uart, align 8
  %lsr.i278 = getelementptr inbounds %struct.cls_uart_struct, ptr %216, i32 0, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lsr.i278, i8 0) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !106
  tail call void @arm_heavy_mb() #3
  %217 = ptrtoint ptr %ch_stopc163 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %ch_stopc163, align 8
  %219 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ch_cls_uart, align 8
  %msr.i280 = getelementptr inbounds %struct.cls_uart_struct, ptr %220, i32 0, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %msr.i280, i8 %218) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !107
  tail call void @arm_heavy_mb() #3
  %221 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ch_cls_uart, align 8
  %spr.i281 = getelementptr inbounds %struct.cls_uart_struct, ptr %222, i32 0, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %spr.i281, i8 0) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !108
  tail call void @arm_heavy_mb() #3
  %223 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %ch_cls_uart, align 8
  %lcr46.i282 = getelementptr inbounds %struct.cls_uart_struct, ptr %224, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr46.i282, i8 %198) #3, !srcloc !47
  %225 = and i8 %201, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !109
  tail call void @arm_heavy_mb() #3
  %226 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ch_cls_uart, align 8
  %ier54.i = getelementptr inbounds %struct.cls_uart_struct, ptr %227, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier54.i, i8 %225) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !110
  tail call void @arm_heavy_mb() #3
  %228 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr59.i = getelementptr inbounds %struct.cls_uart_struct, ptr %229, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr59.i, i8 1) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !111
  tail call void @arm_heavy_mb() #3
  %230 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr64.i = getelementptr inbounds %struct.cls_uart_struct, ptr %231, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr64.i, i8 83) #3, !srcloc !47
  br label %if.end172

if.else170:                                       ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @cls_set_no_input_flow_control(ptr noundef %ch)
  br label %if.end172

if.end172:                                        ; preds = %if.else170, %if.else168, %if.then167, %if.then152
  %tobool.not.i283 = icmp eq ptr %ch, null
  br i1 %tobool.not.i283, label %if.end172.cls_assert_modem_signals.exit288_crit_edge, label %do.body.i287

if.end172.cls_assert_modem_signals.exit288_crit_edge: ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #5
  br label %cls_assert_modem_signals.exit288

do.body.i287:                                     ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !59
  tail call void @arm_heavy_mb() #3
  %ch_mostat.i284 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 14
  %232 = ptrtoint ptr %ch_mostat.i284 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %ch_mostat.i284, align 2
  %234 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %ch_cls_uart, align 8
  %mcr.i286 = getelementptr inbounds %struct.cls_uart_struct, ptr %235, i32 0, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mcr.i286, i8 %233) #3, !srcloc !47
  br label %cls_assert_modem_signals.exit288

cls_assert_modem_signals.exit288:                 ; preds = %do.body.i287, %if.end172.cls_assert_modem_signals.exit288_crit_edge
  %236 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %ch_cls_uart, align 8
  %msr = getelementptr inbounds %struct.cls_uart_struct, ptr %237, i32 0, i32 6
  %238 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %msr) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !112
  tail call fastcc void @cls_parse_modem(ptr noundef %ch, i8 noundef zeroext %238)
  br label %cleanup

cleanup:                                          ; preds = %cls_assert_modem_signals.exit288, %do.body.i254, %cls_flush_uart_read.exit.thread, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cls_assert_modem_signals(ptr noundef readonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !59
  tail call void @arm_heavy_mb() #3
  %ch_mostat = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 14
  %0 = ptrtoint ptr %ch_mostat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ch_mostat, align 2
  %ch_cls_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 17
  %2 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch_cls_uart, align 8
  %mcr = getelementptr inbounds %struct.cls_uart_struct, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mcr, i8 %1) #3, !srcloc !47
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cls_flush_uart_write(ptr noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !57
  tail call void @arm_heavy_mb() #3
  %ch_cls_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 17
  %0 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr = getelementptr inbounds %struct.cls_uart_struct, ptr %1, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr, i8 5) #3, !srcloc !47
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %do.end26.for.body_crit_edge, %do.body
  %indvars.iv = phi i32 [ 0, %do.body ], [ %indvars.iv.next, %do.end26.for.body_crit_edge ]
  %2 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr3 = getelementptr inbounds %struct.cls_uart_struct, ptr %3, i32 0, i32 2
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr_fcr3) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !58
  %5 = and i8 %4, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %for.body.for.end_crit_edge, label %do.body9

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

do.body9:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %6 = load i32, ptr @jsm_debug, align 4
  %and10 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body9.do.end26_crit_edge, label %do.body13

do.body9.do.end26_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end26

do.body13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cls_flush_uart_write.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cls_flush_uart_write, %if.then19)) #3
          to label %do.end26 [label %if.then19], !srcloc !39

if.then19:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cls_flush_uart_write.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %indvars.iv) #3
  br label %do.end26

do.end26:                                         ; preds = %if.then19, %do.body13, %do.body9.do.end26_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #3
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 10
  br i1 %exitcond.not, label %do.end26.for.end_crit_edge, label %do.end26.for.body_crit_edge

do.end26.for.body_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

do.end26.for.end_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %do.end26.for.end_crit_edge, %for.body.for.end_crit_edge
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %12 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ch_flags, align 4
  %or = or i32 %13, 3072
  store i32 %or, ptr %ch_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cls_flush_uart_read(ptr noundef readnone %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #3
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cls_disable_receiver(ptr nocapture noundef readonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_cls_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 17
  %0 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_cls_uart, align 8
  %ier = getelementptr inbounds %struct.cls_uart_struct, ptr %1, i32 0, i32 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ier) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !113
  %3 = and i8 %2, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !114
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch_cls_uart, align 8
  %ier5 = getelementptr inbounds %struct.cls_uart_struct, ptr %5, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier5, i8 %3) #3, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cls_enable_receiver(ptr nocapture noundef readonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_cls_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 17
  %0 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_cls_uart, align 8
  %ier = getelementptr inbounds %struct.cls_uart_struct, ptr %1, i32 0, i32 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ier) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !115
  %3 = or i8 %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !116
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch_cls_uart, align 8
  %ier5 = getelementptr inbounds %struct.cls_uart_struct, ptr %5, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier5, i8 %3) #3, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cls_send_break(ptr nocapture noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %0 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ch_flags, align 4
  %and = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ch_cls_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 17
  %2 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch_cls_uart, align 8
  %lcr = getelementptr inbounds %struct.cls_uart_struct, ptr %3, i32 0, i32 3
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lcr) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  tail call void @arm_heavy_mb() #3
  %5 = or i8 %4, 64
  %6 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch_cls_uart, align 8
  %lcr4 = getelementptr inbounds %struct.cls_uart_struct, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr4, i8 %5) #3, !srcloc !47
  %8 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ch_flags, align 4
  %or6 = or i32 %9, 4096
  store i32 %or6, ptr %ch_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cls_clear_break(ptr noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_lock = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ch_lock) #3
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %0 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ch_flags, align 4
  %and = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end34_crit_edge, label %if.then

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

if.then:                                          ; preds = %entry
  %ch_cls_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 17
  %2 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch_cls_uart, align 8
  %lcr = getelementptr inbounds %struct.cls_uart_struct, ptr %3, i32 0, i32 3
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lcr) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !120
  tail call void @arm_heavy_mb() #3
  %5 = and i8 %4, -65
  %6 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch_cls_uart, align 8
  %lcr15 = getelementptr inbounds %struct.cls_uart_struct, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr15, i8 %5) #3, !srcloc !47
  %8 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ch_flags, align 4
  %and17 = and i32 %9, -4097
  store i32 %and17, ptr %ch_flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %10 = load i32, ptr @jsm_debug, align 4
  %and19 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then.if.end34_crit_edge, label %do.body22

if.then.if.end34_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

do.body22:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cls_clear_break.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cls_clear_break, %if.then28)) #3
          to label %if.end34 [label %if.then28], !srcloc !39

if.then28:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #5
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %11 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cls_clear_break.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %15) #3
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %do.body22, %if.then.if.end34_crit_edge, %entry.if.end34_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ch_lock, i32 noundef %call2) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cls_send_start_character(ptr noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.end:                                           ; preds = %entry
  %ch_startc = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 13
  %0 = ptrtoint ptr %ch_startc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ch_startc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %ch_xon_sends = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 35
  %2 = ptrtoint ptr %ch_xon_sends to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ch_xon_sends, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %ch_xon_sends, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !121
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %ch_startc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ch_startc, align 1
  %ch_cls_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 17
  %6 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch_cls_uart, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #3, !srcloc !47
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cls_send_stop_character(ptr noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.end:                                           ; preds = %entry
  %ch_stopc = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 12
  %0 = ptrtoint ptr %ch_stopc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ch_stopc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %ch_xoff_sends = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 36
  %2 = ptrtoint ptr %ch_xoff_sends to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ch_xoff_sends, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %ch_xoff_sends, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !122
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %ch_stopc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ch_stopc, align 8
  %ch_cls_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 17
  %6 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch_cls_uart, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #3, !srcloc !47
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cls_copy_data_from_queue_to_uart(ptr noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.uart_port, ptr %ch, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head, align 4
  %tail1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %tail1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %6 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ch_flags, align 4
  %8 = and i32 %7, 4098
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp ne i32 %8, 0
  %and11 = and i32 %7, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %or.cond74 = or i1 %9, %tobool12.not
  br i1 %or.cond74, label %if.end3.cleanup_crit_edge, label %if.end14

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end14:                                         ; preds = %if.end3
  %10 = trunc i32 %5 to i16
  %sub = sub i32 %3, %5
  %and19 = and i32 %sub, 4095
  %11 = tail call i32 @llvm.umin.i32(i32 %and19, i32 32)
  %tail.075 = and i16 %10, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2276.not = icmp eq i32 %11, 0
  br i1 %cmp2276.not, label %while.end.thread, label %do.body.lr.ph

while.end.thread:                                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  %and2984 = zext i16 %tail.075 to i32
  %12 = ptrtoint ptr %tail1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and2984, ptr %tail1, align 4
  br label %if.end37

do.body.lr.ph:                                    ; preds = %if.end14
  %ch_cls_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 17
  %ch_txcount = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 26
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %tail.079 = phi i16 [ %tail.075, %do.body.lr.ph ], [ %tail.0, %do.body.do.body_crit_edge ]
  %len_written.078 = phi i32 [ 0, %do.body.lr.ph ], [ %inc27, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !123
  tail call void @arm_heavy_mb() #3
  %13 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xmit, align 4
  %idxprom = zext i16 %tail.079 to i32
  %arrayidx = getelementptr i8, ptr %14, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %17 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ch_cls_uart, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %16) #3, !srcloc !47
  %add = add nuw nsw i16 %tail.079, 1
  %19 = ptrtoint ptr %ch_txcount to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ch_txcount, align 8
  %inc = add i64 %20, 1
  store i64 %inc, ptr %ch_txcount, align 8
  %inc27 = add nuw nsw i32 %len_written.078, 1
  %tail.0 = and i16 %add, 4095
  %exitcond.not = icmp eq i32 %inc27, %11
  br i1 %exitcond.not, label %while.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

while.end:                                        ; preds = %do.body
  %and29 = zext i16 %tail.0 to i32
  %21 = ptrtoint ptr %tail1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and29, ptr %tail1, align 4
  %ch_t_tlevel = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 28
  %22 = ptrtoint ptr %ch_t_tlevel to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ch_t_tlevel, align 1
  %conv31 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv31)
  %cmp32 = icmp ugt i32 %11, %conv31
  br i1 %cmp32, label %if.then34, label %while.end.if.end37_crit_edge

while.end.if.end37_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37

if.then34:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ch_flags, align 4
  %and36 = and i32 %25, -3073
  store i32 %and36, ptr %ch_flags, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %while.end.if.end37_crit_edge, %while.end.thread
  %26 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %head, align 4
  %28 = ptrtoint ptr %tail1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tail1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp40 = icmp eq i32 %27, %29
  br i1 %cmp40, label %if.then42, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @uart_write_wakeup(ptr noundef nonnull %ch) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end37.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cls_get_uart_bytes_left(ptr nocapture noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_cls_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 17
  %0 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_cls_uart, align 8
  %lsr1 = getelementptr inbounds %struct.cls_uart_struct, ptr %1, i32 0, i32 5
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lsr1) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !124
  %3 = and i8 %2, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %4 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ch_flags, align 4
  %or = or i32 %5, 3072
  store i32 %or, ptr %ch_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %left.0 = phi i32 [ 0, %if.else ], [ 1, %entry.if.end_crit_edge ]
  ret i32 %left.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cls_send_immediate_char(ptr nocapture noundef readonly %ch, i8 noundef zeroext %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !125
  tail call void @arm_heavy_mb() #3
  %ch_cls_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 17
  %0 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_cls_uart, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %c) #3, !srcloc !47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @jsm_check_queue_flow_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cls_parse_modem(ptr noundef %ch, i8 noundef zeroext %signals) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %0 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cls_parse_modem.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cls_parse_modem, %if.then5)) #3
          to label %do.end8 [label %if.then5], !srcloc !39

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #5
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %1 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %ch_portnum = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 4
  %5 = ptrtoint ptr %ch_portnum to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ch_portnum, align 4
  %conv = zext i8 %signals to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cls_parse_modem.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %6, i32 noundef %conv) #3
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %7 = and i8 %signals, -8
  %conv12 = zext i8 %7 to i32
  %and13 = and i32 %conv12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %.pre = and i32 %conv12, 128
  br i1 %tobool14.not, label %do.end8.if.end26_crit_edge, label %if.then15

do.end8.if.end26_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.then15:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @uart_handle_dcd_change(ptr noundef %ch, i32 noundef %.pre) #3
  br label %if.end26

if.end26:                                         ; preds = %if.then15, %do.end8.if.end26_crit_edge
  %ch_mistat33 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 15
  %8 = ptrtoint ptr %ch_mistat33 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ch_mistat33, align 1
  %10 = and i8 %9, 15
  %11 = trunc i32 %.pre to i8
  %.sink213 = or i8 %10, %11
  %and39 = and i8 %signals, 32
  %.sink = or i8 %.sink213, %and39
  %and53 = and i8 %signals, 64
  %.sink214 = or i8 %.sink, %and53
  %and67 = and i8 %signals, 16
  %ch_mistat75 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 15
  %.sink212 = or i8 %.sink214, %and67
  %12 = ptrtoint ptr %ch_mistat75 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink212, ptr %ch_mistat75, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %13 = load i32, ptr @jsm_debug, align 4
  %and81 = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end26.do.end171_crit_edge, label %do.body84

if.end26.do.end171_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end171

do.body84:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cls_parse_modem.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cls_parse_modem, %if.then96)) #3
          to label %do.end171 [label %if.then96], !srcloc !39

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #5
  %ch_bd97 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %14 = ptrtoint ptr %ch_bd97 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ch_bd97, align 8
  %pci_dev98 = getelementptr inbounds %struct.jsm_board, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %pci_dev98 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_dev98, align 4
  %dev99 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %ch_portnum100 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 4
  %18 = ptrtoint ptr %ch_portnum100 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ch_portnum100, align 4
  %ch_mistat101 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 15
  %20 = ptrtoint ptr %ch_mistat101 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ch_mistat101, align 1
  %ch_mostat = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 14
  %22 = ptrtoint ptr %ch_mostat to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ch_mostat, align 2
  %or104206 = or i8 %23, %21
  %or104 = zext i8 %or104206 to i32
  %and105 = and i32 %or104, 1
  %and116 = lshr i32 %or104, 1
  %and116.lobit = and i32 %and116, 1
  %and127 = lshr i32 %or104, 4
  %and127.lobit = and i32 %and127, 1
  %and138 = lshr i32 %or104, 5
  %and138.lobit = and i32 %and138, 1
  %and149 = lshr i32 %or104, 6
  %and149.lobit = and i32 %and149, 1
  %and160.lobit = lshr i32 %or104, 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cls_parse_modem.__UNIQUE_ID_ddebug240, ptr noundef %dev99, ptr noundef nonnull @.str.7, i32 noundef %19, i32 noundef %and105, i32 noundef %and116.lobit, i32 noundef %and127.lobit, i32 noundef %and138.lobit, i32 noundef %and149.lobit, i32 noundef %and160.lobit) #3
  br label %do.end171

do.end171:                                        ; preds = %if.then96, %do.body84, %if.end26.do.end171_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_dcd_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cls_set_no_output_flow_control(ptr nocapture noundef %ch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_cls_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 17
  %0 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_cls_uart, align 8
  %lcr = getelementptr inbounds %struct.cls_uart_struct, ptr %1, i32 0, i32 3
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lcr) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !126
  %3 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ch_cls_uart, align 8
  %ier5 = getelementptr inbounds %struct.cls_uart_struct, ptr %4, i32 0, i32 1
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ier5) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !128
  tail call void @arm_heavy_mb() #3
  %6 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch_cls_uart, align 8
  %lcr10 = getelementptr inbounds %struct.cls_uart_struct, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr10, i8 -65) #3, !srcloc !47
  %8 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr14 = getelementptr inbounds %struct.cls_uart_struct, ptr %9, i32 0, i32 2
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr_fcr14) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !129
  %11 = and i8 %10, 109
  %12 = or i8 %11, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !130
  tail call void @arm_heavy_mb() #3
  %13 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr25 = getelementptr inbounds %struct.cls_uart_struct, ptr %14, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr25, i8 %12) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !131
  tail call void @arm_heavy_mb() #3
  %15 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ch_cls_uart, align 8
  %lcr30 = getelementptr inbounds %struct.cls_uart_struct, ptr %16, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr30, i8 %2) #3, !srcloc !47
  %17 = and i8 %5, 95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !132
  tail call void @arm_heavy_mb() #3
  %18 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ch_cls_uart, align 8
  %ier41 = getelementptr inbounds %struct.cls_uart_struct, ptr %19, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier41, i8 %17) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !133
  tail call void @arm_heavy_mb() #3
  %20 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr46 = getelementptr inbounds %struct.cls_uart_struct, ptr %21, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr46, i8 1) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !134
  tail call void @arm_heavy_mb() #3
  %22 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr51 = getelementptr inbounds %struct.cls_uart_struct, ptr %23, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr51, i8 83) #3, !srcloc !47
  %ch_r_watermark = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 29
  %24 = ptrtoint ptr %ch_r_watermark to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %ch_r_watermark, align 2
  %ch_t_tlevel = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 28
  %25 = ptrtoint ptr %ch_t_tlevel to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 16, ptr %ch_t_tlevel, align 1
  %ch_r_tlevel = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 27
  %26 = ptrtoint ptr %ch_r_tlevel to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 16, ptr %ch_r_tlevel, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cls_set_no_input_flow_control(ptr nocapture noundef %ch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_cls_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 17
  %0 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_cls_uart, align 8
  %lcr = getelementptr inbounds %struct.cls_uart_struct, ptr %1, i32 0, i32 3
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lcr) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !135
  %3 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ch_cls_uart, align 8
  %ier5 = getelementptr inbounds %struct.cls_uart_struct, ptr %4, i32 0, i32 1
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ier5) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !137
  tail call void @arm_heavy_mb() #3
  %6 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch_cls_uart, align 8
  %lcr10 = getelementptr inbounds %struct.cls_uart_struct, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr10, i8 -65) #3, !srcloc !47
  %8 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr14 = getelementptr inbounds %struct.cls_uart_struct, ptr %9, i32 0, i32 2
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr_fcr14) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !138
  %11 = and i8 %10, -89
  %12 = or i8 %11, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !139
  tail call void @arm_heavy_mb() #3
  %13 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr25 = getelementptr inbounds %struct.cls_uart_struct, ptr %14, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr25, i8 %12) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !140
  tail call void @arm_heavy_mb() #3
  %15 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ch_cls_uart, align 8
  %lcr30 = getelementptr inbounds %struct.cls_uart_struct, ptr %16, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr30, i8 %2) #3, !srcloc !47
  %17 = and i8 %5, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !141
  tail call void @arm_heavy_mb() #3
  %18 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ch_cls_uart, align 8
  %ier38 = getelementptr inbounds %struct.cls_uart_struct, ptr %19, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier38, i8 %17) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !142
  tail call void @arm_heavy_mb() #3
  %20 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr43 = getelementptr inbounds %struct.cls_uart_struct, ptr %21, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr43, i8 1) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !143
  tail call void @arm_heavy_mb() #3
  %22 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ch_cls_uart, align 8
  %isr_fcr48 = getelementptr inbounds %struct.cls_uart_struct, ptr %23, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr48, i8 83) #3, !srcloc !47
  %ch_t_tlevel = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 28
  %24 = ptrtoint ptr %ch_t_tlevel to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 16, ptr %ch_t_tlevel, align 1
  %ch_r_tlevel = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 27
  %25 = ptrtoint ptr %ch_r_tlevel to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 16, ptr %ch_r_tlevel, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !17, !18, !20, !22, !23, !24, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @jsm_cls_ops, !1, !"jsm_cls_ops", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/jsm/jsm_cls.c", i32 953, i32 18}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/jsm/jsm_cls.c", i32 835, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @cls_intr.__UNIQUE_ID_ddebug242, !3, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/jsm/jsm_cls.c", i32 839, i32 3}
!10 = !{ptr @cls_intr.__UNIQUE_ID_ddebug243, !9, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/tty/serial/jsm/jsm_cls.c", i32 503, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cls_parse_modem.__UNIQUE_ID_ddebug239, !12, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/jsm/jsm_cls.c", i32 539, i32 2}
!17 = !{ptr @cls_parse_modem.__UNIQUE_ID_ddebug240, !16, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!18 = !{ptr @baud_rates, !19, !"baud_rates", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/jsm/jsm_cls.c", i32 30, i32 3}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/tty/serial/jsm/jsm_cls.c", i32 620, i32 4}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cls_flush_uart_write.__UNIQUE_ID_ddebug241, !21, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/tty/serial/jsm/jsm_cls.c", i32 318, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cls_clear_break.__UNIQUE_ID_ddebug236, !25, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2998795}
!38 = !{i64 2154781573}
!39 = !{i64 2148779340, i64 2148779345, i64 2148779358, i64 2148779402, i64 2148779436, i64 2148779457}
!40 = !{i64 2154772274}
!41 = !{i64 2154761801}
!42 = !{i64 2154762048}
!43 = !{i64 2154762312}
!44 = !{i64 2154772904}
!45 = !{i64 2154791267}
!46 = !{i64 2154791483}
!47 = !{i64 2998400}
!48 = !{i64 2154791762}
!49 = !{i64 2154792068}
!50 = !{i64 2154792299}
!51 = !{i64 2154792583}
!52 = !{i64 2154792883}
!53 = !{i64 2154793139}
!54 = !{i64 2154794022}
!55 = !{i64 2154794262}
!56 = !{i64 2154794478}
!57 = !{i64 2154773148}
!58 = !{i64 2154773469}
!59 = !{i64 2154761104}
!60 = !{i64 2154778665}
!61 = !{i64 2154778905}
!62 = !{i64 2154779129}
!63 = !{i64 2154779416}
!64 = !{i64 2154779710}
!65 = !{i64 2154779993}
!66 = !{i64 2154780268}
!67 = !{i64 2154780571}
!68 = !{i64 2154738914}
!69 = !{i64 2154739154}
!70 = !{i64 2154739378}
!71 = !{i64 2154739684}
!72 = !{i64 2154739924}
!73 = !{i64 2154740208}
!74 = !{i64 2154740494}
!75 = !{i64 2154740783}
!76 = !{i64 2154741117}
!77 = !{i64 2154741444}
!78 = !{i64 2154741684}
!79 = !{i64 2154741908}
!80 = !{i64 2154742214}
!81 = !{i64 2154742454}
!82 = !{i64 2154742747}
!83 = !{i64 2154743030}
!84 = !{i64 2154743312}
!85 = !{i64 2154743594}
!86 = !{i64 2154743868}
!87 = !{i64 2154744154}
!88 = !{i64 2154744443}
!89 = !{i64 2154744777}
!90 = !{i64 2154747634}
!91 = !{i64 2154747874}
!92 = !{i64 2154748098}
!93 = !{i64 2154748404}
!94 = !{i64 2154748644}
!95 = !{i64 2154748928}
!96 = !{i64 2154749209}
!97 = !{i64 2154749498}
!98 = !{i64 2154749832}
!99 = !{i64 2154750159}
!100 = !{i64 2154750399}
!101 = !{i64 2154750623}
!102 = !{i64 2154750929}
!103 = !{i64 2154751169}
!104 = !{i64 2154751462}
!105 = !{i64 2154751745}
!106 = !{i64 2154752027}
!107 = !{i64 2154752309}
!108 = !{i64 2154752583}
!109 = !{i64 2154752864}
!110 = !{i64 2154753153}
!111 = !{i64 2154753487}
!112 = !{i64 2154780930}
!113 = !{i64 2154760076}
!114 = !{i64 2154760299}
!115 = !{i64 2154760596}
!116 = !{i64 2154760819}
!117 = !{i64 2154795039}
!118 = !{i64 2154795273}
!119 = !{i64 2154756722}
!120 = !{i64 2154756958}
!121 = !{i64 2154777397}
!122 = !{i64 2154777698}
!123 = !{i64 2154764175}
!124 = !{i64 2154794773}
!125 = !{i64 2154795565}
!126 = !{i64 2154745104}
!127 = !{i64 2154745344}
!128 = !{i64 2154745568}
!129 = !{i64 2154745874}
!130 = !{i64 2154746114}
!131 = !{i64 2154746398}
!132 = !{i64 2154746684}
!133 = !{i64 2154746973}
!134 = !{i64 2154747307}
!135 = !{i64 2154753814}
!136 = !{i64 2154754054}
!137 = !{i64 2154754278}
!138 = !{i64 2154754584}
!139 = !{i64 2154754824}
!140 = !{i64 2154755108}
!141 = !{i64 2154755389}
!142 = !{i64 2154755678}
!143 = !{i64 2154756012}
