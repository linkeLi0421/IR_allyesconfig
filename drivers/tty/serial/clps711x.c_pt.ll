; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/clps711x.c_pt.bc'
source_filename = "../drivers/tty/serial/clps711x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tty_buffer = type { %union.anon.35, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.35 = type { ptr }
%struct.llist_head = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.clps711x_port = type { %struct.uart_port, i32, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.36, %struct.anon.37, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.36 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.37 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__initcall__kmod_clps711x__227_551_uart_clps711x_init6 = internal global ptr @uart_clps711x_init, section ".initcall6.init", align 4
@clps711x_uart_platform = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uart_clps711x_probe, ptr @uart_clps711x_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @clps711x_uart_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@clps711x_uart = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.4, ptr @.str.4, i32 204, i32 40, i32 2, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__exitcall_uart_clps711x_exit = internal global ptr @uart_clps711x_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [40 x i8] c"clps711x.author=Deep Blue Solutions Ltd\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [44 x i8] c"clps711x.description=CLPS711X serial driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [42 x i8] c"clps711x.file=drivers/tty/serial/clps711x\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [21 x i8] c"clps711x.license=GPL\00", section ".modinfo", align 1
@clps711x_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyCL\00\00\00\00\00\00\00\00\00\00\00", ptr @uart_clps711x_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @uart_clps711x_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clps711x-uart\00", [18 x i8] zeroinitializer }, align 32
@clps711x_uart_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,ep7209-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscon\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@uart_clps711x_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @uart_clps711x_tx_empty, ptr @uart_clps711x_set_mctrl, ptr @uart_clps711x_get_mctrl, ptr @uart_clps711x_stop_tx, ptr @uart_clps711x_start_tx, ptr null, ptr null, ptr null, ptr @uart_clps711x_nop_void, ptr null, ptr @uart_clps711x_break_ctl, ptr @uart_clps711x_startup, ptr @uart_clps711x_shutdown, ptr null, ptr @uart_clps711x_set_termios, ptr @uart_clps711x_set_ldisc, ptr null, ptr @uart_clps711x_type, ptr @uart_clps711x_nop_void, ptr @uart_clps711x_nop_int, ptr @uart_clps711x_config_port, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CLPS711X\00", [23 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyCL\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [23 x i8] c"clps711x_uart_platform\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 527, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"clps711x_uart\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 62, i32 27 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"clps711x_console\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 428, i32 23 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 529, i32 12 }
@___asan_gen_.17 = private unnamed_addr constant [21 x i8] c"clps711x_uart_dt_ids\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 521, i32 49 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 468, i32 50 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 472, i32 38 }
@___asan_gen_.26 = private unnamed_addr constant [18 x i8] c"uart_clps711x_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 332, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 314, i32 41 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [33 x i8] c"../drivers/tty/serial/clps711x.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 64, i32 17 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_uart_clps711x_exit, ptr @__initcall__kmod_clps711x__227_551_uart_clps711x_init6, ptr @uart_clps711x_exit, ptr @clps711x_uart_platform, ptr @clps711x_uart, ptr @clps711x_console, ptr @.str, ptr @clps711x_uart_dt_ids, ptr @.str.1, ptr @.str.2, ptr @uart_clps711x_ops, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clps711x_uart_platform to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clps711x_uart to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clps711x_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clps711x_uart_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_clps711x_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uart_clps711x_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @clps711x_console, ptr getelementptr inbounds (%struct.uart_driver, ptr @clps711x_uart, i32 0, i32 6), align 4
  store ptr @clps711x_uart, ptr getelementptr inbounds (%struct.console, ptr @clps711x_console, i32 0, i32 13), align 4
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @clps711x_uart) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @clps711x_uart_platform, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uart_clps711x_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @clps711x_uart_platform) #8
  tail call void @uart_unregister_driver(ptr noundef nonnull @clps711x_uart) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uart_clps711x_console_write(ptr nocapture noundef readonly %co, ptr noundef %c, i32 noundef %n) #3 align 64 {
entry:
  %sysflg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @clps711x_uart, i32 0, i32 7), align 4
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %index, align 2
  %idxprom = sext i16 %2 to i32
  %uart_port = getelementptr %struct.uart_state, ptr %0, i32 %idxprom, i32 5
  %3 = ptrtoint ptr %uart_port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %uart_port, align 4
  %dev = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 45
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sysflg) #8
  %9 = ptrtoint ptr %sysflg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %sysflg, align 4
  tail call void @uart_console_write(ptr noundef %4, ptr noundef %c, i32 noundef %n, ptr noundef nonnull @uart_clps711x_console_putchar) #8
  %syscon = getelementptr inbounds %struct.clps711x_port, ptr %8, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %10 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %syscon, align 4
  %call1 = call i32 @regmap_read(ptr noundef %11, i32 noundef 64, ptr noundef nonnull %sysflg) #8
  %12 = ptrtoint ptr %sysflg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sysflg, align 4
  %and = and i32 %13, 2048
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sysflg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uart_clps711x_console_setup(ptr noundef %co, ptr noundef %options) #3 align 64 {
entry:
  %baud = alloca i32, align 4
  %bits = alloca i32, align 4
  %parity = alloca i32, align 4
  %flow = alloca i32, align 4
  %syscon = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #8
  %0 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 38400, ptr %baud, align 4
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
  %index1 = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %4 = ptrtoint ptr %index1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %6 = icmp ugt i16 %5, 1
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv60 = zext i16 %5 to i32
  %7 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @clps711x_uart, i32 0, i32 7), align 4
  %uart_port = getelementptr %struct.uart_state, ptr %7, i32 %conv60, i32 5
  %8 = ptrtoint ptr %uart_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uart_port, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.uart_port, ptr %9, i32 0, i32 45
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i, align 4
  %tobool7.not = icmp eq ptr %options, null
  br i1 %tobool7.not, label %if.then8, label %if.else30

if.then8:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %syscon) #8
  %14 = ptrtoint ptr %syscon to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %syscon, align 4
  %syscon9 = getelementptr inbounds %struct.clps711x_port, ptr %13, i32 0, i32 3
  %15 = ptrtoint ptr %syscon9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %syscon9, align 4
  %call10 = call i32 @regmap_read(ptr noundef %16, i32 noundef 0, ptr noundef nonnull %syscon) #8
  %17 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %syscon, align 4
  %and = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.then8.if.end29_crit_edge, label %if.then12

if.then8.if.end29_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then12:                                        ; preds = %if.then8
  %membase = getelementptr inbounds %struct.uart_port, ptr %9, i32 0, i32 2
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 64
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !40
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  %and15 = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then12.if.end22_crit_edge, label %if.then17

if.then12.if.end22_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then17:                                        ; preds = %if.then12
  %and18 = and i32 %22, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 101, ptr %parity, align 4
  br label %if.end22

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 111, ptr %parity, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then20, %if.then12.if.end22_crit_edge
  %and23 = and i32 %22, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %and23)
  %cmp24 = icmp eq i32 %and23, 262144
  br i1 %cmp24, label %if.then26, label %if.end22.if.end27_crit_edge

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 7, ptr %bits, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end22.if.end27_crit_edge
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %9, i32 0, i32 22
  %26 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %uartclk, align 4
  %and28 = shl i32 %22, 4
  %add = and i32 %and28, 65520
  %mul = add nuw nsw i32 %add, 16
  %div = udiv i32 %27, %mul
  %28 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div, ptr %baud, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.then8.if.end29_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %syscon) #8
  br label %if.end31

if.else30:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #8
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.end29
  %29 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %baud, align 4
  %31 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %parity, align 4
  %33 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bits, align 4
  %35 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flow, align 4
  %call32 = call i32 @uart_set_options(ptr noundef nonnull %9, ptr noundef %co, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %syscon36 = getelementptr inbounds %struct.clps711x_port, ptr %13, i32 0, i32 3
  %37 = ptrtoint ptr %syscon36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %syscon36, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 0, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end31.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end35 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uart_clps711x_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #3 align 64 {
entry:
  %sysflg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sysflg) #8
  %4 = ptrtoint ptr %sysflg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %sysflg, align 4
  %syscon = getelementptr inbounds %struct.clps711x_port, ptr %3, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %5 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %syscon, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 64, ptr noundef nonnull %sysflg) #8
  %7 = ptrtoint ptr %sysflg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sysflg, align 4
  %and = and i32 %8, 8388608
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body2, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  call void @arm_heavy_mb() #8
  %conv = trunc i32 %ch to i16
  %9 = call i16 @llvm.bswap.i16(i16 %conv)
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 %9) #8, !srcloc !43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sysflg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uart_clps711x_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 376, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call10 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call8) #8
  %membase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %membase, align 4
  %cmp.i164 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %call19 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %irq23 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 20
  %5 = ptrtoint ptr %irq23 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call19, ptr %irq23, align 4
  %call24 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #8
  %rx_irq = getelementptr inbounds %struct.clps711x_port, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %rx_irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call24, ptr %rx_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp26 = icmp slt i32 %call24, 0
  br i1 %cmp26, label %if.end21.cleanup_crit_edge, label %if.end29

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %call30 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.1) #8
  %syscon = getelementptr inbounds %struct.clps711x_port, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %syscon to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call30, ptr %syscon, align 4
  %cmp.i165 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %call37 = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.2) #8
  %line = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 41
  %9 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call37, ptr %line, align 4
  %dev41 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 45
  %10 = ptrtoint ptr %dev41 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %dev41, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 26
  %11 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %iotype, align 2
  %12 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call8, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 43
  %14 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mapbase, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 38
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 33, ptr %type, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 23
  %16 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %fifosize, align 4
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 48
  %17 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %has_sysrq, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 33
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 134217792, ptr %flags, align 4
  %call48 = tail call i32 @clk_get_rate(ptr noundef %call3) #8
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 22
  %19 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call48, ptr %uartclk, align 4
  %ops = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 39
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @uart_clps711x_ops, ptr %ops, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call52 = tail call ptr @mctrl_gpio_init_noauto(ptr noundef %dev, i32 noundef 0) #8
  %gpios = getelementptr inbounds %struct.clps711x_port, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %gpios to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call52, ptr %gpios, align 4
  %cmp.i166 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call52 to i32
  br label %cleanup

if.end58:                                         ; preds = %if.end36
  %call60 = tail call i32 @uart_add_one_port(ptr noundef nonnull @clps711x_uart, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end63:                                         ; preds = %if.end58
  %cons = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 32
  %24 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cons, align 4
  %tobool65.not = icmp eq ptr %25, null
  br i1 %tobool65.not, label %if.end63.if.then72_crit_edge, label %land.lhs.true

if.end63.if.then72_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72

land.lhs.true:                                    ; preds = %if.end63
  %index = getelementptr inbounds %struct.console, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %index, align 2
  %conv = sext i16 %27 to i32
  %28 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv)
  %cmp70 = icmp eq i32 %29, %conv
  br i1 %cmp70, label %land.lhs.true.if.end75_crit_edge, label %land.lhs.true.if.then72_crit_edge

land.lhs.true.if.then72_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then72:                                        ; preds = %land.lhs.true.if.then72_crit_edge, %if.end63.if.then72_crit_edge
  %30 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %syscon, align 4
  %call.i167 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 0, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %land.lhs.true.if.end75_crit_edge
  %tx_enabled = getelementptr inbounds %struct.clps711x_port, ptr %call.i, i32 0, i32 1
  %32 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %tx_enabled, align 4
  %33 = ptrtoint ptr %irq23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq23, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end75.dev_name.exit_crit_edge

if.end75.dev_name.exit_crit_edge:                 ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end75.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %38, %if.end.i ], [ %36, %if.end75.dev_name.exit_crit_edge ]
  %call.i168 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %34, ptr noundef nonnull @uart_clps711x_int_tx, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool83.not = icmp eq i32 %call.i168, 0
  br i1 %tobool83.not, label %if.end87, label %if.then84

if.then84:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call86 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @clps711x_uart, ptr noundef nonnull %call.i) #8
  br label %cleanup

if.end87:                                         ; preds = %dev_name.exit
  %39 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_irq, align 4
  %41 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i170 = icmp eq ptr %42, null
  br i1 %tobool.not.i170, label %if.end.i171, label %if.end87.dev_name.exit173_crit_edge

if.end87.dev_name.exit173_crit_edge:              ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit173

if.end.i171:                                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  br label %dev_name.exit173

dev_name.exit173:                                 ; preds = %if.end.i171, %if.end87.dev_name.exit173_crit_edge
  %retval.0.i172 = phi ptr [ %44, %if.end.i171 ], [ %42, %if.end87.dev_name.exit173_crit_edge ]
  %call.i174 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %40, ptr noundef nonnull @uart_clps711x_int_rx, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i172, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %tobool94.not = icmp eq i32 %call.i174, 0
  br i1 %tobool94.not, label %dev_name.exit173.cleanup_crit_edge, label %if.then95

dev_name.exit173.cleanup_crit_edge:               ; preds = %dev_name.exit173
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then95:                                        ; preds = %dev_name.exit173
  call void @__sanitizer_cov_trace_pc() #10
  %call97 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @clps711x_uart, ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %dev_name.exit173.cleanup_crit_edge, %if.then84, %if.end58.cleanup_crit_edge, %if.then55, %if.then33, %if.end21.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then14, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %4, %if.then14 ], [ %8, %if.then33 ], [ %23, %if.then55 ], [ %call.i168, %if.then84 ], [ -12, %entry.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ %call24, %if.end21.cleanup_crit_edge ], [ %call60, %if.end58.cleanup_crit_edge ], [ %call.i174, %if.then95 ], [ 0, %dev_name.exit173.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uart_clps711x_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @clps711x_uart, ptr noundef %1) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_init_noauto(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uart_clps711x_int_tx(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  %sysflg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %state = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2
  %x_char = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 24
  %6 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %x_char, align 4
  %conv = zext i8 %9 to i16
  %10 = shl nuw i16 %conv, 8
  %membase = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 %10) #8, !srcloc !43
  %tx = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 5
  %13 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %tx, align 4
  %15 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %x_char, align 4
  br label %cleanup42

if.end:                                           ; preds = %entry
  %head = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp = icmp eq i32 %17, %19
  br i1 %cmp, label %if.end.if.then7_crit_edge, label %lor.lhs.false

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %lor.lhs.false.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.uart_tx_stopped.exit_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %21, i32 0, i32 19, i32 1
  %22 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %stopped.i, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool3.not.i = icmp eq i8 %23, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.if.then7_crit_edge

land.lhs.true.i.if.then7_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %lor.lhs.false.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 35
  %24 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool4.not.i.not = icmp eq i32 %25, 0
  br i1 %tobool4.not.i.not, label %while.cond.preheader, label %uart_tx_stopped.exit.if.then7_crit_edge

uart_tx_stopped.exit.if.then7_crit_edge:          ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

while.cond.preheader:                             ; preds = %uart_tx_stopped.exit
  %membase23 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %tx28 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 5
  %syscon = getelementptr inbounds %struct.clps711x_port, ptr %3, i32 0, i32 3
  br label %while.cond

if.then7:                                         ; preds = %uart_tx_stopped.exit.if.then7_crit_edge, %land.lhs.true.i.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %tx_enabled = getelementptr inbounds %struct.clps711x_port, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool8.not = icmp eq i32 %27, 0
  br i1 %tobool8.not, label %if.then7.cleanup42_crit_edge, label %if.then9

if.then7.cleanup42_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup42

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %irq10 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 20
  %28 = ptrtoint ptr %irq10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq10, align 4
  tail call void @disable_irq_nosync(i32 noundef %29) #8
  %30 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %tx_enabled, align 4
  br label %cleanup42

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %31 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %head, align 4
  %33 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp16.not = icmp eq i32 %32, %34
  br i1 %cmp16.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sysflg) #8
  %35 = ptrtoint ptr %sysflg to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %sysflg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xmit1, align 4
  %38 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %37, i32 %39
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx, align 1
  %conv22 = zext i8 %41 to i16
  %42 = shl nuw i16 %conv22, 8
  %43 = ptrtoint ptr %membase23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase23, align 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %44, i16 %42) #8, !srcloc !43
  %45 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tail, align 4
  %add = add i32 %46, 1
  %and = and i32 %add, 4095
  store i32 %and, ptr %tail, align 4
  %47 = ptrtoint ptr %tx28 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx28, align 4
  %inc29 = add i32 %48, 1
  store i32 %inc29, ptr %tx28, align 4
  %49 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %syscon, align 4
  %call30 = call i32 @regmap_read(ptr noundef %50, i32 noundef 64, ptr noundef nonnull %sysflg) #8
  %51 = ptrtoint ptr %sysflg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sysflg, align 4
  %and31 = and i32 %52, 8388608
  %tobool32.not = icmp eq i32 %and31, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sysflg) #8
  br i1 %tobool32.not, label %while.body.while.cond_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %53 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %head, align 4
  %55 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tail, align 4
  %sub = sub i32 %54, %56
  %and37 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp38 = icmp eq i32 %and37, 0
  br i1 %cmp38, label %if.then40, label %while.end.cleanup42_crit_edge

while.end.cleanup42_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup42

if.then40:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @uart_write_wakeup(ptr noundef %dev_id) #8
  br label %cleanup42

cleanup42:                                        ; preds = %if.then40, %while.end.cleanup42_crit_edge, %if.then9, %if.then7.cleanup42_crit_edge, %do.body
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uart_clps711x_int_rx(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  %sysflg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %syscon = getelementptr inbounds %struct.clps711x_port, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sysflg) #8
  %4 = ptrtoint ptr %sysflg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %sysflg, align 4
  %5 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %syscon, align 4
  %call196 = call i32 @regmap_read(ptr noundef %6, i32 noundef 64, ptr noundef nonnull %sysflg) #8
  %7 = ptrtoint ptr %sysflg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sysflg, align 4
  %and97 = and i32 %8, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool.not98 = icmp eq i32 %and97, 0
  br i1 %tobool.not98, label %if.end.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.lr.ph:                                     ; preds = %entry
  %membase = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %rx = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %parity = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 8
  %frame = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 6
  %overrun = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 28
  %sysrq.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 46
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 29
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.end.lr.ph
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %11 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %10) #8, !srcloc !47
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %conv = zext i16 %12 to i32
  %and4 = and i32 %conv, 1792
  %and6 = and i16 %12, 255
  %13 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool8.not = icmp eq i32 %and4, 0
  br i1 %tobool8.not, label %if.end.if.end46_crit_edge, label %if.then11, !prof !49

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then11:                                        ; preds = %if.end
  %and12 = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else, label %if.then11.if.end30.sink.split_crit_edge

if.then11.if.end30.sink.split_crit_edge:          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.sink.split

if.else:                                          ; preds = %if.then11
  %and17 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else22, label %if.else.if.end30.sink.split_crit_edge

if.else.if.end30.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.sink.split

if.else22:                                        ; preds = %if.else
  %and23 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else22.if.end30_crit_edge, label %if.else22.if.end30.sink.split_crit_edge

if.else22.if.end30.sink.split_crit_edge:          ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.sink.split

if.else22.if.end30_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end30.sink.split:                              ; preds = %if.else22.if.end30.sink.split_crit_edge, %if.else.if.end30.sink.split_crit_edge, %if.then11.if.end30.sink.split_crit_edge
  %frame.sink99 = phi ptr [ %parity, %if.then11.if.end30.sink.split_crit_edge ], [ %frame, %if.else.if.end30.sink.split_crit_edge ], [ %overrun, %if.else22.if.end30.sink.split_crit_edge ]
  %15 = ptrtoint ptr %frame.sink99 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frame.sink99, align 4
  %inc21 = add i32 %16, 1
  store i32 %inc21, ptr %frame.sink99, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.else22.if.end30_crit_edge
  %17 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %read_status_mask, align 4
  %and31 = and i32 %18, %and4
  %and32 = and i32 %and31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else35, label %if.end30.if.end46_crit_edge

if.end30.if.end46_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.else35:                                        ; preds = %if.end30
  %and36 = and i32 %and31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else39, label %if.else35.if.end46_crit_edge

if.else35.if.end46_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.else39:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  %and40 = lshr exact i32 %and31, 8
  %19 = and i32 %and40, 4
  br label %if.end46

if.end46:                                         ; preds = %if.else39, %if.else35.if.end46_crit_edge, %if.end30.if.end46_crit_edge, %if.end.if.end46_crit_edge
  %flg.0 = phi i32 [ 0, %if.end.if.end46_crit_edge ], [ 3, %if.end30.if.end46_crit_edge ], [ 2, %if.else35.if.end46_crit_edge ], [ %19, %if.else39 ]
  %status.0 = phi i32 [ 0, %if.end.if.end46_crit_edge ], [ %and31, %if.end30.if.end46_crit_edge ], [ %and31, %if.else35.if.end46_crit_edge ], [ %and31, %if.else39 ]
  %conv47 = zext i16 %and6 to i32
  %20 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.end46.if.end51_crit_edge, label %if.end.i

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.end.i:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and6)
  %tobool1.not.i = icmp eq i16 %and6, 0
  br i1 %tobool1.not.i, label %if.end.i.uart_handle_sysrq_char.exit.thread90_crit_edge, label %land.lhs.true.i

if.end.i.uart_handle_sysrq_char.exit.thread90_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_handle_sysrq_char.exit.thread90

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %22, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then3.i, label %land.lhs.true.i.uart_handle_sysrq_char.exit.thread90_crit_edge

land.lhs.true.i.uart_handle_sysrq_char.exit.thread90_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_handle_sysrq_char.exit.thread90

if.then3.i:                                       ; preds = %land.lhs.true.i
  %call.i = call i32 @sysrq_mask() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %uart_handle_sysrq_char.exit

if.end7.i:                                        ; preds = %if.then3.i
  %call8.i = call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %dev_id, i32 noundef %conv47) #8
  br i1 %call8.i, label %if.end7.i.cleanup_crit_edge, label %if.end7.i.uart_handle_sysrq_char.exit.thread90_crit_edge

if.end7.i.uart_handle_sysrq_char.exit.thread90_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_handle_sysrq_char.exit.thread90

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

uart_handle_sysrq_char.exit.thread90:             ; preds = %if.end7.i.uart_handle_sysrq_char.exit.thread90_crit_edge, %land.lhs.true.i.uart_handle_sysrq_char.exit.thread90_crit_edge, %if.end.i.uart_handle_sysrq_char.exit.thread90_crit_edge
  %23 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %sysrq.i, align 4
  br label %if.end51

uart_handle_sysrq_char.exit:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @handle_sysrq(i32 noundef %conv47) #8
  %24 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %sysrq.i, align 4
  br label %cleanup

if.end51:                                         ; preds = %uart_handle_sysrq_char.exit.thread90, %if.end46.if.end51_crit_edge
  %25 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ignore_status_mask, align 4
  %and52 = and i32 %26, %status.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  call void @uart_insert_char(ptr noundef %dev_id, i32 noundef %status.0, i32 noundef 1024, i32 noundef %conv47, i32 noundef %flg.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end51.cleanup_crit_edge, %uart_handle_sysrq_char.exit, %if.end7.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sysflg) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sysflg) #8
  %27 = ptrtoint ptr %sysflg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %sysflg, align 4
  %28 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %syscon, align 4
  %call1 = call i32 @regmap_read(ptr noundef %29, i32 noundef 64, ptr noundef nonnull %sysflg) #8
  %30 = ptrtoint ptr %sysflg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sysflg, align 4
  %and = and i32 %31, 4194304
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup.if.end_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sysflg) #8
  %state = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %state, align 4
  call void @tty_flip_buffer_push(ptr noundef %33) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uart_clps711x_tx_empty(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  %sysflg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sysflg) #8
  %4 = ptrtoint ptr %sysflg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %sysflg, align 4
  %syscon = getelementptr inbounds %struct.clps711x_port, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %syscon, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 64, ptr noundef nonnull %sysflg) #8
  %7 = ptrtoint ptr %sysflg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sysflg, align 4
  %and = lshr i32 %8, 11
  %and.lobit = and i32 %and, 1
  %9 = xor i32 %and.lobit, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sysflg) #8
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uart_clps711x_set_mctrl(ptr nocapture noundef readonly %port, i32 noundef %mctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %gpios = getelementptr inbounds %struct.clps711x_port, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpios, align 4
  tail call void @mctrl_gpio_set(ptr noundef %5, i32 noundef %mctrl) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uart_clps711x_get_mctrl(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  %result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #8
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 352, ptr %result, align 4
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %gpios = getelementptr inbounds %struct.clps711x_port, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpios, align 4
  %call1 = call i32 @mctrl_gpio_get(ptr noundef %6, ptr noundef nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uart_clps711x_stop_tx(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tx_enabled = getelementptr inbounds %struct.clps711x_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %7) #8
  %8 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uart_clps711x_start_tx(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tx_enabled = getelementptr inbounds %struct.clps711x_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %tx_enabled, align 4
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @uart_clps711x_nop_void(ptr nocapture noundef %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uart_clps711x_break_ctl(ptr nocapture noundef readonly %port, i32 noundef %break_state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %tobool.not = icmp eq i32 %break_state, 0
  %3 = and i32 %2, -1048577
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = select i1 %tobool.not, i32 0, i32 4096
  %ubrlcr.0 = or i32 %4, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %ubrlcr.0)
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #8, !srcloc !52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uart_clps711x_startup(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 64
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %7 = and i32 %6, -1048577
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %9, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %7) #8, !srcloc !52
  %syscon = getelementptr inbounds %struct.clps711x_port, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %syscon, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uart_clps711x_shutdown(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %syscon = getelementptr inbounds %struct.clps711x_port, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %syscon, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uart_clps711x_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %and = and i32 %1, -1073741825
  store i32 %and, ptr %c_cflag, align 4
  %2 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %termios, align 4
  %and1 = and i32 %3, -4
  store i32 %and1, ptr %termios, align 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %4 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uartclk, align 4
  %div64 = lshr i32 %5, 12
  %div365 = lshr i32 %5, 4
  %call = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef %div64, i32 noundef %div365) #8
  %call4 = tail call i32 @uart_get_divisor(ptr noundef %port, i32 noundef %call) #8
  %6 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_cflag, align 4
  %8 = shl i32 %7, 13
  %switch.idx.mult = and i32 %8, 393216
  %and11 = shl i32 %7, 9
  %9 = and i32 %and11, 32768
  %10 = or i32 %switch.idx.mult, %9
  %and13 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %and18 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %spec.select66.v = select i1 %tobool19.not, i32 24576, i32 8192
  %spec.select66 = select i1 %tobool14.not, i32 0, i32 %spec.select66.v
  %ubrlcr.2 = or i32 %10, %spec.select66
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %11 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1024, ptr %read_status_mask, align 4
  %12 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %termios, align 4
  %and26 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %spec.store.select = select i1 %tobool27.not, i32 1024, i32 1792
  %14 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.store.select, ptr %read_status_mask, align 4
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %15 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ignore_status_mask, align 4
  %16 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %c_cflag, align 4
  %and33 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %spec.store.select67 = select i1 %tobool34.not, i32 1792, i32 0
  %18 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.store.select67, ptr %ignore_status_mask, align 4
  %19 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %20, i32 noundef %call) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %sub = add i32 %call4, -1
  %or24 = or i32 %sub, %ubrlcr.2
  %or40 = or i32 %or24, 65536
  %21 = tail call i32 @llvm.bswap.i32(i32 %or40)
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #8, !srcloc !52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uart_clps711x_set_ldisc(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %termios) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %0 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %syscon = getelementptr inbounds %struct.clps711x_port, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %syscon, align 4
  %c_line = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 4
  %8 = ptrtoint ptr %c_line to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %c_line, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %9)
  %cmp = icmp eq i8 %9, 11
  %cond = select i1 %cmp, i32 32768, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 32768, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @uart_clps711x_type(ptr nocapture noundef readonly %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %1)
  %cmp = icmp eq i32 %1, 33
  %cond = select i1 %cmp, ptr @.str.3, ptr null
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uart_clps711x_nop_int(ptr nocapture noundef readnone %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @uart_clps711x_config_port(ptr nocapture noundef writeonly %port, i32 noundef %flags) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 33, ptr %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctrl_gpio_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_divisor(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_clps711x__227_551_uart_clps711x_init6, !1, !"__initcall__kmod_clps711x__227_551_uart_clps711x_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/clps711x.c", i32 551, i32 1}
!2 = !{ptr @__exitcall_uart_clps711x_exit, !3, !"__exitcall_uart_clps711x_exit", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/clps711x.c", i32 558, i32 1}
!4 = !{ptr @__UNIQUE_ID_author228, !5, !"__UNIQUE_ID_author228", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/clps711x.c", i32 560, i32 1}
!6 = !{ptr @__UNIQUE_ID_description229, !7, !"__UNIQUE_ID_description229", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/clps711x.c", i32 561, i32 1}
!8 = !{ptr @__UNIQUE_ID_file230, !9, !"__UNIQUE_ID_file230", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/clps711x.c", i32 562, i32 1}
!10 = !{ptr @__UNIQUE_ID_license231, !9, !"__UNIQUE_ID_license231", i1 false, i1 false}
!11 = !{ptr @clps711x_console, !12, !"clps711x_console", i1 false, i1 false}
!12 = !{!"../drivers/tty/serial/clps711x.c", i32 428, i32 23}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/clps711x.c", i32 529, i32 12}
!15 = !{ptr @clps711x_uart_platform, !16, !"clps711x_uart_platform", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/clps711x.c", i32 527, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/clps711x.c", i32 468, i32 50}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/clps711x.c", i32 472, i32 38}
!21 = !{ptr @uart_clps711x_ops, !22, !"uart_clps711x_ops", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/clps711x.c", i32 332, i32 30}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/clps711x.c", i32 314, i32 41}
!25 = !{ptr @clps711x_uart_dt_ids, !26, !"clps711x_uart_dt_ids", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/clps711x.c", i32 521, i32 49}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/clps711x.c", i32 64, i32 17}
!29 = !{ptr @clps711x_uart, !30, !"clps711x_uart", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/clps711x.c", i32 62, i32 27}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 4896224}
!41 = !{i64 2154241387}
!42 = !{i64 2154240656}
!43 = !{i64 4895186}
!44 = !{i64 2154235555}
!45 = !{i8 0, i8 2}
!46 = !{i64 2154236088}
!47 = !{i64 4895386}
!48 = !{i64 2154235184}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2154237182}
!51 = !{i64 2154237431}
!52 = !{i64 4895806}
!53 = !{i64 2154238662}
!54 = !{i64 2154239605}
!55 = !{i64 2154240159}
