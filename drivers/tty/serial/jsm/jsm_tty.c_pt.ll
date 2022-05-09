; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/jsm/jsm_tty.c_pt.bc'
source_filename = "../drivers/tty/serial/jsm/jsm_tty.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.jsm_board = type { i32, i32, i8, ptr, i32, %struct.spinlock, i32, i32, i64, i64, ptr, i64, i64, i32, [8 x ptr], i32, ptr, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.board_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@jsm_debug = external dso_local local_unnamed_addr global i32, align 4
@jsm_tty_init.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"jsm\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"jsm_tty_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/tty/serial/jsm/jsm_tty.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"start\0A\00", [25 x i8] zeroinitializer }, align 32
@jsm_tty_init.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d Unable to allocate memory for channel struct\0A\00", [44 x i8] zeroinitializer }, align 32
@jsm_tty_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ch->ch_lock\00", [19 x i8] zeroinitializer }, align 32
@jsm_tty_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ch->ch_flags_wait\00", [45 x i8] zeroinitializer }, align 32
@jsm_tty_init.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"finish\0A\00", [24 x i8] zeroinitializer }, align 32
@jsm_uart_port_init.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.3, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"jsm_uart_port_init\00", [45 x i8] zeroinitializer }, align 32
@jsm_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @jsm_tty_tx_empty, ptr @jsm_tty_set_mctrl, ptr @jsm_tty_get_mctrl, ptr @jsm_tty_stop_tx, ptr @jsm_tty_start_tx, ptr null, ptr null, ptr @jsm_tty_send_xchar, ptr @jsm_tty_stop_rx, ptr null, ptr @jsm_tty_break, ptr @jsm_tty_open, ptr @jsm_tty_close, ptr null, ptr @jsm_tty_set_termios, ptr null, ptr null, ptr @jsm_tty_type, ptr @jsm_tty_release_port, ptr @jsm_tty_request_port, ptr @jsm_config_port, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@linemap = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@jsm_uart_port_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.9, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016jsm: linemap is full, added device failed\0A\00", [51 x i8] zeroinitializer }, align 32
@jsm_uart_port_init._entry_ptr = internal global ptr @jsm_uart_port_init._entry, section ".printk_index", align 4
@jsm_uart_driver = external dso_local global %struct.uart_driver, align 4
@jsm_uart_port_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016jsm: Port %d failed. Aborting...\0A\00", [60 x i8] zeroinitializer }, align 32
@jsm_uart_port_init._entry_ptr.13 = internal global ptr @jsm_uart_port_init._entry.11, section ".printk_index", align 4
@jsm_uart_port_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016jsm: Port %d added\0A\00", [42 x i8] zeroinitializer }, align 32
@jsm_uart_port_init._entry_ptr.16 = internal global ptr @jsm_uart_port_init._entry.14, section ".printk_index", align 4
@jsm_uart_port_init.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.8, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@jsm_remove_uart_port.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.3, i8 0, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"jsm_remove_uart_port\00", [43 x i8] zeroinitializer }, align 32
@jsm_remove_uart_port.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.8, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@jsm_input.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.3, i8 0, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jsm_input\00", [22 x i8] zeroinitializer }, align 32
@jsm_input.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.3, i8 0, i8 -118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@jsm_input.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"input. dropping %d bytes on port %d...\0A\00", [56 x i8] zeroinitializer }, align 32
@jsm_input.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.20, i8 0, i8 -111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Port %d throttled, not reading any data. head: %x tail: %x\0A\00", [36 x i8] zeroinitializer }, align 32
@jsm_input.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.21, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"start 2\0A\00", [23 x i8] zeroinitializer }, align 32
@jsm_input.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.8, i8 0, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@jsm_check_queue_flow_control.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 -62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"jsm_check_queue_flow_control\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Internal queue hit hilevel mark (%d)! Turning off interrupts\0A\00", [34 x i8] zeroinitializer }, align 32
@jsm_check_queue_flow_control.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 0, i8 -59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sending stop char! Times sent: %x\0A\00", [61 x i8] zeroinitializer }, align 32
@jsm_check_queue_flow_control.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.25, i8 0, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Internal queue hit lowlevel mark (%d)! Turning on interrupts\0A\00", [34 x i8] zeroinitializer }, align 32
@jsm_check_queue_flow_control.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.26, i8 0, i8 -50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Sending start char!\0A\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jsm_tty_set_mctrl.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.3, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jsm_tty_set_mctrl\00", [46 x i8] zeroinitializer }, align 32
@jsm_tty_set_mctrl.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.8, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jsm_tty_get_mctrl.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.3, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jsm_tty_get_mctrl\00", [46 x i8] zeroinitializer }, align 32
@jsm_tty_get_mctrl.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.8, i8 0, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@jsm_get_mstat.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.3, i8 0, i8 8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jsm_get_mstat\00", [18 x i8] zeroinitializer }, align 32
@jsm_get_mstat.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.8, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@jsm_tty_stop_tx.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.3, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jsm_tty_stop_tx\00", [16 x i8] zeroinitializer }, align 32
@jsm_tty_stop_tx.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.8, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@jsm_tty_start_tx.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.3, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jsm_tty_start_tx\00", [47 x i8] zeroinitializer }, align 32
@jsm_tty_start_tx.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.8, i8 0, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@jsm_tty_open.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"jsm_tty_open\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to allocate read queue buf\0A\00", [61 x i8] zeroinitializer }, align 32
@jsm_tty_open.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.34, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to allocate error queue buf\0A\00", [60 x i8] zeroinitializer }, align 32
@jsm_tty_open.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.35, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"jsm_open: initializing channel in open...\0A\00", [53 x i8] zeroinitializer }, align 32
@jsm_tty_open.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.8, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@jsm_carrier.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.3, i8 0, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jsm_carrier\00", [20 x i8] zeroinitializer }, align 32
@jsm_carrier.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mistat: %x D_CD: %x\0A\00", [43 x i8] zeroinitializer }, align 32
@jsm_carrier.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.38, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DCD: physical: %d virt: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@jsm_carrier.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.39, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"carrier: virt DCD rose\0A\00", [40 x i8] zeroinitializer }, align 32
@jsm_carrier.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.40, i8 0, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"carrier: physical DCD rose\0A\00", [36 x i8] zeroinitializer }, align 32
@jsm_tty_close.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.3, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jsm_tty_close\00", [18 x i8] zeroinitializer }, align 32
@jsm_tty_close.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Close. HUPCL set, dropping DTR/RTS\0A\00", [60 x i8] zeroinitializer }, align 32
@jsm_tty_close.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.8, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 375, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 396, i32 5 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 412, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 425, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 428, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 440, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [8 x i8] c"jsm_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 342, i32 30 }
@___asan_gen_.79 = private unnamed_addr constant [8 x i8] c"linemap\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 23, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 463, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 470, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 473, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 488, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 526, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 561, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 578, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 584, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 776, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 786, i32 5 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 814, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 823, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 91, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 69, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 32, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 141, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 128, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 210, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 218, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 228, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 653, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 660, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 668, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 681, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 697, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 276, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [36 x i8] c"../drivers/tty/serial/jsm/jsm_tty.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 288, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @jsm_uart_port_init._entry, ptr @jsm_uart_port_init._entry.11, ptr @jsm_uart_port_init._entry.14, ptr @jsm_uart_port_init._entry_ptr, ptr @jsm_uart_port_init._entry_ptr.13, ptr @jsm_uart_port_init._entry_ptr.16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @jsm_tty_init.__key, ptr @.str.5, ptr @jsm_tty_init.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @jsm_ops, ptr @linemap, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_tty_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_tty_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linemap to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_uart_port_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_uart_port_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_uart_port_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jsm_tty_init(ptr noundef %brd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %brd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %0 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end11_crit_edge, label %do.body3

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_tty_init.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_init, %if.then7)) #7
          to label %do.end11 [label %if.then7], !srcloc !142

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 3
  %1 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_tty_init.__UNIQUE_ID_ddebug253, ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body3, %do.body.do.end11_crit_edge
  %maxports = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 4
  %3 = ptrtoint ptr %maxports to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %maxports, align 8
  %nasync = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 6
  %5 = ptrtoint ptr %nasync to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %nasync, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp151.not = icmp eq i32 %4, 0
  br i1 %cmp151.not, label %do.end11.do.body79_crit_edge, label %for.body.lr.ph

do.end11.do.body79_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body79

for.body.lr.ph:                                   ; preds = %do.end11
  %pci_dev39 = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.jsm_board, ptr %brd, i32 0, i32 14, i32 %i.0152
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %if.then14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then14:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 600) #10
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %do.body22, label %if.then14.for.inc_crit_edge

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body22:                                        ; preds = %if.then14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %10 = load i32, ptr @jsm_debug, align 4
  %and23 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body22.for.inc_crit_edge, label %do.body26

do.body22.for.inc_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body26:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_tty_init.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_init, %if.then38)) #7
          to label %for.inc [label %if.then38], !srcloc !142

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %pci_dev39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_dev39, align 4
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_tty_init.__UNIQUE_ID_ddebug254, ptr noundef %dev40, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 398) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then38, %do.body26, %do.body22.for.inc_crit_edge, %if.then14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0152, 1
  %13 = ptrtoint ptr %nasync to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nasync, align 8
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %re_map_membase = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 10
  %15 = ptrtoint ptr %re_map_membase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %re_map_membase, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp53154.not = icmp eq i32 %14, 0
  br i1 %cmp53154.not, label %for.end.do.body79_crit_edge, label %for.body54.lr.ph

for.end.do.body79_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body79

for.body54.lr.ph:                                 ; preds = %for.end
  %channels49 = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 14
  %bd_uart_offset = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 13
  br label %for.body54

for.body54:                                       ; preds = %for.inc74.for.body54_crit_edge, %for.body54.lr.ph
  %ch.0158.in = phi ptr [ %channels49, %for.body54.lr.ph ], [ %arrayidx77, %for.inc74.for.body54_crit_edge ]
  %i.1155 = phi i32 [ 0, %for.body54.lr.ph ], [ %inc75, %for.inc74.for.body54_crit_edge ]
  %17 = ptrtoint ptr %ch.0158.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %ch.0158 = load ptr, ptr %ch.0158.in, align 4
  %arrayidx56 = getelementptr %struct.jsm_board, ptr %brd, i32 0, i32 14, i32 %i.1155
  %18 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx56, align 4
  %tobool57.not = icmp eq ptr %19, null
  br i1 %tobool57.not, label %for.body54.for.inc74_crit_edge, label %do.body60

for.body54.for.inc74_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc74

do.body60:                                        ; preds = %for.body54
  %ch_lock = getelementptr inbounds %struct.jsm_channel, ptr %ch.0158, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %ch_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @jsm_tty_init.__key, i16 noundef signext 3) #7
  %20 = ptrtoint ptr %bd_uart_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bd_uart_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %21)
  %cmp64 = icmp eq i32 %21, 512
  br i1 %cmp64, label %if.then65, label %if.else

if.then65:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %i.1155, 9
  %add.ptr = getelementptr i8, ptr %16, i32 %mul
  %ch_neo_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch.0158, i32 0, i32 16
  %22 = ptrtoint ptr %ch_neo_uart to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr, ptr %ch_neo_uart, align 4
  br label %if.end70

if.else:                                          ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  %mul68 = mul i32 %21, %i.1155
  %add.ptr69 = getelementptr i8, ptr %16, i32 %mul68
  %ch_cls_uart = getelementptr inbounds %struct.jsm_channel, ptr %ch.0158, i32 0, i32 17
  %23 = ptrtoint ptr %ch_cls_uart to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr69, ptr %ch_cls_uart, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.else, %if.then65
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch.0158, i32 0, i32 1
  %24 = ptrtoint ptr %ch_bd to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %brd, ptr %ch_bd, align 8
  %ch_portnum = getelementptr inbounds %struct.jsm_channel, ptr %ch.0158, i32 0, i32 4
  %25 = ptrtoint ptr %ch_portnum to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %i.1155, ptr %ch_portnum, align 4
  %ch_close_delay = getelementptr inbounds %struct.jsm_channel, ptr %ch.0158, i32 0, i32 7
  %26 = ptrtoint ptr %ch_close_delay to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 250, ptr %ch_close_delay, align 8
  %ch_flags_wait = getelementptr inbounds %struct.jsm_channel, ptr %ch.0158, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %ch_flags_wait, ptr noundef nonnull @.str.7, ptr noundef nonnull @jsm_tty_init.__key.6) #7
  br label %for.inc74

for.inc74:                                        ; preds = %if.end70, %for.body54.for.inc74_crit_edge
  %inc75 = add nuw i32 %i.1155, 1
  %arrayidx77 = getelementptr %struct.jsm_board, ptr %brd, i32 0, i32 14, i32 %inc75
  %27 = ptrtoint ptr %nasync to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nasync, align 8
  %cmp53 = icmp ult i32 %inc75, %28
  br i1 %cmp53, label %for.inc74.for.body54_crit_edge, label %for.inc74.do.body79_crit_edge

for.inc74.do.body79_crit_edge:                    ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body79

for.inc74.for.body54_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body54

do.body79:                                        ; preds = %for.inc74.do.body79_crit_edge, %for.end.do.body79_crit_edge, %do.end11.do.body79_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %29 = load i32, ptr @jsm_debug, align 4
  %and80 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.body79.cleanup_crit_edge, label %do.body83

do.body79.cleanup_crit_edge:                      ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body83:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_tty_init.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_init, %if.then95)) #7
          to label %cleanup [label %if.then95], !srcloc !142

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev96 = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 3
  %30 = ptrtoint ptr %pci_dev96 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci_dev96, align 4
  %dev97 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_tty_init.__UNIQUE_ID_ddebug255, ptr noundef %dev97, ptr noundef nonnull @.str.8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %do.body83, %do.body79.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ 0, %if.then95 ], [ 0, %do.body79.cleanup_crit_edge ], [ 0, %do.body83 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jsm_uart_port_init(ptr noundef %brd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %brd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %0 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end11_crit_edge, label %do.body3

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_uart_port_init.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_uart_port_init, %if.then7)) #7
          to label %do.end11 [label %if.then7], !srcloc !142

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 3
  %1 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_uart_port_init.__UNIQUE_ID_ddebug256, ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body3, %do.body.do.end11_crit_edge
  %maxports = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 4
  %3 = ptrtoint ptr %maxports to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %maxports, align 8
  %nasync = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 6
  %5 = ptrtoint ptr %nasync to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %nasync, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp134.not = icmp eq i32 %4, 0
  br i1 %cmp134.not, label %do.end11.do.body68_crit_edge, label %for.body.lr.ph

do.end11.do.body68_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body68

for.body.lr.ph:                                   ; preds = %do.end11
  %irq = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 7
  %re_map_membase = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0135 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.jsm_board, ptr %brd, i32 0, i32 14, i32 %i.0135
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %if.end15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %irq18 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 20
  %10 = ptrtoint ptr %irq18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %irq18, align 8
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 14745600, ptr %uartclk, align 8
  %14 = load ptr, ptr %arrayidx, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %14, i32 0, i32 38
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 69, ptr %type, align 4
  %16 = load ptr, ptr %arrayidx, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %16, i32 0, i32 26
  %17 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %iotype, align 2
  %18 = ptrtoint ptr %re_map_membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %re_map_membase, align 8
  %20 = load ptr, ptr %arrayidx, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %membase, align 8
  %22 = load ptr, ptr %arrayidx, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %22, i32 0, i32 23
  %23 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %fifosize, align 4
  %24 = load ptr, ptr %arrayidx, align 4
  %ops = getelementptr inbounds %struct.uart_port, ptr %24, i32 0, i32 39
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @jsm_ops, ptr %ops, align 8
  %call37 = tail call i32 @_find_first_zero_bit_be(ptr noundef nonnull @linemap, i32 noundef 256) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call37)
  %cmp38 = icmp ugt i32 %call37, 255
  br i1 %cmp38, label %do.end42, label %if.else

do.end42:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %for.inc

if.else:                                          ; preds = %if.end15
  tail call void @_set_bit(i32 noundef %call37, ptr noundef nonnull @linemap) #7
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %line49 = getelementptr inbounds %struct.uart_port, ptr %27, i32 0, i32 41
  %28 = ptrtoint ptr %line49 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call37, ptr %line49, align 8
  %29 = load ptr, ptr %arrayidx, align 4
  %call53 = tail call i32 @uart_add_one_port(ptr noundef nonnull @jsm_uart_driver, ptr noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.end64, label %do.end58

do.end58:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %i.0135) #11
  br label %cleanup

do.end64:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %i.0135) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end64, %do.end42, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0135, 1
  %30 = ptrtoint ptr %nasync to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nasync, align 8
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body68_crit_edge

for.inc.do.body68_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body68

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body68:                                        ; preds = %for.inc.do.body68_crit_edge, %do.end11.do.body68_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %32 = load i32, ptr @jsm_debug, align 4
  %and69 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.body68.cleanup_crit_edge, label %do.body72

do.body68.cleanup_crit_edge:                      ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body72:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_uart_port_init.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_uart_port_init, %if.then84)) #7
          to label %cleanup [label %if.then84], !srcloc !142

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev85 = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 3
  %33 = ptrtoint ptr %pci_dev85 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci_dev85, align 4
  %dev86 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_uart_port_init.__UNIQUE_ID_ddebug257, ptr noundef %dev86, ptr noundef nonnull @.str.8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %do.body72, %do.body68.cleanup_crit_edge, %do.end58, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call53, %do.end58 ], [ -6, %entry.cleanup_crit_edge ], [ 0, %if.then84 ], [ 0, %do.body68.cleanup_crit_edge ], [ 0, %do.body72 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jsm_remove_uart_port(ptr noundef %brd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %brd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %0 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end11_crit_edge, label %do.body3

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_remove_uart_port.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_remove_uart_port, %if.then7)) #7
          to label %do.end11 [label %if.then7], !srcloc !142

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 3
  %1 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_remove_uart_port.__UNIQUE_ID_ddebug258, ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body3, %do.body.do.end11_crit_edge
  %maxports = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 4
  %3 = ptrtoint ptr %maxports to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %maxports, align 8
  %nasync = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 6
  %5 = ptrtoint ptr %nasync to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %nasync, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp65.not = icmp eq i32 %4, 0
  br i1 %cmp65.not, label %do.end11.do.body22_crit_edge, label %do.end11.for.body_crit_edge

do.end11.for.body_crit_edge:                      ; preds = %do.end11
  br label %for.body

do.end11.do.body22_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end11.for.body_crit_edge
  %i.066 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end11.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.jsm_board, ptr %brd, i32 0, i32 14, i32 %i.066
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %if.end15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %line = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 41
  %8 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %line, align 8
  tail call void @_clear_bit(i32 noundef %9, ptr noundef nonnull @linemap) #7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call21 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @jsm_uart_driver, ptr noundef %11) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.066, 1
  %12 = ptrtoint ptr %nasync to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nasync, align 8
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body22_crit_edge

for.inc.do.body22_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body22:                                        ; preds = %for.inc.do.body22_crit_edge, %do.end11.do.body22_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %14 = load i32, ptr @jsm_debug, align 4
  %and23 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body22.cleanup_crit_edge, label %do.body26

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body26:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_remove_uart_port.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_remove_uart_port, %if.then38)) #7
          to label %cleanup [label %if.then38], !srcloc !142

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev39 = getelementptr inbounds %struct.jsm_board, ptr %brd, i32 0, i32 3
  %15 = ptrtoint ptr %pci_dev39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_dev39, align 4
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_remove_uart_port.__UNIQUE_ID_ddebug259, ptr noundef %dev40, ptr noundef nonnull @.str.8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %do.body26, %do.body22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ 0, %if.then38 ], [ 0, %do.body22.cleanup_crit_edge ], [ 0, %do.body26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jsm_input(ptr noundef %ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %0 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_input.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_input, %if.then5)) #7
          to label %do.end8 [label %if.then5], !srcloc !142

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %1 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_input.__UNIQUE_ID_ddebug260, ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %state = getelementptr inbounds %struct.uart_port, ptr %ch, i32 0, i32 30
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 4
  %tty = getelementptr inbounds %struct.tty_port, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tty, align 4
  %ch_bd10 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %9 = ptrtoint ptr %ch_bd10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ch_bd10, align 8
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %do.end8.cleanup_crit_edge, label %do.body15

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body15:                                        ; preds = %do.end8
  %ch_lock = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 2
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ch_lock) #7
  %ch_r_head = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 20
  %11 = ptrtoint ptr %ch_r_head to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ch_r_head, align 4
  %13 = and i16 %12, 8191
  %ch_r_tail = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 21
  %14 = ptrtoint ptr %ch_r_tail to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ch_r_tail, align 2
  %16 = and i16 %15, 8191
  %conv29 = zext i16 %13 to i32
  %conv30 = zext i16 %16 to i32
  %sub = sub nsw i32 %conv29, %conv30
  %and31 = and i32 %sub, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %cmp32 = icmp eq i32 %and31, 0
  br i1 %cmp32, label %if.then34, label %do.body37

if.then34:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ch_lock, i32 noundef %call18) #7
  br label %cleanup

do.body37:                                        ; preds = %do.body15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %17 = load i32, ptr @jsm_debug, align 4
  %and38 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.do.end62_crit_edge, label %do.body41

do.body37.do.end62_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

do.body41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_input.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_input, %if.then53)) #7
          to label %do.end62 [label %if.then53], !srcloc !142

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %ch_bd10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ch_bd10, align 8
  %pci_dev55 = getelementptr inbounds %struct.jsm_board, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %pci_dev55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_dev55, align 4
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_input.__UNIQUE_ID_ddebug261, ptr noundef %dev56, ptr noundef nonnull @.str.3) #7
  br label %do.end62

do.end62:                                         ; preds = %if.then53, %do.body41, %do.body37.do.end62_crit_edge
  %tobool63.not = icmp eq ptr %8, null
  br i1 %tobool63.not, label %do.end62.do.body67_crit_edge, label %lor.lhs.false

do.end62.do.body67_crit_edge:                     ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body67

lor.lhs.false:                                    ; preds = %do.end62
  %termios = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 13
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 13, i32 2
  %22 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %c_cflag, align 4
  %and64 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %lor.lhs.false.do.body67_crit_edge, label %if.end95

lor.lhs.false.do.body67_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body67

do.body67:                                        ; preds = %lor.lhs.false.do.body67_crit_edge, %do.end62.do.body67_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %24 = load i32, ptr @jsm_debug, align 4
  %and68 = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body67.do.end92_crit_edge, label %do.body71

do.body67.do.end92_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end92

do.body71:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_input.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_input, %if.then83)) #7
          to label %do.end92 [label %if.then83], !srcloc !142

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %ch_bd10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ch_bd10, align 8
  %pci_dev85 = getelementptr inbounds %struct.jsm_board, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %pci_dev85 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci_dev85, align 4
  %dev86 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %ch_portnum = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 4
  %29 = ptrtoint ptr %ch_portnum to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ch_portnum, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_input.__UNIQUE_ID_ddebug262, ptr noundef %dev86, ptr noundef nonnull @.str.19, i32 noundef %and31, i32 noundef %30) #7
  br label %do.end92

do.end92:                                         ; preds = %if.then83, %do.body71, %do.body67.do.end92_crit_edge
  %31 = ptrtoint ptr %ch_r_head to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %16, ptr %ch_r_head, align 4
  tail call void @jsm_check_queue_flow_control(ptr noundef %ch)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ch_lock, i32 noundef %call18) #7
  br label %cleanup

if.end95:                                         ; preds = %lor.lhs.false
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %32 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ch_flags, align 4
  %and96 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %do.body130, label %if.then98

if.then98:                                        ; preds = %if.end95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ch_lock, i32 noundef %call18) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %34 = load i32, ptr @jsm_debug, align 4
  %and101 = and i32 %34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.then98.cleanup_crit_edge, label %do.body104

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body104:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_input.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_input, %if.then116)) #7
          to label %cleanup [label %if.then116], !srcloc !142

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %ch_bd10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ch_bd10, align 8
  %pci_dev118 = getelementptr inbounds %struct.jsm_board, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %pci_dev118 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci_dev118, align 4
  %dev119 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %ch_portnum120 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 4
  %39 = ptrtoint ptr %ch_portnum120 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ch_portnum120, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_input.__UNIQUE_ID_ddebug263, ptr noundef %dev119, ptr noundef nonnull @.str.20, i32 noundef %40, i32 noundef %conv29, i32 noundef %conv30) #7
  br label %cleanup

do.body130:                                       ; preds = %if.end95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %41 = load i32, ptr @jsm_debug, align 4
  %and131 = and i32 %41, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %do.body130.do.end155_crit_edge, label %do.body134

do.body130.do.end155_crit_edge:                   ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end155

do.body134:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_input.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_input, %if.then146)) #7
          to label %do.end155 [label %if.then146], !srcloc !142

if.then146:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %ch_bd10 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ch_bd10, align 8
  %pci_dev148 = getelementptr inbounds %struct.jsm_board, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %pci_dev148 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pci_dev148, align 4
  %dev149 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_input.__UNIQUE_ID_ddebug264, ptr noundef %dev149, ptr noundef nonnull @.str.21) #7
  br label %do.end155

do.end155:                                        ; preds = %if.then146, %do.body134, %do.body130.do.end155_crit_edge
  %call156 = tail call i32 @tty_buffer_request_room(ptr noundef %6, i32 noundef %and31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not365 = icmp eq i32 %call156, 0
  br i1 %tobool157.not365, label %do.end155.while.end_crit_edge, label %while.body.lr.ph

do.end155.while.end_crit_edge:                    ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end155
  %ch_rqueue = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 19
  %ch_equeue = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 22
  %tail.i = getelementptr inbounds %struct.tty_bufhead, ptr %6, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %if.end217.while.body_crit_edge, %while.body.lr.ph
  %tail.0367 = phi i16 [ %16, %while.body.lr.ph ], [ %76, %if.end217.while.body_crit_edge ]
  %len.0366 = phi i32 [ %call156, %while.body.lr.ph ], [ %sub221, %if.end217.while.body_crit_edge ]
  %conv159 = zext i16 %tail.0367 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %tail.0367)
  %cmp160.not = icmp ult i16 %13, %tail.0367
  %spec.select = select i1 %cmp160.not, i32 8192, i32 %conv29
  %sub164 = sub nsw i32 %spec.select, %conv159
  %46 = tail call i32 @llvm.smin.i32(i32 %sub164, i32 %len.0366)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp172 = icmp slt i32 %46, 1
  br i1 %cmp172, label %while.body.while.end_crit_edge, label %if.end175

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end175:                                        ; preds = %while.body
  %47 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %termios, align 4
  %49 = and i32 %48, 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %if.else213, label %if.end175.for.body_crit_edge

if.end175.for.body_crit_edge:                     ; preds = %if.end175
  br label %for.body

for.body:                                         ; preds = %tty_insert_flip_char.exit.for.body_crit_edge, %if.end175.for.body_crit_edge
  %i.0364 = phi i32 [ %inc, %tty_insert_flip_char.exit.for.body_crit_edge ], [ 0, %if.end175.for.body_crit_edge ]
  %51 = ptrtoint ptr %ch_rqueue to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ch_rqueue, align 8
  %add = add nuw nsw i32 %i.0364, %conv159
  %arrayidx = getelementptr i8, ptr %52, i32 %add
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx, align 1
  %55 = ptrtoint ptr %ch_equeue to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ch_equeue, align 8
  %arrayidx195 = getelementptr i8, ptr %56, i32 %add
  %57 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx195, align 1
  %conv196 = zext i8 %58 to i32
  %and197 = and i32 %conv196, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  br i1 %tobool198.not, label %if.else, label %for.body.if.end211_crit_edge

for.body.if.end211_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

if.else:                                          ; preds = %for.body
  %and201 = and i32 %conv196, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %if.else204, label %if.else.if.end211_crit_edge

if.else.if.end211_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

if.else204:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and206 = lshr i8 %58, 2
  %59 = and i8 %and206, 2
  br label %if.end211

if.end211:                                        ; preds = %if.else204, %if.else.if.end211_crit_edge, %for.body.if.end211_crit_edge
  %flag.0 = phi i8 [ 1, %for.body.if.end211_crit_edge ], [ 3, %if.else.if.end211_crit_edge ], [ %59, %if.else204 ]
  %60 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.0)
  %cmp.i = icmp eq i8 %flag.0, 0
  %64 = or i1 %cmp.i, %tobool.not.i
  br i1 %64, label %land.lhs.true.i, label %if.end211.if.end12.i_crit_edge

if.end211.if.end12.i_crit_edge:                   ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end211
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %61, i32 0, i32 1
  %65 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %61, i32 0, i32 2
  %67 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp3.i = icmp slt i32 %66, %68
  br i1 %cmp3.i, label %if.then.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then.i:                                        ; preds = %land.lhs.true.i
  br i1 %tobool.not.i, label %if.then8.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %61, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %66
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %68
  %69 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %flag.0, ptr %add.ptr.i.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i, %if.then.i.if.end.i_crit_edge
  %70 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %71, 1
  store i32 %inc.i, ptr %used.i, align 4
  %data.i.i = getelementptr inbounds %struct.tty_buffer, ptr %61, i32 0, i32 6
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i, i32 %71
  %72 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %54, ptr %add.ptr.i1.i, align 1
  br label %tty_insert_flip_char.exit

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.end211.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %6, i8 noundef zeroext %54, i8 noundef zeroext %flag.0) #7
  br label %tty_insert_flip_char.exit

tty_insert_flip_char.exit:                        ; preds = %if.end12.i, %if.end.i
  %inc = add nuw nsw i32 %i.0364, 1
  %exitcond.not = icmp eq i32 %inc, %46
  br i1 %exitcond.not, label %tty_insert_flip_char.exit.if.end217_crit_edge, label %tty_insert_flip_char.exit.for.body_crit_edge

tty_insert_flip_char.exit.for.body_crit_edge:     ; preds = %tty_insert_flip_char.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

tty_insert_flip_char.exit.if.end217_crit_edge:    ; preds = %tty_insert_flip_char.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end217

if.else213:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %ch_rqueue to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ch_rqueue, align 8
  %add.ptr = getelementptr i8, ptr %74, i32 %conv159
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %6, ptr noundef %add.ptr, i8 noundef zeroext 0, i32 noundef %46) #7
  br label %if.end217

if.end217:                                        ; preds = %if.else213, %tty_insert_flip_char.exit.if.end217_crit_edge
  %75 = trunc i32 %46 to i16
  %conv220 = add i16 %tail.0367, %75
  %sub221 = sub i32 %len.0366, %46
  %76 = and i16 %conv220, 8191
  %tobool157.not = icmp eq i32 %sub221, 0
  br i1 %tobool157.not, label %if.end217.while.end_crit_edge, label %if.end217.while.body_crit_edge

if.end217.while.body_crit_edge:                   ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end217.while.end_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end217.while.end_crit_edge, %while.body.while.end_crit_edge, %do.end155.while.end_crit_edge
  %tail.0.lcssa = phi i16 [ %16, %do.end155.while.end_crit_edge ], [ %tail.0367, %while.body.while.end_crit_edge ], [ %76, %if.end217.while.end_crit_edge ]
  %77 = ptrtoint ptr %ch_r_tail to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %tail.0.lcssa, ptr %ch_r_tail, align 2
  %ch_e_tail = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 24
  %78 = ptrtoint ptr %ch_e_tail to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %tail.0.lcssa, ptr %ch_e_tail, align 2
  tail call void @jsm_check_queue_flow_control(ptr noundef %ch)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ch_lock, i32 noundef %call18) #7
  tail call void @tty_flip_buffer_push(ptr noundef %6) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %79 = load i32, ptr @jsm_debug, align 4
  %and234 = and i32 %79, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234)
  %tobool235.not = icmp eq i32 %and234, 0
  br i1 %tobool235.not, label %while.end.cleanup_crit_edge, label %do.body237

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body237:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_input.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_input, %if.then249)) #7
          to label %cleanup [label %if.then249], !srcloc !142

if.then249:                                       ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %ch_bd10 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ch_bd10, align 8
  %pci_dev251 = getelementptr inbounds %struct.jsm_board, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %pci_dev251 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pci_dev251, align 4
  %dev252 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_input.__UNIQUE_ID_ddebug267, ptr noundef %dev252, ptr noundef nonnull @.str.8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then249, %do.body237, %while.end.cleanup_crit_edge, %if.then116, %do.body104, %if.then98.cleanup_crit_edge, %do.end92, %if.then34, %do.end8.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jsm_check_queue_flow_control(ptr noundef %ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %0 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_bd, align 8
  %bd_ops1 = getelementptr inbounds %struct.jsm_board, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %bd_ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_ops1, align 8
  %ch_r_tail = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 21
  %4 = ptrtoint ptr %ch_r_tail to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ch_r_tail, align 2
  %conv = zext i16 %5 to i32
  %ch_r_head = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 20
  %6 = ptrtoint ptr %ch_r_head to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ch_r_head, align 4
  %conv2 = zext i16 %7 to i32
  %8 = xor i32 %conv2, -1
  %sub3 = add nsw i32 %8, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3)
  %cmp = icmp slt i32 %sub3, 0
  %add = add nsw i32 %sub3, 8192
  %spec.select = select i1 %cmp, i32 %add, i32 %sub3
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %spec.select)
  %cmp5 = icmp slt i32 %spec.select, 256
  br i1 %cmp5, label %if.then7, label %entry.if.end64_crit_edge

entry.if.end64_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then7:                                         ; preds = %entry
  %ch_c_cflag = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 9
  %9 = ptrtoint ptr %ch_c_cflag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ch_c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool.not = icmp sgt i32 %10, -1
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then7
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %11 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ch_flags, align 4
  %and9 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then11, label %if.then8.if.end141_crit_edge

if.then8.if.end141_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then11:                                        ; preds = %if.then8
  %disable_receiver = getelementptr inbounds %struct.board_ops, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %disable_receiver to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %disable_receiver, align 4
  tail call void %14(ptr noundef %ch) #7
  %15 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ch_flags, align 4
  %or = or i32 %16, 64
  store i32 %or, ptr %ch_flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %17 = load i32, ptr @jsm_debug, align 4
  %and13 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then11.if.end141_crit_edge, label %do.body16

if.then11.if.end141_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

do.body16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_check_queue_flow_control.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_check_queue_flow_control, %if.then20)) #7
          to label %if.end64 [label %if.then20], !srcloc !142

if.then20:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_check_queue_flow_control.__UNIQUE_ID_ddebug273, ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %spec.select) #7
  br label %if.end141

if.else:                                          ; preds = %if.then7
  %ch_c_iflag = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 8
  %22 = ptrtoint ptr %ch_c_iflag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ch_c_iflag, align 8
  %and27 = and i32 %23, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else.if.end141_crit_edge, label %if.then29

if.else.if.end141_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then29:                                        ; preds = %if.else
  %ch_stops_sent = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 30
  %24 = ptrtoint ptr %ch_stops_sent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ch_stops_sent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %cmp30 = icmp ult i32 %25, 6
  br i1 %cmp30, label %if.then32, label %if.then29.if.end141_crit_edge

if.then29.if.end141_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then32:                                        ; preds = %if.then29
  %send_stop_character = getelementptr inbounds %struct.board_ops, ptr %3, i32 0, i32 12
  %26 = ptrtoint ptr %send_stop_character to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %send_stop_character, align 4
  tail call void %27(ptr noundef %ch) #7
  %28 = ptrtoint ptr %ch_stops_sent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ch_stops_sent, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %ch_stops_sent, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %30 = load i32, ptr @jsm_debug, align 4
  %and35 = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.then32.if.end141_crit_edge, label %do.body38

if.then32.if.end141_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

do.body38:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_check_queue_flow_control.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_check_queue_flow_control, %if.then50)) #7
          to label %if.end64 [label %if.then50], !srcloc !142

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ch_bd, align 8
  %pci_dev52 = getelementptr inbounds %struct.jsm_board, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %pci_dev52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci_dev52, align 4
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %ch_stops_sent to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ch_stops_sent, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_check_queue_flow_control.__UNIQUE_ID_ddebug274, ptr noundef %dev53, ptr noundef nonnull @.str.24, i32 noundef %36) #7
  br label %if.end141

if.end64:                                         ; preds = %do.body38, %do.body16, %entry.if.end64_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %spec.select)
  %cmp65 = icmp sgt i32 %spec.select, 4096
  br i1 %cmp65, label %if.then67, label %if.end64.if.end141_crit_edge

if.end64.if.end141_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then67:                                        ; preds = %if.end64
  %ch_c_cflag68 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 9
  %37 = ptrtoint ptr %ch_c_cflag68 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ch_c_cflag68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %tobool70.not = icmp sgt i32 %38, -1
  br i1 %tobool70.not, label %if.else105, label %if.then71

if.then71:                                        ; preds = %if.then67
  %ch_flags72 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %39 = ptrtoint ptr %ch_flags72 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ch_flags72, align 4
  %and73 = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.then71.if.end141_crit_edge, label %if.then75

if.then71.if.end141_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then75:                                        ; preds = %if.then71
  %enable_receiver = getelementptr inbounds %struct.board_ops, ptr %3, i32 0, i32 8
  %41 = ptrtoint ptr %enable_receiver to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %enable_receiver, align 4
  tail call void %42(ptr noundef %ch) #7
  %43 = ptrtoint ptr %ch_flags72 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ch_flags72, align 4
  %and77 = and i32 %44, -65
  store i32 %and77, ptr %ch_flags72, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %45 = load i32, ptr @jsm_debug, align 4
  %and79 = and i32 %45, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.then75.if.end141_crit_edge, label %do.body82

if.then75.if.end141_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

do.body82:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_check_queue_flow_control.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_check_queue_flow_control, %if.then94)) #7
          to label %if.end141 [label %if.then94], !srcloc !142

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ch_bd, align 8
  %pci_dev96 = getelementptr inbounds %struct.jsm_board, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %pci_dev96 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pci_dev96, align 4
  %dev97 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_check_queue_flow_control.__UNIQUE_ID_ddebug275, ptr noundef %dev97, ptr noundef nonnull @.str.25, i32 noundef %spec.select) #7
  br label %if.end141

if.else105:                                       ; preds = %if.then67
  %ch_c_iflag106 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 8
  %50 = ptrtoint ptr %ch_c_iflag106 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ch_c_iflag106, align 8
  %and107 = and i32 %51, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.else105.if.end141_crit_edge, label %land.lhs.true

if.else105.if.end141_crit_edge:                   ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

land.lhs.true:                                    ; preds = %if.else105
  %ch_stops_sent109 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 30
  %52 = ptrtoint ptr %ch_stops_sent109 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ch_stops_sent109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool110.not = icmp eq i32 %53, 0
  br i1 %tobool110.not, label %land.lhs.true.if.end141_crit_edge, label %if.then111

land.lhs.true.if.end141_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then111:                                       ; preds = %land.lhs.true
  %54 = ptrtoint ptr %ch_stops_sent109 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %ch_stops_sent109, align 4
  %send_start_character = getelementptr inbounds %struct.board_ops, ptr %3, i32 0, i32 11
  %55 = ptrtoint ptr %send_start_character to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %send_start_character, align 4
  tail call void %56(ptr noundef %ch) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %57 = load i32, ptr @jsm_debug, align 4
  %and114 = and i32 %57, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.then111.if.end141_crit_edge, label %do.body117

if.then111.if.end141_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

do.body117:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_check_queue_flow_control.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_check_queue_flow_control, %if.then129)) #7
          to label %if.end141 [label %if.then129], !srcloc !142

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ch_bd, align 8
  %pci_dev131 = getelementptr inbounds %struct.jsm_board, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %pci_dev131 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pci_dev131, align 4
  %dev132 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_check_queue_flow_control.__UNIQUE_ID_ddebug276, ptr noundef %dev132, ptr noundef nonnull @.str.26) #7
  br label %if.end141

if.end141:                                        ; preds = %if.then129, %do.body117, %if.then111.if.end141_crit_edge, %land.lhs.true.if.end141_crit_edge, %if.else105.if.end141_crit_edge, %if.then94, %do.body82, %if.then75.if.end141_crit_edge, %if.then71.if.end141_crit_edge, %if.end64.if.end141_crit_edge, %if.then50, %if.then32.if.end141_crit_edge, %if.then29.if.end141_crit_edge, %if.else.if.end141_crit_edge, %if.then20, %if.then11.if.end141_crit_edge, %if.then8.if.end141_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_request_room(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jsm_tty_tx_empty(ptr nocapture noundef readnone %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jsm_tty_set_mctrl(ptr noundef %port, i32 noundef %mctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %0 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_tty_set_mctrl.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_set_mctrl, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !142

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 1
  %1 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_tty_set_mctrl.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %ch_mostat14 = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 14
  %5 = ptrtoint ptr %ch_mostat14 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ch_mostat14, align 2
  %7 = and i8 %6, -3
  %8 = trunc i32 %mctrl to i8
  %9 = lshr i8 %8, 1
  %10 = and i8 %9, 2
  %.sink = or i8 %7, %10
  store i8 %.sink, ptr %ch_mostat14, align 2
  %ch_mostat27 = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 14
  %11 = and i8 %.sink, -2
  %12 = trunc i32 %mctrl to i8
  %13 = lshr i8 %12, 1
  %14 = and i8 %13, 1
  %.sink72 = or i8 %11, %14
  %15 = ptrtoint ptr %ch_mostat27 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink72, ptr %ch_mostat27, align 2
  %ch_bd32 = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 1
  %16 = ptrtoint ptr %ch_bd32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ch_bd32, align 8
  %bd_ops = getelementptr inbounds %struct.jsm_board, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %bd_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bd_ops, align 8
  %assert_modem_signals = getelementptr inbounds %struct.board_ops, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %assert_modem_signals to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %assert_modem_signals, align 4
  tail call void %21(ptr noundef %port) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %22 = load i32, ptr @jsm_debug, align 4
  %and34 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.end9.do.end58_crit_edge, label %do.body37

do.end9.do.end58_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58

do.body37:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_tty_set_mctrl.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_set_mctrl, %if.then49)) #7
          to label %do.end58 [label %if.then49], !srcloc !142

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %ch_bd32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ch_bd32, align 8
  %pci_dev51 = getelementptr inbounds %struct.jsm_board, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %pci_dev51 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci_dev51, align 4
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_tty_set_mctrl.__UNIQUE_ID_ddebug241, ptr noundef %dev52, ptr noundef nonnull @.str.8) #7
  br label %do.end58

do.end58:                                         ; preds = %if.then49, %do.body37, %do.end9.do.end58_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jsm_tty_get_mctrl(ptr nocapture noundef readonly %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %0 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_tty_get_mctrl.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_get_mctrl, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !142

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 1
  %1 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_tty_get_mctrl.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %5 = load i32, ptr @jsm_debug, align 4
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end9.do.end8.i_crit_edge, label %do.body1.i

do.end9.do.end8.i_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i

do.body1.i:                                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_get_mstat.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_get_mctrl, %if.then5.i)) #7
          to label %do.end8.i [label %if.then5.i], !srcloc !142

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  %ch_bd.i = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 1
  %6 = ptrtoint ptr %ch_bd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch_bd.i, align 8
  %pci_dev.i = getelementptr inbounds %struct.jsm_board, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_get_mstat.__UNIQUE_ID_ddebug236, ptr noundef %dev.i, ptr noundef nonnull @.str.3) #7
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then5.i, %do.body1.i, %do.end9.do.end8.i_crit_edge
  %ch_mostat.i = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 14
  %10 = ptrtoint ptr %ch_mostat.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ch_mostat.i, align 2
  %ch_mistat.i = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 15
  %12 = ptrtoint ptr %ch_mistat.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ch_mistat.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %14 = load i32, ptr @jsm_debug, align 4
  %and48.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %do.end8.i.do.body13_crit_edge, label %do.body51.i

do.end8.i.do.body13_crit_edge:                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13

do.body51.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_get_mstat.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_get_mctrl, %if.then63.i)) #7
          to label %do.body13 [label %if.then63.i], !srcloc !142

if.then63.i:                                      ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #9
  %ch_bd64.i = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 1
  %15 = ptrtoint ptr %ch_bd64.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ch_bd64.i, align 8
  %pci_dev65.i = getelementptr inbounds %struct.jsm_board, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %pci_dev65.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_dev65.i, align 4
  %dev66.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_get_mstat.__UNIQUE_ID_ddebug237, ptr noundef %dev66.i, ptr noundef nonnull @.str.8) #7
  br label %do.body13

do.body13:                                        ; preds = %if.then63.i, %do.body51.i, %do.end8.i.do.body13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %19 = load i32, ptr @jsm_debug, align 4
  %and14 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body13.cleanup_crit_edge, label %do.body17

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_tty_get_mctrl.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_get_mctrl, %if.then29)) #7
          to label %cleanup [label %if.then29], !srcloc !142

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %ch_bd30 = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 1
  %20 = ptrtoint ptr %ch_bd30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ch_bd30, align 8
  %pci_dev31 = getelementptr inbounds %struct.jsm_board, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %pci_dev31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci_dev31, align 4
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_tty_get_mctrl.__UNIQUE_ID_ddebug239, ptr noundef %dev32, ptr noundef nonnull @.str.8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %do.body17, %do.body13.cleanup_crit_edge
  %or87.i = or i8 %13, %11
  %conv11.i = zext i8 %or87.i to i32
  %and36.i = shl nuw nsw i32 %conv11.i, 1
  %24 = and i32 %and36.i, 38
  %and30.i = shl nuw nsw i32 %conv11.i, 3
  %25 = and i32 %and30.i, 256
  %26 = or i32 %24, %25
  %27 = and i32 %and36.i, 128
  %28 = or i32 %26, %27
  %and42.i = lshr i32 %conv11.i, 1
  %29 = and i32 %and42.i, 64
  %30 = or i32 %28, %29
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jsm_tty_stop_tx(ptr nocapture noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %0 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_tty_stop_tx.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_stop_tx, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !142

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 1
  %1 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_tty_stop_tx.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 6
  %5 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ch_flags, align 4
  %or = or i32 %6, 2
  store i32 %or, ptr %ch_flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %7 = load i32, ptr @jsm_debug, align 4
  %and11 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.end9.do.end35_crit_edge, label %do.body14

do.end9.do.end35_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

do.body14:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_tty_stop_tx.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_stop_tx, %if.then26)) #7
          to label %do.end35 [label %if.then26], !srcloc !142

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %ch_bd27 = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 1
  %8 = ptrtoint ptr %ch_bd27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ch_bd27, align 8
  %pci_dev28 = getelementptr inbounds %struct.jsm_board, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %pci_dev28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_dev28, align 4
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_tty_stop_tx.__UNIQUE_ID_ddebug245, ptr noundef %dev29, ptr noundef nonnull @.str.8) #7
  br label %do.end35

do.end35:                                         ; preds = %if.then26, %do.body14, %do.end9.do.end35_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jsm_tty_start_tx(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %0 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_tty_start_tx.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_start_tx, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !142

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 1
  %1 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_tty_start_tx.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 6
  %5 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ch_flags, align 4
  %and10 = and i32 %6, -3
  store i32 %and10, ptr %ch_flags, align 4
  %ch_bd.i = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 1
  %7 = ptrtoint ptr %ch_bd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ch_bd.i, align 8
  %bd_ops.i = getelementptr inbounds %struct.jsm_board, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %bd_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bd_ops.i, align 8
  %copy_data_from_queue_to_uart.i = getelementptr inbounds %struct.board_ops, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %copy_data_from_queue_to_uart.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %copy_data_from_queue_to_uart.i, align 4
  tail call void %12(ptr noundef %port) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %13 = load i32, ptr @jsm_debug, align 4
  %and12 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.end9.do.end36_crit_edge, label %do.body15

do.end9.do.end36_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36

do.body15:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_tty_start_tx.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_start_tx, %if.then27)) #7
          to label %do.end36 [label %if.then27], !srcloc !142

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %ch_bd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ch_bd.i, align 8
  %pci_dev29 = getelementptr inbounds %struct.jsm_board, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %pci_dev29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_dev29, align 4
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_tty_start_tx.__UNIQUE_ID_ddebug243, ptr noundef %dev30, ptr noundef nonnull @.str.8) #7
  br label %do.end36

do.end36:                                         ; preds = %if.then27, %do.body15, %do.end9.do.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jsm_tty_send_xchar(ptr noundef %port, i8 noundef zeroext %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #7
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tty = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty, align 4
  %arrayidx = getelementptr %struct.tty_struct, ptr %3, i32 0, i32 13, i32 5, i32 8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %ch)
  %cmp10 = icmp eq i8 %5, %ch
  br i1 %cmp10, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 1
  %6 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch_bd, align 8
  %bd_ops = getelementptr inbounds %struct.jsm_board, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %bd_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_ops, align 8
  %send_start_character = getelementptr inbounds %struct.board_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %send_start_character to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %send_start_character, align 4
  tail call void %11(ptr noundef %port) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx14 = getelementptr %struct.tty_struct, ptr %3, i32 0, i32 13, i32 5, i32 9
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %ch)
  %cmp16 = icmp eq i8 %13, %ch
  br i1 %cmp16, label %if.then18, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ch_bd19 = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 1
  %14 = ptrtoint ptr %ch_bd19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ch_bd19, align 8
  %bd_ops20 = getelementptr inbounds %struct.jsm_board, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %bd_ops20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bd_ops20, align 8
  %send_stop_character = getelementptr inbounds %struct.board_ops, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %send_stop_character to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %send_stop_character, align 4
  tail call void %19(ptr noundef %port) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end.if.end21_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jsm_tty_stop_rx(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_bd, align 8
  %bd_ops = getelementptr inbounds %struct.jsm_board, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %bd_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_ops, align 8
  %disable_receiver = getelementptr inbounds %struct.board_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %disable_receiver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable_receiver, align 4
  tail call void %5(ptr noundef %port) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jsm_tty_break(ptr noundef %port, i32 noundef %break_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %break_state)
  %cmp6 = icmp eq i32 %break_state, -1
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_bd, align 8
  %bd_ops = getelementptr inbounds %struct.jsm_board, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %bd_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_ops, align 8
  %clear_break = getelementptr inbounds %struct.board_ops, ptr %3, i32 0, i32 10
  %send_break = getelementptr inbounds %struct.board_ops, ptr %3, i32 0, i32 9
  %clear_break.sink = select i1 %cmp6, ptr %send_break, ptr %clear_break
  %4 = ptrtoint ptr %clear_break.sink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clear_break.sink, align 4
  tail call void %5(ptr noundef %port) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jsm_tty_open(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_bd, align 8
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 6
  %2 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_flags, align 4
  %or = or i32 %3, 128
  store i32 %or, ptr %ch_flags, align 4
  %ch_rqueue = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 19
  %4 = ptrtoint ptr %ch_rqueue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch_rqueue, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 8192) #10
  %7 = ptrtoint ptr %ch_rqueue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %ch_rqueue, align 8
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %do.body, label %if.then.if.end19_crit_edge

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %8 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.body7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_tty_open.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_open, %if.then13)) #7
          to label %cleanup [label %if.then13], !srcloc !142

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_tty_open.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.33) #7
  br label %cleanup

if.end19:                                         ; preds = %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  %ch_equeue = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 22
  %13 = ptrtoint ptr %ch_equeue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ch_equeue, align 8
  %tobool20.not = icmp eq ptr %14, null
  br i1 %tobool20.not, label %if.then21, label %if.end19.if.end54_crit_edge

if.end19.if.end54_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then21:                                        ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i181 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 8192) #10
  %16 = ptrtoint ptr %ch_equeue to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i181, ptr %ch_equeue, align 8
  %tobool25.not = icmp eq ptr %call7.i.i181, null
  br i1 %tobool25.not, label %do.body27, label %if.then21.if.end54_crit_edge

if.then21.if.end54_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

do.body27:                                        ; preds = %if.then21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %17 = load i32, ptr @jsm_debug, align 4
  %and28 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body27.cleanup_crit_edge, label %do.body31

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body31:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_tty_open.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_open, %if.then43)) #7
          to label %cleanup [label %if.then43], !srcloc !142

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ch_bd, align 8
  %pci_dev45 = getelementptr inbounds %struct.jsm_board, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %pci_dev45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_dev45, align 4
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_tty_open.__UNIQUE_ID_ddebug247, ptr noundef %dev46, ptr noundef nonnull @.str.34) #7
  br label %cleanup

if.end54:                                         ; preds = %if.then21.if.end54_crit_edge, %if.end19.if.end54_crit_edge
  %22 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ch_flags, align 4
  %and56 = and i32 %23, -129
  store i32 %and56, ptr %ch_flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %24 = load i32, ptr @jsm_debug, align 4
  %and58 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end54.do.end82_crit_edge, label %do.body61

if.end54.do.end82_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

do.body61:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_tty_open.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_open, %if.then73)) #7
          to label %do.end82 [label %if.then73], !srcloc !142

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ch_bd, align 8
  %pci_dev75 = getelementptr inbounds %struct.jsm_board, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %pci_dev75 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci_dev75, align 4
  %dev76 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_tty_open.__UNIQUE_ID_ddebug248, ptr noundef %dev76, ptr noundef nonnull @.str.35) #7
  br label %do.end82

do.end82:                                         ; preds = %if.then73, %do.body61, %if.end54.do.end82_crit_edge
  %ch_r_tail = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 21
  %29 = ptrtoint ptr %ch_r_tail to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %ch_r_tail, align 2
  %ch_r_head = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 20
  %30 = ptrtoint ptr %ch_r_head to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %ch_r_head, align 4
  %ch_e_tail = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 24
  %31 = ptrtoint ptr %ch_e_tail to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %ch_e_tail, align 2
  %ch_e_head = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 23
  %32 = ptrtoint ptr %ch_e_head to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %ch_e_head, align 4
  %bd_ops = getelementptr inbounds %struct.jsm_board, ptr %1, i32 0, i32 16
  %33 = ptrtoint ptr %bd_ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bd_ops, align 8
  %flush_uart_write = getelementptr inbounds %struct.board_ops, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %flush_uart_write to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %flush_uart_write, align 4
  tail call void %36(ptr noundef %port) #7
  %37 = ptrtoint ptr %bd_ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bd_ops, align 8
  %flush_uart_read = getelementptr inbounds %struct.board_ops, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %flush_uart_read to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %flush_uart_read, align 4
  tail call void %40(ptr noundef %port) #7
  %41 = ptrtoint ptr %ch_flags to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %ch_flags, align 4
  %ch_cached_lsr = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 18
  %42 = ptrtoint ptr %ch_cached_lsr to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %ch_cached_lsr, align 4
  %ch_stops_sent = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 30
  %43 = ptrtoint ptr %ch_stops_sent to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %ch_stops_sent, align 4
  %call89 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #7
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %44 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %state, align 4
  %tty = getelementptr inbounds %struct.tty_port, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tty, align 4
  %termios95 = getelementptr inbounds %struct.tty_struct, ptr %47, i32 0, i32 13
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %47, i32 0, i32 13, i32 2
  %48 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %c_cflag, align 4
  %ch_c_cflag = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 9
  %50 = ptrtoint ptr %ch_c_cflag to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %ch_c_cflag, align 4
  %51 = ptrtoint ptr %termios95 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %termios95, align 4
  %ch_c_iflag = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 8
  %53 = ptrtoint ptr %ch_c_iflag to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %ch_c_iflag, align 8
  %c_oflag = getelementptr inbounds %struct.tty_struct, ptr %47, i32 0, i32 13, i32 1
  %54 = ptrtoint ptr %c_oflag to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %c_oflag, align 4
  %ch_c_oflag = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 10
  %56 = ptrtoint ptr %ch_c_oflag to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %ch_c_oflag, align 8
  %c_lflag = getelementptr inbounds %struct.tty_struct, ptr %47, i32 0, i32 13, i32 3
  %57 = ptrtoint ptr %c_lflag to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %c_lflag, align 4
  %ch_c_lflag = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 11
  %59 = ptrtoint ptr %ch_c_lflag to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %ch_c_lflag, align 4
  %arrayidx = getelementptr %struct.tty_struct, ptr %47, i32 0, i32 13, i32 5, i32 8
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx, align 1
  %ch_startc = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 13
  %62 = ptrtoint ptr %ch_startc to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %ch_startc, align 1
  %arrayidx97 = getelementptr %struct.tty_struct, ptr %47, i32 0, i32 13, i32 5, i32 9
  %63 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx97, align 1
  %ch_stopc = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 12
  %65 = ptrtoint ptr %ch_stopc to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %ch_stopc, align 8
  %66 = ptrtoint ptr %bd_ops to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bd_ops, align 8
  %uart_init = getelementptr inbounds %struct.board_ops, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %uart_init to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %uart_init, align 4
  tail call void %69(ptr noundef %port) #7
  %70 = ptrtoint ptr %bd_ops to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bd_ops, align 8
  %param = getelementptr inbounds %struct.board_ops, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %param, align 4
  tail call void %73(ptr noundef %port) #7
  tail call fastcc void @jsm_carrier(ptr noundef %port)
  %ch_open_count = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 5
  %74 = ptrtoint ptr %ch_open_count to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ch_open_count, align 8
  %inc = add i32 %75, 1
  store i32 %inc, ptr %ch_open_count, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call89) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %76 = load i32, ptr @jsm_debug, align 4
  %and102 = and i32 %76, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %do.end82.cleanup_crit_edge, label %do.body105

do.end82.cleanup_crit_edge:                       ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body105:                                       ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_tty_open.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_open, %if.then117)) #7
          to label %cleanup [label %if.then117], !srcloc !142

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ch_bd, align 8
  %pci_dev119 = getelementptr inbounds %struct.jsm_board, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %pci_dev119 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pci_dev119, align 4
  %dev120 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_tty_open.__UNIQUE_ID_ddebug249, ptr noundef %dev120, ptr noundef nonnull @.str.8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then117, %do.body105, %do.end82.cleanup_crit_edge, %if.then43, %do.body31, %do.body27.cleanup_crit_edge, %if.then13, %do.body7, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then13 ], [ -12, %do.body.cleanup_crit_edge ], [ -12, %if.then43 ], [ -12, %do.body27.cleanup_crit_edge ], [ 0, %if.then117 ], [ 0, %do.end82.cleanup_crit_edge ], [ -12, %do.body7 ], [ -12, %do.body31 ], [ 0, %do.body105 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jsm_tty_close(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %0 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_tty_close.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_close, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !142

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 1
  %1 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_tty_close.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %ch_bd10 = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 1
  %5 = ptrtoint ptr %ch_bd10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ch_bd10, align 8
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 6
  %7 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ch_flags, align 4
  %and11 = and i32 %8, -5
  store i32 %and11, ptr %ch_flags, align 4
  %ch_open_count = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 5
  %9 = ptrtoint ptr %ch_open_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ch_open_count, align 8
  %dec = add i32 %10, -1
  store i32 %dec, ptr %ch_open_count, align 8
  %ch_c_cflag = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 9
  %11 = ptrtoint ptr %ch_c_cflag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ch_c_cflag, align 4
  %and12 = and i32 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.end9.if.end43_crit_edge, label %do.body15

do.end9.if.end43_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.body15:                                        ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %13 = load i32, ptr @jsm_debug, align 4
  %and16 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body15.do.end40_crit_edge, label %do.body19

do.body15.do.end40_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40

do.body19:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_tty_close.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_close, %if.then31)) #7
          to label %do.end40 [label %if.then31], !srcloc !142

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %ch_bd10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ch_bd10, align 8
  %pci_dev33 = getelementptr inbounds %struct.jsm_board, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %pci_dev33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_dev33, align 4
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_tty_close.__UNIQUE_ID_ddebug251, ptr noundef %dev34, ptr noundef nonnull @.str.42) #7
  br label %do.end40

do.end40:                                         ; preds = %if.then31, %do.body19, %do.body15.do.end40_crit_edge
  %ch_mostat = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 14
  %18 = ptrtoint ptr %ch_mostat to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ch_mostat, align 2
  %20 = and i8 %19, -4
  store i8 %20, ptr %ch_mostat, align 2
  %bd_ops = getelementptr inbounds %struct.jsm_board, ptr %6, i32 0, i32 16
  %21 = ptrtoint ptr %bd_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bd_ops, align 8
  %assert_modem_signals = getelementptr inbounds %struct.board_ops, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %assert_modem_signals to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %assert_modem_signals, align 4
  tail call void %24(ptr noundef %port) #7
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %do.end9.if.end43_crit_edge
  %25 = ptrtoint ptr %ch_bd10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ch_bd10, align 8
  %bd_ops45 = getelementptr inbounds %struct.jsm_board, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %bd_ops45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bd_ops45, align 8
  %uart_off = getelementptr inbounds %struct.board_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %uart_off to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %uart_off, align 4
  tail call void %30(ptr noundef %port) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %31 = load i32, ptr @jsm_debug, align 4
  %and47 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end43.do.end71_crit_edge, label %do.body50

if.end43.do.end71_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

do.body50:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_tty_close.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_tty_close, %if.then62)) #7
          to label %do.end71 [label %if.then62], !srcloc !142

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %ch_bd10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ch_bd10, align 8
  %pci_dev64 = getelementptr inbounds %struct.jsm_board, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %pci_dev64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci_dev64, align 4
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_tty_close.__UNIQUE_ID_ddebug252, ptr noundef %dev65, ptr noundef nonnull @.str.8) #7
  br label %do.end71

do.end71:                                         ; preds = %if.then62, %do.body50, %if.end43.do.end71_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jsm_tty_set_termios(ptr noundef %port, ptr nocapture noundef readonly %termios, ptr nocapture noundef readnone %old_termios) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #7
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %ch_c_cflag = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 9
  %2 = ptrtoint ptr %ch_c_cflag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %ch_c_cflag, align 4
  %3 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %termios, align 4
  %ch_c_iflag = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 8
  %5 = ptrtoint ptr %ch_c_iflag to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ch_c_iflag, align 8
  %c_oflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 1
  %6 = ptrtoint ptr %c_oflag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_oflag, align 4
  %ch_c_oflag = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 10
  %8 = ptrtoint ptr %ch_c_oflag to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ch_c_oflag, align 8
  %c_lflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 3
  %9 = ptrtoint ptr %c_lflag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c_lflag, align 4
  %ch_c_lflag = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 11
  %11 = ptrtoint ptr %ch_c_lflag to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ch_c_lflag, align 4
  %arrayidx = getelementptr %struct.ktermios, ptr %termios, i32 0, i32 5, i32 8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %ch_startc = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 13
  %14 = ptrtoint ptr %ch_startc to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %ch_startc, align 1
  %arrayidx7 = getelementptr %struct.ktermios, ptr %termios, i32 0, i32 5, i32 9
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx7, align 1
  %ch_stopc = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 12
  %17 = ptrtoint ptr %ch_stopc to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %ch_stopc, align 8
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %port, i32 0, i32 1
  %18 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ch_bd, align 8
  %bd_ops = getelementptr inbounds %struct.jsm_board, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %bd_ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bd_ops, align 8
  %param = getelementptr inbounds %struct.board_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %param, align 4
  tail call void %23(ptr noundef %port) #7
  tail call fastcc void @jsm_carrier(ptr noundef %port)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @jsm_tty_type(ptr nocapture noundef readnone %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @jsm_tty_release_port(ptr nocapture noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jsm_tty_request_port(ptr nocapture noundef readnone %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @jsm_config_port(ptr nocapture noundef writeonly %port, i32 noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 69, ptr %type, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jsm_carrier(ptr noundef %ch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %0 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_carrier.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_carrier, %if.then5)) #7
          to label %do.end8 [label %if.then5], !srcloc !142

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %ch_bd = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %1 = ptrtoint ptr %ch_bd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ch_bd, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_carrier.__UNIQUE_ID_ddebug268, ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %ch_bd9 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 1
  %5 = ptrtoint ptr %ch_bd9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ch_bd9, align 8
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.end8.cleanup_crit_edge, label %if.end12

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  %ch_mistat = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 15
  %7 = ptrtoint ptr %ch_mistat to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ch_mistat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool14.not = icmp sgt i8 %8, -1
  br i1 %tobool14.not, label %if.end12.if.end47_crit_edge, label %do.body16

if.end12.if.end47_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.body16:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %9 = load i32, ptr @jsm_debug, align 4
  %and17 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body16.if.end47_crit_edge, label %do.body20

do.body16.if.end47_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.body20:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_carrier.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_carrier, %if.then32)) #7
          to label %if.end47 [label %if.then32], !srcloc !142

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %ch_bd9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ch_bd9, align 8
  %pci_dev34 = getelementptr inbounds %struct.jsm_board, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %pci_dev34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev34, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %ch_mistat to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ch_mistat, align 1
  %conv37 = zext i8 %15 to i32
  %and40 = and i32 %conv37, 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_carrier.__UNIQUE_ID_ddebug269, ptr noundef %dev35, ptr noundef nonnull @.str.37, i32 noundef %conv37, i32 noundef %and40) #7
  br label %if.end47

if.end47:                                         ; preds = %if.then32, %do.body20, %do.body16.if.end47_crit_edge, %if.end12.if.end47_crit_edge
  %phys_carrier.0 = phi i32 [ 0, %if.end12.if.end47_crit_edge ], [ 1, %if.then32 ], [ 1, %do.body16.if.end47_crit_edge ], [ 1, %do.body20 ]
  %ch_c_cflag = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 9
  %16 = ptrtoint ptr %ch_c_cflag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ch_c_cflag, align 4
  %and48 = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %not.tobool49.not = xor i1 %tobool49.not, true
  %spec.select = zext i1 %not.tobool49.not to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %18 = load i32, ptr @jsm_debug, align 4
  %and53 = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end47.do.end77_crit_edge, label %do.body56

if.end47.do.end77_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77

do.body56:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_carrier.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_carrier, %if.then68)) #7
          to label %do.end77 [label %if.then68], !srcloc !142

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %ch_bd9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ch_bd9, align 8
  %pci_dev70 = getelementptr inbounds %struct.jsm_board, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %pci_dev70 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_dev70, align 4
  %dev71 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_carrier.__UNIQUE_ID_ddebug270, ptr noundef %dev71, ptr noundef nonnull @.str.38, i32 noundef %phys_carrier.0, i32 noundef %spec.select) #7
  br label %do.end77

do.end77:                                         ; preds = %if.then68, %do.body56, %if.end47.do.end77_crit_edge
  %ch_flags = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 6
  %23 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ch_flags, align 4
  %and78 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %cmp = icmp ne i32 %and78, 0
  %brmerge = select i1 %cmp, i1 true, i1 %tobool49.not
  br i1 %brmerge, label %do.end77.if.end114_crit_edge, label %do.body83

do.end77.if.end114_crit_edge:                     ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

do.body83:                                        ; preds = %do.end77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %25 = load i32, ptr @jsm_debug, align 4
  %and84 = and i32 %25, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %do.body83.do.end108_crit_edge, label %do.body87

do.body83.do.end108_crit_edge:                    ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end108

do.body87:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_carrier.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_carrier, %if.then99)) #7
          to label %do.end108 [label %if.then99], !srcloc !142

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %ch_bd9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ch_bd9, align 8
  %pci_dev101 = getelementptr inbounds %struct.jsm_board, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %pci_dev101 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci_dev101, align 4
  %dev102 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_carrier.__UNIQUE_ID_ddebug271, ptr noundef %dev102, ptr noundef nonnull @.str.39) #7
  br label %do.end108

do.end108:                                        ; preds = %if.then99, %do.body87, %do.body83.do.end108_crit_edge
  %head.i = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %31, %head.i
  br i1 %cmp.i.i.not, label %do.end108.if.end114_crit_edge, label %if.then111

do.end108.if.end114_crit_edge:                    ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then111:                                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #9
  %ch_flags_wait = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %ch_flags_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %do.end108.if.end114_crit_edge, %do.end77.if.end114_crit_edge
  %32 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ch_flags, align 4
  %and116 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %cmp117 = icmp ne i32 %and116, 0
  %brmerge221 = select i1 %cmp117, i1 true, i1 %tobool14.not
  br i1 %brmerge221, label %if.end114.if.end155_crit_edge, label %do.body123

if.end114.if.end155_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

do.body123:                                       ; preds = %if.end114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jsm_debug to i32))
  %34 = load i32, ptr @jsm_debug, align 4
  %and124 = and i32 %34, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %do.body123.do.end148_crit_edge, label %do.body127

do.body123.do.end148_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end148

do.body127:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_carrier.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_carrier, %if.then139)) #7
          to label %do.end148 [label %if.then139], !srcloc !142

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %ch_bd9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ch_bd9, align 8
  %pci_dev141 = getelementptr inbounds %struct.jsm_board, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %pci_dev141 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci_dev141, align 4
  %dev142 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_carrier.__UNIQUE_ID_ddebug272, ptr noundef %dev142, ptr noundef nonnull @.str.40) #7
  br label %do.end148

do.end148:                                        ; preds = %if.then139, %do.body127, %do.body123.do.end148_crit_edge
  %head.i237 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %head.i237 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %head.i237, align 4
  %cmp.i.i238.not = icmp eq ptr %40, %head.i237
  br i1 %cmp.i.i238.not, label %do.end148.if.end155_crit_edge, label %if.then152

do.end148.if.end155_crit_edge:                    ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

if.then152:                                       ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #9
  %ch_flags_wait149 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %ch_flags_wait149, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %if.end155

if.end155:                                        ; preds = %if.then152, %do.end148.if.end155_crit_edge, %if.end114.if.end155_crit_edge
  %41 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ch_flags, align 4
  br i1 %tobool49.not, label %land.lhs.true158, label %if.then176.critedge

land.lhs.true158:                                 ; preds = %if.end155
  %and160 = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %cmp161.not = icmp eq i32 %and160, 0
  %tobool14.not.not = xor i1 %tobool14.not, true
  %brmerge222 = select i1 %cmp161.not, i1 true, i1 %tobool14.not.not
  br i1 %brmerge222, label %land.lhs.true158.if.else_crit_edge, label %if.then166

land.lhs.true158.if.else_crit_edge:               ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then166:                                       ; preds = %land.lhs.true158
  %head.i240 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %head.i240 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %head.i240, align 4
  %cmp.i.i241.not = icmp eq ptr %44, %head.i240
  br i1 %cmp.i.i241.not, label %if.then166.if.else_crit_edge, label %if.then170

if.then166.if.else_crit_edge:                     ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then170:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #9
  %ch_flags_wait167 = getelementptr inbounds %struct.jsm_channel, ptr %ch, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %ch_flags_wait167, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %if.else

if.then176.critedge:                              ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %42, 16
  br label %if.end180

if.else:                                          ; preds = %if.then170, %if.then166.if.else_crit_edge, %land.lhs.true158.if.else_crit_edge
  %45 = ptrtoint ptr %ch_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ch_flags, align 4
  %and179 = and i32 %46, -17
  br label %if.end180

if.end180:                                        ; preds = %if.else, %if.then176.critedge
  %storemerge = phi i32 [ %and179, %if.else ], [ %or, %if.then176.critedge ]
  %and188 = and i32 %storemerge, -9
  %47 = lshr i8 %8, 4
  %48 = and i8 %47, 8
  %49 = zext i8 %48 to i32
  %storemerge220 = or i32 %and188, %49
  %50 = ptrtoint ptr %ch_flags to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %storemerge220, ptr %ch_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end180, %do.end8.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !40, !42, !43, !45, !47, !48, !50, !51, !53, !54, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !71, !73, !75, !76, !78, !80, !81, !83, !85, !86, !88, !90, !91, !93, !95, !96, !98, !100, !101, !102, !104, !105, !107, !108, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 375, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @jsm_tty_init.__UNIQUE_ID_ddebug253, !1, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 396, i32 5}
!8 = !{ptr @jsm_tty_init.__UNIQUE_ID_ddebug254, !7, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!9 = !{ptr @jsm_tty_init.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 412, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @jsm_tty_init.__key.6, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 425, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 428, i32 2}
!17 = !{ptr @jsm_tty_init.__UNIQUE_ID_ddebug255, !16, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 440, i32 2}
!20 = !{ptr @jsm_uart_port_init.__UNIQUE_ID_ddebug256, !19, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 463, i32 4}
!23 = !{ptr @jsm_uart_port_init._entry, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @jsm_uart_port_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 470, i32 4}
!27 = !{ptr @jsm_uart_port_init._entry.11, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @jsm_uart_port_init._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 473, i32 4}
!31 = !{ptr @jsm_uart_port_init._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @jsm_uart_port_init._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @jsm_uart_port_init.__UNIQUE_ID_ddebug257, !34, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 476, i32 2}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 488, i32 2}
!37 = !{ptr @jsm_remove_uart_port.__UNIQUE_ID_ddebug258, !36, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!38 = !{ptr @jsm_remove_uart_port.__UNIQUE_ID_ddebug259, !39, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!39 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 508, i32 2}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 526, i32 2}
!42 = !{ptr @jsm_input.__UNIQUE_ID_ddebug260, !41, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!43 = !{ptr @jsm_input.__UNIQUE_ID_ddebug261, !44, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 553, i32 2}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 561, i32 3}
!47 = !{ptr @jsm_input.__UNIQUE_ID_ddebug262, !46, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 578, i32 3}
!50 = !{ptr @jsm_input.__UNIQUE_ID_ddebug263, !49, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 584, i32 2}
!53 = !{ptr @jsm_input.__UNIQUE_ID_ddebug264, !52, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!54 = !{ptr @jsm_input.__UNIQUE_ID_ddebug267, !55, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!55 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 643, i32 2}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 776, i32 5}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @jsm_check_queue_flow_control.__UNIQUE_ID_ddebug273, !57, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 786, i32 5}
!62 = !{ptr @jsm_check_queue_flow_control.__UNIQUE_ID_ddebug274, !61, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 814, i32 5}
!65 = !{ptr @jsm_check_queue_flow_control.__UNIQUE_ID_ddebug275, !64, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 823, i32 4}
!68 = !{ptr @jsm_check_queue_flow_control.__UNIQUE_ID_ddebug276, !67, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!69 = !{ptr @linemap, !70, !"linemap", i1 false, i1 false}
!70 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 23, i32 8}
!71 = !{ptr @jsm_ops, !72, !"jsm_ops", i1 false, i1 false}
!72 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 342, i32 30}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 91, i32 2}
!75 = !{ptr @jsm_tty_set_mctrl.__UNIQUE_ID_ddebug240, !74, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!76 = !{ptr @jsm_tty_set_mctrl.__UNIQUE_ID_ddebug241, !77, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!77 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 105, i32 2}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 69, i32 2}
!80 = !{ptr @jsm_tty_get_mctrl.__UNIQUE_ID_ddebug238, !79, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!81 = !{ptr @jsm_tty_get_mctrl.__UNIQUE_ID_ddebug239, !82, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!82 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 76, i32 2}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 32, i32 2}
!85 = !{ptr @jsm_get_mstat.__UNIQUE_ID_ddebug236, !84, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!86 = !{ptr @jsm_get_mstat.__UNIQUE_ID_ddebug237, !87, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!87 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 51, i32 2}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 141, i32 2}
!90 = !{ptr @jsm_tty_stop_tx.__UNIQUE_ID_ddebug244, !89, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!91 = !{ptr @jsm_tty_stop_tx.__UNIQUE_ID_ddebug245, !92, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!92 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 145, i32 2}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 128, i32 2}
!95 = !{ptr @jsm_tty_start_tx.__UNIQUE_ID_ddebug242, !94, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!96 = !{ptr @jsm_tty_start_tx.__UNIQUE_ID_ddebug243, !97, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!97 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 133, i32 2}
!98 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 210, i32 4}
!100 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @jsm_tty_open.__UNIQUE_ID_ddebug246, !99, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!102 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 218, i32 4}
!104 = !{ptr @jsm_tty_open.__UNIQUE_ID_ddebug247, !103, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 228, i32 2}
!107 = !{ptr @jsm_tty_open.__UNIQUE_ID_ddebug248, !106, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!108 = !{ptr @jsm_tty_open.__UNIQUE_ID_ddebug249, !109, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!109 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 266, i32 2}
!110 = !{ptr @.str.36, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 653, i32 2}
!112 = !{ptr @jsm_carrier.__UNIQUE_ID_ddebug268, !111, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!113 = !{ptr @.str.37, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 660, i32 3}
!115 = !{ptr @jsm_carrier.__UNIQUE_ID_ddebug269, !114, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!116 = !{ptr @.str.38, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 668, i32 2}
!118 = !{ptr @jsm_carrier.__UNIQUE_ID_ddebug270, !117, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!119 = !{ptr @.str.39, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 681, i32 3}
!121 = !{ptr @jsm_carrier.__UNIQUE_ID_ddebug271, !120, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!122 = !{ptr @.str.40, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 697, i32 3}
!124 = !{ptr @jsm_carrier.__UNIQUE_ID_ddebug272, !123, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!125 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 276, i32 2}
!127 = !{ptr @jsm_tty_close.__UNIQUE_ID_ddebug250, !126, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!128 = !{ptr @.str.42, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 288, i32 3}
!130 = !{ptr @jsm_tty_close.__UNIQUE_ID_ddebug251, !129, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!131 = !{ptr @jsm_tty_close.__UNIQUE_ID_ddebug252, !132, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!132 = !{!"../drivers/tty/serial/jsm/jsm_tty.c", i32 299, i32 2}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{i64 2148513302, i64 2148513307, i64 2148513320, i64 2148513364, i64 2148513398, i64 2148513419}
