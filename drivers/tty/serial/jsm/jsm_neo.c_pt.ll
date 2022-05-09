; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/jsm/jsm_neo.c_pt.bc'
source_filename = "../drivers/tty/serial/jsm/jsm_neo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.board_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.76 = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.neo_uart_struct = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [255 x i8], [64 x i8], [63 x i8], [64 x i8] }
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

@jsm_neo_ops = dso_local global { %struct.board_ops, [32 x i8] } { %struct.board_ops { ptr @neo_intr, ptr @neo_uart_init, ptr @neo_uart_off, ptr @neo_param, ptr @neo_assert_modem_signals, ptr @neo_flush_uart_write, ptr @neo_flush_uart_read, ptr @neo_disable_receiver, ptr @neo_enable_receiver, ptr @neo_send_break, ptr @neo_clear_break, ptr @neo_send_start_character, ptr @neo_send_stop_character, ptr @neo_copy_data_from_queue_to_uart, ptr @neo_get_uart_bytes_left, ptr @neo_send_immediate_char }, [32 x i8] zeroinitializer }, align 32
@jsm_debug = external dso_local local_unnamed_addr global i32, align 4
@neo_intr.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"jsm\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"neo_intr\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/tty/serial/jsm/jsm_neo.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:%d uart_poll: %x\0A\00", [43 x i8] zeroinitializer }, align 32
@neo_intr.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 1, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Kernel interrupted to me, but no pending interrupts...\0A\00", [40 x i8] zeroinitializer }, align 32
@jsm_offset_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128], [32 x i8] zeroinitializer }, align 32
@neo_intr.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 1, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:%d port: %x type: %x\0A\00", [39 x i8] zeroinitializer }, align 32
@neo_intr.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 1, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Interrupt with no type! port: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@neo_intr.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 1, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:%d Unknown Interrupt type: %x\0A\00", [62 x i8] zeroinitializer }, align 32
@neo_intr.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 1, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"finish\0A\00", [24 x i8] zeroinitializer }, align 32
@neo_copy_data_from_uart_to_queue.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"neo_copy_data_from_uart_to_queue\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Queue full, dropping DATA:%x LSR:%x\0A\00", [59 x i8] zeroinitializer }, align 32
@neo_copy_data_from_uart_to_queue.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DATA/LSR pair: %x %x\0A\00", [42 x i8] zeroinitializer }, align 32
@neo_parse_lsr.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"neo_parse_lsr\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:%d port: %d linestatus: %x\0A\00", [33 x i8] zeroinitializer }, align 32
@neo_parse_lsr.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d Port: %d Got an RX error, need to parse LSR\0A\00", [45 x i8] zeroinitializer }, align 32
@neo_parse_lsr.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 0, i8 -38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:%d Port: %d. PAR ERR!\0A\00", [38 x i8] zeroinitializer }, align 32
@neo_parse_lsr.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.16, i8 0, i8 -36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:%d Port: %d. FRM ERR!\0A\00", [38 x i8] zeroinitializer }, align 32
@neo_parse_lsr.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.17, i8 0, i8 -35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:%d Port: %d. BRK INTR!\0A\00", [37 x i8] zeroinitializer }, align 32
@neo_parse_lsr.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.18, i8 0, i8 -31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:%d Port: %d. Rx Overrun!\0A\00", [35 x i8] zeroinitializer }, align 32
@neo_parse_isr.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"neo_parse_isr\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s:%d isr: %x\0A\00", [17 x i8] zeroinitializer }, align 32
@neo_parse_isr.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 0, i8 -66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Port %d. Got ISR_XONXOFF: cause:%x\0A\00", [60 x i8] zeroinitializer }, align 32
@neo_parse_isr.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.22, i8 0, i8 -62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Port %d. XON detected in incoming data\0A\00", [56 x i8] zeroinitializer }, align 32
@neo_parse_isr.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.23, i8 0, i8 -61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Setting CH_STOP\0A\00", [47 x i8] zeroinitializer }, align 32
@neo_parse_isr.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.24, i8 0, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Port: %d. XOFF detected in incoming data\0A\00", [54 x i8] zeroinitializer }, align 32
@neo_parse_isr.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.25, i8 0, i8 -52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MOD_STAT: sending to parse_modem_sigs\0A\00", [57 x i8] zeroinitializer }, align 32
@neo_parse_modem.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"neo_parse_modem\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"neo_parse_modem: port: %d msignals: %x\0A\00", [56 x i8] zeroinitializer }, align 32
@neo_parse_modem.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.28, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Port: %d DTR: %d RTS: %d CTS: %d DSR: %d RI: %d CD: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@neo_param.baud_rates = internal constant { [19 x %struct.anon.76], [40 x i8] } { [19 x %struct.anon.76] [%struct.anon.76 { i32 921600, i32 4103 }, %struct.anon.76 { i32 460800, i32 4100 }, %struct.anon.76 { i32 230400, i32 4099 }, %struct.anon.76 { i32 115200, i32 4098 }, %struct.anon.76 { i32 57600, i32 4097 }, %struct.anon.76 { i32 38400, i32 15 }, %struct.anon.76 { i32 19200, i32 14 }, %struct.anon.76 { i32 9600, i32 13 }, %struct.anon.76 { i32 4800, i32 12 }, %struct.anon.76 { i32 2400, i32 11 }, %struct.anon.76 { i32 1200, i32 9 }, %struct.anon.76 { i32 600, i32 8 }, %struct.anon.76 { i32 300, i32 7 }, %struct.anon.76 { i32 200, i32 6 }, %struct.anon.76 { i32 150, i32 5 }, %struct.anon.76 { i32 134, i32 4 }, %struct.anon.76 { i32 110, i32 3 }, %struct.anon.76 { i32 75, i32 2 }, %struct.anon.76 { i32 50, i32 1 }], [40 x i8] zeroinitializer }, align 32
@neo_set_new_start_stop_chars.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"neo_set_new_start_stop_chars\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"start\0A\00", [25 x i8] zeroinitializer }, align 32
@neo_set_cts_flow_control.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"neo_set_cts_flow_control\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Setting CTSFLOW\0A\00", [47 x i8] zeroinitializer }, align 32
@neo_set_no_output_flow_control.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"neo_set_no_output_flow_control\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsetting Output FLOW\0A\00", [41 x i8] zeroinitializer }, align 32
@neo_set_ixon_flow_control.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"neo_set_ixon_flow_control\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Setting IXON FLOW\0A\00", [45 x i8] zeroinitializer }, align 32
@neo_set_rts_flow_control.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"neo_set_rts_flow_control\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Setting RTSFLOW\0A\00", [47 x i8] zeroinitializer }, align 32
@neo_set_no_input_flow_control.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"neo_set_no_input_flow_control\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unsetting Input FLOW\0A\00", [42 x i8] zeroinitializer }, align 32
@neo_set_ixoff_flow_control.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"neo_set_ixoff_flow_control\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Setting IXOFF FLOW\0A\00", [44 x i8] zeroinitializer }, align 32
@neo_flush_uart_write.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"neo_flush_uart_write\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Still flushing TX UART... i: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@neo_flush_uart_read.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"neo_flush_uart_read\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Still flushing RX UART... i: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@neo_clear_break.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"neo_clear_break\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"clear break Finishing UART_LCR_SBC! finished: %lx\0A\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@neo_copy_data_from_queue_to_uart.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"neo_copy_data_from_queue_to_uart\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Tx data: %x\0A\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.51 = internal global [21 x i64] [i64 19, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 13, i64 14, i64 15, i64 4097, i64 4098, i64 4099, i64 4100, i64 4103]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"jsm_neo_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1389, i32 18 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1120, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1124, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"jsm_offset_table\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 20, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1150, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1158, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1226, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1235, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 441, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 453, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 842, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 862, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 873, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 879, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 885, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 898, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 736, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 760, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 775, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 782, i32 6 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 785, i32 5 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 816, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 561, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 593, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [11 x i8] c"baud_rates\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 958, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 265, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 41, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 226, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 112, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 72, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 187, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 149, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 636, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 668, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 692, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [36 x i8] c"../drivers/tty/serial/jsm/jsm_neo.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 507, i32 4 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @jsm_neo_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @jsm_offset_table, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @neo_param.baud_rates, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_neo_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_offset_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neo_param.baud_rates to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @neo_intr(i32 noundef %irq, ptr noundef %voidbrd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_intr_lock = getelementptr inbounds %struct.jsm_board, ptr %voidbrd, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bd_intr_lock) #5
  %re_map_membase = getelementptr inbounds %struct.jsm_board, ptr %voidbrd, i32 0, i32 10
  %0 = ptrtoint ptr %re_map_membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %re_map_membase, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 128
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !132
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %4 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end21_crit_edge, label %do.body10

entry.do.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end21

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_intr.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_intr, %if.then16)) #5
          to label %do.end21 [label %if.then16], !srcloc !134

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %voidbrd, i32 0, i32 3
  %5 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_intr.__UNIQUE_ID_ddebug273, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 1121, i32 noundef %3) #5
  br label %do.end21

do.end21:                                         ; preds = %if.then16, %do.body10, %entry.do.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool22.not = icmp eq i32 %2, 0
  br i1 %tobool22.not, label %do.body24, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end21
  %and51264 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51264)
  %cmp52.not265.not = icmp eq i32 %and51264, 0
  br i1 %cmp52.not265.not, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %pci_dev80 = getelementptr inbounds %struct.jsm_board, ptr %voidbrd, i32 0, i32 3
  %nasync = getelementptr inbounds %struct.jsm_board, ptr %voidbrd, i32 0, i32 6
  br label %while.body

do.body24:                                        ; preds = %do.end21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %7 = load i32, ptr @jsm_debug, align 4
  %and25 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.do.end48_crit_edge, label %do.body28

do.body24.do.end48_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end48

do.body28:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_intr.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_intr, %if.then40)) #5
          to label %do.end48 [label %if.then40], !srcloc !134

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev41 = getelementptr inbounds %struct.jsm_board, ptr %voidbrd, i32 0, i32 3
  %8 = ptrtoint ptr %pci_dev41 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev41, align 4
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_intr.__UNIQUE_ID_ddebug274, ptr noundef %dev42, ptr noundef nonnull @.str.4) #5
  br label %do.end48

do.end48:                                         ; preds = %if.then40, %do.body28, %do.body24.do.end48_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bd_intr_lock, i32 noundef %call3) #5
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %current_port.0268 = phi i32 [ 0, %while.body.lr.ph ], [ %current_port.0.be, %while.cond.backedge.while.body_crit_edge ]
  %uart_poll.0267 = phi i32 [ %3, %while.body.lr.ph ], [ %uart_poll.0.be, %while.cond.backedge.while.body_crit_edge ]
  %outofloop_count.0266 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.cond.backedge.while.body_crit_edge ]
  %inc = add nuw nsw i32 %outofloop_count.0266, 1
  %arrayidx = getelementptr [8 x i32], ptr @jsm_offset_table, i32 0, i32 %current_port.0268
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %and56 = and i32 %11, %uart_poll.0267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %cmp57.not = icmp eq i32 %and56, 0
  br i1 %cmp57.not, label %if.else, label %if.then59

if.then59:                                        ; preds = %while.body
  %mul = mul i32 %current_port.0268, 3
  %add = add i32 %mul, 8
  %shr = lshr i32 %uart_poll.0267, %add
  %and60 = and i32 %shr, 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %12 = load i32, ptr @jsm_debug, align 4
  %and64 = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.then59.do.end87_crit_edge, label %do.body67

if.then59.do.end87_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end87

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %inc61 = add i32 %current_port.0268, 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then159, %do.body147, %do.body143.while.cond.backedge_crit_edge, %sw.bb142, %sw.bb141, %sw.bb140, %if.end125, %if.end121.while.cond.backedge_crit_edge, %sw.bb.while.cond.backedge_crit_edge, %if.then108, %do.body96, %do.body92.while.cond.backedge_crit_edge, %if.else
  %uart_poll.0.be = phi i32 [ %and89, %sw.bb142 ], [ %and89, %sw.bb141 ], [ %and89, %sw.bb140 ], [ %and89, %sw.bb.while.cond.backedge_crit_edge ], [ %and89, %if.end125 ], [ %and89, %if.end121.while.cond.backedge_crit_edge ], [ %uart_poll.0267, %if.else ], [ %and89, %do.body96 ], [ %and89, %if.then108 ], [ %and89, %do.body92.while.cond.backedge_crit_edge ], [ %and89, %do.body147 ], [ %and89, %if.then159 ], [ %and89, %do.body143.while.cond.backedge_crit_edge ]
  %current_port.0.be = phi i32 [ %current_port.0268, %sw.bb142 ], [ %current_port.0268, %sw.bb141 ], [ %current_port.0268, %sw.bb140 ], [ %current_port.0268, %sw.bb.while.cond.backedge_crit_edge ], [ %current_port.0268, %if.end125 ], [ %current_port.0268, %if.end121.while.cond.backedge_crit_edge ], [ %inc61, %if.else ], [ %current_port.0268, %do.body96 ], [ %current_port.0268, %if.then108 ], [ %current_port.0268, %do.body92.while.cond.backedge_crit_edge ], [ %current_port.0268, %do.body147 ], [ %current_port.0268, %if.then159 ], [ %current_port.0268, %do.body143.while.cond.backedge_crit_edge ]
  %and51 = and i32 %uart_poll.0.be, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %cmp52.not = icmp ne i32 %and51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %outofloop_count.0266)
  %cmp54 = icmp ult i32 %outofloop_count.0266, 254
  %or.cond = select i1 %cmp52.not, i1 %cmp54, i1 false
  br i1 %or.cond, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.body67:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_intr.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_intr, %if.then79)) #5
          to label %do.end87 [label %if.then79], !srcloc !134

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %pci_dev80 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_dev80, align 4
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_intr.__UNIQUE_ID_ddebug275, ptr noundef %dev81, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 1151, i32 noundef %current_port.0268, i32 noundef %and60) #5
  br label %do.end87

do.end87:                                         ; preds = %if.then79, %do.body67, %if.then59.do.end87_crit_edge
  %neg = xor i32 %11, -1
  %and89 = and i32 %uart_poll.0267, %neg
  %15 = zext i32 %and60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and60, label %do.body143 [
    i32 0, label %do.body92
    i32 2, label %sw.bb
    i32 1, label %sw.bb140
    i32 3, label %sw.bb141
    i32 4, label %sw.bb142
  ]

do.body92:                                        ; preds = %do.end87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %16 = load i32, ptr @jsm_debug, align 4
  %and93 = and i32 %16, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %do.body92.while.cond.backedge_crit_edge, label %do.body96

do.body92.while.cond.backedge_crit_edge:          ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

do.body96:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_intr.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_intr, %if.then108)) #5
          to label %while.cond.backedge [label %if.then108], !srcloc !134

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %pci_dev80 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_dev80, align 4
  %dev110 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_intr.__UNIQUE_ID_ddebug276, ptr noundef %dev110, ptr noundef nonnull @.str.6, i32 noundef %current_port.0268) #5
  br label %while.cond.backedge

sw.bb:                                            ; preds = %do.end87
  %19 = ptrtoint ptr %nasync to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nasync, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %current_port.0268, i32 %20)
  %cmp118.not = icmp ult i32 %current_port.0268, %20
  br i1 %cmp118.not, label %if.end121, label %sw.bb.while.cond.backedge_crit_edge

sw.bb.while.cond.backedge_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.end121:                                        ; preds = %sw.bb
  %arrayidx122 = getelementptr %struct.jsm_board, ptr %voidbrd, i32 0, i32 14, i32 %current_port.0268
  %21 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx122, align 4
  %tobool123.not = icmp eq ptr %22, null
  br i1 %tobool123.not, label %if.end121.while.cond.backedge_crit_edge, label %if.end125

if.end121.while.cond.backedge_crit_edge:          ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.end125:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @neo_copy_data_from_uart_to_queue(ptr noundef nonnull %22)
  %ch_lock = getelementptr inbounds %struct.jsm_channel, ptr %22, i32 0, i32 2
  %call134 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ch_lock) #5
  tail call void @jsm_check_queue_flow_control(ptr noundef nonnull %22) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ch_lock, i32 noundef %call134) #5
  br label %while.cond.backedge

sw.bb140:                                         ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @neo_parse_lsr(ptr noundef %voidbrd, i32 noundef %current_port.0268)
  br label %while.cond.backedge

sw.bb141:                                         ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @neo_parse_isr(ptr noundef %voidbrd, i32 noundef %current_port.0268)
  br label %while.cond.backedge

sw.bb142:                                         ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @neo_parse_isr(ptr noundef %voidbrd, i32 noundef %current_port.0268)
  br label %while.cond.backedge

do.body143:                                       ; preds = %do.end87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %23 = load i32, ptr @jsm_debug, align 4
  %and144 = and i32 %23, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %do.body143.while.cond.backedge_crit_edge, label %do.body147

do.body143.while.cond.backedge_crit_edge:         ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

do.body147:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_intr.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_intr, %if.then159)) #5
          to label %while.cond.backedge [label %if.then159], !srcloc !134

if.then159:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %pci_dev80 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci_dev80, align 4
  %dev161 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_intr.__UNIQUE_ID_ddebug277, ptr noundef %dev161, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 1228, i32 noundef %and60) #5
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bd_intr_lock, i32 noundef %call3) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %26 = load i32, ptr @jsm_debug, align 4
  %and170 = and i32 %26, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %while.end.cleanup_crit_edge, label %do.body173

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body173:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_intr.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_intr, %if.then185)) #5
          to label %cleanup [label %if.then185], !srcloc !134

if.then185:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev186 = getelementptr inbounds %struct.jsm_board, ptr %voidbrd, i32 0, i32 3
  %27 = ptrtoint ptr %pci_dev186 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci_dev186, align 4
  %dev187 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_intr.__UNIQUE_ID_ddebug278, ptr noundef %dev187, ptr noundef nonnull @.str.8) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then185, %do.body173, %while.end.cleanup_crit_edge, %do.end48
  %retval.0 = phi i32 [ 0, %do.end48 ], [ 1, %if.then185 ], [ 1, %while.end.cleanup_crit_edge ], [ 1, %do.body173 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @neo_uart_init(ptr nocapture noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %0 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_neo_uart, align 4
  %ier = getelementptr inbounds %struct.neo_uart_struct, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier, i8 0) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch_neo_uart, align 4
  %efr = getelementptr inbounds %struct.neo_uart_struct, ptr %3, i32 0, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %efr, i8 0) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch_neo_uart, align 4
  %efr7 = getelementptr inbounds %struct.neo_uart_struct, ptr %5, i32 0, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %efr7, i8 16) #5, !srcloc !136
  %6 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch_neo_uart, align 4
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ch_neo_uart, align 4
  %isr_fcr = getelementptr inbounds %struct.neo_uart_struct, ptr %10, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr, i8 7) #5, !srcloc !136
  %11 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ch_neo_uart, align 4
  %lsr = getelementptr inbounds %struct.neo_uart_struct, ptr %12, i32 0, i32 5
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lsr) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  %14 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ch_neo_uart, align 4
  %msr = getelementptr inbounds %struct.neo_uart_struct, ptr %15, i32 0, i32 6
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %msr) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %17 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ch_flags, align 4
  %or = or i32 %18, 512
  store i32 %or, ptr %ch_flags, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %ch_mostat = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 14
  %19 = ptrtoint ptr %ch_mostat to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ch_mostat, align 2
  %21 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ch_neo_uart, align 4
  %mcr = getelementptr inbounds %struct.neo_uart_struct, ptr %22, i32 0, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mcr, i8 %20) #5, !srcloc !136
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @neo_uart_off(ptr nocapture noundef readonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  tail call void @arm_heavy_mb() #5
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %0 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_neo_uart, align 4
  %efr = getelementptr inbounds %struct.neo_uart_struct, ptr %1, i32 0, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %efr, i8 0) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch_neo_uart, align 4
  %ier = getelementptr inbounds %struct.neo_uart_struct, ptr %3, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier, i8 0) #5, !srcloc !136
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @neo_param(ptr noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %0 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_bd, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ch_c_cflag = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 9
  %2 = ptrtoint ptr %ch_c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_c_cflag, align 4
  %and = and i32 %3, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %ch_r_tail = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 21
  %4 = ptrtoint ptr %ch_r_tail to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %ch_r_tail, align 2
  %ch_r_head = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 20
  %5 = ptrtoint ptr %ch_r_head to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %ch_r_head, align 4
  %ch_e_tail = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 24
  %6 = ptrtoint ptr %ch_e_tail to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %ch_e_tail, align 2
  %ch_e_head = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 23
  %7 = ptrtoint ptr %ch_e_head to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %ch_e_head, align 4
  %tobool.not.i = icmp eq ptr %ch, null
  br i1 %tobool.not.i, label %neo_flush_uart_read.exit.thread, label %do.body.i

do.body.i:                                        ; preds = %if.then1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  tail call void @arm_heavy_mb() #5
  %ch_neo_uart.i = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %8 = ptrtoint ptr %ch_neo_uart.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ch_neo_uart.i, align 4
  %isr_fcr.i = getelementptr inbounds %struct.neo_uart_struct, ptr %9, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr.i, i8 5) #5, !srcloc !136
  br label %for.body.i

for.body.i:                                       ; preds = %do.end23.i.for.body.i_crit_edge, %do.body.i
  %i.033.i = phi i32 [ 0, %do.body.i ], [ %inc.i, %do.end23.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %ch_neo_uart.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ch_neo_uart.i, align 4
  %isr_fcr2.i = getelementptr inbounds %struct.neo_uart_struct, ptr %11, i32 0, i32 2
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr_fcr2.i) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  %13 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not.i = icmp eq i8 %13, 0
  br i1 %tobool5.not.i, label %for.body.i.do.body.i266_crit_edge, label %do.body7.i

for.body.i.do.body.i266_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i266

do.body7.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %14 = load i32, ptr @jsm_debug, align 4
  %and8.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %do.body7.i.do.end23.i_crit_edge, label %do.body11.i

do.body7.i.do.end23.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i

do.body11.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_flush_uart_write.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_param, %if.then17.i)) #5
          to label %do.end23.i [label %if.then17.i], !srcloc !134

if.then17.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ch_bd, align 8
  %pci_dev.i = getelementptr inbounds %struct.jsm_board, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_flush_uart_write.__UNIQUE_ID_ddebug258, ptr noundef %dev.i, ptr noundef nonnull @.str.44, i32 noundef %i.033.i) #5
  br label %do.end23.i

do.end23.i:                                       ; preds = %if.then17.i, %do.body11.i, %do.body7.i.do.end23.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #5
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %do.end23.i.do.body.i266_crit_edge, label %do.end23.i.for.body.i_crit_edge

do.end23.i.for.body.i_crit_edge:                  ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end23.i.do.body.i266_crit_edge:                ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i266

do.body.i266:                                     ; preds = %do.end23.i.do.body.i266_crit_edge, %for.body.i.do.body.i266_crit_edge
  %ch_flags.i = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %20 = ptrtoint ptr %ch_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ch_flags.i, align 4
  %or.i = or i32 %21, 3072
  store i32 %or.i, ptr %ch_flags.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %ch_neo_uart.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ch_neo_uart.i, align 4
  %isr_fcr.i264 = getelementptr inbounds %struct.neo_uart_struct, ptr %23, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr.i264, i8 3) #5, !srcloc !136
  br label %for.body.i269

for.body.i269:                                    ; preds = %do.end23.i279.for.body.i269_crit_edge, %do.body.i266
  %i.032.i = phi i32 [ 0, %do.body.i266 ], [ %inc.i277, %do.end23.i279.for.body.i269_crit_edge ]
  %24 = ptrtoint ptr %ch_neo_uart.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ch_neo_uart.i, align 4
  %isr_fcr2.i267 = getelementptr inbounds %struct.neo_uart_struct, ptr %25, i32 0, i32 2
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr_fcr2.i267) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  %27 = and i8 %26, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool5.not.i268 = icmp eq i8 %27, 0
  br i1 %tobool5.not.i268, label %for.body.i269.do.body.i283_crit_edge, label %do.body7.i272

for.body.i269.do.body.i283_crit_edge:             ; preds = %for.body.i269
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i283

do.body7.i272:                                    ; preds = %for.body.i269
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %28 = load i32, ptr @jsm_debug, align 4
  %and8.i270 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i270)
  %tobool9.not.i271 = icmp eq i32 %and8.i270, 0
  br i1 %tobool9.not.i271, label %do.body7.i272.do.end23.i279_crit_edge, label %do.body11.i273

do.body7.i272.do.end23.i279_crit_edge:            ; preds = %do.body7.i272
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i279

do.body11.i273:                                   ; preds = %do.body7.i272
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_flush_uart_read.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_param, %if.then17.i276)) #5
          to label %do.end23.i279 [label %if.then17.i276], !srcloc !134

if.then17.i276:                                   ; preds = %do.body11.i273
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ch_bd, align 8
  %pci_dev.i274 = getelementptr inbounds %struct.jsm_board, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %pci_dev.i274 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci_dev.i274, align 4
  %dev.i275 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_flush_uart_read.__UNIQUE_ID_ddebug259, ptr noundef %dev.i275, ptr noundef nonnull @.str.46, i32 noundef %i.032.i) #5
  br label %do.end23.i279

do.end23.i279:                                    ; preds = %if.then17.i276, %do.body11.i273, %do.body7.i272.do.end23.i279_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #5
  %inc.i277 = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i278 = icmp eq i32 %inc.i277, 10
  br i1 %exitcond.not.i278, label %do.end23.i279.do.body.i283_crit_edge, label %do.end23.i279.for.body.i269_crit_edge

do.end23.i279.for.body.i269_crit_edge:            ; preds = %do.end23.i279
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i269

do.end23.i279.do.body.i283_crit_edge:             ; preds = %do.end23.i279
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i283

neo_flush_uart_read.exit.thread:                  ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  %ch_flags299 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %34 = ptrtoint ptr %ch_flags299 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ch_flags299, align 4
  %or300 = or i32 %35, 32768
  store i32 %or300, ptr %ch_flags299, align 4
  %ch_mostat301 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 14
  %36 = ptrtoint ptr %ch_mostat301 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ch_mostat301, align 2
  %38 = and i8 %37, -4
  store i8 %38, ptr %ch_mostat301, align 2
  br label %cleanup

do.body.i283:                                     ; preds = %do.end23.i279.do.body.i283_crit_edge, %for.body.i269.do.body.i283_crit_edge
  %39 = ptrtoint ptr %ch_flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ch_flags.i, align 4
  %or = or i32 %40, 32768
  store i32 %or, ptr %ch_flags.i, align 4
  %ch_mostat = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 14
  %41 = ptrtoint ptr %ch_mostat to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ch_mostat, align 2
  %43 = and i8 %42, -4
  store i8 %43, ptr %ch_mostat, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %ch_mostat to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ch_mostat, align 2
  %46 = ptrtoint ptr %ch_neo_uart.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ch_neo_uart.i, align 4
  %mcr.i = getelementptr inbounds %struct.neo_uart_struct, ptr %47, i32 0, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mcr.i, i8 %45) #5, !srcloc !136
  %48 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ch_bd, align 8
  %re_map_membase.i.i = getelementptr inbounds %struct.jsm_board, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %re_map_membase.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %re_map_membase.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 141
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  br label %cleanup

if.else:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.uart_port, ptr %ch, i32 0, i32 30
  %53 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %state, align 4
  %tty = getelementptr inbounds %struct.tty_port, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tty, align 4
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %56, i32 0, i32 13, i32 2
  %57 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %c_cflag, align 4
  %and4 = and i32 %58, 4111
  %59 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %and4, label %if.else.for.end_crit_edge [
    i32 4103, label %if.else.if.then10_crit_edge
    i32 4100, label %if.then10.fold.split
    i32 4099, label %if.then10.fold.split306
    i32 4098, label %if.then10.fold.split307
    i32 4097, label %if.then10.fold.split308
    i32 15, label %if.then10.fold.split309
    i32 14, label %if.then10.fold.split310
    i32 13, label %if.then10.fold.split311
    i32 12, label %if.then10.fold.split312
    i32 11, label %if.then10.fold.split313
    i32 9, label %if.then10.fold.split314
    i32 8, label %if.then10.fold.split315
    i32 7, label %if.then10.fold.split316
    i32 6, label %if.then10.fold.split317
    i32 5, label %if.then10.fold.split318
    i32 4, label %if.then10.fold.split319
    i32 3, label %if.then10.fold.split320
    i32 2, label %if.then10.fold.split321
    i32 1, label %if.then10.fold.split322
  ]

if.else.if.then10_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then10.fold.split:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10.fold.split306:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10.fold.split307:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10.fold.split308:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10.fold.split309:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10.fold.split310:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10.fold.split311:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10.fold.split312:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10.fold.split313:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10.fold.split314:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10.fold.split315:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10.fold.split316:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10.fold.split317:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10.fold.split318:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10.fold.split319:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10.fold.split320:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10.fold.split321:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10.fold.split322:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10:                                        ; preds = %if.then10.fold.split322, %if.then10.fold.split321, %if.then10.fold.split320, %if.then10.fold.split319, %if.then10.fold.split318, %if.then10.fold.split317, %if.then10.fold.split316, %if.then10.fold.split315, %if.then10.fold.split314, %if.then10.fold.split313, %if.then10.fold.split312, %if.then10.fold.split311, %if.then10.fold.split310, %if.then10.fold.split309, %if.then10.fold.split308, %if.then10.fold.split307, %if.then10.fold.split306, %if.then10.fold.split, %if.else.if.then10_crit_edge
  %i.0304.lcssa = phi i32 [ 0, %if.else.if.then10_crit_edge ], [ 1, %if.then10.fold.split ], [ 2, %if.then10.fold.split306 ], [ 3, %if.then10.fold.split307 ], [ 4, %if.then10.fold.split308 ], [ 5, %if.then10.fold.split309 ], [ 6, %if.then10.fold.split310 ], [ 7, %if.then10.fold.split311 ], [ 8, %if.then10.fold.split312 ], [ 9, %if.then10.fold.split313 ], [ 10, %if.then10.fold.split314 ], [ 11, %if.then10.fold.split315 ], [ 12, %if.then10.fold.split316 ], [ 13, %if.then10.fold.split317 ], [ 14, %if.then10.fold.split318 ], [ 15, %if.then10.fold.split319 ], [ 16, %if.then10.fold.split320 ], [ 17, %if.then10.fold.split321 ], [ 18, %if.then10.fold.split322 ]
  %arrayidx = getelementptr [19 x %struct.anon.76], ptr @neo_param.baud_rates, i32 0, i32 %i.0304.lcssa
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx, align 4
  br label %for.end

for.end:                                          ; preds = %if.then10, %if.else.for.end_crit_edge
  %baud.0 = phi i32 [ %61, %if.then10 ], [ 9600, %if.else.for.end_crit_edge ]
  %ch_flags13 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %62 = ptrtoint ptr %ch_flags13 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ch_flags13, align 4
  %and14 = and i32 %63, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %for.end.if.end19_crit_edge, label %if.then16

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %and18 = and i32 %63, -32769
  %64 = ptrtoint ptr %ch_flags13 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and18, ptr %ch_flags13, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %for.end.if.end19_crit_edge
  %and22 = lshr i32 %3, 5
  %65 = trunc i32 %and22 to i8
  %66 = and i8 %65, 8
  %and30 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %67 = or i8 %66, 16
  %lcr.1 = select i1 %tobool31.not, i8 %67, i8 %66
  %and38 = lshr i32 %3, 25
  %68 = trunc i32 %and38 to i8
  %69 = and i8 %68, 32
  %70 = trunc i32 %3 to i8
  %71 = lshr i8 %70, 4
  %72 = and i8 %71, 4
  %73 = or i8 %72, %69
  %74 = or i8 %73, %lcr.1
  %and54 = lshr i32 %3, 4
  %75 = and i32 %and54, 3
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %75, label %if.end52.unreachabledefault [
    i32 0, label %if.end19.sw.epilog_crit_edge
    i32 1, label %sw.bb58
    i32 2, label %sw.bb62
    i32 3, label %sw.default
  ]

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %77 = or i8 %74, 1
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %78 = or i8 %74, 2
  br label %sw.epilog

if.end52.unreachabledefault:                      ; preds = %if.end19
  unreachable

sw.default:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %79 = or i8 %74, 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb62, %sw.bb58, %if.end19.sw.epilog_crit_edge
  %lcr.4 = phi i8 [ %79, %sw.default ], [ %78, %sw.bb62 ], [ %77, %sw.bb58 ], [ %74, %if.end19.sw.epilog_crit_edge ]
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %80 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ch_neo_uart, align 4
  %ier70 = getelementptr inbounds %struct.neo_uart_struct, ptr %81, i32 0, i32 1
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ier70) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  %83 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ch_neo_uart, align 4
  %lcr75 = getelementptr inbounds %struct.neo_uart_struct, ptr %84, i32 0, i32 3
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lcr75) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  %86 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ch_bd, align 8
  %bd_dividend = getelementptr inbounds %struct.jsm_board, ptr %87, i32 0, i32 15
  %88 = ptrtoint ptr %bd_dividend to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bd_dividend, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %baud.0, i32 %89)
  %cmp80.not = icmp ugt i32 %baud.0, %89
  br i1 %cmp80.not, label %sw.epilog.if.end102_crit_edge, label %do.body

sw.epilog.if.end102_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

do.body:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %div = udiv i32 %89, %baud.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ch_neo_uart, align 4
  %lcr84 = getelementptr inbounds %struct.neo_uart_struct, ptr %91, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr84, i8 -128) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  tail call void @arm_heavy_mb() #5
  %conv89 = trunc i32 %div to i8
  %92 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ch_neo_uart, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %93, i8 %conv89) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %94 = lshr i32 %div, 8
  %conv94 = trunc i32 %94 to i8
  %95 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ch_neo_uart, align 4
  %ier96 = getelementptr inbounds %struct.neo_uart_struct, ptr %96, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier96, i8 %conv94) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  tail call void @arm_heavy_mb() #5
  %97 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ch_neo_uart, align 4
  %lcr101 = getelementptr inbounds %struct.neo_uart_struct, ptr %98, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr101, i8 %lcr.4) #5, !srcloc !136
  br label %if.end102

if.end102:                                        ; preds = %do.body, %sw.epilog.if.end102_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %85, i8 %lcr.4)
  %cmp105.not = icmp eq i8 %85, %lcr.4
  br i1 %cmp105.not, label %if.end102.if.end113_crit_edge, label %do.body108

if.end102.if.end113_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

do.body108:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  tail call void @arm_heavy_mb() #5
  %99 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ch_neo_uart, align 4
  %lcr112 = getelementptr inbounds %struct.neo_uart_struct, ptr %100, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr112, i8 %lcr.4) #5, !srcloc !136
  br label %if.end113

if.end113:                                        ; preds = %do.body108, %if.end102.if.end113_crit_edge
  %101 = ptrtoint ptr %ch_c_cflag to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ch_c_cflag, align 4
  %and115 = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  %103 = or i8 %82, 5
  %spec.select261 = select i1 %tobool116.not, i8 %82, i8 %103
  %104 = or i8 %spec.select261, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  tail call void @arm_heavy_mb() #5
  %105 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ch_neo_uart, align 4
  %ier129 = getelementptr inbounds %struct.neo_uart_struct, ptr %106, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier129, i8 %104) #5, !srcloc !136
  %107 = ptrtoint ptr %ch_c_cflag to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ch_c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %108)
  %tobool.not.i284 = icmp sgt i32 %108, -1
  br i1 %tobool.not.i284, label %do.body.i285, label %if.end113.if.then133_crit_edge

if.end113.if.then133_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then133

do.body.i285:                                     ; preds = %if.end113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %109 = load i32, ptr @jsm_debug, align 4
  %and1.i = and i32 %109, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %do.body.i285.neo_set_new_start_stop_chars.exit_crit_edge, label %do.body4.i

do.body.i285.neo_set_new_start_stop_chars.exit_crit_edge: ; preds = %do.body.i285
  call void @__sanitizer_cov_trace_pc() #7
  br label %neo_set_new_start_stop_chars.exit

do.body4.i:                                       ; preds = %do.body.i285
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_set_new_start_stop_chars.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_param, %if.then8.i)) #5
          to label %neo_set_new_start_stop_chars.exit [label %if.then8.i], !srcloc !134

if.then8.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  %110 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ch_bd, align 8
  %pci_dev.i287 = getelementptr inbounds %struct.jsm_board, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %pci_dev.i287 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pci_dev.i287, align 4
  %dev.i288 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_set_new_start_stop_chars.__UNIQUE_ID_ddebug242, ptr noundef %dev.i288, ptr noundef nonnull @.str.30) #5
  br label %neo_set_new_start_stop_chars.exit

neo_set_new_start_stop_chars.exit:                ; preds = %if.then8.i, %do.body4.i, %do.body.i285.neo_set_new_start_stop_chars.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void @arm_heavy_mb() #5
  %ch_startc.i = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 13
  %114 = ptrtoint ptr %ch_startc.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %ch_startc.i, align 1
  %116 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ch_neo_uart, align 4
  %xonchar1.i = getelementptr inbounds %struct.neo_uart_struct, ptr %117, i32 0, i32 14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %xonchar1.i, i8 %115) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void @arm_heavy_mb() #5
  %118 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ch_neo_uart, align 4
  %xonchar2.i = getelementptr inbounds %struct.neo_uart_struct, ptr %119, i32 0, i32 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %xonchar2.i, i8 0) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  tail call void @arm_heavy_mb() #5
  %ch_stopc.i = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 12
  %120 = ptrtoint ptr %ch_stopc.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %ch_stopc.i, align 8
  %122 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ch_neo_uart, align 4
  %xoffchar1.i = getelementptr inbounds %struct.neo_uart_struct, ptr %123, i32 0, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %xoffchar1.i, i8 %121) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %124 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ch_neo_uart, align 4
  %xoffchar2.i = getelementptr inbounds %struct.neo_uart_struct, ptr %125, i32 0, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %xoffchar2.i, i8 0) #5, !srcloc !136
  %126 = ptrtoint ptr %ch_c_cflag to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pr = load i32, ptr %ch_c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %tobool132.not = icmp sgt i32 %.pr, -1
  br i1 %tobool132.not, label %if.else134, label %neo_set_new_start_stop_chars.exit.if.then133_crit_edge

neo_set_new_start_stop_chars.exit.if.then133_crit_edge: ; preds = %neo_set_new_start_stop_chars.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then133

if.then133:                                       ; preds = %neo_set_new_start_stop_chars.exit.if.then133_crit_edge, %if.end113.if.then133_crit_edge
  tail call fastcc void @neo_set_cts_flow_control(ptr noundef %ch)
  br label %if.end149

if.else134:                                       ; preds = %neo_set_new_start_stop_chars.exit
  %ch_c_iflag = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 8
  %127 = ptrtoint ptr %ch_c_iflag to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ch_c_iflag, align 8
  %and135 = and i32 %128, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %if.else147, label %if.then137

if.then137:                                       ; preds = %if.else134
  %129 = ptrtoint ptr %ch_startc.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %ch_startc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %cmp139 = icmp eq i8 %130, 0
  br i1 %cmp139, label %if.then137.if.then144_crit_edge, label %lor.lhs.false

if.then137.if.then144_crit_edge:                  ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then144

lor.lhs.false:                                    ; preds = %if.then137
  %131 = ptrtoint ptr %ch_stopc.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %ch_stopc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %cmp142 = icmp eq i8 %132, 0
  br i1 %cmp142, label %lor.lhs.false.if.then144_crit_edge, label %if.else145

lor.lhs.false.if.then144_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then144

if.then144:                                       ; preds = %lor.lhs.false.if.then144_crit_edge, %if.then137.if.then144_crit_edge
  tail call fastcc void @neo_set_no_output_flow_control(ptr noundef %ch)
  br label %if.end149

if.else145:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @neo_set_ixon_flow_control(ptr noundef %ch)
  br label %if.end149

if.else147:                                       ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @neo_set_no_output_flow_control(ptr noundef %ch)
  br label %if.end149

if.end149:                                        ; preds = %if.else147, %if.else145, %if.then144, %if.then133
  %133 = ptrtoint ptr %ch_c_cflag to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ch_c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %134)
  %tobool152.not = icmp sgt i32 %134, -1
  br i1 %tobool152.not, label %if.else154, label %if.then153

if.then153:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @neo_set_rts_flow_control(ptr noundef %ch)
  br label %if.end173

if.else154:                                       ; preds = %if.end149
  %ch_c_iflag155 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 8
  %135 = ptrtoint ptr %ch_c_iflag155 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %ch_c_iflag155, align 8
  %and156 = and i32 %136, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.else171, label %if.then158

if.then158:                                       ; preds = %if.else154
  %ch_startc159 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 13
  %137 = ptrtoint ptr %ch_startc159 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %ch_startc159, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %cmp161 = icmp eq i8 %138, 0
  br i1 %cmp161, label %if.then158.if.then168_crit_edge, label %lor.lhs.false163

if.then158.if.then168_crit_edge:                  ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then168

lor.lhs.false163:                                 ; preds = %if.then158
  %ch_stopc164 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 12
  %139 = ptrtoint ptr %ch_stopc164 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %ch_stopc164, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %cmp166 = icmp eq i8 %140, 0
  br i1 %cmp166, label %lor.lhs.false163.if.then168_crit_edge, label %if.else169

lor.lhs.false163.if.then168_crit_edge:            ; preds = %lor.lhs.false163
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then168

if.then168:                                       ; preds = %lor.lhs.false163.if.then168_crit_edge, %if.then158.if.then168_crit_edge
  tail call fastcc void @neo_set_no_input_flow_control(ptr noundef %ch)
  br label %if.end173

if.else169:                                       ; preds = %lor.lhs.false163
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @neo_set_ixoff_flow_control(ptr noundef %ch)
  br label %if.end173

if.else171:                                       ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @neo_set_no_input_flow_control(ptr noundef %ch)
  br label %if.end173

if.end173:                                        ; preds = %if.else171, %if.else169, %if.then168, %if.then153
  call void @__sanitizer_cov_trace_const_cmp4(i32 9600, i32 %baud.0)
  %cmp174 = icmp ult i32 %baud.0, 9600
  br i1 %cmp174, label %do.body177, label %if.end173.if.end181_crit_edge

if.end173.if.end181_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end181

do.body177:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  tail call void @arm_heavy_mb() #5
  %141 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ch_neo_uart, align 4
  %rfifo = getelementptr inbounds %struct.neo_uart_struct, ptr %142, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %rfifo, i8 1) #5, !srcloc !136
  %ch_r_tlevel = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 27
  %143 = ptrtoint ptr %ch_r_tlevel to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 1, ptr %ch_r_tlevel, align 8
  br label %if.end181

if.end181:                                        ; preds = %do.body177, %if.end173.if.end181_crit_edge
  %tobool.not.i290 = icmp eq ptr %ch, null
  br i1 %tobool.not.i290, label %if.end181.neo_assert_modem_signals.exit298_crit_edge, label %do.body.i297

if.end181.neo_assert_modem_signals.exit298_crit_edge: ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #7
  br label %neo_assert_modem_signals.exit298

do.body.i297:                                     ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void @arm_heavy_mb() #5
  %ch_mostat.i291 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 14
  %144 = ptrtoint ptr %ch_mostat.i291 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %ch_mostat.i291, align 2
  %146 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ch_neo_uart, align 4
  %mcr.i293 = getelementptr inbounds %struct.neo_uart_struct, ptr %147, i32 0, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mcr.i293, i8 %145) #5, !srcloc !136
  %148 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ch_bd, align 8
  %re_map_membase.i.i295 = getelementptr inbounds %struct.jsm_board, ptr %149, i32 0, i32 10
  %150 = ptrtoint ptr %re_map_membase.i.i295 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %re_map_membase.i.i295, align 8
  %add.ptr.i.i296 = getelementptr i8, ptr %151, i32 141
  %152 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i296) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  br label %neo_assert_modem_signals.exit298

neo_assert_modem_signals.exit298:                 ; preds = %do.body.i297, %if.end181.neo_assert_modem_signals.exit298_crit_edge
  %153 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ch_neo_uart, align 4
  %msr = getelementptr inbounds %struct.neo_uart_struct, ptr %154, i32 0, i32 6
  %155 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %msr) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call fastcc void @neo_parse_modem(ptr noundef %ch, i8 noundef zeroext %155)
  br label %cleanup

cleanup:                                          ; preds = %neo_assert_modem_signals.exit298, %do.body.i283, %neo_flush_uart_read.exit.thread, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @neo_assert_modem_signals(ptr noundef readonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void @arm_heavy_mb() #5
  %ch_mostat = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 14
  %0 = ptrtoint ptr %ch_mostat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ch_mostat, align 2
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %2 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch_neo_uart, align 4
  %mcr = getelementptr inbounds %struct.neo_uart_struct, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mcr, i8 %1) #5, !srcloc !136
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %4 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch_bd, align 8
  %re_map_membase.i = getelementptr inbounds %struct.jsm_board, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %re_map_membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %re_map_membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 141
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @neo_flush_uart_write(ptr noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  tail call void @arm_heavy_mb() #5
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %0 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_neo_uart, align 4
  %isr_fcr = getelementptr inbounds %struct.neo_uart_struct, ptr %1, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr, i8 5) #5, !srcloc !136
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %do.end23.for.body_crit_edge, %do.body
  %i.033 = phi i32 [ 0, %do.body ], [ %inc, %do.end23.for.body_crit_edge ]
  %2 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch_neo_uart, align 4
  %isr_fcr2 = getelementptr inbounds %struct.neo_uart_struct, ptr %3, i32 0, i32 2
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr_fcr2) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  %5 = and i8 %4, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %for.body.for.end_crit_edge, label %do.body7

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body7:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %6 = load i32, ptr @jsm_debug, align 4
  %and8 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.do.end23_crit_edge, label %do.body11

do.body7.do.end23_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.body11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_flush_uart_write.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_flush_uart_write, %if.then17)) #5
          to label %do.end23 [label %if.then17], !srcloc !134

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_flush_uart_write.__UNIQUE_ID_ddebug258, ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %i.033) #5
  br label %do.end23

do.end23:                                         ; preds = %if.then17, %do.body11, %do.body7.do.end23_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #5
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.end23.for.end_crit_edge, label %do.end23.for.body_crit_edge

do.end23.for.body_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end23.for.end_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %do.end23.for.end_crit_edge, %for.body.for.end_crit_edge
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
define internal void @neo_flush_uart_read(ptr noundef readonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  tail call void @arm_heavy_mb() #5
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %0 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_neo_uart, align 4
  %isr_fcr = getelementptr inbounds %struct.neo_uart_struct, ptr %1, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr_fcr, i8 3) #5, !srcloc !136
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %do.end23.for.body_crit_edge, %do.body
  %i.032 = phi i32 [ 0, %do.body ], [ %inc, %do.end23.for.body_crit_edge ]
  %2 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch_neo_uart, align 4
  %isr_fcr2 = getelementptr inbounds %struct.neo_uart_struct, ptr %3, i32 0, i32 2
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr_fcr2) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %for.body.cleanup_crit_edge, label %do.body7

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body7:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %6 = load i32, ptr @jsm_debug, align 4
  %and8 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.do.end23_crit_edge, label %do.body11

do.body7.do.end23_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.body11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_flush_uart_read.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_flush_uart_read, %if.then17)) #5
          to label %do.end23 [label %if.then17], !srcloc !134

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_flush_uart_read.__UNIQUE_ID_ddebug259, ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %i.032) #5
  br label %do.end23

do.end23:                                         ; preds = %if.then17, %do.body11, %do.body7.do.end23_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #5
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.end23.cleanup_crit_edge, label %do.end23.for.body_crit_edge

do.end23.for.body_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end23.cleanup_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %do.end23.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @neo_disable_receiver(ptr nocapture noundef readonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %0 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_neo_uart, align 4
  %ier = getelementptr inbounds %struct.neo_uart_struct, ptr %1, i32 0, i32 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ier) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  %3 = and i8 %2, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch_neo_uart, align 4
  %ier5 = getelementptr inbounds %struct.neo_uart_struct, ptr %5, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier5, i8 %3) #5, !srcloc !136
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %6 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch_bd, align 8
  %re_map_membase.i = getelementptr inbounds %struct.jsm_board, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %re_map_membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %re_map_membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 141
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @neo_enable_receiver(ptr nocapture noundef readonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %0 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_neo_uart, align 4
  %ier = getelementptr inbounds %struct.neo_uart_struct, ptr %1, i32 0, i32 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ier) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  %3 = or i8 %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch_neo_uart, align 4
  %ier5 = getelementptr inbounds %struct.neo_uart_struct, ptr %5, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier5, i8 %3) #5, !srcloc !136
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %6 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch_bd, align 8
  %re_map_membase.i = getelementptr inbounds %struct.jsm_board, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %re_map_membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %re_map_membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 141
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @neo_send_break(ptr nocapture noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %2 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch_neo_uart, align 4
  %lcr = getelementptr inbounds %struct.neo_uart_struct, ptr %3, i32 0, i32 3
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lcr) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  tail call void @arm_heavy_mb() #5
  %5 = or i8 %4, 64
  %6 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch_neo_uart, align 4
  %lcr4 = getelementptr inbounds %struct.neo_uart_struct, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr4, i8 %5) #5, !srcloc !136
  %8 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ch_flags, align 4
  %or6 = or i32 %9, 4096
  store i32 %or6, ptr %ch_flags, align 4
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %10 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ch_bd, align 8
  %re_map_membase.i = getelementptr inbounds %struct.jsm_board, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %re_map_membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %re_map_membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 141
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @neo_clear_break(ptr noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_lock = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ch_lock) #5
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %0 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ch_flags, align 4
  %and = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end35_crit_edge, label %if.then

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then:                                          ; preds = %entry
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %2 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch_neo_uart, align 4
  %lcr = getelementptr inbounds %struct.neo_uart_struct, ptr %3, i32 0, i32 3
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lcr) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !174
  tail call void @arm_heavy_mb() #5
  %5 = and i8 %4, -65
  %6 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch_neo_uart, align 4
  %lcr15 = getelementptr inbounds %struct.neo_uart_struct, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %lcr15, i8 %5) #5, !srcloc !136
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
  br i1 %tobool20.not, label %if.then.do.end33_crit_edge, label %do.body22

if.then.do.end33_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33

do.body22:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_clear_break.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_clear_break, %if.then28)) #5
          to label %do.end33 [label %if.then28], !srcloc !134

if.then28:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_clear_break.__UNIQUE_ID_ddebug260, ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef %15) #5
  br label %do.end33

do.end33:                                         ; preds = %if.then28, %do.body22, %if.then.do.end33_crit_edge
  %ch_bd34 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %16 = ptrtoint ptr %ch_bd34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ch_bd34, align 8
  %re_map_membase.i = getelementptr inbounds %struct.jsm_board, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %re_map_membase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %re_map_membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %19, i32 141
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  br label %if.end35

if.end35:                                         ; preds = %do.end33, %entry.if.end35_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ch_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @neo_send_start_character(ptr noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ch_xon_sends = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 35
  %2 = ptrtoint ptr %ch_xon_sends to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ch_xon_sends, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %ch_xon_sends, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !175
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %ch_startc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ch_startc, align 1
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %6 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch_neo_uart, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #5, !srcloc !136
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %8 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ch_bd, align 8
  %re_map_membase.i = getelementptr inbounds %struct.jsm_board, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %re_map_membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %re_map_membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 141
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @neo_send_stop_character(ptr noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ch_xoff_sends = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 36
  %2 = ptrtoint ptr %ch_xoff_sends to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ch_xoff_sends, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %ch_xoff_sends, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !176
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %ch_stopc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ch_stopc, align 8
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %6 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch_neo_uart, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #5, !srcloc !136
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %8 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ch_bd, align 8
  %re_map_membase.i = getelementptr inbounds %struct.jsm_board, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %re_map_membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %re_map_membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 141
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @neo_copy_data_from_queue_to_uart(ptr noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.uart_port, ptr %ch, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %head1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %head1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head1, align 4
  %tail2 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %tail2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %6 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ch_flags, align 4
  %8 = and i32 %7, 4098
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.end10, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %and12 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end54

if.then14:                                        ; preds = %if.end10
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %10 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ch_neo_uart, align 4
  %lsr = getelementptr inbounds %struct.neo_uart_struct, ptr %11, i32 0, i32 5
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lsr) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !177
  %ch_cached_lsr = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 18
  %13 = ptrtoint ptr %ch_cached_lsr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ch_cached_lsr, align 4
  %or187 = or i8 %14, %12
  store i8 %or187, ptr %ch_cached_lsr, align 4
  %15 = and i8 %or187, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool21.not = icmp eq i8 %15, 0
  br i1 %tobool21.not, label %if.then14.cleanup_crit_edge, label %if.then22

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then22:                                        ; preds = %if.then14
  %and25 = and i8 %or187, -33
  %16 = ptrtoint ptr %ch_cached_lsr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %and25, ptr %ch_cached_lsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !178
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xmit, align 4
  %19 = ptrtoint ptr %tail2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail2, align 4
  %arrayidx = getelementptr i8, ptr %18, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %23 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ch_neo_uart, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 %22) #5, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %25 = load i32, ptr @jsm_debug, align 4
  %and30 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then22.do.end49_crit_edge, label %do.body33

if.then22.do.end49_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end49

do.body33:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_copy_data_from_queue_to_uart.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_copy_data_from_queue_to_uart, %if.then39)) #5
          to label %do.end49 [label %if.then39], !srcloc !134

if.then39:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %26 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %30 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xmit, align 4
  %32 = ptrtoint ptr %tail2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tail2, align 4
  %arrayidx42 = getelementptr i8, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_copy_data_from_queue_to_uart.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %conv43) #5
  br label %do.end49

do.end49:                                         ; preds = %if.then39, %do.body33, %if.then22.do.end49_crit_edge
  %36 = ptrtoint ptr %tail2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tail2, align 4
  %add = add i32 %37, 1
  %and51 = and i32 %add, 4095
  store i32 %and51, ptr %tail2, align 4
  %ch_txcount = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 26
  %38 = ptrtoint ptr %ch_txcount to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ch_txcount, align 8
  %inc = add i64 %39, 1
  store i64 %inc, ptr %ch_txcount, align 8
  br label %cleanup

if.end54:                                         ; preds = %if.end10
  %and56 = and i32 %7, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end54.cleanup_crit_edge, label %if.end59

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end59:                                         ; preds = %if.end54
  %ch_t_tlevel = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 28
  %40 = ptrtoint ptr %ch_t_tlevel to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ch_t_tlevel, align 1
  %conv60 = zext i8 %41 to i32
  %sub = sub nsw i32 64, %conv60
  %conv63 = and i32 %3, 4095
  %42 = trunc i32 %5 to i16
  %sub69 = sub i32 %3, %5
  %and70 = and i32 %sub69, 4095
  %43 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %and70)
  %tail.0190 = and i16 %42, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp74191 = icmp sgt i32 %43, 0
  br i1 %cmp74191, label %while.body.lr.ph, label %if.end59.while.end_crit_edge

if.end59.while.end_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end59
  %ch_neo_uart98 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %ch_txcount107 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 26
  br label %while.body

while.body:                                       ; preds = %if.end97.while.body_crit_edge, %while.body.lr.ph
  %tail.0194 = phi i16 [ %tail.0190, %while.body.lr.ph ], [ %tail.0, %if.end97.while.body_crit_edge ]
  %n.0193 = phi i32 [ %43, %while.body.lr.ph ], [ %sub105, %if.end97.while.body_crit_edge ]
  %len_written.0192 = phi i32 [ 0, %while.body.lr.ph ], [ %add109, %if.end97.while.body_crit_edge ]
  %conv77 = zext i16 %tail.0194 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv63, i32 %conv77)
  %cmp78.not = icmp ult i32 %conv63, %conv77
  %spec.select = select i1 %cmp78.not, i32 4096, i32 %conv63
  %sub86 = sub nsw i32 %spec.select, %conv77
  %44 = tail call i32 @llvm.smin.i32(i32 %sub86, i32 %n.0193)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp94 = icmp slt i32 %44, 1
  br i1 %cmp94, label %while.body.while.end_crit_edge, label %if.end97

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end97:                                         ; preds = %while.body
  %45 = ptrtoint ptr %ch_neo_uart98 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ch_neo_uart98, align 4
  %txrxburst = getelementptr inbounds %struct.neo_uart_struct, ptr %46, i32 0, i32 17
  %47 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %xmit, align 4
  %add.ptr = getelementptr i8, ptr %48, i32 %conv77
  tail call void @mmiocpy(ptr noundef %txrxburst, ptr noundef %add.ptr, i32 noundef %44) #5
  %49 = trunc i32 %44 to i16
  %50 = add i16 %tail.0194, %49
  %sub105 = sub i32 %n.0193, %44
  %conv106189 = zext i32 %44 to i64
  %51 = ptrtoint ptr %ch_txcount107 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ch_txcount107, align 8
  %add108 = add i64 %52, %conv106189
  store i64 %add108, ptr %ch_txcount107, align 8
  %add109 = add i32 %44, %len_written.0192
  %tail.0 = and i16 %50, 4095
  %cmp74 = icmp sgt i32 %sub105, 0
  br i1 %cmp74, label %if.end97.while.body_crit_edge, label %if.end97.while.end_crit_edge

if.end97.while.end_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end97.while.body_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %if.end97.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end59.while.end_crit_edge
  %len_written.0.lcssa = phi i32 [ 0, %if.end59.while.end_crit_edge ], [ %len_written.0192, %while.body.while.end_crit_edge ], [ %add109, %if.end97.while.end_crit_edge ]
  %tail.0.lcssa = phi i16 [ %tail.0190, %if.end59.while.end_crit_edge ], [ %tail.0194, %while.body.while.end_crit_edge ], [ %tail.0, %if.end97.while.end_crit_edge ]
  %and111 = zext i16 %tail.0.lcssa to i32
  %53 = ptrtoint ptr %tail2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and111, ptr %tail2, align 4
  %54 = ptrtoint ptr %ch_t_tlevel to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ch_t_tlevel, align 1
  %conv114 = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %len_written.0.lcssa, i32 %conv114)
  %cmp115.not = icmp ult i32 %len_written.0.lcssa, %conv114
  br i1 %cmp115.not, label %while.end.if.end120_crit_edge, label %if.then117

while.end.if.end120_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

if.then117:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ch_flags, align 4
  %and119 = and i32 %57, -3073
  store i32 %and119, ptr %ch_flags, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then117, %while.end.if.end120_crit_edge
  %58 = ptrtoint ptr %head1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %head1, align 4
  %60 = ptrtoint ptr %tail2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tail2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp123 = icmp eq i32 %59, %61
  br i1 %cmp123, label %if.then125, label %if.end120.cleanup_crit_edge

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then125:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @uart_write_wakeup(ptr noundef nonnull %ch) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then125, %if.end120.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %do.end49, %if.then14.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @neo_get_uart_bytes_left(ptr nocapture noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %0 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_neo_uart, align 4
  %lsr1 = getelementptr inbounds %struct.neo_uart_struct, ptr %1, i32 0, i32 5
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lsr1) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !179
  %ch_cached_lsr = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 18
  %3 = ptrtoint ptr %ch_cached_lsr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ch_cached_lsr, align 4
  %or11 = or i8 %4, %2
  store i8 %or11, ptr %ch_cached_lsr, align 4
  %5 = and i8 %2, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %6 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ch_flags, align 4
  %or6 = or i32 %7, 3072
  store i32 %or6, ptr %ch_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %left.0 = phi i32 [ 0, %if.else ], [ 1, %entry.if.end_crit_edge ]
  ret i32 %left.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @neo_send_immediate_char(ptr noundef readonly %ch, i8 noundef zeroext %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !180
  tail call void @arm_heavy_mb() #5
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %0 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_neo_uart, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %c) #5, !srcloc !136
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %2 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch_bd, align 8
  %re_map_membase.i = getelementptr inbounds %struct.jsm_board, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %re_map_membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %re_map_membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 141
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neo_copy_data_from_uart_to_queue(ptr noundef %ch) unnamed_addr #0 align 64 {
entry:
  %discard = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_r_head = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 20
  %0 = ptrtoint ptr %ch_r_head to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ch_r_head, align 4
  %2 = and i16 %1, 8191
  %ch_r_tail = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 21
  %3 = ptrtoint ptr %ch_r_tail to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ch_r_tail, align 2
  %5 = and i16 %4, 8191
  %ch_cached_lsr = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 18
  %6 = ptrtoint ptr %ch_cached_lsr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ch_cached_lsr, align 4
  store i8 0, ptr %ch_cached_lsr, align 4
  %conv6 = zext i16 %5 to i32
  %conv7 = zext i16 %2 to i32
  %8 = xor i32 %conv7, -1
  %sub8 = add nsw i32 %conv6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8)
  %cmp = icmp slt i32 %sub8, 0
  %add = add nsw i32 %sub8, 8192
  %spec.select = select i1 %cmp, i32 %add, i32 %sub8
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %9 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ch_flags, align 4
  %and10 = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.else

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %11 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ch_neo_uart, align 4
  %rfifo = getelementptr inbounds %struct.neo_uart_struct, ptr %12, i32 0, i32 11
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %rfifo) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  %conv13 = zext i8 %13 to i32
  %sub14 = add nsw i32 %conv13, -3
  br label %if.end15

if.end15:                                         ; preds = %if.else, %entry.if.end15_crit_edge
  %total.0 = phi i32 [ %sub14, %if.else ], [ 0, %entry.if.end15_crit_edge ]
  %14 = tail call i32 @llvm.smin.i32(i32 %total.0, i32 %spec.select)
  %ch_neo_uart23 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp19286 = icmp sgt i32 %14, 0
  br i1 %cmp19286, label %while.body.lr.ph, label %if.end15.while.end_crit_edge

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end15
  %ch_rqueue = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 19
  %ch_equeue = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 22
  %ch_rxcount = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 25
  br label %while.body

while.body:                                       ; preds = %if.end53.while.body_crit_edge, %while.body.lr.ph
  %qleft.1289 = phi i32 [ %spec.select, %while.body.lr.ph ], [ %sub63, %if.end53.while.body_crit_edge ]
  %total.1288 = phi i32 [ %14, %while.body.lr.ph ], [ %sub62, %if.end53.while.body_crit_edge ]
  %head.0287 = phi i16 [ %2, %while.body.lr.ph ], [ %conv61, %if.end53.while.body_crit_edge ]
  %15 = ptrtoint ptr %ch_neo_uart23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ch_neo_uart23, align 4
  %lsr = getelementptr inbounds %struct.neo_uart_struct, ptr %16, i32 0, i32 5
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lsr) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !182
  %conv27 = zext i8 %17 to i32
  %and28 = and i32 %conv27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end31, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end31:                                         ; preds = %while.body
  %conv32 = zext i16 %head.0287 to i32
  %sub33 = sub nuw nsw i32 8192, %conv32
  %18 = tail call i32 @llvm.umin.i32(i32 %total.1288, i32 %sub33)
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 12)
  %and49 = and i32 %conv27, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end31.if.end53_crit_edge, label %if.then51

if.end31.if.end53_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then51:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ch_flags, align 4
  %or = or i32 %21, 3072
  store i32 %or, ptr %ch_flags, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end31.if.end53_crit_edge
  %22 = ptrtoint ptr %ch_rqueue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ch_rqueue, align 8
  %add.ptr = getelementptr i8, ptr %23, i32 %conv32
  %24 = ptrtoint ptr %ch_neo_uart23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ch_neo_uart23, align 4
  %txrxburst = getelementptr inbounds %struct.neo_uart_struct, ptr %25, i32 0, i32 17
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %txrxburst, i32 noundef %19) #5
  %26 = ptrtoint ptr %ch_equeue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ch_equeue, align 8
  %add.ptr57 = getelementptr i8, ptr %27, i32 %conv32
  %28 = call ptr @memset(ptr %add.ptr57, i32 0, i32 %19)
  %29 = trunc i32 %19 to i16
  %30 = add nuw nsw i16 %head.0287, %29
  %conv61 = and i16 %30, 8191
  %sub62 = sub i32 %total.1288, %19
  %sub63 = sub i32 %qleft.1289, %19
  %conv64283 = zext i32 %19 to i64
  %31 = ptrtoint ptr %ch_rxcount to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ch_rxcount, align 8
  %add65 = add i64 %32, %conv64283
  store i64 %add65, ptr %ch_rxcount, align 8
  %cmp19 = icmp sgt i32 %sub62, 0
  br i1 %cmp19, label %if.end53.while.body_crit_edge, label %if.end53.while.end_crit_edge

if.end53.while.end_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end53.while.body_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %if.end53.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end15.while.end_crit_edge
  %head.0.lcssa = phi i16 [ %2, %if.end15.while.end_crit_edge ], [ %head.0287, %while.body.while.end_crit_edge ], [ %conv61, %if.end53.while.end_crit_edge ]
  %qleft.1.lcssa = phi i32 [ %spec.select, %if.end15.while.end_crit_edge ], [ %qleft.1289, %while.body.while.end_crit_edge ], [ %sub63, %if.end53.while.end_crit_edge ]
  %linestatus.1 = phi i8 [ %7, %if.end15.while.end_crit_edge ], [ %17, %while.body.while.end_crit_edge ], [ 0, %if.end53.while.end_crit_edge ]
  %ch_c_iflag = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 8
  %33 = ptrtoint ptr %ch_c_iflag to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ch_c_iflag, align 8
  %and66 = shl i32 %34, 4
  %35 = and i32 %and66, 16
  %36 = ptrtoint ptr %ch_neo_uart23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ch_neo_uart23, align 4
  %lsr78295308 = getelementptr inbounds %struct.neo_uart_struct, ptr %37, i32 0, i32 5
  %38 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lsr78295308) #5, !srcloc !139
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !183
  %or84276296309 = or i8 %38, %linestatus.1
  %39 = and i8 %or84276296309, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool88.not297310 = icmp eq i8 %39, 0
  br i1 %tobool88.not297310, label %while.end.if.then89_crit_edge, label %if.end91.lr.ph.lr.ph

while.end.if.then89_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then89

if.end91.lr.ph.lr.ph:                             ; preds = %while.end
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %ch_rqueue127 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 19
  %ch_equeue129 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 22
  %ch_err_overrun = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 34
  %ch_rxcount190 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 25
  br label %if.end91.lr.ph

if.end91.lr.ph:                                   ; preds = %do.end185.if.end91.lr.ph_crit_edge, %if.end91.lr.ph.lr.ph
  %or84276296314 = phi i8 [ %or84276296309, %if.end91.lr.ph.lr.ph ], [ %96, %do.end185.if.end91.lr.ph_crit_edge ]
  %qleft.2.ph313 = phi i32 [ %qleft.1.lcssa, %if.end91.lr.ph.lr.ph ], [ %dec, %do.end185.if.end91.lr.ph_crit_edge ]
  %head.1.ph312 = phi i16 [ %head.0.lcssa, %if.end91.lr.ph.lr.ph ], [ %and188, %do.end185.if.end91.lr.ph_crit_edge ]
  %tail.0.ph311 = phi i16 [ %5, %if.end91.lr.ph.lr.ph ], [ %tail.1.lcssa, %do.end185.if.end91.lr.ph_crit_edge ]
  br label %if.end91

if.then89:                                        ; preds = %do.end185.if.then89_crit_edge, %if.then109.if.then89_crit_edge, %while.end.if.then89_crit_edge
  %head.1.ph.lcssa = phi i16 [ %head.0.lcssa, %while.end.if.then89_crit_edge ], [ %head.1.ph312, %if.then109.if.then89_crit_edge ], [ %and188, %do.end185.if.then89_crit_edge ]
  %or84276.lcssa = phi i8 [ %or84276296309, %while.end.if.then89_crit_edge ], [ %52, %if.then109.if.then89_crit_edge ], [ %96, %do.end185.if.then89_crit_edge ]
  %40 = ptrtoint ptr %ch_cached_lsr to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %or84276.lcssa, ptr %ch_cached_lsr, align 4
  %41 = and i16 %head.1.ph.lcssa, 8191
  %42 = ptrtoint ptr %ch_r_head to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %ch_r_head, align 4
  %ch_e_head = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 23
  %43 = ptrtoint ptr %ch_e_head to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %41, ptr %ch_e_head, align 4
  call void @jsm_input(ptr noundef %ch) #5
  ret void

if.end91:                                         ; preds = %if.then109.if.end91_crit_edge, %if.end91.lr.ph
  %or84276298 = phi i8 [ %or84276296314, %if.end91.lr.ph ], [ %52, %if.then109.if.end91_crit_edge ]
  %and93 = and i8 %or84276298, -2
  %44 = and i8 %or84276298, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool97.not = icmp eq i8 %44, 0
  br i1 %tobool97.not, label %if.end91.if.end104_crit_edge, label %if.then98

if.end91.if.end104_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.then98:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  %and100 = and i8 %or84276298, -98
  %45 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ch_flags, align 4
  %or103 = or i32 %46, 3072
  store i32 %or103, ptr %ch_flags, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then98, %if.end91.if.end104_crit_edge
  %linestatus.3 = phi i8 [ %and100, %if.then98 ], [ %and93, %if.end91.if.end104_crit_edge ]
  %conv105 = zext i8 %linestatus.3 to i32
  %and107 = and i32 %35, %conv105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %while.cond113.preheader, label %if.then109

while.cond113.preheader:                          ; preds = %if.end104
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %qleft.2.ph313)
  %cmp114303 = icmp slt i32 %qleft.2.ph313, 1
  br i1 %cmp114303, label %while.cond113.preheader.do.body_crit_edge, label %while.cond113.preheader.while.end143_crit_edge

while.cond113.preheader.while.end143_crit_edge:   ; preds = %while.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end143

while.cond113.preheader.do.body_crit_edge:        ; preds = %while.cond113.preheader
  br label %do.body

if.then109:                                       ; preds = %if.end104
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %discard) #5
  %47 = ptrtoint ptr %discard to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %discard, align 1, !annotation !184
  %48 = ptrtoint ptr %ch_neo_uart23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ch_neo_uart23, align 4
  %txrxburst111 = getelementptr inbounds %struct.neo_uart_struct, ptr %49, i32 0, i32 17
  call void @mmiocpy(ptr noundef nonnull %discard, ptr noundef %txrxburst111, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %discard) #5
  %50 = ptrtoint ptr %ch_neo_uart23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ch_neo_uart23, align 4
  %lsr78 = getelementptr inbounds %struct.neo_uart_struct, ptr %51, i32 0, i32 5
  %52 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lsr78) #5, !srcloc !139
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !183
  %53 = and i8 %52, 1
  %tobool88.not = icmp eq i8 %53, 0
  br i1 %tobool88.not, label %if.then109.if.then89_crit_edge, label %if.then109.if.end91_crit_edge

if.then109.if.end91_crit_edge:                    ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

if.then109.if.then89_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then89

do.body:                                          ; preds = %do.end136.do.body_crit_edge, %while.cond113.preheader.do.body_crit_edge
  %qleft.3305 = phi i32 [ %inc142, %do.end136.do.body_crit_edge ], [ %qleft.2.ph313, %while.cond113.preheader.do.body_crit_edge ]
  %tail.1304 = phi i16 [ %68, %do.end136.do.body_crit_edge ], [ %tail.0.ph311, %while.cond113.preheader.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %54 = load i32, ptr @jsm_debug, align 4
  %and117 = and i32 %54, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %do.body.do.end136_crit_edge, label %do.body120

do.body.do.end136_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end136

do.body120:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_copy_data_from_uart_to_queue.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_copy_data_from_uart_to_queue, %if.then126)) #5
          to label %do.end136 [label %if.then126], !srcloc !134

if.then126:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %59 = ptrtoint ptr %ch_rqueue127 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ch_rqueue127, align 8
  %idxprom = zext i16 %tail.1304 to i32
  %arrayidx = getelementptr i8, ptr %60, i32 %idxprom
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx, align 1
  %conv128 = zext i8 %62 to i32
  %63 = ptrtoint ptr %ch_equeue129 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ch_equeue129, align 8
  %arrayidx131 = getelementptr i8, ptr %64, i32 %idxprom
  %65 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %66 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_copy_data_from_uart_to_queue.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %conv128, i32 noundef %conv132) #5
  br label %do.end136

do.end136:                                        ; preds = %if.then126, %do.body120, %do.body.do.end136_crit_edge
  %67 = add i16 %tail.1304, 1
  %68 = and i16 %67, 8191
  %69 = ptrtoint ptr %ch_r_tail to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %ch_r_tail, align 2
  %70 = ptrtoint ptr %ch_err_overrun to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %ch_err_overrun, align 8
  %inc = add i64 %71, 1
  store i64 %inc, ptr %ch_err_overrun, align 8
  %inc142 = add i32 %qleft.3305, 1
  %exitcond.not = icmp eq i32 %qleft.3305, 0
  br i1 %exitcond.not, label %do.end136.while.end143_crit_edge, label %do.end136.do.body_crit_edge

do.end136.do.body_crit_edge:                      ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end136.while.end143_crit_edge:                 ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end143

while.end143:                                     ; preds = %do.end136.while.end143_crit_edge, %while.cond113.preheader.while.end143_crit_edge
  %tail.1.lcssa = phi i16 [ %tail.0.ph311, %while.cond113.preheader.while.end143_crit_edge ], [ %68, %do.end136.while.end143_crit_edge ]
  %qleft.3.lcssa = phi i32 [ %qleft.2.ph313, %while.cond113.preheader.while.end143_crit_edge ], [ 1, %do.end136.while.end143_crit_edge ]
  %72 = ptrtoint ptr %ch_rqueue127 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ch_rqueue127, align 8
  %conv145 = zext i16 %head.1.ph312 to i32
  %add.ptr146 = getelementptr i8, ptr %73, i32 %conv145
  %74 = ptrtoint ptr %ch_neo_uart23 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ch_neo_uart23, align 4
  %txrxburst148 = getelementptr inbounds %struct.neo_uart_struct, ptr %75, i32 0, i32 17
  call void @mmiocpy(ptr noundef %add.ptr146, ptr noundef %txrxburst148, i32 noundef 1) #5
  %76 = ptrtoint ptr %ch_equeue129 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ch_equeue129, align 8
  %arrayidx151 = getelementptr i8, ptr %77, i32 %conv145
  %78 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %linestatus.3, ptr %arrayidx151, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %79 = load i32, ptr @jsm_debug, align 4
  %and153 = and i32 %79, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %while.end143.do.end185_crit_edge, label %do.body156

while.end143.do.end185_crit_edge:                 ; preds = %while.end143
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end185

do.body156:                                       ; preds = %while.end143
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_copy_data_from_uart_to_queue.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_copy_data_from_uart_to_queue, %if.then168)) #5
          to label %do.end185 [label %if.then168], !srcloc !134

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ch_bd, align 8
  %pci_dev170 = getelementptr inbounds %struct.jsm_board, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %pci_dev170 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pci_dev170, align 4
  %dev171 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  %84 = ptrtoint ptr %ch_rqueue127 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ch_rqueue127, align 8
  %arrayidx174 = getelementptr i8, ptr %85, i32 %conv145
  %86 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %87 to i32
  %88 = ptrtoint ptr %ch_equeue129 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ch_equeue129, align 8
  %arrayidx178 = getelementptr i8, ptr %89, i32 %conv145
  %90 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx178, align 1
  %conv179 = zext i8 %91 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_copy_data_from_uart_to_queue.__UNIQUE_ID_ddebug250, ptr noundef %dev171, ptr noundef nonnull @.str.11, i32 noundef %conv175, i32 noundef %conv179) #5
  br label %do.end185

do.end185:                                        ; preds = %if.then168, %do.body156, %while.end143.do.end185_crit_edge
  %add187 = add nsw i16 %head.1.ph312, 1
  %and188 = and i16 %add187, 8191
  %dec = add nsw i32 %qleft.3.lcssa, -1
  %92 = ptrtoint ptr %ch_rxcount190 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %ch_rxcount190, align 8
  %inc191 = add i64 %93, 1
  store i64 %inc191, ptr %ch_rxcount190, align 8
  %94 = ptrtoint ptr %ch_neo_uart23 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ch_neo_uart23, align 4
  %lsr78295 = getelementptr inbounds %struct.neo_uart_struct, ptr %95, i32 0, i32 5
  %96 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lsr78295) #5, !srcloc !139
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !183
  %97 = and i8 %96, 1
  %tobool88.not297 = icmp eq i8 %97, 0
  br i1 %tobool88.not297, label %do.end185.if.then89_crit_edge, label %do.end185.if.end91.lr.ph_crit_edge

do.end185.if.end91.lr.ph_crit_edge:               ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91.lr.ph

do.end185.if.then89_crit_edge:                    ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then89
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jsm_check_queue_flow_control(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neo_parse_lsr(ptr noundef readonly %brd, i32 noundef %port) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %tobool.not = icmp eq ptr %brd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %maxports = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 4
  %0 = ptrtoint ptr %maxports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxports, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %port)
  %cmp.not = icmp ugt i32 %1, %port
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.jsm_board, ptr %brd, i32 0, i32 14, i32 %port
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch_neo_uart, align 4
  %lsr = getelementptr inbounds %struct.neo_uart_struct, ptr %5, i32 0, i32 5
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %lsr) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !185
  %conv = zext i8 %6 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %7 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end5.do.end19_crit_edge, label %do.body9

if.end5.do.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

do.body9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_parse_lsr.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_parse_lsr, %if.then15)) #5
          to label %do.end19 [label %if.then15], !srcloc !134

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_parse_lsr.__UNIQUE_ID_ddebug267, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 843, i32 noundef %port, i32 noundef %conv) #5
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %do.body9, %if.end5.do.end19_crit_edge
  %ch_cached_lsr = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %ch_cached_lsr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ch_cached_lsr, align 4
  %or280 = or i8 %13, %6
  store i8 %or280, ptr %ch_cached_lsr, align 4
  %14 = and i8 %or280, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool25.not = icmp eq i8 %14, 0
  br i1 %tobool25.not, label %do.end19.if.end39_crit_edge, label %if.then26

do.end19.if.end39_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then26:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @neo_copy_data_from_uart_to_queue(ptr noundef nonnull %3)
  %ch_lock = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 2
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ch_lock) #5
  tail call void @jsm_check_queue_flow_control(ptr noundef nonnull %3) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ch_lock, i32 noundef %call33) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then26, %do.end19.if.end39_crit_edge
  %and40 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end69_crit_edge, label %do.body43

if.end39.if.end69_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

do.body43:                                        ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %15 = load i32, ptr @jsm_debug, align 4
  %and44 = and i32 %15, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body43.if.end69_crit_edge, label %do.body47

do.body43.if.end69_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

do.body47:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_parse_lsr.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_parse_lsr, %if.then59)) #5
          to label %if.end69 [label %if.then59], !srcloc !134

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  %ch_bd60 = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %ch_bd60 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ch_bd60, align 8
  %pci_dev61 = getelementptr inbounds %struct.jsm_board, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %pci_dev61 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev61, align 4
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_parse_lsr.__UNIQUE_ID_ddebug268, ptr noundef %dev62, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 864, i32 noundef %port) #5
  br label %if.end69

if.end69:                                         ; preds = %if.then59, %do.body47, %do.body43.if.end69_crit_edge, %if.end39.if.end69_crit_edge
  %and70 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.if.end99_crit_edge, label %if.then72

if.end69.if.end99_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

if.then72:                                        ; preds = %if.end69
  %ch_err_parity = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 31
  %20 = ptrtoint ptr %ch_err_parity to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ch_err_parity, align 8
  %inc = add i64 %21, 1
  store i64 %inc, ptr %ch_err_parity, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %22 = load i32, ptr @jsm_debug, align 4
  %and74 = and i32 %22, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.then72.if.end99_crit_edge, label %do.body77

if.then72.if.end99_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

do.body77:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_parse_lsr.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_parse_lsr, %if.then89)) #5
          to label %if.end99 [label %if.then89], !srcloc !134

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #7
  %ch_bd90 = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %ch_bd90 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ch_bd90, align 8
  %pci_dev91 = getelementptr inbounds %struct.jsm_board, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %pci_dev91 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci_dev91, align 4
  %dev92 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_parse_lsr.__UNIQUE_ID_ddebug269, ptr noundef %dev92, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 874, i32 noundef %port) #5
  br label %if.end99

if.end99:                                         ; preds = %if.then89, %do.body77, %if.then72.if.end99_crit_edge, %if.end69.if.end99_crit_edge
  %and100 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end99.if.end130_crit_edge, label %if.then102

if.end99.if.end130_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end130

if.then102:                                       ; preds = %if.end99
  %ch_err_frame = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 32
  %27 = ptrtoint ptr %ch_err_frame to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ch_err_frame, align 8
  %inc103 = add i64 %28, 1
  store i64 %inc103, ptr %ch_err_frame, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %29 = load i32, ptr @jsm_debug, align 4
  %and105 = and i32 %29, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.then102.if.end130_crit_edge, label %do.body108

if.then102.if.end130_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end130

do.body108:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_parse_lsr.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_parse_lsr, %if.then120)) #5
          to label %if.end130 [label %if.then120], !srcloc !134

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #7
  %ch_bd121 = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 1
  %30 = ptrtoint ptr %ch_bd121 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ch_bd121, align 8
  %pci_dev122 = getelementptr inbounds %struct.jsm_board, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %pci_dev122 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci_dev122, align 4
  %dev123 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_parse_lsr.__UNIQUE_ID_ddebug270, ptr noundef %dev123, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 880, i32 noundef %port) #5
  br label %if.end130

if.end130:                                        ; preds = %if.then120, %do.body108, %if.then102.if.end130_crit_edge, %if.end99.if.end130_crit_edge
  %and131 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end130.if.end161_crit_edge, label %if.then133

if.end130.if.end161_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end161

if.then133:                                       ; preds = %if.end130
  %ch_err_break = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 33
  %34 = ptrtoint ptr %ch_err_break to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %ch_err_break, align 8
  %inc134 = add i64 %35, 1
  store i64 %inc134, ptr %ch_err_break, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %36 = load i32, ptr @jsm_debug, align 4
  %and136 = and i32 %36, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.then133.if.end161_crit_edge, label %do.body139

if.then133.if.end161_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end161

do.body139:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_parse_lsr.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_parse_lsr, %if.then151)) #5
          to label %if.end161 [label %if.then151], !srcloc !134

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #7
  %ch_bd152 = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 1
  %37 = ptrtoint ptr %ch_bd152 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ch_bd152, align 8
  %pci_dev153 = getelementptr inbounds %struct.jsm_board, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %pci_dev153 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pci_dev153, align 4
  %dev154 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_parse_lsr.__UNIQUE_ID_ddebug271, ptr noundef %dev154, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.2, i32 noundef 887, i32 noundef %port) #5
  br label %if.end161

if.end161:                                        ; preds = %if.then151, %do.body139, %if.then133.if.end161_crit_edge, %if.end130.if.end161_crit_edge
  %and162 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.end161.if.end192_crit_edge, label %if.then164

if.end161.if.end192_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end192

if.then164:                                       ; preds = %if.end161
  %ch_err_overrun = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 34
  %41 = ptrtoint ptr %ch_err_overrun to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %ch_err_overrun, align 8
  %inc165 = add i64 %42, 1
  store i64 %inc165, ptr %ch_err_overrun, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %43 = load i32, ptr @jsm_debug, align 4
  %and167 = and i32 %43, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.then164.if.end192_crit_edge, label %do.body170

if.then164.if.end192_crit_edge:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end192

do.body170:                                       ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_parse_lsr.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_parse_lsr, %if.then182)) #5
          to label %if.end192 [label %if.then182], !srcloc !134

if.then182:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #7
  %ch_bd183 = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 1
  %44 = ptrtoint ptr %ch_bd183 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ch_bd183, align 8
  %pci_dev184 = getelementptr inbounds %struct.jsm_board, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %pci_dev184 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pci_dev184, align 4
  %dev185 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_parse_lsr.__UNIQUE_ID_ddebug272, ptr noundef %dev185, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 900, i32 noundef %port) #5
  br label %if.end192

if.end192:                                        ; preds = %if.then182, %do.body170, %if.then164.if.end192_crit_edge, %if.end161.if.end192_crit_edge
  %and193 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %if.else, label %do.body197

do.body197:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #7
  %ch_lock203 = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 2
  %call205 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ch_lock203) #5
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 6
  %48 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ch_flags, align 4
  %or210 = or i32 %49, 3072
  store i32 %or210, ptr %ch_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ch_lock203, i32 noundef %call205) #5
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end192
  %and212 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  br i1 %tobool213.not, label %if.else.cleanup_crit_edge, label %do.body216

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body216:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %ch_lock222 = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 2
  %call224 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ch_lock222) #5
  %ch_flags229 = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 6
  %50 = ptrtoint ptr %ch_flags229 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ch_flags229, align 4
  %or230 = or i32 %51, 3072
  store i32 %or230, ptr %ch_flags229, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ch_lock222, i32 noundef %call224) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body216, %do.body197
  tail call void @neo_copy_data_from_queue_to_uart(ptr noundef nonnull %3)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neo_parse_isr(ptr noundef readonly %brd, i32 noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %brd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %maxports = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 4
  %0 = ptrtoint ptr %maxports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxports, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %port)
  %cmp.not = icmp ugt i32 %1, %port
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.jsm_board, ptr %brd, i32 0, i32 14, i32 %port
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %while.cond.preheader

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end2
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch_neo_uart, align 4
  %isr_fcr411 = getelementptr inbounds %struct.neo_uart_struct, ptr %5, i32 0, i32 2
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr_fcr411) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !186
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not412 = icmp eq i8 %7, 0
  br i1 %tobool7.not412, label %if.end9.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.lr.ph:                                    ; preds = %while.cond.preheader
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 1
  %ch_lock = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 2
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 6
  %ch_mostat271 = getelementptr inbounds %struct.jsm_channel, ptr %3, i32 0, i32 14
  br label %if.end9

if.end9:                                          ; preds = %do.body311.if.end9_crit_edge, %if.end9.lr.ph
  %8 = phi i8 [ %6, %if.end9.lr.ph ], [ %74, %do.body311.if.end9_crit_edge ]
  %and11 = and i8 %8, 63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %9 = load i32, ptr @jsm_debug, align 4
  %and13 = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end9.do.end27_crit_edge, label %do.body16

if.end9.do.end27_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end27

do.body16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_parse_isr.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_parse_isr, %if.then22)) #5
          to label %do.end27 [label %if.then22], !srcloc !134

if.then22:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %conv23 = zext i8 %and11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_parse_isr.__UNIQUE_ID_ddebug261, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2, i32 noundef 737, i32 noundef %conv23) #5
  br label %do.end27

do.end27:                                         ; preds = %if.then22, %do.body16, %if.end9.do.end27_crit_edge
  %conv28 = zext i8 %and11 to i32
  %and29 = and i32 %conv28, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.end27.if.end44_crit_edge, label %if.then31

do.end27.if.end44_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then31:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @neo_copy_data_from_uart_to_queue(ptr noundef nonnull %3)
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ch_lock) #5
  tail call void @jsm_check_queue_flow_control(ptr noundef nonnull %3) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ch_lock, i32 noundef %call38) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then31, %do.end27.if.end44_crit_edge
  %and46 = and i32 %conv28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end44.if.end64_crit_edge, label %do.body50

if.end44.if.end64_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

do.body50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %call58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ch_lock) #5
  %14 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ch_flags, align 4
  %or = or i32 %15, 3072
  store i32 %or, ptr %ch_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ch_lock, i32 noundef %call58) #5
  tail call void @neo_copy_data_from_queue_to_uart(ptr noundef nonnull %3)
  br label %if.end64

if.end64:                                         ; preds = %do.body50, %if.end44.if.end64_crit_edge
  %and66 = and i32 %conv28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end64.if.end223_crit_edge, label %if.then68

if.end64.if.end223_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end223

if.then68:                                        ; preds = %if.end64
  %16 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ch_neo_uart, align 4
  %xoffchar1 = getelementptr inbounds %struct.neo_uart_struct, ptr %17, i32 0, i32 12
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %xoffchar1) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %19 = load i32, ptr @jsm_debug, align 4
  %and76 = and i32 %19, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.then68.do.body103_crit_edge, label %do.body79

if.then68.do.body103_crit_edge:                   ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body103

do.body79:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_parse_isr.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_parse_isr, %if.then91)) #5
          to label %do.body103 [label %if.then91], !srcloc !134

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ch_bd, align 8
  %pci_dev93 = getelementptr inbounds %struct.jsm_board, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %pci_dev93 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci_dev93, align 4
  %dev94 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %conv95 = zext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_parse_isr.__UNIQUE_ID_ddebug262, ptr noundef %dev94, ptr noundef nonnull @.str.21, i32 noundef %port, i32 noundef %conv95) #5
  br label %do.body103

do.body103:                                       ; preds = %if.then91, %do.body79, %if.then68.do.body103_crit_edge
  %call111 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ch_lock) #5
  %24 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %18, label %do.body103.if.end221_crit_edge [
    i8 2, label %if.then119
    i8 1, label %if.then158
  ]

do.body103.if.end221_crit_edge:                   ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end221

if.then119:                                       ; preds = %do.body103
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %ch_flags122 = getelementptr inbounds %struct.jsm_channel, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %ch_flags122 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ch_flags122, align 4
  %and123 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.then119.do.body129_crit_edge, label %if.then125

if.then119.do.body129_crit_edge:                  ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body129

if.then125:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ch_flags, align 4
  %and127 = and i32 %30, -3
  store i32 %and127, ptr %ch_flags, align 4
  br label %do.body129

do.body129:                                       ; preds = %if.then125, %if.then119.do.body129_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %31 = load i32, ptr @jsm_debug, align 4
  %and130 = and i32 %31, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %do.body129.if.end221_crit_edge, label %do.body133

do.body129.if.end221_crit_edge:                   ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end221

do.body133:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_parse_isr.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_parse_isr, %if.then145)) #5
          to label %if.end221 [label %if.then145], !srcloc !134

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ch_bd, align 8
  %pci_dev147 = getelementptr inbounds %struct.jsm_board, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %pci_dev147 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci_dev147, align 4
  %dev148 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_parse_isr.__UNIQUE_ID_ddebug263, ptr noundef %dev148, ptr noundef nonnull @.str.22, i32 noundef %port) #5
  br label %if.end221

if.then158:                                       ; preds = %do.body103
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %ch_flags161 = getelementptr inbounds %struct.jsm_channel, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %ch_flags161 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ch_flags161, align 4
  %and162 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.then164, label %if.then158.do.body194_crit_edge

if.then158.do.body194_crit_edge:                  ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body194

if.then164:                                       ; preds = %if.then158
  %40 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ch_flags, align 4
  %or166 = or i32 %41, 2
  store i32 %or166, ptr %ch_flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %42 = load i32, ptr @jsm_debug, align 4
  %and168 = and i32 %42, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %if.then164.do.body194_crit_edge, label %do.body171

if.then164.do.body194_crit_edge:                  ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body194

do.body171:                                       ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_parse_isr.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_parse_isr, %if.then183)) #5
          to label %do.body194 [label %if.then183], !srcloc !134

if.then183:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ch_bd, align 8
  %pci_dev185 = getelementptr inbounds %struct.jsm_board, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %pci_dev185 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pci_dev185, align 4
  %dev186 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_parse_isr.__UNIQUE_ID_ddebug264, ptr noundef %dev186, ptr noundef nonnull @.str.23) #5
  br label %do.body194

do.body194:                                       ; preds = %if.then183, %do.body171, %if.then164.do.body194_crit_edge, %if.then158.do.body194_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %47 = load i32, ptr @jsm_debug, align 4
  %and195 = and i32 %47, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %do.body194.if.end221_crit_edge, label %do.body198

do.body194.if.end221_crit_edge:                   ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end221

do.body198:                                       ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_parse_isr.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_parse_isr, %if.then210)) #5
          to label %if.end221 [label %if.then210], !srcloc !134

if.then210:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ch_bd, align 8
  %pci_dev212 = getelementptr inbounds %struct.jsm_board, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %pci_dev212 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pci_dev212, align 4
  %dev213 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_parse_isr.__UNIQUE_ID_ddebug265, ptr noundef %dev213, ptr noundef nonnull @.str.24, i32 noundef %port) #5
  br label %if.end221

if.end221:                                        ; preds = %if.then210, %do.body198, %do.body194.if.end221_crit_edge, %if.then145, %do.body133, %do.body129.if.end221_crit_edge, %do.body103.if.end221_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ch_lock, i32 noundef %call111) #5
  br label %if.end223

if.end223:                                        ; preds = %if.end221, %if.end64.if.end223_crit_edge
  %and225 = and i32 %conv28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %if.end223.do.body284_crit_edge, label %if.then227

if.end223.do.body284_crit_edge:                   ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body284

if.then227:                                       ; preds = %if.end223
  %52 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ch_neo_uart, align 4
  %mcr = getelementptr inbounds %struct.neo_uart_struct, ptr %53, i32 0, i32 4
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %mcr) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !188
  %call243 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ch_lock) #5
  %conv248 = zext i8 %54 to i32
  %and249 = and i32 %conv248, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %cmp250 = icmp eq i32 %and249, 0
  br i1 %cmp250, label %if.then252, label %if.else266

if.then252:                                       ; preds = %if.then227
  %and254 = and i32 %conv248, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254)
  %tobool255.not = icmp eq i32 %and254, 0
  %55 = ptrtoint ptr %ch_mostat271 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ch_mostat271, align 2
  br i1 %tobool255.not, label %if.else260, label %if.then256

if.then256:                                       ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #7
  %57 = or i8 %56, 2
  br label %if.end281

if.else260:                                       ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #7
  %58 = and i8 %56, -3
  br label %if.end281

if.else266:                                       ; preds = %if.then227
  %and268 = and i32 %conv248, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and268)
  %tobool269.not = icmp eq i32 %and268, 0
  %59 = ptrtoint ptr %ch_mostat271 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ch_mostat271, align 2
  br i1 %tobool269.not, label %if.else275, label %if.then270

if.then270:                                       ; preds = %if.else266
  call void @__sanitizer_cov_trace_pc() #7
  %61 = or i8 %60, 1
  br label %if.end281

if.else275:                                       ; preds = %if.else266
  call void @__sanitizer_cov_trace_pc() #7
  %62 = and i8 %60, -2
  br label %if.end281

if.end281:                                        ; preds = %if.else275, %if.then270, %if.else260, %if.then256
  %.sink = phi i8 [ %61, %if.then270 ], [ %62, %if.else275 ], [ %57, %if.then256 ], [ %58, %if.else260 ]
  %63 = ptrtoint ptr %ch_mostat271 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %.sink, ptr %ch_mostat271, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ch_lock, i32 noundef %call243) #5
  br label %do.body284

do.body284:                                       ; preds = %if.end281, %if.end223.do.body284_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %64 = load i32, ptr @jsm_debug, align 4
  %and285 = and i32 %64, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285)
  %tobool286.not = icmp eq i32 %and285, 0
  br i1 %tobool286.not, label %do.body284.do.body311_crit_edge, label %do.body288

do.body284.do.body311_crit_edge:                  ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body311

do.body288:                                       ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_parse_isr.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_parse_isr, %if.then300)) #5
          to label %do.body311 [label %if.then300], !srcloc !134

if.then300:                                       ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ch_bd, align 8
  %pci_dev302 = getelementptr inbounds %struct.jsm_board, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %pci_dev302 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pci_dev302, align 4
  %dev303 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_parse_isr.__UNIQUE_ID_ddebug266, ptr noundef %dev303, ptr noundef nonnull @.str.25) #5
  br label %do.body311

do.body311:                                       ; preds = %if.then300, %do.body288, %do.body284.do.body311_crit_edge
  %call318 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #5
  %69 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ch_neo_uart, align 4
  %msr = getelementptr inbounds %struct.neo_uart_struct, ptr %70, i32 0, i32 6
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %msr) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !189
  tail call fastcc void @neo_parse_modem(ptr noundef nonnull %3, i8 noundef zeroext %71)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %3, i32 noundef %call318) #5
  %72 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ch_neo_uart, align 4
  %isr_fcr = getelementptr inbounds %struct.neo_uart_struct, ptr %73, i32 0, i32 2
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr_fcr) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !186
  %75 = and i8 %74, 1
  %tobool7.not = icmp eq i8 %75, 0
  br i1 %tobool7.not, label %do.body311.if.end9_crit_edge, label %do.body311.cleanup_crit_edge

do.body311.cleanup_crit_edge:                     ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body311.if.end9_crit_edge:                     ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

cleanup:                                          ; preds = %do.body311.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @jsm_input(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neo_parse_modem(ptr noundef %ch, i8 noundef zeroext %signals) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %0 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_parse_modem.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_parse_modem, %if.then5)) #5
          to label %do.end8 [label %if.then5], !srcloc !134

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_parse_modem.__UNIQUE_ID_ddebug256, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %6, i32 noundef %conv) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then15:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @uart_handle_dcd_change(ptr noundef %ch, i32 noundef %.pre) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end171

do.body84:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_parse_modem.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_parse_modem, %if.then96)) #5
          to label %do.end171 [label %if.then96], !srcloc !134

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_parse_modem.__UNIQUE_ID_ddebug257, ptr noundef %dev99, ptr noundef nonnull @.str.28, i32 noundef %19, i32 noundef %and105, i32 noundef %and116.lobit, i32 noundef %and127.lobit, i32 noundef %and138.lobit, i32 noundef %and149.lobit, i32 noundef %and160.lobit) #5
  br label %do.end171

do.end171:                                        ; preds = %if.then96, %do.body84, %if.end26.do.end171_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_dcd_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neo_set_cts_flow_control(ptr nocapture noundef %ch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %0 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_neo_uart, align 4
  %ier1 = getelementptr inbounds %struct.neo_uart_struct, ptr %1, i32 0, i32 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ier1) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !190
  %3 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ch_neo_uart, align 4
  %efr6 = getelementptr inbounds %struct.neo_uart_struct, ptr %4, i32 0, i32 9
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %efr6) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %6 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end19_crit_edge, label %do.body10

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_set_cts_flow_control.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_set_cts_flow_control, %if.then16)) #5
          to label %do.end19 [label %if.then16], !srcloc !134

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %7 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_set_cts_flow_control.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.32) #5
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body10, %entry.do.end19_crit_edge
  %11 = or i8 %2, -128
  %12 = and i8 %5, 109
  %13 = or i8 %12, -112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !192
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ch_neo_uart, align 4
  %efr31 = getelementptr inbounds %struct.neo_uart_struct, ptr %15, i32 0, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %efr31, i8 0) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !193
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ch_neo_uart, align 4
  %efr36 = getelementptr inbounds %struct.neo_uart_struct, ptr %17, i32 0, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %efr36, i8 %13) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !194
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ch_neo_uart, align 4
  %fctr = getelementptr inbounds %struct.neo_uart_struct, ptr %19, i32 0, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %fctr, i8 -63) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !195
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ch_neo_uart, align 4
  %tfifo = getelementptr inbounds %struct.neo_uart_struct, ptr %21, i32 0, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %tfifo, i8 8) #5, !srcloc !136
  %ch_t_tlevel = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 28
  %22 = ptrtoint ptr %ch_t_tlevel to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 8, ptr %ch_t_tlevel, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !196
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ch_neo_uart, align 4
  %ier49 = getelementptr inbounds %struct.neo_uart_struct, ptr %24, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier49, i8 %11) #5, !srcloc !136
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neo_set_no_output_flow_control(ptr nocapture noundef %ch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %0 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_neo_uart, align 4
  %ier1 = getelementptr inbounds %struct.neo_uart_struct, ptr %1, i32 0, i32 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ier1) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !197
  %3 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ch_neo_uart, align 4
  %efr6 = getelementptr inbounds %struct.neo_uart_struct, ptr %4, i32 0, i32 9
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %efr6) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !198
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %6 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end19_crit_edge, label %do.body10

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_set_no_output_flow_control.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_set_no_output_flow_control, %if.then16)) #5
          to label %do.end19 [label %if.then16], !srcloc !134

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %7 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_set_no_output_flow_control.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.34) #5
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body10, %entry.do.end19_crit_edge
  %ch_c_iflag = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 8
  %11 = ptrtoint ptr %ch_c_iflag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ch_c_iflag, align 8
  %and25 = and i32 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %efr.0.v = select i1 %tobool26.not, i8 109, i8 125
  %efr.0 = and i8 %efr.0.v, %5
  %13 = and i8 %2, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !199
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ch_neo_uart, align 4
  %efr39 = getelementptr inbounds %struct.neo_uart_struct, ptr %15, i32 0, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %efr39, i8 0) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !200
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ch_neo_uart, align 4
  %efr44 = getelementptr inbounds %struct.neo_uart_struct, ptr %17, i32 0, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %efr44, i8 %efr.0) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ch_neo_uart, align 4
  %fctr = getelementptr inbounds %struct.neo_uart_struct, ptr %19, i32 0, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %fctr, i8 -61) #5, !srcloc !136
  %ch_r_watermark = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 29
  %20 = ptrtoint ptr %ch_r_watermark to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %ch_r_watermark, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ch_neo_uart, align 4
  %tfifo = getelementptr inbounds %struct.neo_uart_struct, ptr %22, i32 0, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %tfifo, i8 16) #5, !srcloc !136
  %ch_t_tlevel = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 28
  %23 = ptrtoint ptr %ch_t_tlevel to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 16, ptr %ch_t_tlevel, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !203
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ch_neo_uart, align 4
  %rfifo = getelementptr inbounds %struct.neo_uart_struct, ptr %25, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %rfifo, i8 16) #5, !srcloc !136
  %ch_r_tlevel = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 27
  %26 = ptrtoint ptr %ch_r_tlevel to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 16, ptr %ch_r_tlevel, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !204
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ch_neo_uart, align 4
  %ier61 = getelementptr inbounds %struct.neo_uart_struct, ptr %28, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier61, i8 %13) #5, !srcloc !136
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neo_set_ixon_flow_control(ptr nocapture noundef %ch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %0 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_neo_uart, align 4
  %ier1 = getelementptr inbounds %struct.neo_uart_struct, ptr %1, i32 0, i32 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ier1) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !205
  %3 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ch_neo_uart, align 4
  %efr6 = getelementptr inbounds %struct.neo_uart_struct, ptr %4, i32 0, i32 9
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %efr6) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !206
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %6 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end19_crit_edge, label %do.body10

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_set_ixon_flow_control.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_set_ixon_flow_control, %if.then16)) #5
          to label %do.end19 [label %if.then16], !srcloc !134

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %7 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_set_ixon_flow_control.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.36) #5
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body10, %entry.do.end19_crit_edge
  %11 = and i8 %2, 127
  %12 = and i8 %5, 109
  %13 = or i8 %12, 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !207
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ch_neo_uart, align 4
  %efr31 = getelementptr inbounds %struct.neo_uart_struct, ptr %15, i32 0, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %efr31, i8 0) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !208
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ch_neo_uart, align 4
  %efr36 = getelementptr inbounds %struct.neo_uart_struct, ptr %17, i32 0, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %efr36, i8 %13) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !209
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ch_neo_uart, align 4
  %fctr = getelementptr inbounds %struct.neo_uart_struct, ptr %19, i32 0, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %fctr, i8 -61) #5, !srcloc !136
  %ch_r_watermark = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 29
  %20 = ptrtoint ptr %ch_r_watermark to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %ch_r_watermark, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !210
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ch_neo_uart, align 4
  %rfifo = getelementptr inbounds %struct.neo_uart_struct, ptr %22, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %rfifo, i8 32) #5, !srcloc !136
  %ch_r_tlevel = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 27
  %23 = ptrtoint ptr %ch_r_tlevel to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 32, ptr %ch_r_tlevel, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !211
  tail call void @arm_heavy_mb() #5
  %ch_startc = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 13
  %24 = ptrtoint ptr %ch_startc to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ch_startc, align 1
  %26 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ch_neo_uart, align 4
  %xonchar1 = getelementptr inbounds %struct.neo_uart_struct, ptr %27, i32 0, i32 14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %xonchar1, i8 %25) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !212
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ch_neo_uart, align 4
  %xonchar2 = getelementptr inbounds %struct.neo_uart_struct, ptr %29, i32 0, i32 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %xonchar2, i8 0) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !213
  tail call void @arm_heavy_mb() #5
  %ch_stopc = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 12
  %30 = ptrtoint ptr %ch_stopc to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ch_stopc, align 8
  %32 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ch_neo_uart, align 4
  %xoffchar1 = getelementptr inbounds %struct.neo_uart_struct, ptr %33, i32 0, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %xoffchar1, i8 %31) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !214
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ch_neo_uart, align 4
  %xoffchar2 = getelementptr inbounds %struct.neo_uart_struct, ptr %35, i32 0, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %xoffchar2, i8 0) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !215
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ch_neo_uart, align 4
  %ier65 = getelementptr inbounds %struct.neo_uart_struct, ptr %37, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier65, i8 %11) #5, !srcloc !136
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neo_set_rts_flow_control(ptr nocapture noundef %ch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %0 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_neo_uart, align 4
  %ier1 = getelementptr inbounds %struct.neo_uart_struct, ptr %1, i32 0, i32 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ier1) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  %3 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ch_neo_uart, align 4
  %efr6 = getelementptr inbounds %struct.neo_uart_struct, ptr %4, i32 0, i32 9
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %efr6) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %6 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end19_crit_edge, label %do.body10

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_set_rts_flow_control.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_set_rts_flow_control, %if.then16)) #5
          to label %do.end19 [label %if.then16], !srcloc !134

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %7 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_set_rts_flow_control.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.38) #5
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body10, %entry.do.end19_crit_edge
  %11 = and i8 %2, -97
  %12 = or i8 %11, 64
  %13 = and i8 %5, -89
  %14 = or i8 %13, 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !218
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ch_neo_uart, align 4
  %efr34 = getelementptr inbounds %struct.neo_uart_struct, ptr %16, i32 0, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %efr34, i8 0) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !219
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ch_neo_uart, align 4
  %efr39 = getelementptr inbounds %struct.neo_uart_struct, ptr %18, i32 0, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %efr39, i8 %14) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !220
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ch_neo_uart, align 4
  %fctr = getelementptr inbounds %struct.neo_uart_struct, ptr %20, i32 0, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %fctr, i8 -63) #5, !srcloc !136
  %ch_r_watermark = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 29
  %21 = ptrtoint ptr %ch_r_watermark to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %ch_r_watermark, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !221
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ch_neo_uart, align 4
  %rfifo = getelementptr inbounds %struct.neo_uart_struct, ptr %23, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %rfifo, i8 56) #5, !srcloc !136
  %ch_r_tlevel = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 27
  %24 = ptrtoint ptr %ch_r_tlevel to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 56, ptr %ch_r_tlevel, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !222
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ch_neo_uart, align 4
  %ier52 = getelementptr inbounds %struct.neo_uart_struct, ptr %26, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier52, i8 %12) #5, !srcloc !136
  %ch_mostat = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 14
  %27 = ptrtoint ptr %ch_mostat to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ch_mostat, align 2
  %29 = or i8 %28, 2
  store i8 %29, ptr %ch_mostat, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neo_set_no_input_flow_control(ptr nocapture noundef %ch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %0 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_neo_uart, align 4
  %ier1 = getelementptr inbounds %struct.neo_uart_struct, ptr %1, i32 0, i32 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ier1) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !223
  %3 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ch_neo_uart, align 4
  %efr6 = getelementptr inbounds %struct.neo_uart_struct, ptr %4, i32 0, i32 9
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %efr6) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !224
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %6 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end19_crit_edge, label %do.body10

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_set_no_input_flow_control.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_set_no_input_flow_control, %if.then16)) #5
          to label %do.end19 [label %if.then16], !srcloc !134

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %7 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_set_no_input_flow_control.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.40) #5
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body10, %entry.do.end19_crit_edge
  %ch_c_iflag = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 8
  %11 = ptrtoint ptr %ch_c_iflag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ch_c_iflag, align 8
  %and28 = and i32 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %efr.0.v = select i1 %tobool29.not, i8 -89, i8 -73
  %efr.0 = and i8 %efr.0.v, %5
  %13 = and i8 %2, -97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !225
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ch_neo_uart, align 4
  %efr42 = getelementptr inbounds %struct.neo_uart_struct, ptr %15, i32 0, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %efr42, i8 0) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ch_neo_uart, align 4
  %efr47 = getelementptr inbounds %struct.neo_uart_struct, ptr %17, i32 0, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %efr47, i8 %efr.0) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ch_neo_uart, align 4
  %fctr = getelementptr inbounds %struct.neo_uart_struct, ptr %19, i32 0, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %fctr, i8 -61) #5, !srcloc !136
  %ch_r_watermark = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 29
  %20 = ptrtoint ptr %ch_r_watermark to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %ch_r_watermark, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !228
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ch_neo_uart, align 4
  %tfifo = getelementptr inbounds %struct.neo_uart_struct, ptr %22, i32 0, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %tfifo, i8 16) #5, !srcloc !136
  %ch_t_tlevel = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 28
  %23 = ptrtoint ptr %ch_t_tlevel to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 16, ptr %ch_t_tlevel, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !229
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ch_neo_uart, align 4
  %rfifo = getelementptr inbounds %struct.neo_uart_struct, ptr %25, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %rfifo, i8 16) #5, !srcloc !136
  %ch_r_tlevel = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 27
  %26 = ptrtoint ptr %ch_r_tlevel to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 16, ptr %ch_r_tlevel, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ch_neo_uart, align 4
  %ier64 = getelementptr inbounds %struct.neo_uart_struct, ptr %28, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier64, i8 %13) #5, !srcloc !136
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neo_set_ixoff_flow_control(ptr nocapture noundef %ch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 16
  %0 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_neo_uart, align 4
  %ier1 = getelementptr inbounds %struct.neo_uart_struct, ptr %1, i32 0, i32 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ier1) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  %3 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ch_neo_uart, align 4
  %efr6 = getelementptr inbounds %struct.neo_uart_struct, ptr %4, i32 0, i32 9
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %efr6) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !232
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %6 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end19_crit_edge, label %do.body10

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neo_set_ixoff_flow_control.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neo_set_ixoff_flow_control, %if.then16)) #5
          to label %do.end19 [label %if.then16], !srcloc !134

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %7 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @neo_set_ixoff_flow_control.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.42) #5
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body10, %entry.do.end19_crit_edge
  %11 = and i8 %2, -97
  %12 = and i8 %5, -89
  %13 = or i8 %11, 32
  %14 = or i8 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !233
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ch_neo_uart, align 4
  %efr34 = getelementptr inbounds %struct.neo_uart_struct, ptr %16, i32 0, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %efr34, i8 0) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !234
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ch_neo_uart, align 4
  %efr39 = getelementptr inbounds %struct.neo_uart_struct, ptr %18, i32 0, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %efr39, i8 %14) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !235
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ch_neo_uart, align 4
  %fctr = getelementptr inbounds %struct.neo_uart_struct, ptr %20, i32 0, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %fctr, i8 -61) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !236
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ch_neo_uart, align 4
  %tfifo = getelementptr inbounds %struct.neo_uart_struct, ptr %22, i32 0, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %tfifo, i8 8) #5, !srcloc !136
  %ch_t_tlevel = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 28
  %23 = ptrtoint ptr %ch_t_tlevel to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 8, ptr %ch_t_tlevel, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !237
  tail call void @arm_heavy_mb() #5
  %ch_startc = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 13
  %24 = ptrtoint ptr %ch_startc to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ch_startc, align 1
  %26 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ch_neo_uart, align 4
  %xonchar1 = getelementptr inbounds %struct.neo_uart_struct, ptr %27, i32 0, i32 14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %xonchar1, i8 %25) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !238
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ch_neo_uart, align 4
  %xonchar2 = getelementptr inbounds %struct.neo_uart_struct, ptr %29, i32 0, i32 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %xonchar2, i8 0) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !239
  tail call void @arm_heavy_mb() #5
  %ch_stopc = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 12
  %30 = ptrtoint ptr %ch_stopc to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ch_stopc, align 8
  %32 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ch_neo_uart, align 4
  %xoffchar1 = getelementptr inbounds %struct.neo_uart_struct, ptr %33, i32 0, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %xoffchar1, i8 %31) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !240
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ch_neo_uart, align 4
  %xoffchar2 = getelementptr inbounds %struct.neo_uart_struct, ptr %35, i32 0, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %xoffchar2, i8 0) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !241
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ch_neo_uart, align 4
  %ier68 = getelementptr inbounds %struct.neo_uart_struct, ptr %37, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier68, i8 %13) #5, !srcloc !136
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !77, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @jsm_neo_ops, !1, !"jsm_neo_ops", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 1389, i32 18}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 1120, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @neo_intr.__UNIQUE_ID_ddebug273, !3, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 1124, i32 3}
!10 = !{ptr @neo_intr.__UNIQUE_ID_ddebug274, !9, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 1150, i32 3}
!13 = !{ptr @neo_intr.__UNIQUE_ID_ddebug275, !12, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 1158, i32 4}
!16 = !{ptr @neo_intr.__UNIQUE_ID_ddebug276, !15, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 1226, i32 4}
!19 = !{ptr @neo_intr.__UNIQUE_ID_ddebug277, !18, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 1235, i32 2}
!22 = !{ptr @neo_intr.__UNIQUE_ID_ddebug278, !21, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!23 = !{ptr @jsm_offset_table, !24, !"jsm_offset_table", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 20, i32 12}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 441, i32 4}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @neo_copy_data_from_uart_to_queue.__UNIQUE_ID_ddebug249, !26, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 453, i32 3}
!31 = !{ptr @neo_copy_data_from_uart_to_queue.__UNIQUE_ID_ddebug250, !30, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 842, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @neo_parse_lsr.__UNIQUE_ID_ddebug267, !33, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 862, i32 3}
!38 = !{ptr @neo_parse_lsr.__UNIQUE_ID_ddebug268, !37, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 873, i32 3}
!41 = !{ptr @neo_parse_lsr.__UNIQUE_ID_ddebug269, !40, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 879, i32 3}
!44 = !{ptr @neo_parse_lsr.__UNIQUE_ID_ddebug270, !43, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 885, i32 3}
!47 = !{ptr @neo_parse_lsr.__UNIQUE_ID_ddebug271, !46, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 898, i32 3}
!50 = !{ptr @neo_parse_lsr.__UNIQUE_ID_ddebug272, !49, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 736, i32 3}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @neo_parse_isr.__UNIQUE_ID_ddebug261, !52, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 760, i32 4}
!57 = !{ptr @neo_parse_isr.__UNIQUE_ID_ddebug262, !56, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 775, i32 5}
!60 = !{ptr @neo_parse_isr.__UNIQUE_ID_ddebug263, !59, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 782, i32 6}
!63 = !{ptr @neo_parse_isr.__UNIQUE_ID_ddebug264, !62, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 785, i32 5}
!66 = !{ptr @neo_parse_isr.__UNIQUE_ID_ddebug265, !65, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 816, i32 3}
!69 = !{ptr @neo_parse_isr.__UNIQUE_ID_ddebug266, !68, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 561, i32 2}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @neo_parse_modem.__UNIQUE_ID_ddebug256, !71, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 593, i32 2}
!76 = !{ptr @neo_parse_modem.__UNIQUE_ID_ddebug257, !75, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!77 = !{ptr @neo_param.baud_rates, !78, !"baud_rates", i1 false, i1 false}
!78 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 958, i32 5}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 265, i32 2}
!81 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @neo_set_new_start_stop_chars.__UNIQUE_ID_ddebug242, !80, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 41, i32 2}
!85 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @neo_set_cts_flow_control.__UNIQUE_ID_ddebug236, !84, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 226, i32 2}
!89 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @neo_set_no_output_flow_control.__UNIQUE_ID_ddebug241, !88, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 112, i32 2}
!93 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @neo_set_ixon_flow_control.__UNIQUE_ID_ddebug238, !92, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 72, i32 2}
!97 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @neo_set_rts_flow_control.__UNIQUE_ID_ddebug237, !96, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 187, i32 2}
!101 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @neo_set_no_input_flow_control.__UNIQUE_ID_ddebug240, !100, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 149, i32 2}
!105 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @neo_set_ixoff_flow_control.__UNIQUE_ID_ddebug239, !104, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 636, i32 4}
!109 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @neo_flush_uart_write.__UNIQUE_ID_ddebug258, !108, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 668, i32 4}
!113 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @neo_flush_uart_read.__UNIQUE_ID_ddebug259, !112, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 692, i32 3}
!117 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @neo_clear_break.__UNIQUE_ID_ddebug260, !116, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/tty/serial/jsm/jsm_neo.c", i32 507, i32 4}
!121 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @neo_copy_data_from_queue_to_uart.__UNIQUE_ID_ddebug251, !120, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{i64 5987304}
!133 = !{i64 2154864848}
!134 = !{i64 2148791054, i64 2148791059, i64 2148791072, i64 2148791116, i64 2148791150, i64 2148791171}
!135 = !{i64 2154882769}
!136 = !{i64 5986689}
!137 = !{i64 2154883040}
!138 = !{i64 2154883319}
!139 = !{i64 5987084}
!140 = !{i64 2154883619}
!141 = !{i64 2154883875}
!142 = !{i64 2154884195}
!143 = !{i64 2154884435}
!144 = !{i64 2154884670}
!145 = !{i64 2154884953}
!146 = !{i64 2154885224}
!147 = !{i64 2154812756}
!148 = !{i64 2154813077}
!149 = !{i64 2154816473}
!150 = !{i64 2154816794}
!151 = !{i64 2154812445}
!152 = !{i64 2154750653}
!153 = !{i64 2154861393}
!154 = !{i64 2154861633}
!155 = !{i64 2154861857}
!156 = !{i64 2154862144}
!157 = !{i64 2154862438}
!158 = !{i64 2154862721}
!159 = !{i64 2154862996}
!160 = !{i64 2154863299}
!161 = !{i64 2154786496}
!162 = !{i64 2154786789}
!163 = !{i64 2154787082}
!164 = !{i64 2154787376}
!165 = !{i64 2154863636}
!166 = !{i64 2154863933}
!167 = !{i64 2154881151}
!168 = !{i64 2154881374}
!169 = !{i64 2154881671}
!170 = !{i64 2154881894}
!171 = !{i64 2154885785}
!172 = !{i64 2154886019}
!173 = !{i64 2154820550}
!174 = !{i64 2154820786}
!175 = !{i64 2154882185}
!176 = !{i64 2154882486}
!177 = !{i64 2154798761}
!178 = !{i64 2154799008}
!179 = !{i64 2154885519}
!180 = !{i64 2154886311}
!181 = !{i64 2154787709}
!182 = !{i64 2154789255}
!183 = !{i64 2154792741}
!184 = !{!"auto-init"}
!185 = !{i64 2154842707}
!186 = !{i64 2154823912}
!187 = !{i64 2154827518}
!188 = !{i64 2154838627}
!189 = !{i64 2154842298}
!190 = !{i64 2154750893}
!191 = !{i64 2154751133}
!192 = !{i64 2154753784}
!193 = !{i64 2154754057}
!194 = !{i64 2154754355}
!195 = !{i64 2154754643}
!196 = !{i64 2154754918}
!197 = !{i64 2154775269}
!198 = !{i64 2154775509}
!199 = !{i64 2154778233}
!200 = !{i64 2154778506}
!201 = !{i64 2154778804}
!202 = !{i64 2154779093}
!203 = !{i64 2154779370}
!204 = !{i64 2154779646}
!205 = !{i64 2154759549}
!206 = !{i64 2154759789}
!207 = !{i64 2154762461}
!208 = !{i64 2154762734}
!209 = !{i64 2154763032}
!210 = !{i64 2154763321}
!211 = !{i64 2154763612}
!212 = !{i64 2154763905}
!213 = !{i64 2154764198}
!214 = !{i64 2154764492}
!215 = !{i64 2154764771}
!216 = !{i64 2154755215}
!217 = !{i64 2154755455}
!218 = !{i64 2154758111}
!219 = !{i64 2154758384}
!220 = !{i64 2154758682}
!221 = !{i64 2154758971}
!222 = !{i64 2154759247}
!223 = !{i64 2154770600}
!224 = !{i64 2154770840}
!225 = !{i64 2154773559}
!226 = !{i64 2154773832}
!227 = !{i64 2154774130}
!228 = !{i64 2154774419}
!229 = !{i64 2154774696}
!230 = !{i64 2154774972}
!231 = !{i64 2154765068}
!232 = !{i64 2154765308}
!233 = !{i64 2154767995}
!234 = !{i64 2154768268}
!235 = !{i64 2154768566}
!236 = !{i64 2154768854}
!237 = !{i64 2154769144}
!238 = !{i64 2154769437}
!239 = !{i64 2154769730}
!240 = !{i64 2154770024}
!241 = !{i64 2154770303}
