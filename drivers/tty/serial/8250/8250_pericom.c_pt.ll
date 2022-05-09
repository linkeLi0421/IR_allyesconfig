; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_pericom.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_pericom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.73, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.73 = type { ptr }
%struct.pericom8250 = type { ptr, i32, [0 x i32] }

@__initcall__kmod_8250_pericom__241_211_pericom8250_pci_driver_init6 = internal global ptr @pericom8250_pci_driver_init, section ".initcall6.init", align 4
@pericom8250_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pericom8250_pci_ids, ptr @pericom8250_probe, ptr @pericom8250_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pericom8250_pci_driver_exit = internal global ptr @pericom8250_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file242 = internal constant [55 x i8] c"8250_pericom.file=drivers/tty/serial/8250/8250_pericom\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [28 x i8] c"8250_pericom.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [45 x i8] c"8250_pericom.description=Pericom UART driver\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"8250_pericom\00", [19 x i8] zeroinitializer }, align 32
@pericom8250_pci_ids = internal constant { [38 x %struct.pci_device_id], [288 x i8] } { [38 x %struct.pci_device_id] [%struct.pci_device_id { i32 4824, i32 31057, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4824, i32 31058, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4824, i32 31060, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4824, i32 31064, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4177, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4179, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4186, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4187, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4188, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4190, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4202, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4203, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4241, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4243, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4248, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4249, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4251, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4265, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4305, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4307, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4313, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4314, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4316, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4329, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4360, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4368, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4369, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4376, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4377, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4434, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4442, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4496, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4497, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4504, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4505, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4560, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4568, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [288 x i8] zeroinitializer }, align 32
@pericom8250_probe.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pericom8250_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/tty/serial/8250/8250_pericom.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Setup PCI port: port %lx, irq %d, type %d\0A\00", [53 x i8] zeroinitializer }, align 32
@pericom8250_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 135, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Couldn't register serial port %lx, irq %d, type %d, error %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pericom8250_probe._entry_ptr = internal global ptr @pericom8250_probe._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4824, i64 18767]
@___asan_gen_.7 = private unnamed_addr constant [23 x i8] c"pericom8250_pci_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 205, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 211, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"pericom8250_pci_ids\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 154, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 127, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [42 x i8] c"../drivers/tty/serial/8250/8250_pericom.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 132, i32 4 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_pericom8250_pci_driver_exit, ptr @__initcall__kmod_8250_pericom__241_211_pericom8250_pci_driver_init6, ptr @pericom8250_pci_driver_exit, ptr @pericom8250_probe._entry, ptr @pericom8250_probe._entry_ptr, ptr @pericom8250_pci_driver, ptr @.str, ptr @pericom8250_pci_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pericom8250_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pericom8250_pci_ids to i32), i32 1216, i32 1504, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pericom8250_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pericom8250_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pericom8250_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pericom8250_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @pericom8250_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pericom8250_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %uart = alloca %struct.uart_8250_port, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %uart) #6
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup95_crit_edge

entry.cleanup95_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup95

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  %sub = add i32 %1, 1
  %add = sub i32 %sub, %3
  %phi.bo = lshr i32 %add, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor, align 8
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %cond.end.if.end22_crit_edge [
    i16 4824, label %if.then8
    i16 18767, label %if.then14
  ]

cond.end.if.end22_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then8:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 2
  %9 = and i16 %8, 15
  %and = zext i16 %9 to i32
  br label %if.end22

if.then14:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %device15 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %10 = ptrtoint ptr %device15 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device15, align 2
  %12 = lshr i16 %11, 3
  %13 = and i16 %12, 7
  %14 = zext i16 %13 to i32
  %sub19 = add nsw i32 %14, -1
  %shl = shl nuw nsw i32 1, %sub19
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.then8, %cond.end.if.end22_crit_edge
  %nr.0 = phi i32 [ %and, %if.then8 ], [ %shl, %if.then14 ], [ 1, %cond.end.if.end22_crit_edge ]
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr.0, i32 4) #6
  %16 = extractvalue { i32, i1 } %15, 1
  %17 = extractvalue { i32, i1 } %15, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %17, i32 8) #6
  %retval.0.i141 = select i1 %16, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i141, i32 noundef 3520) #6
  %tobool25.not = icmp eq ptr %call.i, null
  br i1 %tobool25.not, label %if.end22.cleanup95_crit_edge, label %if.end27

if.end22.cleanup95_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup95

if.end27:                                         ; preds = %if.end22
  %call28 = tail call ptr @pcim_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #6
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call28, ptr %call.i, align 4
  %tobool30.not = icmp eq ptr %call28, null
  br i1 %tobool30.not, label %if.end27.cleanup95_crit_edge, label %if.end32

if.end27.cleanup95_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup95

if.end32:                                         ; preds = %if.end27
  %19 = call ptr @memset(ptr %uart, i32 0, i32 584)
  %dev34 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 45
  %20 = ptrtoint ptr %dev34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %dev34, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %irq36 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 20
  %23 = ptrtoint ptr %irq36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %irq36, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 59
  %24 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %private_data, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 26
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 22
  %25 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 14745600, ptr %uartclk, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 33
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 285212736, ptr %flags, align 4
  %set_divisor = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 10
  %27 = ptrtoint ptr %set_divisor to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @pericom_do_set_divisor, ptr %set_divisor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.0)
  %cmp42147 = icmp ne i32 %nr.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp44148 = icmp ne i32 %cond, 0
  %or.cond149 = select i1 %cmp42147, i1 %cmp44148, i1 false
  br i1 %or.cond149, label %for.body.lr.ph, label %if.end32.for.end_crit_edge

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %nr.0)
  %cmp48 = icmp eq i32 %nr.0, 4
  %iobase = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0150 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0150)
  %cmp46 = icmp eq i32 %i.0150, 3
  %or.cond140 = and i1 %cmp48, %cmp46
  %mul = shl i32 %i.0150, 3
  %cond53 = select i1 %or.cond140, i32 56, i32 %mul
  %28 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %resource, align 8
  %add57 = add i32 %29, %cond53
  %30 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add57, ptr %iobase, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pericom8250_probe.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pericom8250_probe, %if.then63)) #6
          to label %do.end [label %if.then63], !srcloc !33

if.then63:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase, align 4
  %33 = ptrtoint ptr %irq36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq36, align 4
  %35 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %iotype, align 2
  %conv71 = zext i8 %36 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pericom8250_probe.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %32, i32 noundef %34, i32 noundef %conv71) #6
  br label %do.end

do.end:                                           ; preds = %if.then63, %for.body
  %call73 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %uart) #6
  %arrayidx74 = getelementptr %struct.pericom8250, ptr %call.i, i32 0, i32 2, i32 %i.0150
  %37 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call73, ptr %arrayidx74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp77 = icmp slt i32 %call73, 0
  br i1 %cmp77, label %cleanup, label %for.inc

cleanup:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iobase, align 4
  %40 = ptrtoint ptr %irq36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq36, align 4
  %42 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %iotype, align 2
  %conv90 = zext i8 %43 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %39, i32 noundef %41, i32 noundef %conv90, i32 noundef %call73) #9
  br label %for.end

for.inc:                                          ; preds = %do.end
  %inc = add nuw nsw i32 %i.0150, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %nr.0)
  %cmp42 = icmp ult i32 %inc, %nr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %cond)
  %cmp44 = icmp ult i32 %inc, %cond
  %or.cond = select i1 %cmp42, i1 %cmp44, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %if.end32.for.end_crit_edge
  %i.0146 = phi i32 [ %i.0150, %cleanup ], [ 0, %if.end32.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %nr94 = getelementptr inbounds %struct.pericom8250, ptr %call.i, i32 0, i32 1
  %44 = ptrtoint ptr %nr94 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %i.0146, ptr %nr94, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup95

cleanup95:                                        ; preds = %for.end, %if.end27.cleanup95_crit_edge, %if.end22.cleanup95_crit_edge, %entry.cleanup95_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry.cleanup95_crit_edge ], [ -12, %if.end22.cleanup95_crit_edge ], [ -12, %if.end27.cleanup95_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %uart) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pericom8250_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nr = getelementptr inbounds %struct.pericom8250, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4.not = icmp eq i32 %3, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pericom8250, ptr %1, i32 0, i32 2, i32 %i.05
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call void @serial8250_unregister_port(i32 noundef %5) #6
  %inc = add nuw i32 %i.05, 1
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pericom_do_set_divisor(ptr noundef %port, i32 noundef %baud, i32 noundef %quot, i32 noundef %quot_frac) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %0 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uartclk, align 4
  %div4 = udiv i32 %baud, 50
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %scr.064 = phi i32 [ 16, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  %div = udiv i32 %1, %scr.064
  %add = add nuw nsw i32 %div, %div4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %baud)
  %cmp5 = icmp ult i32 %add, %baud
  br i1 %cmp5, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %div1 = udiv i32 %div, %baud
  %2 = tail call i32 @llvm.umax.i32(i32 %div1, i32 1)
  %div3 = udiv i32 %div, %2
  %sub = sub i32 %div3, %baud
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %div4)
  %cmp7 = icmp ugt i32 %sub, %div4
  %inc = zext i1 %cmp7 to i32
  %spec.select = add nuw nsw i32 %2, %inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %spec.select)
  %cmp10 = icmp ugt i32 %spec.select, 65535
  br i1 %cmp10, label %if.end.for.inc_crit_edge, label %if.end12

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end12:                                         ; preds = %if.end
  %div13 = udiv i32 %div, %spec.select
  %sub14 = sub i32 %div13, %baud
  %3 = tail call i32 @llvm.abs.i32(i32 %sub14, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div4)
  %cmp23 = icmp ult i32 %3, %div4
  br i1 %cmp23, label %cleanup, label %if.end12.for.inc_crit_edge

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %4 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %5(ptr noundef %port, i32 noundef 3) #6
  %or = or i32 %call.i, 128
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %6 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial_out.i, align 4
  tail call void %7(ptr noundef %port, i32 noundef 3, i32 noundef %or) #6
  %dl_write.i = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 22
  %8 = ptrtoint ptr %dl_write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dl_write.i, align 4
  tail call void %9(ptr noundef %port, i32 noundef %spec.select) #6
  %sub26 = sub nsw i32 16, %scr.064
  %10 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %serial_out.i, align 4
  tail call void %11(ptr noundef %port, i32 noundef 2, i32 noundef %sub26) #6
  %12 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serial_out.i, align 4
  tail call void %13(ptr noundef %port, i32 noundef 3, i32 noundef %call.i) #6
  br label %cleanup30

for.inc:                                          ; preds = %if.end12.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dec = add nsw i32 %scr.064, -1
  %cmp = icmp ugt i32 %scr.064, 5
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup30_crit_edge

for.inc.cleanup30_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup30:                                        ; preds = %for.inc.cleanup30_crit_edge, %cleanup
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !16, !17, !18, !20, !21, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_8250_pericom__241_211_pericom8250_pci_driver_init6, !1, !"__initcall__kmod_8250_pericom__241_211_pericom8250_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_pericom.c", i32 211, i32 1}
!2 = !{ptr @__exitcall_pericom8250_pci_driver_exit, !1, !"__exitcall_pericom8250_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file242, !4, !"__UNIQUE_ID_file242", i1 false, i1 false}
!4 = !{!"../drivers/tty/serial/8250/8250_pericom.c", i32 213, i32 1}
!5 = !{ptr @__UNIQUE_ID_license243, !4, !"__UNIQUE_ID_license243", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description244, !7, !"__UNIQUE_ID_description244", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/8250/8250_pericom.c", i32 214, i32 1}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @pericom8250_pci_driver, !10, !"pericom8250_pci_driver", i1 false, i1 false}
!10 = !{!"../drivers/tty/serial/8250/8250_pericom.c", i32 205, i32 26}
!11 = !{ptr @pericom8250_pci_ids, !12, !"pericom8250_pci_ids", i1 false, i1 false}
!12 = !{!"../drivers/tty/serial/8250/8250_pericom.c", i32 154, i32 35}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/8250/8250_pericom.c", i32 127, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @pericom8250_probe.__UNIQUE_ID_ddebug240, !14, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/8250/8250_pericom.c", i32 132, i32 4}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pericom8250_probe._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @pericom8250_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2148959201, i64 2148959206, i64 2148959219, i64 2148959263, i64 2148959297, i64 2148959318}
