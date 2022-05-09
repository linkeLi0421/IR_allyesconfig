; ModuleID = '/llk/IR_all_yes/drivers/input/tablet/kbtab.c_pt.bc'
source_filename = "../drivers/input/tablet/kbtab.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.kbtab = type { ptr, i32, ptr, ptr, ptr, [32 x i8] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__UNIQUE_ID_author232 = internal constant [46 x i8] c"kbtab.author=Josh Myer <josh@joshisanerd.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [54 x i8] c"kbtab.description=USB KB Gear JamStudio Tablet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [38 x i8] c"kbtab.file=drivers/input/tablet/kbtab\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [18 x i8] c"kbtab.license=GPL\00", section ".modinfo", align 1
@__param_str_kb_pressure_click = internal constant [24 x i8] c"kbtab.kb_pressure_click\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@kb_pressure_click = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_kb_pressure_click = internal constant %struct.kernel_param { ptr @__param_str_kb_pressure_click, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @kb_pressure_click } }, section "__param", align 4
@__UNIQUE_ID_kb_pressure_clicktype236 = internal constant [37 x i8] c"kbtab.parmtype=kb_pressure_click:int\00", section ".modinfo", align 1
@__UNIQUE_ID_kb_pressure_click237 = internal constant [59 x i8] c"kbtab.parm=kb_pressure_click:pressure threshold for clicks\00", section ".modinfo", align 1
@__initcall__kmod_kbtab__240_204_kbtab_driver_init6 = internal global ptr @kbtab_driver_init, section ".initcall6.init", align 4
@kbtab_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @kbtab_probe, ptr @kbtab_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kbtab_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_kbtab_driver_exit = internal global ptr @kbtab_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"kbtab\00", [26 x i8] zeroinitializer }, align 32
@kbtab_ids = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2126, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"KB Gear Tablet\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@kbtab_irq.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kbtab_irq\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/tablet/kbtab.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@kbtab_irq.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.7, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@kbtab_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.5, i32 80, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - usb_submit_urb failed with result %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kbtab_irq._entry_ptr = internal global ptr @kbtab_irq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"kb_pressure_click\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 18, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant [13 x i8] c"kbtab_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 197, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 204, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"kbtab_ids\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 83, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 141, i32 23 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 143, i32 20 }
@___asan_gen_.30 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 912, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 47, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 52, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [32 x i8] c"../drivers/input/tablet/kbtab.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 78, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_kb_pressure_click237, ptr @__UNIQUE_ID_kb_pressure_clicktype236, ptr @__UNIQUE_ID_license235, ptr @__exitcall_kbtab_driver_exit, ptr @__initcall__kmod_kbtab__240_204_kbtab_driver_init6, ptr @__param_kb_pressure_click, ptr @kbtab_driver_exit, ptr @kbtab_irq._entry, ptr @kbtab_irq._entry_ptr, ptr @kb_pressure_click, ptr @kbtab_driver, ptr @.str, ptr @kbtab_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kb_pressure_click to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbtab_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbtab_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbtab_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kbtab_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @kbtab_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kbtab_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @kbtab_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kbtab_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %endpoint3 = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %endpoint3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %endpoint3, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bmAttributes.i.i, align 1
  %10 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp.i.not.i = icmp eq i8 %10, 3
  br i1 %cmp.i.not.i, label %usb_endpoint_is_int_in.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

usb_endpoint_is_int_in.exit:                      ; preds = %if.end
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool.not = icmp sgt i8 %12, -1
  br i1 %tobool.not, label %usb_endpoint_is_int_in.exit.cleanup_crit_edge, label %if.end7

usb_endpoint_is_int_in.exit.cleanup_crit_edge:    ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %usb_endpoint_is_int_in.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 52) #11
  %call9 = tail call ptr @input_allocate_device() #8
  %tobool10.not = icmp eq ptr %call7.i.i, null
  %tobool11.not = icmp eq ptr %call9, null
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %if.end7.fail1_crit_edge, label %if.end13

if.end7.fail1_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail1

if.end13:                                         ; preds = %if.end7
  %data_dma = getelementptr inbounds %struct.kbtab, ptr %call7.i.i, i32 0, i32 1
  %call14 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i, i32 noundef 8, i32 noundef 3264, ptr noundef %data_dma) #8
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call14, ptr %call7.i.i, align 8
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %if.end13.fail1_crit_edge, label %if.end18

if.end13.fail1_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail1

if.end18:                                         ; preds = %if.end13
  %call19 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %irq = getelementptr inbounds %struct.kbtab, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call19, ptr %irq, align 8
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.end18.fail2_crit_edge, label %if.end23

if.end18.fail2_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail2

if.end23:                                         ; preds = %if.end18
  %intf24 = getelementptr inbounds %struct.kbtab, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %intf24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %intf, ptr %intf24, align 4
  %dev25 = getelementptr inbounds %struct.kbtab, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %dev25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9, ptr %dev25, align 8
  %phys = getelementptr inbounds %struct.kbtab, ptr %call7.i.i, i32 0, i32 5
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef %21, ptr noundef %devpath.i) #8
  %call29 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.1, i32 noundef 32) #8
  %22 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.2, ptr %call9, align 8
  %phys32 = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 1
  %23 = ptrtoint ptr %phys32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %phys, ptr %phys32, align 4
  %id33 = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 3
  %24 = ptrtoint ptr %id33 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 3, ptr %id33, align 2
  %idVendor.i = getelementptr i8, ptr %1, i32 936
  %25 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %idVendor.i, align 8
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #8
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %vendor.i, align 2
  %idProduct.i = getelementptr i8, ptr %1, i32 938
  %29 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %idProduct.i, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #8
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %product.i, align 2
  %bcdDevice.i = getelementptr i8, ptr %1, i32 940
  %33 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %bcdDevice.i, align 4
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #8
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 3, i32 3
  %36 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %version.i, align 2
  %dev34 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 40, i32 1
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev34, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 40, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 31
  %39 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @kbtab_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 32
  %40 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @kbtab_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 5
  %41 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %evbit, align 8
  %or = or i32 %42, 10
  store i32 %or, ptr %evbit, align 8
  %arrayidx37 = getelementptr %struct.input_dev, ptr %call9, i32 0, i32 6, i32 8
  %43 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx37, align 4
  %or38 = or i32 %44, 196608
  store i32 %or38, ptr %arrayidx37, align 4
  %arrayidx40 = getelementptr %struct.input_dev, ptr %call9, i32 0, i32 6, i32 10
  %45 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx40, align 4
  %or41 = or i32 %46, 1025
  store i32 %or41, ptr %arrayidx40, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call9, i32 noundef 0, i32 noundef 0, i32 noundef 8192, i32 noundef 4, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call9, i32 noundef 1, i32 noundef 0, i32 noundef 5968, i32 noundef 4, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call9, i32 noundef 24, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #8
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %irq, align 8
  %49 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bEndpointAddress.i.i, align 1
  %conv43 = zext i8 %50 to i32
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %52, 8
  %shl1.i = shl nuw nsw i32 %conv43, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or46 = or i32 %or.i, 1073741952
  %53 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call7.i.i, align 8
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 5
  %55 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bInterval, align 1
  %conv48 = zext i8 %56 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 8
  %57 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 10
  %58 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or46, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 14
  %59 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %54, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 19
  %60 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 8, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 28
  %61 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @kbtab_irq, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 27
  %62 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %1, i32 -100
  %63 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %64)
  %cmp.i = icmp eq i32 %64, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %64)
  %cmp6.i = icmp ugt i32 %64, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end23.usb_fill_int_urb.exit_crit_edge

if.end23.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %65 = tail call i32 @llvm.smax.i32(i32 %conv48, i32 1) #8
  %66 = tail call i32 @llvm.umin.i32(i32 %65, i32 16) #8
  %sub.i = add nsw i32 %66, -1
  %shl.i116 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end23.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i116, %if.then.i ], [ %conv48, %if.end23.usb_fill_int_urb.exit_crit_edge ]
  %67 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 25
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %interval.sink.i, ptr %67, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 23
  %69 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %start_frame.i, align 4
  %70 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %data_dma, align 4
  %72 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %irq, align 8
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 15
  %74 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %71, ptr %transfer_dma, align 4
  %75 = load ptr, ptr %irq, align 8
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %75, i32 0, i32 13
  %76 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %transfer_flags, align 4
  %or52 = or i32 %77, 4
  store i32 %or52, ptr %transfer_flags, align 4
  %78 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev25, align 8
  %call54 = tail call i32 @input_register_device(ptr noundef %79) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %fail3

if.end57:                                         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i117 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %80 = ptrtoint ptr %driver_data.i.i117 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call7.i.i, ptr %driver_data.i.i117, align 4
  br label %cleanup

fail3:                                            ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %irq, align 8
  tail call void @usb_free_urb(ptr noundef %82) #8
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end18.fail2_crit_edge
  %error.0 = phi i32 [ %call54, %fail3 ], [ -12, %if.end18.fail2_crit_edge ]
  %83 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %call7.i.i, align 8
  %85 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef 8, ptr noundef %84, i32 noundef %86) #8
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end13.fail1_crit_edge, %if.end7.fail1_crit_edge
  %error.1 = phi i32 [ %error.0, %fail2 ], [ -12, %if.end13.fail1_crit_edge ], [ -12, %if.end7.fail1_crit_edge ]
  tail call void @input_free_device(ptr noundef %call9) #8
  tail call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end57, %usb_endpoint_is_int_in.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %fail1 ], [ 0, %if.end57 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %usb_endpoint_is_int_in.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kbtab_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  store ptr null, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.kbtab, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void @input_unregister_device(ptr noundef %5) #8
  %irq = getelementptr inbounds %struct.kbtab, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq, align 4
  tail call void @usb_free_urb(ptr noundef %7) #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %data_dma = getelementptr inbounds %struct.kbtab, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef 8, ptr noundef %9, i32 noundef %11) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kbtab_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %intf = getelementptr inbounds %struct.kbtab, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -128
  %irq = getelementptr inbounds %struct.kbtab, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq, align 4
  %dev2 = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %dev2, align 4
  %9 = load ptr, ptr %irq, align 4
  %call4 = tail call i32 @usb_submit_urb(ptr noundef %9, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  %. = select i1 %tobool.not, i32 0, i32 -5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kbtab_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.kbtab, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kbtab_irq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %dev2 = getelementptr inbounds %struct.kbtab, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body7 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge77
    i32 -108, label %entry.do.body_crit_edge78
  ]

entry.do.body_crit_edge78:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.do.body_crit_edge77:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge77, %entry.do.body_crit_edge78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kbtab_irq.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kbtab_irq, %if.then)) #8
          to label %cleanup [label %if.then], !srcloc !52

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.kbtab, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf, align 4
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kbtab_irq.__UNIQUE_ID_ddebug238, ptr noundef %dev5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %10) #8
  br label %cleanup

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kbtab_irq.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kbtab_irq, %if.then19)) #8
          to label %exit [label %if.then19], !srcloc !52

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %intf20 = getelementptr inbounds %struct.kbtab, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %intf20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf20, align 4
  %dev21 = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kbtab_irq.__UNIQUE_ID_ddebug239, ptr noundef %dev21, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, i32 noundef %14) #8
  br label %exit

sw.epilog:                                        ; preds = %entry
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 320, i32 noundef 1) #8
  %arrayidx = getelementptr i8, ptr %16, i32 1
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %arrayidx, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #8
  %conv = zext i16 %19 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 0, i32 noundef %conv) #8
  %arrayidx27 = getelementptr i8, ptr %16, i32 3
  %20 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %arrayidx27, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #8
  %conv29 = zext i16 %22 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 1, i32 noundef %conv29) #8
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %16, align 1
  %25 = lshr i8 %24, 1
  %.lobit = and i8 %25, 1
  %26 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 273, i32 noundef %26) #8
  %arrayidx32 = getelementptr i8, ptr %16, i32 5
  %27 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %28 to i32
  %29 = load i32, ptr @kb_pressure_click, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp = icmp eq i32 %29, -1
  br i1 %cmp, label %if.then35, label %if.else

if.then35:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 24, i32 noundef %conv33) #8
  br label %if.end38

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv33)
  %cmp36 = icmp slt i32 %29, %conv33
  %lnot.ext.i74 = zext i1 %cmp36 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 272, i32 noundef %lnot.ext.i74) #8
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then35
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %exit

exit:                                             ; preds = %if.end38, %if.then19, %do.body7
  %call39 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %exit.cleanup_crit_edge, label %do.end44

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end44:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  %intf45 = getelementptr inbounds %struct.kbtab, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %intf45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %intf45, align 4
  %dev46 = getelementptr inbounds %struct.usb_interface, ptr %31, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, i32 noundef %call39) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %exit.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !16, !18, !19, !21, !23, !25, !27, !29, !30, !31, !32, !34, !35, !37, !38, !39, !40, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__UNIQUE_ID_author232, !1, !"__UNIQUE_ID_author232", i1 false, i1 false}
!1 = !{!"../drivers/input/tablet/kbtab.c", i32 12, i32 1}
!2 = !{ptr @__UNIQUE_ID_description233, !3, !"__UNIQUE_ID_description233", i1 false, i1 false}
!3 = !{!"../drivers/input/tablet/kbtab.c", i32 13, i32 1}
!4 = !{ptr @__UNIQUE_ID_file234, !5, !"__UNIQUE_ID_file234", i1 false, i1 false}
!5 = !{!"../drivers/input/tablet/kbtab.c", i32 14, i32 1}
!6 = !{ptr @__UNIQUE_ID_license235, !5, !"__UNIQUE_ID_license235", i1 false, i1 false}
!7 = !{ptr @__param_kb_pressure_click, !8, !"__param_kb_pressure_click", i1 false, i1 false}
!8 = !{!"../drivers/input/tablet/kbtab.c", i32 19, i32 1}
!9 = !{ptr @__UNIQUE_ID_kb_pressure_clicktype236, !8, !"__UNIQUE_ID_kb_pressure_clicktype236", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_kb_pressure_click237, !11, !"__UNIQUE_ID_kb_pressure_click237", i1 false, i1 false}
!11 = !{!"../drivers/input/tablet/kbtab.c", i32 20, i32 1}
!12 = !{ptr @__initcall__kmod_kbtab__240_204_kbtab_driver_init6, !13, !"__initcall__kmod_kbtab__240_204_kbtab_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/input/tablet/kbtab.c", i32 204, i32 1}
!14 = !{ptr @__exitcall_kbtab_driver_exit, !13, !"__exitcall_kbtab_driver_exit", i1 false, i1 false}
!15 = !{ptr @__param_str_kb_pressure_click, !8, !"__param_str_kb_pressure_click", i1 false, i1 false}
!16 = !{ptr @kb_pressure_click, !17, !"kb_pressure_click", i1 false, i1 false}
!17 = !{!"../drivers/input/tablet/kbtab.c", i32 18, i32 12}
!18 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @kbtab_driver, !20, !"kbtab_driver", i1 false, i1 false}
!20 = !{!"../drivers/input/tablet/kbtab.c", i32 197, i32 26}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/tablet/kbtab.c", i32 141, i32 23}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/tablet/kbtab.c", i32 143, i32 20}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/usb.h", i32 912, i32 31}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/tablet/kbtab.c", i32 47, i32 3}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @kbtab_irq.__UNIQUE_ID_ddebug238, !28, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/tablet/kbtab.c", i32 52, i32 3}
!34 = !{ptr @kbtab_irq.__UNIQUE_ID_ddebug239, !33, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/tablet/kbtab.c", i32 78, i32 3}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @kbtab_irq._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @kbtab_irq._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @kbtab_ids, !42, !"kbtab_ids", i1 false, i1 false}
!42 = !{!"../drivers/input/tablet/kbtab.c", i32 83, i32 35}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2148694705, i64 2148694710, i64 2148694723, i64 2148694767, i64 2148694801, i64 2148694822}
