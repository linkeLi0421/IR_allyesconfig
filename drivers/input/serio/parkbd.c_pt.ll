; ModuleID = '/llk/IR_all_yes/drivers/input/serio/parkbd.c_pt.bc'
source_filename = "../drivers/input/serio/parkbd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.parport_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, i8, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.pardev_cb = type { ptr, ptr, ptr, ptr, i32 }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author227 = internal constant [46 x i8] c"parkbd.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [65 x i8] c"parkbd.description=Parallel port to Keyboard port adapter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [39 x i8] c"parkbd.file=drivers/input/serio/parkbd\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [19 x i8] c"parkbd.license=GPL\00", section ".modinfo", align 1
@__param_str_port = internal constant [12 x i8] c"parkbd.port\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@parkbd_pp_no = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_port = internal constant %struct.kernel_param { ptr @__param_str_port, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @parkbd_pp_no } }, section "__param", align 4
@__UNIQUE_ID_porttype231 = internal constant [25 x i8] c"parkbd.parmtype=port:int\00", section ".modinfo", align 1
@__UNIQUE_ID_port232 = internal constant [74 x i8] c"parkbd.parm=port:Parallel port the adapter is connected to (default is 0)\00", section ".modinfo", align 1
@__param_str_mode = internal constant [12 x i8] c"parkbd.mode\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@parkbd_mode = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_mode = internal constant %struct.kernel_param { ptr @__param_str_mode, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @parkbd_mode } }, section "__param", align 4
@__UNIQUE_ID_modetype233 = internal constant [26 x i8] c"parkbd.parmtype=mode:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_mode234 = internal constant [60 x i8] c"parkbd.parm=mode:Mode of operation: XT = 0/AT = 1 (default)\00", section ".modinfo", align 1
@__initcall__kmod_parkbd__236_223_parkbd_parport_driver_init6 = internal global ptr @parkbd_parport_driver_init, section ".initcall6.init", align 4
@parkbd_parport_driver = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str, ptr null, ptr @parkbd_detach, ptr @parkbd_attach, ptr null, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_parkbd_parport_driver_exit = internal global ptr @parkbd_parport_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"parkbd\00", [25 x i8] zeroinitializer }, align 32
@parkbd_port = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@parkbd_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@parkbd_attach.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parkbd_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/serio/parkbd.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Not using parport%d.\0A\00", [42 x i8] zeroinitializer }, align 32
@parkbd_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016serio: PARKBD %s adapter on %s\0A\00", [62 x i8] zeroinitializer }, align 32
@parkbd_attach._entry_ptr = internal global ptr @parkbd_attach._entry, section ".printk_index", align 4
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AT\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"XT\00", [29 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@parkbd_writing = internal global { i1, [31 x i8] } zeroinitializer, align 32
@parkbd_counter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@parkbd_last = internal global { i32, [28 x i8] } zeroinitializer, align 32
@parkbd_buffer = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PARKBD AT/XT keyboard adapter\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/serio0\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 11]
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"parkbd_pp_no\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 53, i32 21 }
@___asan_gen_.12 = private unnamed_addr constant [12 x i8] c"parkbd_mode\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 57, i32 21 }
@___asan_gen_.15 = private unnamed_addr constant [22 x i8] c"parkbd_parport_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 217, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 223, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"parkbd_port\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 71, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant [11 x i8] c"parkbd_dev\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 70, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 182, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 200, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"parkbd_writing\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"parkbd_counter\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 65, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant [12 x i8] c"parkbd_last\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 66, i32 22 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"parkbd_buffer\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 64, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 172, i32 24 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [32 x i8] c"../drivers/input/serio/parkbd.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 173, i32 46 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__UNIQUE_ID_mode234, ptr @__UNIQUE_ID_modetype233, ptr @__UNIQUE_ID_port232, ptr @__UNIQUE_ID_porttype231, ptr @__exitcall_parkbd_parport_driver_exit, ptr @__initcall__kmod_parkbd__236_223_parkbd_parport_driver_init6, ptr @__param_mode, ptr @__param_port, ptr @parkbd_attach._entry, ptr @parkbd_attach._entry_ptr, ptr @parkbd_parport_driver_exit, ptr @parkbd_pp_no, ptr @parkbd_mode, ptr @parkbd_parport_driver, ptr @.str, ptr @parkbd_port, ptr @parkbd_dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @parkbd_writing, ptr @parkbd_counter, ptr @parkbd_last, ptr @parkbd_buffer, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parkbd_pp_no to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parkbd_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parkbd_parport_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parkbd_port to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parkbd_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parkbd_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parkbd_writing to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parkbd_counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parkbd_last to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parkbd_buffer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @parkbd_parport_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__parport_register_driver(ptr noundef nonnull @parkbd_parport_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @parkbd_parport_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @parport_unregister_driver(ptr noundef nonnull @parkbd_parport_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parkbd_detach(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @parkbd_port, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %number = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 26
  %1 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %number, align 4
  %3 = load i32, ptr @parkbd_pp_no, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp.not = icmp eq i32 %2, %3
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load ptr, ptr @parkbd_dev, align 4
  tail call void @parport_release(ptr noundef %4) #8
  %5 = load ptr, ptr @parkbd_port, align 4
  tail call void @serio_unregister_port(ptr noundef %5) #8
  %6 = load ptr, ptr @parkbd_dev, align 4
  tail call void @parport_unregister_device(ptr noundef %6) #8
  store ptr null, ptr @parkbd_port, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parkbd_attach(ptr noundef %pp) #2 align 64 {
entry:
  %parkbd_parport_cb.i = alloca %struct.pardev_cb, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 26
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 4
  %2 = load i32, ptr @parkbd_pp_no, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp.not = icmp eq i32 %1, %2
  br i1 %cmp.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parkbd_attach.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parkbd_attach, %if.then3)) #8
          to label %return [label %if.then3], !srcloc !67

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parkbd_attach.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.3, i32 noundef %4) #8
  br label %return

if.end5:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %parkbd_parport_cb.i) #8
  %5 = getelementptr inbounds %struct.pardev_cb, ptr %parkbd_parport_cb.i, i32 0, i32 3
  %6 = getelementptr inbounds %struct.pardev_cb, ptr %parkbd_parport_cb.i, i32 0, i32 4
  %7 = call ptr @memset(ptr %parkbd_parport_cb.i, i32 0, i32 12)
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @parkbd_interrupt, ptr %5, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %6, align 4
  %call.i = call ptr @parport_register_dev_model(ptr noundef %pp, ptr noundef nonnull @.str, ptr noundef nonnull %parkbd_parport_cb.i, i32 noundef 0) #8
  store ptr %call.i, ptr @parkbd_dev, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end5.parkbd_getport.exit.thread_crit_edge, label %if.end.i

if.end5.parkbd_getport.exit.thread_crit_edge:     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %parkbd_getport.exit.thread

if.end.i:                                         ; preds = %if.end5
  %call1.i = call i32 @parport_claim(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end9, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load ptr, ptr @parkbd_dev, align 4
  call void @parport_unregister_device(ptr noundef %10) #8
  br label %parkbd_getport.exit.thread

parkbd_getport.exit.thread:                       ; preds = %if.then3.i, %if.end5.parkbd_getport.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %parkbd_parport_cb.i) #8
  br label %return

if.end9:                                          ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %parkbd_parport_cb.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 1336) #11
  %tobool.not.i22 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i22, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  store ptr null, ptr @parkbd_port, align 4
  %13 = load ptr, ptr @parkbd_dev, align 4
  call void @parport_release(ptr noundef %13) #8
  %14 = load ptr, ptr @parkbd_dev, align 4
  call void @parport_unregister_device(ptr noundef %14) #8
  br label %return

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load i32, ptr @parkbd_mode, align 4
  %conv.i = trunc i32 %15 to i8
  %id.i = getelementptr inbounds %struct.serio, ptr %call7.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i, ptr %id.i, align 1
  %write.i = getelementptr inbounds %struct.serio, ptr %call7.i.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @parkbd_write, ptr %write.i, align 8
  %name.i = getelementptr inbounds %struct.serio, ptr %call7.i.i.i, i32 0, i32 1
  %call1.i23 = call i32 @strlcpy(ptr noundef %name.i, ptr noundef nonnull @.str.7, i32 noundef 32) #8
  %phys.i = getelementptr inbounds %struct.serio, ptr %call7.i.i.i, i32 0, i32 2
  %18 = load ptr, ptr @parkbd_dev, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port.i, align 4
  %name3.i = getelementptr inbounds %struct.parport, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name3.i, align 4
  %call4.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys.i, i32 noundef 32, ptr noundef nonnull @.str.8, ptr noundef %22) #8
  store ptr %call7.i.i.i, ptr @parkbd_port, align 4
  %23 = load ptr, ptr @parkbd_dev, align 4
  %port.i25 = getelementptr inbounds %struct.pardevice, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %port.i25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port.i25, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %25, i32 0, i32 24
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %write_control.i = getelementptr inbounds %struct.parport_operations, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %write_control.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_control.i, align 4
  call void %29(ptr noundef %25, i8 noundef zeroext 16) #8
  %30 = load ptr, ptr @parkbd_port, align 4
  call void @__serio_register_port(ptr noundef %30, ptr noundef null) #8
  %31 = load i32, ptr @parkbd_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool17.not = icmp eq i32 %31, 0
  %cond = select i1 %tobool17.not, ptr @.str.6, ptr @.str.5
  %32 = load ptr, ptr @parkbd_dev, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %port, align 4
  %name = getelementptr inbounds %struct.parport, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name, align 4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %cond, ptr noundef %36) #12
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %parkbd_getport.exit.thread, %if.then3, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__serio_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parkbd_interrupt(ptr nocapture noundef readnone %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @parkbd_writing, align 4
  %0 = load i32, ptr @parkbd_counter, align 4
  br i1 %.b, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %lor.lhs.false [
    i32 0, label %if.then.if.end_crit_edge
    i32 11, label %if.then.if.then3_crit_edge
  ]

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, ptr @parkbd_last, align 4
  %add = add i32 %2, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp2 = icmp slt i32 %sub, 0
  br i1 %cmp2, label %lor.lhs.false.if.then3_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.then.if.then3_crit_edge
  store i32 0, ptr @parkbd_counter, align 4
  store i32 0, ptr @parkbd_buffer, align 4
  store i1 false, ptr @parkbd_writing, align 4
  %4 = load ptr, ptr @parkbd_dev, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %6, i32 0, i32 24
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %write_control.i = getelementptr inbounds %struct.parport_operations, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %write_control.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_control.i, align 4
  tail call void %10(ptr noundef %6, i8 noundef zeroext 16) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %if.then.if.end_crit_edge
  %11 = load i32, ptr @parkbd_buffer, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @parkbd_counter, align 4
  %shr27 = lshr i32 %11, %0
  %12 = load ptr, ptr @parkbd_dev, align 4
  %port.i28 = getelementptr inbounds %struct.pardevice, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %port.i28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port.i28, align 4
  %ops.i29 = getelementptr inbounds %struct.parport, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %ops.i29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i29, align 4
  %write_control.i30 = getelementptr inbounds %struct.parport_operations, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %write_control.i30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_control.i30, align 4
  %19 = trunc i32 %shr27 to i8
  %20 = and i8 %19, 1
  %conv.i = xor i8 %20, 17
  tail call void %18(ptr noundef %14, i8 noundef zeroext %conv.i) #8
  %21 = load i32, ptr @parkbd_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %21)
  %cmp4 = icmp eq i32 %21, 11
  br i1 %cmp4, label %if.then5, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  store i32 0, ptr @parkbd_counter, align 4
  store i32 0, ptr @parkbd_buffer, align 4
  store i1 false, ptr @parkbd_writing, align 4
  %22 = load ptr, ptr @parkbd_dev, align 4
  %port.i31 = getelementptr inbounds %struct.pardevice, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %port.i31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port.i31, align 4
  %ops.i32 = getelementptr inbounds %struct.parport, ptr %24, i32 0, i32 24
  %25 = ptrtoint ptr %ops.i32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i32, align 4
  %write_control.i33 = getelementptr inbounds %struct.parport_operations, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %write_control.i33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_control.i33, align 4
  tail call void %28(ptr noundef %24, i8 noundef zeroext 16) #8
  br label %if.end26

if.else:                                          ; preds = %entry
  %29 = load i32, ptr @parkbd_mode, align 4
  %add7 = add i32 %29, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %add7)
  %cmp8 = icmp eq i32 %0, %add7
  br i1 %cmp8, label %if.else.if.then13_crit_edge, label %lor.lhs.false9

if.else.if.then13_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

lor.lhs.false9:                                   ; preds = %if.else
  %30 = load i32, ptr @parkbd_last, align 4
  %add10 = add i32 %30, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub11 = sub i32 %add10, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11)
  %cmp12 = icmp slt i32 %sub11, 0
  br i1 %cmp12, label %lor.lhs.false9.if.then13_crit_edge, label %lor.lhs.false9.if.end14_crit_edge

lor.lhs.false9.if.end14_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

lor.lhs.false9.if.then13_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false9.if.then13_crit_edge, %if.else.if.then13_crit_edge
  store i32 0, ptr @parkbd_counter, align 4
  store i32 0, ptr @parkbd_buffer, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %lor.lhs.false9.if.end14_crit_edge
  %32 = load ptr, ptr @parkbd_dev, align 4
  %port.i34 = getelementptr inbounds %struct.pardevice, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %port.i34, align 4
  %ops.i35 = getelementptr inbounds %struct.parport, ptr %34, i32 0, i32 24
  %35 = ptrtoint ptr %ops.i35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i35, align 4
  %read_status.i = getelementptr inbounds %struct.parport_operations, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_status.i, align 4
  %call.i = tail call zeroext i8 %38(ptr noundef %34) #8
  %39 = xor i8 %call.i, -1
  %40 = lshr i8 %39, 7
  %shr1536 = zext i8 %40 to i32
  %41 = load i32, ptr @parkbd_counter, align 4
  %inc16 = add i32 %41, 1
  store i32 %inc16, ptr @parkbd_counter, align 4
  %shl = shl nuw i32 %shr1536, %41
  %42 = load i32, ptr @parkbd_buffer, align 4
  %or17 = or i32 %42, %shl
  store i32 %or17, ptr @parkbd_buffer, align 4
  %43 = load i32, ptr @parkbd_mode, align 4
  %44 = add i32 %43, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %44)
  %cmp19 = icmp eq i32 %41, %44
  br i1 %cmp19, label %if.then20, label %if.end14.if.end26_crit_edge

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %45 = load ptr, ptr @parkbd_port, align 4
  %sub21 = sub i32 2, %43
  %shr22 = ashr i32 %or17, %sub21
  %conv = trunc i32 %shr22 to i8
  %call24 = tail call i32 @serio_interrupt(ptr noundef %45, i8 noundef zeroext %conv, i32 noundef 0) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.end14.if.end26_crit_edge, %if.then5, %if.end.if.end26_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  store i32 %46, ptr @parkbd_last, align 4
  br label %return

return:                                           ; preds = %if.end26, %if.then3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_dev_model(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_claim(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_interrupt(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parkbd_write(ptr nocapture noundef readnone %port, i8 noundef zeroext %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @parkbd_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %c to i32
  %1 = lshr i8 %c, 4
  %xor = xor i8 %1, %c
  %2 = lshr i8 %xor, 2
  %xor6 = xor i8 %2, %xor
  %3 = lshr i8 %xor6, 1
  %xor11 = xor i8 %3, %xor6
  store i32 0, ptr @parkbd_counter, align 4
  store i1 true, ptr @parkbd_writing, align 4
  %4 = and i8 %xor11, 1
  %5 = xor i8 %4, 1
  %and = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %and, 8
  %or = or i32 %shl, %conv
  %or15 = or i32 %or, 1536
  store i32 %or15, ptr @parkbd_buffer, align 4
  %6 = load ptr, ptr @parkbd_dev, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %8, i32 0, i32 24
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %write_control.i = getelementptr inbounds %struct.parport_operations, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %write_control.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_control.i, align 4
  tail call void %12(ptr noundef %8, i8 noundef zeroext 17) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !23, !24, !26, !27, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/serio/parkbd.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/serio/parkbd.c", i32 50, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/serio/parkbd.c", i32 51, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__param_port, !8, !"__param_port", i1 false, i1 false}
!8 = !{!"../drivers/input/serio/parkbd.c", i32 54, i32 1}
!9 = !{ptr @__UNIQUE_ID_porttype231, !8, !"__UNIQUE_ID_porttype231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_port232, !11, !"__UNIQUE_ID_port232", i1 false, i1 false}
!11 = !{!"../drivers/input/serio/parkbd.c", i32 55, i32 1}
!12 = !{ptr @__param_mode, !13, !"__param_mode", i1 false, i1 false}
!13 = !{!"../drivers/input/serio/parkbd.c", i32 58, i32 1}
!14 = !{ptr @__UNIQUE_ID_modetype233, !13, !"__UNIQUE_ID_modetype233", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_mode234, !16, !"__UNIQUE_ID_mode234", i1 false, i1 false}
!16 = !{!"../drivers/input/serio/parkbd.c", i32 59, i32 1}
!17 = !{ptr @__initcall__kmod_parkbd__236_223_parkbd_parport_driver_init6, !18, !"__initcall__kmod_parkbd__236_223_parkbd_parport_driver_init6", i1 false, i1 false}
!18 = !{!"../drivers/input/serio/parkbd.c", i32 223, i32 1}
!19 = !{ptr @__exitcall_parkbd_parport_driver_exit, !18, !"__exitcall_parkbd_parport_driver_exit", i1 false, i1 false}
!20 = !{ptr @parkbd_pp_no, !21, !"parkbd_pp_no", i1 false, i1 false}
!21 = !{!"../drivers/input/serio/parkbd.c", i32 53, i32 21}
!22 = !{ptr @__param_str_port, !8, !"__param_str_port", i1 false, i1 false}
!23 = !{ptr @__param_str_mode, !13, !"__param_str_mode", i1 false, i1 false}
!24 = !{ptr @parkbd_mode, !25, !"parkbd_mode", i1 false, i1 false}
!25 = !{!"../drivers/input/serio/parkbd.c", i32 57, i32 21}
!26 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @parkbd_parport_driver, !28, !"parkbd_parport_driver", i1 false, i1 false}
!28 = !{!"../drivers/input/serio/parkbd.c", i32 217, i32 30}
!29 = !{ptr @parkbd_port, !30, !"parkbd_port", i1 false, i1 false}
!30 = !{!"../drivers/input/serio/parkbd.c", i32 71, i32 22}
!31 = !{ptr @parkbd_dev, !32, !"parkbd_dev", i1 false, i1 false}
!32 = !{!"../drivers/input/serio/parkbd.c", i32 70, i32 26}
!33 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/serio/parkbd.c", i32 182, i32 3}
!35 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @parkbd_attach.__UNIQUE_ID_ddebug235, !34, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!38 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/serio/parkbd.c", i32 200, i32 2}
!40 = !{ptr @parkbd_attach._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @parkbd_attach._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"parkbd_writing", i1 false, i1 false}
!45 = !{!"../drivers/input/serio/parkbd.c", i32 67, i32 12}
!46 = !{ptr @parkbd_counter, !47, !"parkbd_counter", i1 false, i1 false}
!47 = !{!"../drivers/input/serio/parkbd.c", i32 65, i32 12}
!48 = !{ptr @parkbd_last, !49, !"parkbd_last", i1 false, i1 false}
!49 = !{!"../drivers/input/serio/parkbd.c", i32 66, i32 22}
!50 = !{ptr @parkbd_buffer, !51, !"parkbd_buffer", i1 false, i1 false}
!51 = !{!"../drivers/input/serio/parkbd.c", i32 64, i32 12}
!52 = distinct !{null, !53, !"parkbd_start", i1 false, i1 false}
!53 = !{!"../drivers/input/serio/parkbd.c", i32 68, i32 22}
!54 = !{ptr @.str.7, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/serio/parkbd.c", i32 172, i32 24}
!56 = !{ptr @.str.8, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/serio/parkbd.c", i32 173, i32 46}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2148956853, i64 2148956858, i64 2148956871, i64 2148956915, i64 2148956949, i64 2148956970}
