; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_bcm2835aux.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_bcm2835aux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
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
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bcm2835aux_data = type { ptr, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_8250_bcm2835aux__234_190_bcm2835aux_serial_driver_init6 = internal global ptr @bcm2835aux_serial_driver_init, section ".initcall6.init", align 4
@bcm2835aux_serial_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm2835aux_serial_probe, ptr @bcm2835aux_serial_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm2835aux_serial_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm2835aux_serial_driver_exit = internal global ptr @bcm2835aux_serial_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID___earlycon_bcm2835aux235 = internal constant %struct.earlycon_id { [15 x i8] c"bcm2835aux\00\00\00\00\00", i8 0, [128 x i8] c"brcm,bcm2835-aux-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_bcm2835aux_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID_description236 = internal constant [57 x i8] c"8250_bcm2835aux.description=BCM2835 auxiliar UART driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [62 x i8] c"8250_bcm2835aux.author=Martin Sperl <kernel@martin.sperl.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [61 x i8] c"8250_bcm2835aux.file=drivers/tty/serial/8250/8250_bcm2835aux\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [31 x i8] c"8250_bcm2835aux.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcm2835-aux-uart\00", [47 x i8] zeroinitializer }, align 32
@bcm2835aux_serial_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-aux-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"could not get clk\0A\00", [45 x i8] zeroinitializer }, align 32
@bcm2835aux_serial_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 125, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"memory resource not found\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bcm2835aux_serial_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/tty/serial/8250/8250_bcm2835aux.c\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm2835aux_serial_probe._entry_ptr = internal global ptr @bcm2835aux_serial_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@bcm2835aux_serial_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 140, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to enable uart clock - %d\0A\00", [62 x i8] zeroinitializer }, align 32
@bcm2835aux_serial_probe._entry_ptr.10 = internal global ptr @bcm2835aux_serial_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to register 8250 port\0A\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [25 x i8] c"bcm2835aux_serial_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 182, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 184, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"bcm2835aux_serial_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 176, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 114, i32 56 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 125, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 132, i32 43 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 139, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [45 x i8] c"../drivers/tty/serial/8250/8250_bcm2835aux.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 154, i32 34 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID___earlycon_bcm2835aux235, ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_bcm2835aux_serial_driver_exit, ptr @__initcall__kmod_8250_bcm2835aux__234_190_bcm2835aux_serial_driver_init6, ptr @bcm2835aux_serial_driver_exit, ptr @bcm2835aux_serial_probe._entry, ptr @bcm2835aux_serial_probe._entry.8, ptr @bcm2835aux_serial_probe._entry_ptr, ptr @bcm2835aux_serial_probe._entry_ptr.10, ptr @bcm2835aux_serial_driver, ptr @.str, ptr @bcm2835aux_serial_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835aux_serial_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835aux_serial_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835aux_serial_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835aux_serial_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835aux_serial_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835aux_serial_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835aux_serial_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835aux_serial_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @early_bcm2835aux_setup(ptr noundef %device, ptr nocapture noundef readnone %options) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %iotype = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 26
  %2 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %iotype, align 2
  %regshift = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 25
  %3 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %regshift, align 1
  %call = tail call i32 @early_serial8250_setup(ptr noundef %device, ptr noundef null) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835aux_serial_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %up = alloca %struct.uart_8250_port, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %up) #5
  %0 = call ptr @memset(ptr %up, i32 0, i32 584)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %capabilities = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 3
  %1 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 131328, ptr %capabilities, align 4
  %dev2 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 45
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev2, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 25
  %3 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %regshift, align 1
  %type = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 38
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %type, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 26
  %5 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %iotype, align 2
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 23
  %6 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %fifosize, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 33
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1459617728, ptr %flags, align 4
  %rs485_config = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 18
  %8 = ptrtoint ptr %rs485_config to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @serial8250_em485_config, ptr %rs485_config, align 4
  %rs485_start_tx = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 24
  %9 = ptrtoint ptr %rs485_start_tx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @bcm2835aux_rs485_start_tx, ptr %rs485_start_tx, align 4
  %rs485_stop_tx = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 25
  %10 = ptrtoint ptr %rs485_stop_tx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @bcm2835aux_rs485_stop_tx, ptr %rs485_stop_tx, align 4
  %cntl = getelementptr inbounds %struct.bcm2835aux_data, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %cntl to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %cntl, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call10, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call10 to i32
  %call17 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %14, ptr noundef nonnull @.str.1) #5
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %call19 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %irq = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 20
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call19, ptr %irq, align 4
  %call23 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %16 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call23, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 43
  %18 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %mapbase, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call23, i32 0, i32 1
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i, align 4
  %21 = load i32, ptr %call23, align 4
  %sub.i = add i32 %20, 1
  %add.i = sub i32 %sub.i, %21
  %mapsize = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 44
  %22 = ptrtoint ptr %mapsize to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i, ptr %mapsize, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %call32 = tail call i32 @of_alias_get_id(ptr noundef %24, ptr noundef nonnull @.str.7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call32)
  %cmp33 = icmp sgt i32 %call32, -1
  br i1 %cmp33, label %if.then34, label %if.end27.if.end36_crit_edge

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %line = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 41
  %25 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call32, ptr %line, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end27.if.end36_crit_edge
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %call.i92 = tail call i32 @clk_prepare(ptr noundef %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool.not.i = icmp eq i32 %call.i92, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end36.do.end43_crit_edge

if.end36.do.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43

if.end.i:                                         ; preds = %if.end36
  %call1.i = tail call i32 @clk_enable(ptr noundef %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end45, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %27) #5
  br label %do.end43

do.end43:                                         ; preds = %if.then3.i, %if.end36.do.end43_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i92, %if.end36.do.end43_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i.ph) #8
  br label %cleanup

if.end45:                                         ; preds = %if.end.i
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %call47 = tail call i32 @clk_get_rate(ptr noundef %29) #5
  %mul = shl i32 %call47, 1
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 22
  %30 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul, ptr %uartclk, align 4
  %call49 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %up) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %call53 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call49, ptr noundef nonnull @.str.11) #5
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  call void @clk_disable(ptr noundef %32) #5
  call void @clk_unprepare(ptr noundef %32) #5
  br label %cleanup

if.end54:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %line55 = getelementptr inbounds %struct.bcm2835aux_data, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %line55 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call49, ptr %line55, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then51, %do.end43, %do.end, %if.end18.cleanup_crit_edge, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.then13 ], [ %retval.0.i.ph, %do.end43 ], [ %call49, %if.then51 ], [ 0, %if.end54 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %up) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835aux_serial_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %line = getelementptr inbounds %struct.bcm2835aux_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  tail call void @serial8250_unregister_port(i32 noundef %3) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_em485_config(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835aux_rs485_start_tx(ptr noundef %up) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 56
  %0 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rs485, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 45
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %cntl = getelementptr inbounds %struct.bcm2835aux_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cntl, align 4
  %and2 = and i32 %7, -2
  store i32 %and2, ptr %cntl, align 4
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 4
  %8 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serial_out.i, align 4
  tail call void %9(ptr noundef %up, i32 noundef 8, i32 noundef %and2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rs485, align 4
  %and7 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %serial_out.i.i17 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 4
  %12 = ptrtoint ptr %serial_out.i.i17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serial_out.i.i17, align 4
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  tail call void %13(ptr noundef %up, i32 noundef 4, i32 noundef 0) #5
  %gpios.i = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 16
  %14 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpios.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then9.if.end10_crit_edge, label %if.then.i

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mctrl_gpio_set(ptr noundef nonnull %15, i32 noundef 0) #5
  br label %if.end10

if.else:                                          ; preds = %if.end
  tail call void %13(ptr noundef %up, i32 noundef 4, i32 noundef 2) #5
  %gpios.i18 = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 16
  %16 = ptrtoint ptr %gpios.i18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpios.i18, align 4
  %tobool.not.i19 = icmp eq ptr %17, null
  br i1 %tobool.not.i19, label %if.else.if.end10_crit_edge, label %if.then.i20

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then.i20:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mctrl_gpio_set(ptr noundef nonnull %17, i32 noundef 4) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then.i20, %if.else.if.end10_crit_edge, %if.then.i, %if.then9.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835aux_rs485_stop_tx(ptr noundef %up) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 56
  %0 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rs485, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %serial_out.i.i16 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 4
  %2 = ptrtoint ptr %serial_out.i.i16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial_out.i.i16, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void %3(ptr noundef %up, i32 noundef 4, i32 noundef 0) #5
  %gpios.i = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 16
  %4 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpios.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mctrl_gpio_set(ptr noundef nonnull %5, i32 noundef 0) #5
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void %3(ptr noundef %up, i32 noundef 4, i32 noundef 2) #5
  %gpios.i17 = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 16
  %6 = ptrtoint ptr %gpios.i17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpios.i17, align 4
  %tobool.not.i18 = icmp eq ptr %7, null
  br i1 %tobool.not.i18, label %if.else.if.end_crit_edge, label %if.then.i19

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i19:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mctrl_gpio_set(ptr noundef nonnull %7, i32 noundef 4) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i19, %if.else.if.end_crit_edge, %if.then.i, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rs485, align 4
  %and4 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 45
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i, align 4
  %cntl = getelementptr inbounds %struct.bcm2835aux_data, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cntl, align 4
  %or = or i32 %15, 1
  store i32 %or, ptr %cntl, align 4
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 4
  %16 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %serial_out.i, align 4
  tail call void %17(ptr noundef %up, i32 noundef 8, i32 noundef %or) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @early_serial8250_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_8250_bcm2835aux__234_190_bcm2835aux_serial_driver_init6, !1, !"__initcall__kmod_8250_bcm2835aux__234_190_bcm2835aux_serial_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_bcm2835aux.c", i32 190, i32 1}
!2 = !{ptr @__exitcall_bcm2835aux_serial_driver_exit, !1, !"__exitcall_bcm2835aux_serial_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID___earlycon_bcm2835aux235, !4, !"__UNIQUE_ID___earlycon_bcm2835aux235", i1 false, i1 false}
!4 = !{!"../drivers/tty/serial/8250/8250_bcm2835aux.c", i32 206, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/tty/serial/8250/8250_bcm2835aux.c", i32 210, i32 1}
!7 = !{ptr @__UNIQUE_ID_author237, !8, !"__UNIQUE_ID_author237", i1 false, i1 false}
!8 = !{!"../drivers/tty/serial/8250/8250_bcm2835aux.c", i32 211, i32 1}
!9 = !{ptr @__UNIQUE_ID_file238, !10, !"__UNIQUE_ID_file238", i1 false, i1 false}
!10 = !{!"../drivers/tty/serial/8250/8250_bcm2835aux.c", i32 212, i32 1}
!11 = !{ptr @__UNIQUE_ID_license239, !10, !"__UNIQUE_ID_license239", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/8250/8250_bcm2835aux.c", i32 184, i32 11}
!14 = !{ptr @bcm2835aux_serial_driver, !15, !"bcm2835aux_serial_driver", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/8250/8250_bcm2835aux.c", i32 182, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/8250/8250_bcm2835aux.c", i32 114, i32 56}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/8250/8250_bcm2835aux.c", i32 125, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @bcm2835aux_serial_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @bcm2835aux_serial_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/tty/serial/8250/8250_bcm2835aux.c", i32 132, i32 43}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/tty/serial/8250/8250_bcm2835aux.c", i32 139, i32 3}
!30 = !{ptr @bcm2835aux_serial_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @bcm2835aux_serial_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/tty/serial/8250/8250_bcm2835aux.c", i32 154, i32 34}
!34 = !{ptr @bcm2835aux_serial_match, !35, !"bcm2835aux_serial_match", i1 false, i1 false}
!35 = !{!"../drivers/tty/serial/8250/8250_bcm2835aux.c", i32 176, i32 34}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
