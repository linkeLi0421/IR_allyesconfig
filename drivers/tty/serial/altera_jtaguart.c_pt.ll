; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/altera_jtaguart.c_pt.bc'
source_filename = "../drivers/tty/serial/altera_jtaguart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.altera_jtaguart = type { %struct.uart_port, i32, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.altera_jtaguart_platform_uart = type { i32, i32 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }

@__initcall__kmod_altera_jtaguart__227_376_altera_jtaguart_console_initcon = internal global ptr @altera_jtaguart_console_init, section ".con_initcall.init", align 4
@__UNIQUE_ID___earlycon_juart228 = internal constant %struct.earlycon_id { [15 x i8] c"juart\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"altr,juart-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @altera_jtaguart_earlycon_setup }, section "__earlycon_table", align 4
@altera_jtaguart_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @altera_jtaguart_probe, ptr @altera_jtaguart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @altera_jtaguart_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@altera_jtaguart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str, ptr @.str.5, i32 204, i32 186, i32 1, ptr @altera_jtaguart_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_altera_jtaguart__229_520_altera_jtaguart_init6 = internal global ptr @altera_jtaguart_init, section ".initcall6.init", align 4
@__exitcall_altera_jtaguart_exit = internal global ptr @altera_jtaguart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description230 = internal constant [52 x i8] c"altera_jtaguart.description=Altera JTAG UART driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [58 x i8] c"altera_jtaguart.author=Thomas Chou <thomas@wytron.com.tw>\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [56 x i8] c"altera_jtaguart.file=drivers/tty/serial/altera_jtaguart\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [28 x i8] c"altera_jtaguart.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias234 = internal constant [47 x i8] c"altera_jtaguart.alias=platform:altera_jtaguart\00", section ".modinfo", align 1
@altera_jtaguart_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyJ\00\00\00\00\00\00\00\00\00\00\00\00", ptr @altera_jtaguart_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @altera_jtaguart_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @altera_jtaguart_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@altera_jtaguart_ports = internal global { [1 x %struct.altera_jtaguart], [80 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"altera_jtaguart\00", [16 x i8] zeroinitializer }, align 32
@altera_jtaguart_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ALTR,juart-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,juart-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@altera_jtaguart_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @altera_jtaguart_tx_empty, ptr @altera_jtaguart_set_mctrl, ptr @altera_jtaguart_get_mctrl, ptr @altera_jtaguart_stop_tx, ptr @altera_jtaguart_start_tx, ptr null, ptr null, ptr null, ptr @altera_jtaguart_stop_rx, ptr null, ptr @altera_jtaguart_break_ctl, ptr @altera_jtaguart_startup, ptr @altera_jtaguart_shutdown, ptr null, ptr @altera_jtaguart_set_termios, ptr null, ptr null, ptr @altera_jtaguart_type, ptr @altera_jtaguart_release_port, ptr @altera_jtaguart_request_port, ptr @altera_jtaguart_config_port, ptr @altera_jtaguart_verify_port, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@altera_jtaguart_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013altera_jtaguart: unable to attach Altera JTAG UART %d interrupt vector=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"altera_jtaguart_startup\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/tty/serial/altera_jtaguart.c\00", [59 x i8] zeroinitializer }, align 32
@altera_jtaguart_startup._entry_ptr = internal global ptr @altera_jtaguart_startup._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Altera JTAG UART\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ttyJ\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [32 x i8] c"altera_jtaguart_platform_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 492, i32 31 }
@___asan_gen_.9 = private unnamed_addr constant [23 x i8] c"altera_jtaguart_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 406, i32 27 }
@___asan_gen_.12 = private unnamed_addr constant [24 x i8] c"altera_jtaguart_console\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 360, i32 23 }
@___asan_gen_.15 = private unnamed_addr constant [22 x i8] c"altera_jtaguart_ports\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 296, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 496, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"altera_jtaguart_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 484, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"altera_jtaguart_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 277, i32 30 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 217, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 252, i32 48 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [40 x i8] c"../drivers/tty/serial/altera_jtaguart.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 409, i32 14 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID___earlycon_juart228, ptr @__UNIQUE_ID_alias234, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_altera_jtaguart_exit, ptr @__initcall__kmod_altera_jtaguart__227_376_altera_jtaguart_console_initcon, ptr @__initcall__kmod_altera_jtaguart__229_520_altera_jtaguart_init6, ptr @altera_jtaguart_exit, ptr @altera_jtaguart_startup._entry, ptr @altera_jtaguart_startup._entry_ptr, ptr @altera_jtaguart_platform_driver, ptr @altera_jtaguart_driver, ptr @altera_jtaguart_console, ptr @altera_jtaguart_ports, ptr @.str, ptr @altera_jtaguart_match, ptr @altera_jtaguart_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_jtaguart_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_jtaguart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_jtaguart_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_jtaguart_ports to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_jtaguart_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_jtaguart_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_jtaguart_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_jtaguart_console_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_console(ptr noundef nonnull @altera_jtaguart_console) #9
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @altera_jtaguart_earlycon_setup(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %options) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %dev, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %write = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @altera_jtaguart_earlycon_write, ptr %write, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @altera_jtaguart_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @altera_jtaguart_platform_driver) #9
  tail call void @uart_unregister_driver(ptr noundef nonnull @altera_jtaguart_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_jtaguart_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @altera_jtaguart_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @altera_jtaguart_platform_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @uart_unregister_driver(ptr noundef nonnull @altera_jtaguart_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_jtaguart_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %conv = sext i16 %1 to i32
  %add.ptr = getelementptr %struct.altera_jtaguart, ptr @altera_jtaguart_ports, i32 %conv
  tail call void @uart_console_write(ptr noundef %add.ptr, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @altera_jtaguart_console_putc) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @altera_jtaguart_console_setup(ptr nocapture noundef readonly %co, ptr nocapture noundef readnone %options) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp4.not = icmp eq i16 %1, 0
  br i1 %cmp4.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = load ptr, ptr getelementptr inbounds ([1 x %struct.altera_jtaguart], ptr @altera_jtaguart_ports, i32 0, i32 0, i32 0, i32 2), align 4
  %cmp8 = icmp eq ptr %2, null
  %. = select i1 %cmp8, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_jtaguart_console_putc(ptr noundef %port, i32 noundef %c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr55 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #9, !srcloc !50
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %3)
  %cmp856 = icmp ult i32 %3, 65536
  br i1 %cmp856, label %entry.while.body_crit_edge, label %entry.do.body38_crit_edge

entry.do.body38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body38

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi i32 [ %8, %if.end.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %flags.057 = phi i32 [ %call33, %if.end.while.body_crit_edge ], [ %call2, %entry.while.body_crit_edge ]
  %and10 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11 = icmp eq i32 %and10, 0
  br i1 %cmp11, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.body
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %flags.057) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !53
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !50
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %cmp8 = icmp ult i32 %8, 65536
  br i1 %cmp8, label %if.end.while.body_crit_edge, label %if.end.do.body38_crit_edge

if.end.do.body38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body38

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.body38:                                        ; preds = %if.end.do.body38_crit_edge, %entry.do.body38_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %entry.do.body38_crit_edge ], [ %call33, %if.end.do.body38_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !54
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %c)
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #9, !srcloc !55
  br label %cleanup

cleanup:                                          ; preds = %do.body38, %while.body.cleanup_crit_edge
  %flags.0.lcssa.sink = phi i32 [ %flags.0.lcssa, %do.body38 ], [ %flags.057, %while.body.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %flags.0.lcssa.sink) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_jtaguart_earlycon_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @altera_jtaguart_console_putc) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_jtaguart_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  %spec.store.select = select i1 %cmp, i32 0, i32 %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp1 = icmp sgt i32 %spec.store.select, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %entry
  %arrayidx = getelementptr [1 x %struct.altera_jtaguart], ptr @altera_jtaguart_ports, i32 0, i32 %spec.store.select
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.else, label %if.end3.if.end13_crit_edge

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.else:                                          ; preds = %if.end3
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %if.end3.if.end13_crit_edge
  %.sink71 = phi ptr [ %call5, %if.end3.if.end13_crit_edge ], [ %1, %if.else.if.end13_crit_edge ]
  %4 = ptrtoint ptr %.sink71 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %.sink71, align 4
  %mapbase10 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 43
  %6 = ptrtoint ptr %mapbase10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mapbase10, align 4
  %call14 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14)
  %cmp15 = icmp sgt i32 %call14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call14)
  %cmp16.not = icmp eq i32 %call14, -6
  %or.cond = or i1 %cmp15, %cmp16.not
  br i1 %or.cond, label %if.end18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp19 = icmp sgt i32 %call14, 0
  br i1 %cmp19, label %if.end18.if.end29_crit_edge, label %if.else22

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.else22:                                        ; preds = %if.end18
  %tobool23.not = icmp eq ptr %1, null
  br i1 %tobool23.not, label %if.else22.cleanup_crit_edge, label %if.then24

if.else22.cleanup_crit_edge:                      ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  %irq25 = getelementptr inbounds %struct.altera_jtaguart_platform_uart, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %irq25 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq25, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end18.if.end29_crit_edge
  %.sink = phi i32 [ %8, %if.then24 ], [ %call14, %if.end18.if.end29_crit_edge ]
  %irq26 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 20
  %9 = ptrtoint ptr %irq26 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %irq26, align 4
  %mapbase30 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 43
  %10 = ptrtoint ptr %mapbase30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mapbase30, align 4
  %call31 = tail call ptr @ioremap(i32 noundef %11, i32 noundef 8) #9
  %membase = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 2
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call31, ptr %membase, align 4
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.end29.cleanup_crit_edge, label %if.end35

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %line = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 41
  %13 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.store.select, ptr %line, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 38
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 91, ptr %type, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 26
  %15 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %iotype, align 2
  %ops = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 39
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @altera_jtaguart_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 33
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 268435456, ptr %flags, align 4
  %dev37 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %18 = ptrtoint ptr %dev37 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %dev37, align 4
  %call38 = tail call i32 @uart_add_one_port(ptr noundef nonnull @altera_jtaguart_driver, ptr noundef %arrayidx) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end29.cleanup_crit_edge, %if.else22.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.else.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ -19, %if.else22.cleanup_crit_edge ], [ -12, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_jtaguart_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  %spec.store.select = select i1 %cmp, i32 0, i32 %1
  %arrayidx = getelementptr [1 x %struct.altera_jtaguart], ptr @altera_jtaguart_ports, i32 0, i32 %spec.store.select
  %call = tail call i32 @uart_remove_one_port(ptr noundef nonnull @altera_jtaguart_driver, ptr noundef %arrayidx) #9
  %membase = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  tail call void @iounmap(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_jtaguart_tx_empty(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !56
  %3 = and i32 %2, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @altera_jtaguart_set_mctrl(ptr nocapture noundef %port, i32 noundef %sigs) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @altera_jtaguart_get_mctrl(ptr nocapture noundef readnone %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 352
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_jtaguart_stop_tx(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imr = getelementptr inbounds %struct.altera_jtaguart, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imr, align 4
  %and = and i32 %1, -3
  store i32 %and, ptr %imr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !57
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %imr, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %4) #9, !srcloc !55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_jtaguart_start_tx(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imr = getelementptr inbounds %struct.altera_jtaguart, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imr, align 4
  %or = or i32 %1, 2
  store i32 %or, ptr %imr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %imr, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %4) #9, !srcloc !55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_jtaguart_stop_rx(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imr = getelementptr inbounds %struct.altera_jtaguart, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imr, align 4
  %and = and i32 %1, -2
  store i32 %and, ptr %imr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !59
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %imr, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %4) #9, !srcloc !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @altera_jtaguart_break_ctl(ptr nocapture noundef %port, i32 noundef %break_state) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_jtaguart_startup(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @altera_jtaguart_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %port) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %3, i32 noundef %5) #12
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %imr = getelementptr inbounds %struct.altera_jtaguart, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %imr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %imr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %imr, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr17 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %9) #9, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call8) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body5, %do.end
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_jtaguart_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %imr = getelementptr inbounds %struct.altera_jtaguart, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %imr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %imr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !61
  tail call void @arm_heavy_mb() #9
  %1 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %imr, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr10 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %3) #9, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3) #9
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call12 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %port) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_jtaguart_set_termios(ptr nocapture noundef readnone %port, ptr noundef %termios, ptr noundef %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %old, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tty_termios_copy_hw(ptr noundef %termios, ptr noundef nonnull %old) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @altera_jtaguart_type(ptr nocapture noundef readonly %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 91, i32 %1)
  %cmp = icmp eq i32 %1, 91
  %cond = select i1 %cmp, ptr @.str.4, ptr null
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @altera_jtaguart_release_port(ptr nocapture noundef %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @altera_jtaguart_request_port(ptr nocapture noundef readnone %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_jtaguart_config_port(ptr nocapture noundef %port, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 91, ptr %type, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !62
  tail call void @arm_heavy_mb() #9
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !55
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @altera_jtaguart_verify_port(ptr nocapture noundef readnone %port, ptr nocapture noundef readonly %ser) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ser, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.selectcmp.case1 = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 91, i32 %1)
  %switch.selectcmp.case2 = icmp eq i32 %1, 91
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %2 = select i1 %switch.selectcmp, i32 0, i32 -22
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_jtaguart_interrupt(i32 noundef %irq, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #9, !srcloc !50
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !63
  %shr = lshr i32 %3, 8
  %imr = getelementptr inbounds %struct.altera_jtaguart, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %imr, align 4
  %and = and i32 %shr, %5
  tail call void @_raw_spin_lock(ptr noundef %data) #9
  %and4 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !50
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  %and17.i = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool.not18.i = icmp eq i32 %and17.i, 0
  br i1 %tobool.not18.i, label %if.then.altera_jtaguart_rx_chars.exit_crit_edge, label %while.body.lr.ph.i

if.then.altera_jtaguart_rx_chars.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %altera_jtaguart_rx_chars.exit

while.body.lr.ph.i:                               ; preds = %if.then
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 4
  %sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 46
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %10 = phi i32 [ %9, %while.body.lr.ph.i ], [ %21, %while.cond.backedge.i.while.body.i_crit_edge ]
  %11 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx.i, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %rx.i, align 4
  %conv4.i = and i32 %10, 255
  %13 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %while.body.i.if.end.i_crit_edge, label %if.end.i.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4.i)
  %tobool1.not.i.i = icmp eq i32 %conv4.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.uart_handle_sysrq_char.exit.thread21.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.uart_handle_sysrq_char.exit.thread21.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit.thread21.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %15, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i.i, label %land.lhs.true.i.i.uart_handle_sysrq_char.exit.thread21.i_crit_edge

land.lhs.true.i.i.uart_handle_sysrq_char.exit.thread21.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit.thread21.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i.i
  %call.i.i = tail call i32 @sysrq_mask() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7.i.i, label %uart_handle_sysrq_char.exit.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %data, i32 noundef %conv4.i) #9
  br i1 %call8.i.i, label %if.end7.i.i.while.cond.backedge.i_crit_edge, label %if.end7.i.i.uart_handle_sysrq_char.exit.thread21.i_crit_edge

if.end7.i.i.uart_handle_sysrq_char.exit.thread21.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit.thread21.i

if.end7.i.i.while.cond.backedge.i_crit_edge:      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge.i

uart_handle_sysrq_char.exit.thread21.i:           ; preds = %if.end7.i.i.uart_handle_sysrq_char.exit.thread21.i_crit_edge, %land.lhs.true.i.i.uart_handle_sysrq_char.exit.thread21.i_crit_edge, %if.end.i.i.uart_handle_sysrq_char.exit.thread21.i_crit_edge
  %16 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end.i

uart_handle_sysrq_char.exit.i:                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @handle_sysrq(i32 noundef %conv4.i) #9
  %17 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %while.cond.backedge.i

if.end.i:                                         ; preds = %uart_handle_sysrq_char.exit.thread21.i, %while.body.i.if.end.i_crit_edge
  tail call void @uart_insert_char(ptr noundef %data, i32 noundef 0, i32 noundef 0, i32 noundef %conv4.i, i32 noundef 0) #9
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end.i, %uart_handle_sysrq_char.exit.i, %if.end7.i.i.while.cond.backedge.i_crit_edge
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !50
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  %and.i = and i32 %21, 32768
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.cond.backedge.i.altera_jtaguart_rx_chars.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.cond.backedge.i.altera_jtaguart_rx_chars.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %altera_jtaguart_rx_chars.exit

altera_jtaguart_rx_chars.exit:                    ; preds = %while.cond.backedge.i.altera_jtaguart_rx_chars.exit_crit_edge, %if.then.altera_jtaguart_rx_chars.exit_crit_edge
  %state.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 30
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state.i, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %23) #9
  br label %if.end

if.end:                                           ; preds = %altera_jtaguart_rx_chars.exit, %entry.if.end_crit_edge
  %and5 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %if.end
  %state.i18 = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 30
  %24 = ptrtoint ptr %state.i18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state.i18, align 4
  %xmit2.i = getelementptr inbounds %struct.uart_state, ptr %25, i32 0, i32 2
  %x_char.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 24
  %26 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %x_char.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i19 = icmp eq i8 %27, 0
  br i1 %tobool.not.i19, label %if.end.i23, label %do.body.i

do.body.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %x_char.i, align 4
  %conv.i = zext i8 %29 to i32
  %30 = shl nuw i32 %conv.i, 24
  %31 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #9, !srcloc !55
  %33 = ptrtoint ptr %x_char.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %x_char.i, align 4
  %tx.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 5
  %34 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx.i, align 4
  %inc.i21 = add i32 %35, 1
  store i32 %inc.i21, ptr %tx.i, align 4
  br label %if.end8

if.end.i23:                                       ; preds = %if.then7
  %head.i = getelementptr inbounds %struct.uart_state, ptr %25, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %25, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 %37, %39
  %and.i22 = and i32 %sub.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22)
  %cmp.not.i = icmp eq i32 %and.i22, 0
  br i1 %cmp.not.i, label %if.end.i23.if.then41.i_crit_edge, label %if.then6.i

if.end.i23.if.then41.i_crit_edge:                 ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41.i

if.then6.i:                                       ; preds = %if.end.i23
  %40 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase, align 4
  %add.ptr8.i = getelementptr i8, ptr %41, i32 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  %43 = and i32 %42, 65535
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  %shr.i = lshr exact i32 %44, 16
  %45 = tail call i32 @llvm.umin.i32(i32 %shr.i, i32 %and.i22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp15.not.i = icmp eq i32 %45, 0
  br i1 %cmp15.not.i, label %if.then6.i.if.end8_crit_edge, label %if.then17.i

if.then6.i.if.end8_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then17.i:                                      ; preds = %if.then6.i
  %tx31.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 5
  br label %do.body20.i

do.body20.i:                                      ; preds = %do.body20.i.do.body20.i_crit_edge, %if.then17.i
  %count.184.i = phi i32 [ %45, %if.then17.i ], [ %dec.i, %do.body20.i.do.body20.i_crit_edge ]
  %dec.i = add nsw i32 %count.184.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %xmit2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %xmit2.i, align 4
  %48 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tail.i, align 4
  %arrayidx.i = getelementptr i8, ptr %47, i32 %49
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i, align 1
  %conv24.i = zext i8 %51 to i32
  %52 = shl nuw i32 %conv24.i, 24
  %53 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #9, !srcloc !55
  %55 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tail.i, align 4
  %add.i = add i32 %56, 1
  %and28.i = and i32 %add.i, 4095
  store i32 %and28.i, ptr %tail.i, align 4
  %57 = ptrtoint ptr %tx31.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx31.i, align 4
  %inc32.i = add i32 %58, 1
  store i32 %inc32.i, ptr %tx31.i, align 4
  %tobool19.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool19.not.i, label %while.end.i, label %do.body20.i.do.body20.i_crit_edge

do.body20.i.do.body20.i_crit_edge:                ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20.i

while.end.i:                                      ; preds = %do.body20.i
  %sub18.i = sub nsw i32 %and.i22, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub18.i)
  %cmp33.i = icmp ult i32 %sub18.i, 256
  br i1 %cmp33.i, label %if.end38.i, label %while.end.i.if.end8_crit_edge

while.end.i.if.end8_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end38.i:                                       ; preds = %while.end.i
  tail call void @uart_write_wakeup(ptr noundef %data) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i22, i32 %shr.i)
  %cmp39.not.i = icmp ugt i32 %and.i22, %shr.i
  br i1 %cmp39.not.i, label %if.end38.i.if.end8_crit_edge, label %if.end38.i.if.then41.i_crit_edge

if.end38.i.if.then41.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41.i

if.end38.i.if.end8_crit_edge:                     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then41.i:                                      ; preds = %if.end38.i.if.then41.i_crit_edge, %if.end.i23.if.then41.i_crit_edge
  %59 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %imr, align 4
  %and42.i = and i32 %60, -3
  store i32 %and42.i, ptr %imr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @arm_heavy_mb() #9
  %61 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %imr, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #9
  %64 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %membase, align 4
  %add.ptr48.i = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %63) #9, !srcloc !55
  br label %if.end8

if.end8:                                          ; preds = %if.then41.i, %if.end38.i.if.end8_crit_edge, %while.end.i.if.end8_crit_edge, %if.then6.i.if.end8_crit_edge, %do.body.i, %if.end.if.end8_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp ne i32 %and, 0
  %cond = zext i1 %tobool10.not to i32
  ret i32 %cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_copy_hw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_altera_jtaguart__227_376_altera_jtaguart_console_initcon, !1, !"__initcall__kmod_altera_jtaguart__227_376_altera_jtaguart_console_initcon", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/altera_jtaguart.c", i32 376, i32 1}
!2 = !{ptr @__UNIQUE_ID___earlycon_juart228, !3, !"__UNIQUE_ID___earlycon_juart228", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/altera_jtaguart.c", i32 398, i32 1}
!4 = !{ptr @__initcall__kmod_altera_jtaguart__229_520_altera_jtaguart_init6, !5, !"__initcall__kmod_altera_jtaguart__229_520_altera_jtaguart_init6", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/altera_jtaguart.c", i32 520, i32 1}
!6 = !{ptr @__exitcall_altera_jtaguart_exit, !7, !"__exitcall_altera_jtaguart_exit", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/altera_jtaguart.c", i32 521, i32 1}
!8 = !{ptr @__UNIQUE_ID_description230, !9, !"__UNIQUE_ID_description230", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/altera_jtaguart.c", i32 523, i32 1}
!10 = !{ptr @__UNIQUE_ID_author231, !11, !"__UNIQUE_ID_author231", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/altera_jtaguart.c", i32 524, i32 1}
!12 = !{ptr @__UNIQUE_ID_file232, !13, !"__UNIQUE_ID_file232", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/altera_jtaguart.c", i32 525, i32 1}
!14 = !{ptr @__UNIQUE_ID_license233, !13, !"__UNIQUE_ID_license233", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias234, !16, !"__UNIQUE_ID_alias234", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/altera_jtaguart.c", i32 526, i32 1}
!17 = !{ptr @altera_jtaguart_console, !18, !"altera_jtaguart_console", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/altera_jtaguart.c", i32 360, i32 23}
!19 = !{ptr @altera_jtaguart_ports, !20, !"altera_jtaguart_ports", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/altera_jtaguart.c", i32 296, i32 31}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/altera_jtaguart.c", i32 496, i32 12}
!23 = !{ptr @altera_jtaguart_platform_driver, !24, !"altera_jtaguart_platform_driver", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/altera_jtaguart.c", i32 492, i32 31}
!25 = !{ptr @altera_jtaguart_ops, !26, !"altera_jtaguart_ops", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/altera_jtaguart.c", i32 277, i32 30}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/altera_jtaguart.c", i32 217, i32 3}
!29 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @altera_jtaguart_startup._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @altera_jtaguart_startup._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/altera_jtaguart.c", i32 252, i32 48}
!35 = !{ptr @altera_jtaguart_match, !36, !"altera_jtaguart_match", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/altera_jtaguart.c", i32 484, i32 34}
!37 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/altera_jtaguart.c", i32 409, i32 14}
!39 = !{ptr @altera_jtaguart_driver, !40, !"altera_jtaguart_driver", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/altera_jtaguart.c", i32 406, i32 27}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 4210289}
!51 = !{i64 2154103176}
!52 = !{i64 2154103473}
!53 = !{i64 2154103315}
!54 = !{i64 2154104041}
!55 = !{i64 4209871}
!56 = !{i64 2154086650}
!57 = !{i64 2154089737}
!58 = !{i64 2154088117}
!59 = !{i64 2154091357}
!60 = !{i64 2154100159}
!61 = !{i64 2154102122}
!62 = !{i64 2154096122}
!63 = !{i64 2154095846}
!64 = !{i64 2154092032}
!65 = !{i64 2154092281}
!66 = !{i64 2154093187}
!67 = !{i64 2154093435}
!68 = !{i64 2154093969}
