; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/bcm63xx_uart.c_pt.bc'
source_filename = "../drivers/tty/serial/bcm63xx_uart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.35, %struct.anon.36, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.35 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.36 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }

@__initcall__kmod_bcm63xx_uart__227_765_bcm63xx_console_initcon = internal global ptr @bcm63xx_console_init, section ".con_initcall.init", align 4
@__UNIQUE_ID___earlycon_bcm63xx_uart228 = internal constant %struct.earlycon_id { [15 x i8] c"bcm63xx_uart\00\00\00", i8 0, [128 x i8] c"brcm,bcm6345-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_early_console_setup }, section "__earlycon_table", align 4
@bcm_uart_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm_uart_probe, ptr @bcm_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm63xx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@bcm_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str, ptr @.str.4, i32 4, i32 64, i32 2, ptr @bcm63xx_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_bcm63xx_uart__229_917_bcm_uart_init6 = internal global ptr @bcm_uart_init, section ".initcall6.init", align 4
@__exitcall_bcm_uart_exit = internal global ptr @bcm_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [53 x i8] c"bcm63xx_uart.author=Maxime Bizon <mbizon@freebox.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [62 x i8] c"bcm63xx_uart.description=Broadcom 63xx integrated uart driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [50 x i8] c"bcm63xx_uart.file=drivers/tty/serial/bcm63xx_uart\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [25 x i8] c"bcm63xx_uart.license=GPL\00", section ".modinfo", align 1
@bcm63xx_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyS\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @bcm_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @bcm_uart_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@ports = internal global { [2 x %struct.uart_port], [176 x i8] } zeroinitializer, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm63xx_uart\00", [19 x i8] zeroinitializer }, align 32
@bcm63xx_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6345-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refclk\00", [25 x i8] zeroinitializer }, align 32
@bcm_uart_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @bcm_uart_tx_empty, ptr @bcm_uart_set_mctrl, ptr @bcm_uart_get_mctrl, ptr @bcm_uart_stop_tx, ptr @bcm_uart_start_tx, ptr null, ptr null, ptr null, ptr @bcm_uart_stop_rx, ptr @bcm_uart_enable_ms, ptr @bcm_uart_break_ctl, ptr @bcm_uart_startup, ptr @bcm_uart_shutdown, ptr null, ptr @bcm_uart_set_termios, ptr null, ptr null, ptr @bcm_uart_type, ptr @bcm_uart_release_port, ptr @bcm_uart_request_port, ptr @bcm_uart_config_port, ptr @bcm_uart_verify_port, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ttyS\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@___asan_gen_.5 = private unnamed_addr constant [25 x i8] c"bcm_uart_platform_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 887, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"bcm_uart_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 792, i32 27 }
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"bcm63xx_console\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 749, i32 23 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 31, i32 25 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 891, i32 12 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"bcm63xx_of_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 878, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 813, i32 49 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 816, i32 50 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 841, i32 28 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"bcm_uart_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 630, i32 30 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [37 x i8] c"../drivers/tty/serial/bcm63xx_uart.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 795, i32 14 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID___earlycon_bcm63xx_uart228, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_bcm_uart_exit, ptr @__initcall__kmod_bcm63xx_uart__227_765_bcm63xx_console_initcon, ptr @__initcall__kmod_bcm63xx_uart__229_917_bcm_uart_init6, ptr @bcm_uart_exit, ptr @bcm_uart_platform_driver, ptr @bcm_uart_driver, ptr @bcm63xx_console, ptr @ports, ptr @.str, ptr @bcm63xx_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @bcm_uart_ops, ptr @.str.4], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_uart_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_uart_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_console_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_console(ptr noundef nonnull @bcm63xx_console) #8
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm_early_console_setup(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %opt) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %write = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bcm_early_write, ptr %write, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm_uart_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_uart_platform_driver) #8
  tail call void @uart_unregister_driver(ptr noundef nonnull @bcm_uart_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_uart_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @bcm_uart_driver) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_uart_platform_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @uart_unregister_driver(ptr noundef nonnull @bcm_uart_driver) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %idxprom
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !46
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %sysrq = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %idxprom, i32 46
  %3 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not = icmp eq i32 %4, 0
  br i1 %tobool12.not, label %if.else, label %do.body25.critedge

if.else:                                          ; preds = %do.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %5 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool14.not = icmp eq i32 %5, 0
  br i1 %tobool14.not, label %if.else17, label %if.then15

if.then15:                                        ; preds = %if.else
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %phi.cmp = icmp eq i32 %call.i, 0
  tail call void @uart_console_write(ptr noundef %arrayidx, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @bcm_console_putchar) #8
  %membase.i.i = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %idxprom, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.then15
  %dec31.i = phi i32 [ 9999, %if.then15 ], [ %dec.i, %cleanup.i.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !47
  %and.i63 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63)
  %tobool1.not.i = icmp eq i32 %and.i63, 0
  br i1 %tobool1.not.i, label %cleanup.i, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

cleanup.i:                                        ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #8
  %dec.i = add nsw i32 %dec31.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %flags.i = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %idxprom, i32 33
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and2.i = and i32 %11, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %while.end.i.wait_for_xmitr.exit_crit_edge, label %while.end.i.while.body8.i_crit_edge

while.end.i.while.body8.i_crit_edge:              ; preds = %while.end.i
  br label %while.body8.i

while.end.i.wait_for_xmitr.exit_crit_edge:        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_xmitr.exit

while.body8.i:                                    ; preds = %cleanup15.i.while.body8.i_crit_edge, %while.end.i.while.body8.i_crit_edge
  %dec632.i = phi i32 [ %dec6.i, %cleanup15.i.while.body8.i_crit_edge ], [ 999999, %while.end.i.while.body8.i_crit_edge ]
  %12 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #8, !srcloc !47
  %and11.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %cleanup15.i, label %while.body8.i.wait_for_xmitr.exit_crit_edge

while.body8.i.wait_for_xmitr.exit_crit_edge:      ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_xmitr.exit

cleanup15.i:                                      ; preds = %while.body8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #8
  %dec6.i = add nsw i32 %dec632.i, -1
  %tobool7.not.i = icmp eq i32 %dec6.i, 0
  br i1 %tobool7.not.i, label %cleanup15.i.wait_for_xmitr.exit_crit_edge, label %cleanup15.i.while.body8.i_crit_edge

cleanup15.i.while.body8.i_crit_edge:              ; preds = %cleanup15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body8.i

cleanup15.i.wait_for_xmitr.exit_crit_edge:        ; preds = %cleanup15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_xmitr.exit

wait_for_xmitr.exit:                              ; preds = %cleanup15.i.wait_for_xmitr.exit_crit_edge, %while.body8.i.wait_for_xmitr.exit_crit_edge, %while.end.i.wait_for_xmitr.exit_crit_edge
  br i1 %phi.cmp, label %wait_for_xmitr.exit.do.body25_crit_edge, label %wait_for_xmitr.exit.if.then22_crit_edge

wait_for_xmitr.exit.if.then22_crit_edge:          ; preds = %wait_for_xmitr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

wait_for_xmitr.exit.do.body25_crit_edge:          ; preds = %wait_for_xmitr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

if.else17:                                        ; preds = %if.else
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #8
  tail call void @uart_console_write(ptr noundef %arrayidx, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @bcm_console_putchar) #8
  %membase.i.i64 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %idxprom, i32 2
  br label %while.body.i69

while.body.i69:                                   ; preds = %cleanup.i72.while.body.i69_crit_edge, %if.else17
  %dec31.i65 = phi i32 [ 9999, %if.else17 ], [ %dec.i70, %cleanup.i72.while.body.i69_crit_edge ]
  %16 = ptrtoint ptr %membase.i.i64 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i64, align 4
  %add.ptr.i.i66 = getelementptr i8, ptr %17, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i66) #8, !srcloc !47
  %and.i67 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67)
  %tobool1.not.i68 = icmp eq i32 %and.i67, 0
  br i1 %tobool1.not.i68, label %cleanup.i72, label %while.body.i69.while.end.i76_crit_edge

while.body.i69.while.end.i76_crit_edge:           ; preds = %while.body.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i76

cleanup.i72:                                      ; preds = %while.body.i69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #8
  %dec.i70 = add nsw i32 %dec31.i65, -1
  %tobool.not.i71 = icmp eq i32 %dec.i70, 0
  br i1 %tobool.not.i71, label %cleanup.i72.while.end.i76_crit_edge, label %cleanup.i72.while.body.i69_crit_edge

cleanup.i72.while.body.i69_crit_edge:             ; preds = %cleanup.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i69

cleanup.i72.while.end.i76_crit_edge:              ; preds = %cleanup.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i76

while.end.i76:                                    ; preds = %cleanup.i72.while.end.i76_crit_edge, %while.body.i69.while.end.i76_crit_edge
  %flags.i73 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %idxprom, i32 33
  %20 = ptrtoint ptr %flags.i73 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i73, align 4
  %and2.i74 = and i32 %21, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i74)
  %tobool3.not.i75 = icmp eq i32 %and2.i74, 0
  br i1 %tobool3.not.i75, label %while.end.i76.if.then22_crit_edge, label %while.end.i76.while.body8.i81_crit_edge

while.end.i76.while.body8.i81_crit_edge:          ; preds = %while.end.i76
  br label %while.body8.i81

while.end.i76.if.then22_crit_edge:                ; preds = %while.end.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

while.body8.i81:                                  ; preds = %cleanup15.i84.while.body8.i81_crit_edge, %while.end.i76.while.body8.i81_crit_edge
  %dec632.i77 = phi i32 [ %dec6.i82, %cleanup15.i84.while.body8.i81_crit_edge ], [ 999999, %while.end.i76.while.body8.i81_crit_edge ]
  %22 = ptrtoint ptr %membase.i.i64 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.i64, align 4
  %add.ptr.i26.i78 = getelementptr i8, ptr %23, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i78) #8, !srcloc !47
  %and11.i79 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i79)
  %tobool12.not.i80 = icmp eq i32 %and11.i79, 0
  br i1 %tobool12.not.i80, label %cleanup15.i84, label %while.body8.i81.if.then22_crit_edge

while.body8.i81.if.then22_crit_edge:              ; preds = %while.body8.i81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

cleanup15.i84:                                    ; preds = %while.body8.i81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #8
  %dec6.i82 = add nsw i32 %dec632.i77, -1
  %tobool7.not.i83 = icmp eq i32 %dec6.i82, 0
  br i1 %tobool7.not.i83, label %cleanup15.i84.if.then22_crit_edge, label %cleanup15.i84.while.body8.i81_crit_edge

cleanup15.i84.while.body8.i81_crit_edge:          ; preds = %cleanup15.i84
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body8.i81

cleanup15.i84.if.then22_crit_edge:                ; preds = %cleanup15.i84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

if.then22:                                        ; preds = %cleanup15.i84.if.then22_crit_edge, %while.body8.i81.if.then22_crit_edge, %while.end.i76.if.then22_crit_edge, %wait_for_xmitr.exit.if.then22_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #8
  br label %do.body25

do.body25.critedge:                               ; preds = %do.end11
  tail call void @uart_console_write(ptr noundef %arrayidx, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @bcm_console_putchar) #8
  %membase.i.i86 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %idxprom, i32 2
  br label %while.body.i91

while.body.i91:                                   ; preds = %cleanup.i94.while.body.i91_crit_edge, %do.body25.critedge
  %dec31.i87 = phi i32 [ 9999, %do.body25.critedge ], [ %dec.i92, %cleanup.i94.while.body.i91_crit_edge ]
  %26 = ptrtoint ptr %membase.i.i86 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i.i86, align 4
  %add.ptr.i.i88 = getelementptr i8, ptr %27, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88) #8, !srcloc !47
  %and.i89 = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89)
  %tobool1.not.i90 = icmp eq i32 %and.i89, 0
  br i1 %tobool1.not.i90, label %cleanup.i94, label %while.body.i91.while.end.i98_crit_edge

while.body.i91.while.end.i98_crit_edge:           ; preds = %while.body.i91
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i98

cleanup.i94:                                      ; preds = %while.body.i91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #8
  %dec.i92 = add nsw i32 %dec31.i87, -1
  %tobool.not.i93 = icmp eq i32 %dec.i92, 0
  br i1 %tobool.not.i93, label %cleanup.i94.while.end.i98_crit_edge, label %cleanup.i94.while.body.i91_crit_edge

cleanup.i94.while.body.i91_crit_edge:             ; preds = %cleanup.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i91

cleanup.i94.while.end.i98_crit_edge:              ; preds = %cleanup.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i98

while.end.i98:                                    ; preds = %cleanup.i94.while.end.i98_crit_edge, %while.body.i91.while.end.i98_crit_edge
  %flags.i95 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %idxprom, i32 33
  %30 = ptrtoint ptr %flags.i95 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i95, align 4
  %and2.i96 = and i32 %31, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i96)
  %tobool3.not.i97 = icmp eq i32 %and2.i96, 0
  br i1 %tobool3.not.i97, label %while.end.i98.do.body25_crit_edge, label %while.end.i98.while.body8.i103_crit_edge

while.end.i98.while.body8.i103_crit_edge:         ; preds = %while.end.i98
  br label %while.body8.i103

while.end.i98.do.body25_crit_edge:                ; preds = %while.end.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

while.body8.i103:                                 ; preds = %cleanup15.i106.while.body8.i103_crit_edge, %while.end.i98.while.body8.i103_crit_edge
  %dec632.i99 = phi i32 [ %dec6.i104, %cleanup15.i106.while.body8.i103_crit_edge ], [ 999999, %while.end.i98.while.body8.i103_crit_edge ]
  %32 = ptrtoint ptr %membase.i.i86 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i86, align 4
  %add.ptr.i26.i100 = getelementptr i8, ptr %33, i32 12
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i100) #8, !srcloc !47
  %and11.i101 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i101)
  %tobool12.not.i102 = icmp eq i32 %and11.i101, 0
  br i1 %tobool12.not.i102, label %cleanup15.i106, label %while.body8.i103.do.body25_crit_edge

while.body8.i103.do.body25_crit_edge:             ; preds = %while.body8.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

cleanup15.i106:                                   ; preds = %while.body8.i103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #8
  %dec6.i104 = add nsw i32 %dec632.i99, -1
  %tobool7.not.i105 = icmp eq i32 %dec6.i104, 0
  br i1 %tobool7.not.i105, label %cleanup15.i106.do.body25_crit_edge, label %cleanup15.i106.while.body8.i103_crit_edge

cleanup15.i106.while.body8.i103_crit_edge:        ; preds = %cleanup15.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body8.i103

cleanup15.i106.do.body25_crit_edge:               ; preds = %cleanup15.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

do.body25:                                        ; preds = %cleanup15.i106.do.body25_crit_edge, %while.body8.i103.do.body25_crit_edge, %while.end.i98.do.body25_crit_edge, %if.then22, %wait_for_xmitr.exit.do.body25_crit_edge
  br i1 %tobool.not, label %if.then34, label %do.body25.do.body36_crit_edge

do.body25.do.body36_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

if.then34:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body36

do.body36:                                        ; preds = %if.then34, %do.body25.do.body36_crit_edge
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !48
  %and.i.i = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool44.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool44.not, label %if.then48, label %do.body36.do.end51_crit_edge, !prof !49

do.body36.do.end51_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %do.body36.do.end51_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #8, !srcloc !50
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_console_setup(ptr noundef %co, ptr noundef %options) #3 align 64 {
entry:
  %baud = alloca i32, align 4
  %bits = alloca i32, align 4
  %parity = alloca i32, align 4
  %flow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #8
  %0 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 9600, ptr %baud, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #8
  %1 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %bits, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parity) #8
  %2 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 110, ptr %parity, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flow) #8
  %3 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 110, ptr %flow, align 4
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %6 = icmp ugt i16 %5, 1
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv21 = zext i16 %5 to i32
  %arrayidx = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %conv21
  %membase = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %conv21, i32 2
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %tobool9.not = icmp eq ptr %options, null
  br i1 %tobool9.not, label %if.end8.if.end11_crit_edge, label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %9 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %baud, align 4
  %11 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %parity, align 4
  %13 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bits, align 4
  %15 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flow, align 4
  %call = call i32 @uart_set_options(ptr noundef %arrayidx, ptr noundef %co, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %entry
  %dec31.i = phi i32 [ 9999, %entry ], [ %dec.i, %cleanup.i.while.body.i_crit_edge ]
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !47
  %and.i = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %cleanup.i, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

cleanup.i:                                        ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #8
  %dec.i = add nsw i32 %dec31.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and2.i = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %while.end.i.wait_for_xmitr.exit_crit_edge, label %while.end.i.while.body8.i_crit_edge

while.end.i.while.body8.i_crit_edge:              ; preds = %while.end.i
  br label %while.body8.i

while.end.i.wait_for_xmitr.exit_crit_edge:        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_xmitr.exit

while.body8.i:                                    ; preds = %cleanup15.i.while.body8.i_crit_edge, %while.end.i.while.body8.i_crit_edge
  %dec632.i = phi i32 [ %dec6.i, %cleanup15.i.while.body8.i_crit_edge ], [ 999999, %while.end.i.while.body8.i_crit_edge ]
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #8, !srcloc !47
  %and11.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %cleanup15.i, label %while.body8.i.wait_for_xmitr.exit_crit_edge

while.body8.i.wait_for_xmitr.exit_crit_edge:      ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_xmitr.exit

cleanup15.i:                                      ; preds = %while.body8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #8
  %dec6.i = add nsw i32 %dec632.i, -1
  %tobool7.not.i = icmp eq i32 %dec6.i, 0
  br i1 %tobool7.not.i, label %cleanup15.i.wait_for_xmitr.exit_crit_edge, label %cleanup15.i.while.body8.i_crit_edge

cleanup15.i.while.body8.i_crit_edge:              ; preds = %cleanup15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body8.i

cleanup15.i.wait_for_xmitr.exit_crit_edge:        ; preds = %cleanup15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_xmitr.exit

wait_for_xmitr.exit:                              ; preds = %cleanup15.i.wait_for_xmitr.exit_crit_edge, %while.body8.i.wait_for_xmitr.exit_crit_edge, %while.end.i.wait_for_xmitr.exit_crit_edge
  %10 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %ch) #8, !srcloc !51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_early_write(ptr nocapture noundef readonly %con, ptr noundef %s, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %n, ptr noundef nonnull @bcm_console_putchar) #8
  %membase.i.i = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %entry
  %dec31.i = phi i32 [ 9999, %entry ], [ %dec.i, %cleanup.i.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !47
  %and.i = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %cleanup.i, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

cleanup.i:                                        ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #8
  %dec.i = add nsw i32 %dec31.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %flags.i = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1, i32 33
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and2.i = and i32 %7, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %while.end.i.wait_for_xmitr.exit_crit_edge, label %while.end.i.while.body8.i_crit_edge

while.end.i.while.body8.i_crit_edge:              ; preds = %while.end.i
  br label %while.body8.i

while.end.i.wait_for_xmitr.exit_crit_edge:        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_xmitr.exit

while.body8.i:                                    ; preds = %cleanup15.i.while.body8.i_crit_edge, %while.end.i.while.body8.i_crit_edge
  %dec632.i = phi i32 [ %dec6.i, %cleanup15.i.while.body8.i_crit_edge ], [ 999999, %while.end.i.while.body8.i_crit_edge ]
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %9, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #8, !srcloc !47
  %and11.i = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %cleanup15.i, label %while.body8.i.wait_for_xmitr.exit_crit_edge

while.body8.i.wait_for_xmitr.exit_crit_edge:      ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_xmitr.exit

cleanup15.i:                                      ; preds = %while.body8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #8
  %dec6.i = add nsw i32 %dec632.i, -1
  %tobool7.not.i = icmp eq i32 %dec6.i, 0
  br i1 %tobool7.not.i, label %cleanup15.i.wait_for_xmitr.exit_crit_edge, label %cleanup15.i.while.body8.i_crit_edge

cleanup15.i.while.body8.i_crit_edge:              ; preds = %cleanup15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body8.i

cleanup15.i.wait_for_xmitr.exit_crit_edge:        ; preds = %cleanup15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_xmitr.exit

wait_for_xmitr.exit:                              ; preds = %cleanup15.i.wait_for_xmitr.exit_crit_edge, %while.body8.i.wait_for_xmitr.exit_crit_edge, %while.end.i.wait_for_xmitr.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_uart_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %entry
  %call = tail call i32 @of_alias_get_id(ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then4, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call7 = tail call i32 @of_alias_get_id(ptr noundef %4, ptr noundef nonnull @.str.2) #8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call7, ptr %id, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %id10 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %6 = ptrtoint ptr %id10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %arrayidx = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %7
  %membase = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %7, i32 2
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %tobool17.not = icmp eq ptr %10, null
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %11 = call ptr @memset(ptr %arrayidx, i32 0, i32 360)
  %call20 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %12 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call20, align 4
  %mapbase = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %7, i32 43
  %14 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mapbase, align 4
  %call25 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call20) #8
  %15 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call25, ptr %membase, align 4
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  %call33 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end32.cleanup_crit_edge, label %if.end36

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %irq = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %7, i32 20
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call33, ptr %irq, align 4
  %call38 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #8
  %cmp.i111 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %land.lhs.true, label %if.end36.if.end47_crit_edge

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end36
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %tobool42.not = icmp eq ptr %19, null
  br i1 %tobool42.not, label %land.lhs.true.if.end47_crit_edge, label %if.then43

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call ptr @of_clk_get(ptr noundef nonnull %19, i32 noundef 0) #8
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %land.lhs.true.if.end47_crit_edge, %if.end36.if.end47_crit_edge
  %clk.0 = phi ptr [ %call46, %if.then43 ], [ %call38, %land.lhs.true.if.end47_crit_edge ], [ %call38, %if.end36.if.end47_crit_edge ]
  %cmp.i112 = icmp ugt ptr %clk.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %if.end47.cleanup_crit_edge, label %if.end50

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end50:                                         ; preds = %if.end47
  %iotype = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %7, i32 26
  %20 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %iotype, align 2
  %ops = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %7, i32 39
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @bcm_uart_ops, ptr %ops, align 4
  %flags = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %7, i32 33
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 268435456, ptr %flags, align 4
  %dev52 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %7, i32 45
  %23 = ptrtoint ptr %dev52 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %dev52, align 4
  %fifosize = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %7, i32 23
  %24 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16, ptr %fifosize, align 4
  %call53 = tail call i32 @clk_get_rate(ptr noundef %clk.0) #8
  %div110 = lshr i32 %call53, 1
  %uartclk = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %7, i32 22
  %25 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div110, ptr %uartclk, align 4
  %26 = ptrtoint ptr %id10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id10, align 4
  %line = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %7, i32 41
  %28 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %line, align 4
  %has_sysrq = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %7, i32 48
  %29 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %has_sysrq, align 4
  tail call void @clk_put(ptr noundef %clk.0) #8
  %call55 = tail call i32 @uart_add_one_port(ptr noundef nonnull @bcm_uart_driver, ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end61, label %if.then57

if.then57:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %id10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id10, align 4
  %membase60 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %31, i32 2
  %32 = ptrtoint ptr %membase60 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %membase60, align 4
  br label %cleanup

if.end61:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then57, %if.end47.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.then29, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then29 ], [ %call55, %if.then57 ], [ 0, %if.end61 ], [ -22, %if.end9.cleanup_crit_edge ], [ -16, %if.end15.cleanup_crit_edge ], [ -19, %if.end19.cleanup_crit_edge ], [ %call33, %if.end32.cleanup_crit_edge ], [ -19, %if.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_uart_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @bcm_uart_driver, ptr noundef %1) #8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %membase = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %3, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %membase, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_uart_tx_empty(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !47
  %and = lshr i32 %2, 5
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_uart_set_mctrl(ptr nocapture noundef readonly %port, i32 noundef %mctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !47
  %and = and i32 %2, -4
  %and1 = lshr i32 %mctrl, 1
  %3 = and i32 %and1, 3
  %4 = or i32 %3, %and
  %5 = xor i32 %4, 3
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %5) #8, !srcloc !51
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !47
  %and12 = and i32 %10, -1048577
  %and8 = shl i32 %mctrl, 5
  %11 = and i32 %and8, 1048576
  %val.2 = or i32 %and12, %11
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %val.2) #8, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_uart_get_mctrl(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !47
  %and = shl i32 %2, 7
  %3 = and i32 %and, 128
  %and1 = shl i32 %2, 4
  %4 = and i32 %and1, 32
  %5 = or i32 %4, %3
  %6 = and i32 %and1, 64
  %7 = or i32 %5, %6
  %and11 = shl i32 %2, 5
  %8 = and i32 %and11, 256
  %9 = or i32 %7, %8
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_uart_stop_tx(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !47
  %and = and i32 %2, -4194305
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %and) #8, !srcloc !51
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !47
  %and2 = and i32 %7, -2621441
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %and2) #8, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_uart_start_tx(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !47
  %or = or i32 %2, 2621440
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %or) #8, !srcloc !51
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !47
  %or2 = or i32 %7, 4194304
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %or2) #8, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_uart_stop_rx(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !47
  %and = and i32 %2, -92274689
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %and) #8, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_uart_enable_ms(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !47
  %or = or i32 %2, 65536
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %or) #8, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_uart_break_ctl(ptr noundef %port, i32 noundef %ctl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctl)
  %tobool.not = icmp eq i32 %ctl, 0
  %and = and i32 %2, -16385
  %masksel = select i1 %tobool.not, i32 0, i32 16384
  %val.0 = or i32 %and, %masksel
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %val.0) #8, !srcloc !51
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_uart_startup(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !47
  %and.i = and i32 %2, -14680065
  %3 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %and.i) #8, !srcloc !51
  %5 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !51
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !47
  %or.i = or i32 %9, 192
  %10 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %or.i) #8, !srcloc !51
  %12 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !47
  %15 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %16, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #8, !srcloc !47
  %18 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #8, !srcloc !47
  %and = and i32 %20, -65281
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %21 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fifosize, align 4
  %div39 = lshr i32 %22, 1
  %shl = shl i32 %div39, 8
  %or = or i32 %shl, %and
  %shl4 = shl i32 %div39, 12
  %or5 = or i32 %or, %shl4
  %23 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %or5) #8, !srcloc !51
  %25 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i.i, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !47
  %and7 = and i32 %27, -32
  %or8 = or i32 %and7, 1
  %28 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %or8) #8, !srcloc !51
  %30 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 394752) #8, !srcloc !51
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %39, %if.end.i ], [ %37, %entry.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %33, ptr noundef nonnull @bcm_uart_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %port) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %41, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 92274688) #8, !srcloc !51
  %42 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i.i, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #8, !srcloc !47
  %or.i54 = or i32 %44, 14680064
  %45 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %membase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %or.i54) #8, !srcloc !51
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dev_name.exit.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_uart_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !51
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #8
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !47
  %and.i = and i32 %4, -14680065
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %and.i) #8, !srcloc !51
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !47
  %or.i = or i32 %9, 192
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %or.i) #8, !srcloc !51
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !47
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  %call6 = tail call ptr @free_irq(i32 noundef %16, ptr noundef %port) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_uart_set_termios(ptr noundef %port, ptr noundef %new, ptr noundef %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #8
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i159 = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i159) #8, !srcloc !47
  %3 = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not160.not = icmp eq i32 %3, 0
  br i1 %tobool.not160.not, label %while.cond.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

while.cond.preheader:                             ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #8
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !47
  %17 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.not = icmp eq i32 %17, 0
  br i1 %tobool.not.not, label %while.cond.preheader.1, label %while.cond.preheader.for.end_crit_edge

while.cond.preheader.for.end_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

while.cond.preheader.1:                           ; preds = %while.cond.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #8
  %28 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %29, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1) #8, !srcloc !47
  %31 = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.1.not = icmp eq i32 %31, 0
  br i1 %tobool.not.1.not, label %while.cond.preheader.2, label %while.cond.preheader.1.for.end_crit_edge

while.cond.preheader.1.for.end_crit_edge:         ; preds = %while.cond.preheader.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

while.cond.preheader.2:                           ; preds = %while.cond.preheader.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #8
  %42 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.2 = getelementptr i8, ptr %43, i32 16
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2) #8, !srcloc !47
  br label %for.end

for.end:                                          ; preds = %while.cond.preheader.2, %while.cond.preheader.1.for.end_crit_edge, %while.cond.preheader.for.end_crit_edge, %entry.for.end_crit_edge
  %45 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %membase.i.i, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #8, !srcloc !47
  %and.i146 = and i32 %47, -14680065
  %48 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %and.i146) #8, !srcloc !51
  %50 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase.i.i, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #8, !srcloc !47
  %or.i = or i32 %52, 192
  %53 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %or.i) #8, !srcloc !51
  %55 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i148 = getelementptr i8, ptr %56, i32 20
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i148) #8, !srcloc !47
  %58 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i.i, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #8, !srcloc !47
  %and = and i32 %60, -12289
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %new, i32 0, i32 2
  %61 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %c_cflag, align 4
  %and10 = and i32 %62, 48
  %63 = zext i32 %and10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and10, label %sw.default [
    i32 0, label %for.end.sw.epilog_crit_edge
    i32 16, label %sw.bb11
    i32 32, label %sw.bb13
  ]

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb11:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %or12 = or i32 %and, 4096
  br label %sw.epilog

sw.bb13:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %or14 = or i32 %and, 8192
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %or15 = or i32 %60, 12288
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %sw.bb11, %for.end.sw.epilog_crit_edge
  %ctl.0 = phi i32 [ %or15, %sw.default ], [ %or14, %sw.bb13 ], [ %or12, %sw.bb11 ], [ %and, %for.end.sw.epilog_crit_edge ]
  %and18 = and i32 %62, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %or20 = or i32 %ctl.0, 3840
  %and16 = and i32 %ctl.0, -462593
  %or21 = or i32 %and16, 1792
  %ctl.1 = select i1 %tobool19.not, i32 %or21, i32 %or20
  %and22 = and i32 %ctl.1, -458753
  %and24 = shl i32 %62, 9
  %64 = and i32 %and24, 131072
  %and31 = and i32 %62, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %masksel157 = select i1 %tobool32.not, i32 0, i32 327680
  %ctl.2 = or i32 %masksel157, %64
  %ctl.3 = or i32 %ctl.2, %and22
  %65 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %ctl.3) #8, !srcloc !51
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %67 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %uartclk, align 4
  %div142 = lshr i32 %68, 4
  %call36 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %new, ptr noundef %old, i32 noundef 0, i32 noundef %div142) #8
  %call37 = tail call i32 @uart_get_divisor(ptr noundef %port, i32 noundef %call36) #8
  %sub = add i32 %call37, -1
  %69 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %70, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %sub) #8, !srcloc !51
  %71 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i152 = getelementptr i8, ptr %72, i32 16
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i152) #8, !srcloc !47
  %flags40 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %74 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags40, align 4
  %and41 = and i32 %75, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %lor.lhs.false, label %sw.epilog.if.then50_crit_edge

sw.epilog.if.then50_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

lor.lhs.false:                                    ; preds = %sw.epilog
  %and39 = and i32 %73, -65537
  %76 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %c_cflag, align 4
  %78 = and i32 %77, -2147481600
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %78)
  %.not = icmp eq i32 %78, 2048
  br i1 %.not, label %lor.lhs.false.if.end52_crit_edge, label %lor.lhs.false.if.then50_crit_edge

lor.lhs.false.if.then50_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

lor.lhs.false.if.end52_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then50:                                        ; preds = %lor.lhs.false.if.then50_crit_edge, %sw.epilog.if.then50_crit_edge
  %or51 = or i32 %73, 65536
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %lor.lhs.false.if.end52_crit_edge
  %ier.0 = phi i32 [ %or51, %if.then50 ], [ %and39, %lor.lhs.false.if.end52_crit_edge ]
  %79 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i154 = getelementptr i8, ptr %80, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 %ier.0) #8, !srcloc !51
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %81 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 255, ptr %read_status_mask, align 4
  %82 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %new, align 4
  %and53 = and i32 %83, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %spec.store.select = select i1 %tobool54.not, i32 255, i32 1023
  %84 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %spec.store.select, ptr %read_status_mask, align 4
  %85 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %new, align 4
  %and62 = and i32 %86, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end52.if.end67_crit_edge, label %if.then64

if.end52.if.end67_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then64:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %or66 = or i32 %spec.store.select, 1024
  %87 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or66, ptr %read_status_mask, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end52.if.end67_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %88 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %ignore_status_mask, align 4
  %89 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %new, align 4
  %and69 = shl i32 %90, 7
  %91 = and i32 %and69, 512
  store i32 %91, ptr %ignore_status_mask, align 4
  %92 = load i32, ptr %new, align 4
  %and76 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end67.if.end81_crit_edge, label %if.then78

if.end67.if.end81_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then78:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %or80 = or i32 %91, 1024
  %93 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %or80, ptr %ignore_status_mask, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.end67.if.end81_crit_edge
  %94 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %c_cflag, align 4
  %and83 = and i32 %95, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.then85, label %if.end81.if.end88_crit_edge

if.end81.if.end88_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ignore_status_mask, align 4
  %or87 = or i32 %97, 255
  store i32 %or87, ptr %ignore_status_mask, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.end81.if.end88_crit_edge
  %98 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %99, i32 noundef %call36) #8
  %100 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %membase.i.i, align 4
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #8, !srcloc !47
  %or.i156 = or i32 %102, 14680064
  %103 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %membase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %or.i156) #8, !srcloc !51
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bcm_uart_type(ptr nocapture noundef readonly %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 89, i32 %1)
  %cmp = icmp eq i32 %1, 89
  %cond = select i1 %cmp, ptr @.str, ptr null
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bcm_uart_release_port(ptr nocapture noundef %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm_uart_request_port(ptr nocapture noundef readnone %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @bcm_uart_config_port(ptr nocapture noundef writeonly %port, i32 noundef %flags) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 89, ptr %type, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm_uart_verify_port(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %serinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 89, i32 %1)
  %cmp.not = icmp eq i32 %1, 89
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq1 = getelementptr inbounds %struct.serial_struct, ptr %serinfo, i32 0, i32 3
  %4 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp2.not = icmp eq i32 %3, %5
  br i1 %cmp2.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4:                                          ; preds = %if.end
  %iotype = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %6 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iotype, align 2
  %io_type = getelementptr inbounds %struct.serial_struct, ptr %serinfo, i32 0, i32 9
  %8 = ptrtoint ptr %io_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %io_type, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp6.not = icmp eq i8 %7, %9
  br i1 %cmp6.not, label %if.end9, label %if.end4.return_crit_edge

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %10 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mapbase, align 4
  %iomem_base = getelementptr inbounds %struct.serial_struct, ptr %serinfo, i32 0, i32 14
  %12 = ptrtoint ptr %iomem_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iomem_base, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %14)
  %cmp10.not = icmp eq i32 %11, %14
  %. = select i1 %cmp10.not, i32 0, i32 -22
  br label %return

return:                                           ; preds = %if.end9, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %if.end4.return_crit_edge ], [ %., %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_uart_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !47
  %and = and i32 %2, 1408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state.i, align 4
  %overrun.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %brk.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 9
  %parity.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 8
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 6
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 28
  %sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 46
  %ignore_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 29
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %4, i32 0, i32 8
  %handle_break.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 17
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 48
  %cons.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 32
  %line.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 41
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 33
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup.i.do.body.i_crit_edge, %if.then
  %max_count.0.i = phi i32 [ 32, %if.then ], [ %dec.i, %cleanup.i.do.body.i_crit_edge ]
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !47
  %and.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end.i_crit_edge, label %if.then.i, !prof !52

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %do.body.i
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !47
  %or.i = or i32 %10, 64
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %or.i) #8, !srcloc !51
  %13 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %overrun.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %overrun.i, align 4
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i, align 4
  %flags.i59 = getelementptr inbounds %struct.tty_buffer, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %flags.i59 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i59, align 4
  %and.i60 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool.not.i61 = icmp eq i32 %and.i60, 0
  br i1 %tobool.not.i61, label %land.lhs.true.i62, label %if.then.i.if.end12.i_crit_edge

if.then.i.if.end12.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

land.lhs.true.i62:                                ; preds = %if.then.i
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %16, i32 0, i32 2
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp3.i = icmp slt i32 %20, %22
  br i1 %cmp3.i, label %if.end.i68, label %land.lhs.true.i62.if.end12.i_crit_edge

land.lhs.true.i62.if.end12.i_crit_edge:           ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.end.i68:                                       ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i.i64 = getelementptr inbounds %struct.tty_buffer, ptr %16, i32 0, i32 6
  %add.ptr.i.i.i65 = getelementptr i8, ptr %data.i.i.i64, i32 %20
  %add.ptr.i.i66 = getelementptr i8, ptr %add.ptr.i.i.i65, i32 %22
  %23 = ptrtoint ptr %add.ptr.i.i66 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 4, ptr %add.ptr.i.i66, align 1
  %24 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %used.i, align 4
  %inc.i67 = add i32 %25, 1
  store i32 %inc.i67, ptr %used.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i.i64, i32 %25
  %26 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %add.ptr.i1.i, align 1
  br label %if.end.i

if.end12.i:                                       ; preds = %land.lhs.true.i62.if.end12.i_crit_edge, %if.then.i.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 4) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end12.i, %if.end.i68, %do.body.i.if.end.i_crit_edge
  %and6.i = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end.i.bcm_uart_do_rx.exit_crit_edge, label %if.end9.i

if.end.i.bcm_uart_do_rx.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_uart_do_rx.exit

if.end9.i:                                        ; preds = %if.end.i
  %27 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i, align 4
  %add.ptr.i102.i = getelementptr i8, ptr %28, i32 20
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102.i) #8, !srcloc !47
  %30 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx.i, align 4
  %inc12.i = add i32 %31, 1
  store i32 %inc12.i, ptr %rx.i, align 4
  %and13.i = and i32 %29, 255
  %and14.i = and i32 %29, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end9.i.if.end58.i_crit_edge, label %if.then22.i, !prof !52

if.end9.i.if.end58.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.then22.i:                                      ; preds = %if.end9.i
  %and23.i = and i32 %29, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.then22.i.if.end32.i_crit_edge, label %if.then25.i

if.then22.i.if.end32.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then25.i:                                      ; preds = %if.then22.i
  %32 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %brk.i, align 4
  %inc27.i = add i32 %33, 1
  store i32 %inc27.i, ptr %brk.i, align 4
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %state.i, align 4
  %36 = ptrtoint ptr %handle_break.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %handle_break.i, align 4
  %tobool.not.i51 = icmp eq ptr %37, null
  br i1 %tobool.not.i51, label %if.then25.i.if.end.i53_crit_edge, label %if.then.i52

if.then25.i.if.end.i53_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i53

if.then.i52:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %37(ptr noundef %dev_id) #8
  br label %if.end.i53

if.end.i53:                                       ; preds = %if.then.i52, %if.then25.i.if.end.i53_crit_edge
  %38 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %has_sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool3.not.i = icmp eq i8 %39, 0
  br i1 %tobool3.not.i, label %if.end.i53.if.end15.i_crit_edge, label %land.lhs.true.i

if.end.i53.if.end15.i_crit_edge:                  ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end.i53
  %40 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cons.i, align 4
  %tobool4.not.i = icmp eq ptr %41, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %index.i = getelementptr inbounds %struct.console, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %index.i, align 2
  %conv7.i = sext i16 %43 to i32
  %44 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %line.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv7.i)
  %cmp.i54 = icmp eq i32 %45, %conv7.i
  br i1 %cmp.i54, label %if.then9.i, label %land.lhs.true5.i.if.end15.i_crit_edge

land.lhs.true5.i.if.end15.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then9.i:                                       ; preds = %land.lhs.true5.i
  %46 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool10.not.i = icmp eq i32 %47, 0
  br i1 %tobool10.not.i, label %uart_handle_break.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end13.i, %land.lhs.true5.i.if.end15.i_crit_edge, %land.lhs.true.i.if.end15.i_crit_edge, %if.end.i53.if.end15.i_crit_edge
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i, align 4
  %and.i56 = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool16.not.i = icmp eq i32 %and.i56, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end32.i_crit_edge, label %if.then17.i

if.end15.i.if.end32.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %tty.i = getelementptr inbounds %struct.tty_port, ptr %35, i32 0, i32 1
  %51 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tty.i, align 4
  tail call void @do_SAK(ptr noundef %52) #8
  br label %if.end32.i

uart_handle_break.exit:                           ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %add.i55 = add i32 %53, 500
  %54 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i55, ptr %sysrq.i.i, align 4
  br label %cleanup.i

if.end32.i:                                       ; preds = %if.then17.i, %if.end15.i.if.end32.i_crit_edge, %if.then22.i.if.end32.i_crit_edge
  %and33.i = and i32 %29, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end32.i.if.end38.i_crit_edge, label %if.then35.i

if.end32.i.if.end38.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %parity.i, align 4
  %inc37.i = add i32 %56, 1
  store i32 %inc37.i, ptr %parity.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then35.i, %if.end32.i.if.end38.i_crit_edge
  %and39.i = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end38.i.if.end44.i_crit_edge, label %if.then41.i

if.end38.i.if.end44.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.then41.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %frame.i, align 4
  %inc43.i = add i32 %58, 1
  store i32 %inc43.i, ptr %frame.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then41.i, %if.end38.i.if.end44.i_crit_edge
  %59 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %read_status_mask.i, align 4
  %and45.i = and i32 %60, %29
  %and46.i = lshr i32 %and45.i, 10
  %61 = trunc i32 %and46.i to i8
  %62 = and i8 %61, 1
  %and50.i = and i32 %and45.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  %flag.1.i = select i1 %tobool51.not.i, i8 %62, i8 2
  %and54.i = and i32 %and45.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  %spec.select98.i = select i1 %tobool55.not.i, i8 %flag.1.i, i8 3
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end44.i, %if.end9.i.if.end58.i_crit_edge
  %cstat.0.i = phi i32 [ %29, %if.end9.i.if.end58.i_crit_edge ], [ %and45.i, %if.end44.i ]
  %flag.2.i = phi i8 [ 0, %if.end9.i.if.end58.i_crit_edge ], [ %spec.select98.i, %if.end44.i ]
  %63 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i.i, label %if.end58.i.if.end62.i_crit_edge, label %if.end.i.i

if.end58.i.if.end62.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

if.end.i.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool1.not.i.i = icmp eq i32 %and13.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.uart_handle_sysrq_char.exit.thread112.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.uart_handle_sysrq_char.exit.thread112.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_handle_sysrq_char.exit.thread112.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %65, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i.i, label %land.lhs.true.i.i.uart_handle_sysrq_char.exit.thread112.i_crit_edge

land.lhs.true.i.i.uart_handle_sysrq_char.exit.thread112.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_handle_sysrq_char.exit.thread112.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i.i
  %call.i.i = tail call i32 @sysrq_mask() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7.i.i, label %uart_handle_sysrq_char.exit.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %dev_id, i32 noundef %and13.i) #8
  br i1 %call8.i.i, label %if.end7.i.i.cleanup.i_crit_edge, label %if.end7.i.i.uart_handle_sysrq_char.exit.thread112.i_crit_edge

if.end7.i.i.uart_handle_sysrq_char.exit.thread112.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_handle_sysrq_char.exit.thread112.i

if.end7.i.i.cleanup.i_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

uart_handle_sysrq_char.exit.thread112.i:          ; preds = %if.end7.i.i.uart_handle_sysrq_char.exit.thread112.i_crit_edge, %land.lhs.true.i.i.uart_handle_sysrq_char.exit.thread112.i_crit_edge, %if.end.i.i.uart_handle_sysrq_char.exit.thread112.i_crit_edge
  %66 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end62.i

uart_handle_sysrq_char.exit.i:                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @handle_sysrq(i32 noundef %and13.i) #8
  %67 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %cleanup.i

if.end62.i:                                       ; preds = %uart_handle_sysrq_char.exit.thread112.i, %if.end58.i.if.end62.i_crit_edge
  %68 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ignore_status_mask.i, align 4
  %and63.i = and i32 %69, %cstat.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %cmp.i = icmp eq i32 %and63.i, 0
  br i1 %cmp.i, label %if.then64.i, label %if.end62.i.cleanup.i_crit_edge

if.end62.i.cleanup.i_crit_edge:                   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.then64.i:                                      ; preds = %if.end62.i
  %conv.i = trunc i32 %29 to i8
  %70 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tail.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i103.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.2.i)
  %cmp.i104.i = icmp eq i8 %flag.2.i, 0
  %74 = or i1 %cmp.i104.i, %tobool.not.i103.i
  br i1 %74, label %land.lhs.true.i105.i, label %if.then64.i.if.end12.i.i_crit_edge

if.then64.i.if.end12.i.i_crit_edge:               ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i.i

land.lhs.true.i105.i:                             ; preds = %if.then64.i
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %71, i32 0, i32 1
  %75 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %71, i32 0, i32 2
  %77 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp3.i.i = icmp slt i32 %76, %78
  br i1 %cmp3.i.i, label %if.then.i.i, label %land.lhs.true.i105.i.if.end12.i.i_crit_edge

land.lhs.true.i105.i.if.end12.i.i_crit_edge:      ; preds = %land.lhs.true.i105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i105.i
  br i1 %tobool.not.i103.i, label %if.then8.i.i, label %if.then.i.i.if.end.i106.i_crit_edge

if.then.i.i.if.end.i106.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i106.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %71, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %76
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %78
  %79 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %flag.2.i, ptr %add.ptr.i.i.i, align 1
  br label %if.end.i106.i

if.end.i106.i:                                    ; preds = %if.then8.i.i, %if.then.i.i.if.end.i106.i_crit_edge
  %80 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %81, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %71, i32 0, i32 6
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i, i32 %81
  %82 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv.i, ptr %add.ptr.i1.i.i, align 1
  br label %cleanup.i

if.end12.i.i:                                     ; preds = %land.lhs.true.i105.i.if.end12.i.i_crit_edge, %if.then64.i.if.end12.i.i_crit_edge
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %4, i8 noundef zeroext %conv.i, i8 noundef zeroext %flag.2.i) #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end12.i.i, %if.end.i106.i, %if.end62.i.cleanup.i_crit_edge, %uart_handle_sysrq_char.exit.i, %if.end7.i.i.cleanup.i_crit_edge, %uart_handle_break.exit
  %dec.i = add nsw i32 %max_count.0.i, -1
  %tobool70.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool70.not.i, label %cleanup.i.bcm_uart_do_rx.exit_crit_edge, label %cleanup.i.do.body.i_crit_edge

cleanup.i.do.body.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

cleanup.i.bcm_uart_do_rx.exit_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_uart_do_rx.exit

bcm_uart_do_rx.exit:                              ; preds = %cleanup.i.bcm_uart_do_rx.exit_crit_edge, %if.end.i.bcm_uart_do_rx.exit_crit_edge
  tail call void @tty_flip_buffer_push(ptr noundef %4) #8
  br label %if.end

if.end:                                           ; preds = %bcm_uart_do_rx.exit, %entry.if.end_crit_edge
  %and1 = and i32 %2, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %x_char.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 24
  %83 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %x_char.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i33 = icmp eq i8 %84, 0
  br i1 %tobool.not.i33, label %if.end.i40, label %if.then.i38

if.then.i38:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i34 = zext i8 %84 to i32
  %85 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %86, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i36, i32 %conv.i34) #8, !srcloc !51
  %tx.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 5
  %87 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tx.i, align 4
  %inc.i37 = add i32 %88, 1
  store i32 %inc.i37, ptr %tx.i, align 4
  %89 = ptrtoint ptr %x_char.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %x_char.i, align 4
  br label %if.end4

if.end.i40:                                       ; preds = %if.then3
  %state.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %90 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %state.i.i, align 4
  %tty2.i.i = getelementptr inbounds %struct.tty_port, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %tty2.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tty2.i.i, align 4
  %tobool.not.i.i39 = icmp eq ptr %93, null
  br i1 %tobool.not.i.i39, label %if.end.i40.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i41

if.end.i40.uart_tx_stopped.exit.i_crit_edge:      ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_tx_stopped.exit.i

land.lhs.true.i.i41:                              ; preds = %if.end.i40
  %stopped.i.i = getelementptr inbounds %struct.tty_struct, ptr %93, i32 0, i32 19, i32 1
  %94 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %stopped.i.i, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool3.not.i.i = icmp eq i8 %95, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i41.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i41.if.then4.i_crit_edge

land.lhs.true.i.i41.if.then4.i_crit_edge:         ; preds = %land.lhs.true.i.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

land.lhs.true.i.i41.uart_tx_stopped.exit.i_crit_edge: ; preds = %land.lhs.true.i.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_tx_stopped.exit.i

uart_tx_stopped.exit.i:                           ; preds = %land.lhs.true.i.i41.uart_tx_stopped.exit.i_crit_edge, %if.end.i40.uart_tx_stopped.exit.i_crit_edge
  %hw_stopped.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 35
  %96 = ptrtoint ptr %hw_stopped.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %hw_stopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool4.not.i.not.i = icmp eq i32 %97, 0
  br i1 %tobool4.not.i.not.i, label %if.end5.i, label %uart_tx_stopped.exit.i.if.then4.i_crit_edge

uart_tx_stopped.exit.i.if.then4.i_crit_edge:      ; preds = %uart_tx_stopped.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i:                                       ; preds = %uart_tx_stopped.exit.i.if.then4.i_crit_edge, %land.lhs.true.i.i41.if.then4.i_crit_edge
  %98 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %membase.i, align 4
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #8, !srcloc !47
  %and.i.i42 = and i32 %100, -4194305
  %101 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %and.i.i42) #8, !srcloc !51
  %103 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i.i43 = getelementptr i8, ptr %104, i32 16
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i43) #8, !srcloc !47
  %and2.i.i = and i32 %105, -2621441
  %106 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %membase.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %107, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 %and2.i.i) #8, !srcloc !51
  br label %if.end4

if.end5.i:                                        ; preds = %uart_tx_stopped.exit.i
  %xmit6.i = getelementptr inbounds %struct.uart_state, ptr %91, i32 0, i32 2
  %head.i = getelementptr inbounds %struct.uart_state, ptr %91, i32 0, i32 2, i32 1
  %108 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %91, i32 0, i32 2, i32 2
  %110 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %111)
  %cmp.i44 = icmp eq i32 %109, %111
  br i1 %cmp.i44, label %if.end5.i.txq_empty.i_crit_edge, label %if.end9.i46

if.end5.i.txq_empty.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %txq_empty.i

if.end9.i46:                                      ; preds = %if.end5.i
  %112 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %membase.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %113, i32 8
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74.i) #8, !srcloc !47
  %and.i45 = lshr i32 %114, 24
  %shr.i = and i32 %and.i45, 31
  %fifosize.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 23
  %115 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %fifosize.i, align 4
  %sub.i = sub i32 %116, %shr.i
  %tx18.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 5
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end9.i46
  %max_count.0.i47 = phi i32 [ %sub.i, %if.end9.i46 ], [ %dec.i48, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_count.0.i47)
  %tobool11.not.i = icmp eq i32 %max_count.0.i47, 0
  br i1 %tobool11.not.i, label %while.cond.i.while.end.i_crit_edge, label %while.body.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i48 = add i32 %max_count.0.i47, -1
  %117 = ptrtoint ptr %xmit6.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %xmit6.i, align 4
  %119 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tail.i, align 4
  %arrayidx.i = getelementptr i8, ptr %118, i32 %120
  %121 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx.i, align 1
  %conv13.i = zext i8 %122 to i32
  %123 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %membase.i, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %124, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i, i32 %conv13.i) #8, !srcloc !51
  %125 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tail.i, align 4
  %add.i = add i32 %126, 1
  %and15.i = and i32 %add.i, 4095
  store i32 %and15.i, ptr %tail.i, align 4
  %127 = ptrtoint ptr %tx18.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tx18.i, align 4
  %inc19.i = add i32 %128, 1
  store i32 %inc19.i, ptr %tx18.i, align 4
  %129 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %head.i, align 4
  %131 = load i32, ptr %tail.i, align 4
  %cmp22.i = icmp eq i32 %130, %131
  br i1 %cmp22.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %132 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %head.i, align 4
  %134 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %tail.i, align 4
  %sub28.i = sub i32 %133, %135
  %and29.i = and i32 %sub28.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %cmp30.i = icmp eq i32 %and29.i, 0
  br i1 %cmp30.i, label %if.then32.i, label %while.end.i.if.end33.i_crit_edge

while.end.i.if.end33.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then32.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @uart_write_wakeup(ptr noundef %dev_id) #8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then32.i, %while.end.i.if.end33.i_crit_edge
  %136 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %head.i, align 4
  %138 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %139)
  %cmp36.i = icmp eq i32 %137, %139
  br i1 %cmp36.i, label %if.end33.i.txq_empty.i_crit_edge, label %if.end33.i.if.end4_crit_edge

if.end33.i.if.end4_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end33.i.txq_empty.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %txq_empty.i

txq_empty.i:                                      ; preds = %if.end33.i.txq_empty.i_crit_edge, %if.end5.i.txq_empty.i_crit_edge
  %140 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %membase.i, align 4
  %add.ptr.i78.i = getelementptr i8, ptr %141, i32 16
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78.i) #8, !srcloc !47
  %and41.i = and i32 %142, -2621441
  %143 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %membase.i, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %144, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i, i32 %and41.i) #8, !srcloc !51
  br label %if.end4

if.end4:                                          ; preds = %txq_empty.i, %if.end33.i.if.end4_crit_edge, %if.then4.i, %if.then.i38, %if.end.if.end4_crit_edge
  %and5 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end19_crit_edge, label %if.then7

if.end4.if.end19_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then7:                                         ; preds = %if.end4
  %145 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %membase.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %146, i32 12
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #8, !srcloc !47
  %and9 = and i32 %147, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then7.if.end13_crit_edge, label %if.then11

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %and12 = and i32 %147, 2
  tail call void @uart_handle_cts_change(ptr noundef %dev_id, i32 noundef %and12) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then7.if.end13_crit_edge
  %and14 = and i32 %147, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %and17 = and i32 %147, 4
  tail call void @uart_handle_dcd_change(ptr noundef %dev_id, i32 noundef %and17) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge, %if.end4.if.end19_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_cts_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_dcd_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_divisor(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_bcm63xx_uart__227_765_bcm63xx_console_initcon, !1, !"__initcall__kmod_bcm63xx_uart__227_765_bcm63xx_console_initcon", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/bcm63xx_uart.c", i32 765, i32 1}
!2 = !{ptr @__UNIQUE_ID___earlycon_bcm63xx_uart228, !3, !"__UNIQUE_ID___earlycon_bcm63xx_uart228", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/bcm63xx_uart.c", i32 785, i32 1}
!4 = !{ptr @__initcall__kmod_bcm63xx_uart__229_917_bcm_uart_init6, !5, !"__initcall__kmod_bcm63xx_uart__229_917_bcm_uart_init6", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/bcm63xx_uart.c", i32 917, i32 1}
!6 = !{ptr @__exitcall_bcm_uart_exit, !7, !"__exitcall_bcm_uart_exit", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/bcm63xx_uart.c", i32 918, i32 1}
!8 = !{ptr @__UNIQUE_ID_author230, !9, !"__UNIQUE_ID_author230", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/bcm63xx_uart.c", i32 920, i32 1}
!10 = !{ptr @__UNIQUE_ID_description231, !11, !"__UNIQUE_ID_description231", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/bcm63xx_uart.c", i32 921, i32 1}
!12 = !{ptr @__UNIQUE_ID_file232, !13, !"__UNIQUE_ID_file232", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/bcm63xx_uart.c", i32 922, i32 1}
!14 = !{ptr @__UNIQUE_ID_license233, !13, !"__UNIQUE_ID_license233", i1 false, i1 false}
!15 = !{ptr @bcm63xx_console, !16, !"bcm63xx_console", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/bcm63xx_uart.c", i32 749, i32 23}
!17 = !{ptr @ports, !18, !"ports", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/bcm63xx_uart.c", i32 31, i32 25}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/bcm63xx_uart.c", i32 891, i32 12}
!21 = !{ptr @bcm_uart_platform_driver, !22, !"bcm_uart_platform_driver", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/bcm63xx_uart.c", i32 887, i32 31}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/bcm63xx_uart.c", i32 813, i32 49}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/bcm63xx_uart.c", i32 816, i32 50}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/bcm63xx_uart.c", i32 841, i32 28}
!29 = !{ptr @bcm_uart_ops, !30, !"bcm_uart_ops", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/bcm63xx_uart.c", i32 630, i32 30}
!31 = !{ptr @bcm63xx_of_match, !32, !"bcm63xx_of_match", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/bcm63xx_uart.c", i32 878, i32 34}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/bcm63xx_uart.c", i32 795, i32 14}
!35 = !{ptr @bcm_uart_driver, !36, !"bcm_uart_driver", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/bcm63xx_uart.c", i32 792, i32 27}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 622036, i64 622097}
!47 = !{i64 5920263}
!48 = !{i64 624768}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 625053}
!51 = !{i64 5919845}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i8 0, i8 2}
