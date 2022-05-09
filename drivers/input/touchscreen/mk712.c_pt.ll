; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/mk712.c_pt.bc'
source_filename = "../drivers/input/touchscreen/mk712.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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

@__UNIQUE_ID_author227 = internal constant [85 x i8] c"mk712.author=Daniel Quinlan <quinlan@pathname.com>, Vojtech Pavlik <vojtech@suse.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [58 x i8] c"mk712.description=ICS MicroClock MK712 TouchScreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [43 x i8] c"mk712.file=drivers/input/touchscreen/mk712\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [18 x i8] c"mk712.license=GPL\00", section ".modinfo", align 1
@__param_str_io = internal constant [9 x i8] c"mk712.io\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@mk712_io = internal global { i32, [28 x i8] } { i32 608, [28 x i8] zeroinitializer }, align 32
@__param_io = internal constant %struct.kernel_param { ptr @__param_str_io, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 2, %union.anon.62 { ptr @mk712_io } }, section "__param", align 4
@__UNIQUE_ID_iotype231 = internal constant [23 x i8] c"mk712.parmtype=io:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_io232 = internal constant [63 x i8] c"mk712.parm=io:I/O base address of MK712 touchscreen controller\00", section ".modinfo", align 1
@__param_str_irq = internal constant [10 x i8] c"mk712.irq\00", align 1
@mk712_irq = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_irq = internal constant %struct.kernel_param { ptr @__param_str_irq, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 2, %union.anon.62 { ptr @mk712_irq } }, section "__param", align 4
@__UNIQUE_ID_irqtype233 = internal constant [24 x i8] c"mk712.parmtype=irq:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_irq234 = internal constant [51 x i8] c"mk712.parm=irq:IRQ of MK712 touchscreen controller\00", section ".modinfo", align 1
@mk712_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@__initcall__kmod_mk712__235_214_mk712_init6 = internal global ptr @mk712_init, section ".initcall6.init", align 4
@__exitcall_mk712_exit = internal global ptr @mk712_exit, section ".exitcall.exit", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mk712\00", [26 x i8] zeroinitializer }, align 32
@mk712_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014mk712: unable to get IO region\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mk712_init\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/input/touchscreen/mk712.c\00", [62 x i8] zeroinitializer }, align 32
@mk712_init._entry_ptr = internal global ptr @mk712_init._entry, section ".printk_index", align 4
@mk712_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014mk712: device not present\0A\00", [35 x i8] zeroinitializer }, align 32
@mk712_init._entry_ptr.6 = internal global ptr @mk712_init._entry.4, section ".printk_index", align 4
@mk712_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013mk712: not enough memory\0A\00", [36 x i8] zeroinitializer }, align 32
@mk712_init._entry_ptr.9 = internal global ptr @mk712_init._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ICS MicroClock MK712 TouchScreen\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isa0260/input0\00", [17 x i8] zeroinitializer }, align 32
@mk712_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014mk712: unable to get IRQ\0A\00", [36 x i8] zeroinitializer }, align 32
@mk712_init._entry_ptr.14 = internal global ptr @mk712_init._entry.12, section ".printk_index", align 4
@mk712_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mk712_lock\00", [21 x i8] zeroinitializer }, align 32
@mk712_interrupt.debounce = internal global { i1, [31 x i8] } zeroinitializer, align 32
@mk712_interrupt.last_x = internal global { i16, [30 x i8] } zeroinitializer, align 32
@mk712_interrupt.last_y = internal global { i16, [30 x i8] } zeroinitializer, align 32
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"mk712_io\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 48, i32 21 }
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"mk712_irq\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 52, i32 21 }
@___asan_gen_.22 = private unnamed_addr constant [10 x i8] c"mk712_dev\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 75, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 152, i32 7 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 153, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 162, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 169, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 174, i32 20 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 175, i32 20 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 190, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"mk712_lock\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 76, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant [25 x i8] c"mk712_interrupt.debounce\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"last_x\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 82, i32 24 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"last_y\00", align 1
@___asan_gen_.75 = private constant [37 x i8] c"../drivers/input/touchscreen/mk712.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 83, i32 24 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_io232, ptr @__UNIQUE_ID_iotype231, ptr @__UNIQUE_ID_irq234, ptr @__UNIQUE_ID_irqtype233, ptr @__UNIQUE_ID_license230, ptr @__exitcall_mk712_exit, ptr @__initcall__kmod_mk712__235_214_mk712_init6, ptr @__param_io, ptr @__param_irq, ptr @mk712_exit, ptr @mk712_init._entry, ptr @mk712_init._entry.12, ptr @mk712_init._entry.4, ptr @mk712_init._entry.7, ptr @mk712_init._entry_ptr, ptr @mk712_init._entry_ptr.14, ptr @mk712_init._entry_ptr.6, ptr @mk712_init._entry_ptr.9, ptr @mk712_io, ptr @mk712_irq, ptr @mk712_dev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @mk712_lock, ptr @.str.15, ptr @mk712_interrupt.debounce, ptr @mk712_interrupt.last_x, ptr @mk712_interrupt.last_y], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mk712_io to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mk712_irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mk712_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mk712_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mk712_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mk712_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mk712_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mk712_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mk712_interrupt.debounce to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mk712_interrupt.last_x to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mk712_interrupt.last_y to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mk712_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @mk712_dev, align 4
  tail call void @input_unregister_device(ptr noundef %0) #5
  %1 = load i32, ptr @mk712_irq, align 4
  %2 = load ptr, ptr @mk712_dev, align 4
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %2) #5
  %3 = load i32, ptr @mk712_io, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %3, i32 noundef 8) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mk712_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mk712_io, align 4
  %call = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %0, i32 noundef 8, ptr noundef nonnull @.str, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %cleanup

do.body2:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %1 = load i32, ptr @mk712_io, align 4
  %add = add i32 %1, 6
  %and = and i32 %add, 1048575
  %add5 = or i32 %and, -18874368
  %2 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #5, !srcloc !72
  %3 = load i32, ptr @mk712_io, align 4
  %add7 = add i32 %3, 2
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %4 = inttoptr i32 %add9 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  %6 = and i16 %5, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool14.not = icmp eq i16 %6, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %do.body2.do.end39_crit_edge

do.body2.do.end39_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

lor.lhs.false:                                    ; preds = %do.body2
  %7 = load i32, ptr @mk712_io, align 4
  %add16 = add i32 %7, 4
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %8 = inttoptr i32 %add18 to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  %10 = and i16 %9, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool24.not = icmp eq i16 %10, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %lor.lhs.false.do.end39_crit_edge

lor.lhs.false.do.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %11 = load i32, ptr @mk712_io, align 4
  %and28 = and i32 %11, 1048575
  %add29 = or i32 %and28, -18874368
  %12 = inttoptr i32 %add29 to ptr
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %12) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  %14 = and i16 %13, 13299
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool35.not = icmp eq i16 %14, 0
  br i1 %tobool35.not, label %if.end42, label %lor.lhs.false25.do.end39_crit_edge

lor.lhs.false25.do.end39_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

do.end39:                                         ; preds = %lor.lhs.false25.do.end39_crit_edge, %lor.lhs.false.do.end39_crit_edge, %do.body2.do.end39_crit_edge
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %fail1

if.end42:                                         ; preds = %lor.lhs.false25
  %call43 = tail call ptr @input_allocate_device() #5
  store ptr %call43, ptr @mk712_dev, align 4
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %do.end48, label %if.end51

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %fail1

if.end51:                                         ; preds = %if.end42
  %15 = ptrtoint ptr %call43 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.10, ptr %call43, align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %call43, i32 0, i32 1
  %16 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.11, ptr %phys, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call43, i32 0, i32 3
  %17 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 16, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call43, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 5, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call43, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call43, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 256, ptr %version, align 2
  %open = getelementptr inbounds %struct.input_dev, ptr %call43, i32 0, i32 31
  %21 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mk712_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call43, i32 0, i32 32
  %22 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mk712_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call43, i32 0, i32 5
  %23 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 10, ptr %evbit, align 8
  %arrayidx55 = getelementptr %struct.input_dev, ptr %call43, i32 0, i32 6, i32 10
  %24 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1024, ptr %arrayidx55, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call43, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 88, i32 noundef 0) #5
  %25 = load ptr, ptr @mk712_dev, align 4
  tail call void @input_set_abs_params(ptr noundef %25, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 88, i32 noundef 0) #5
  %26 = load i32, ptr @mk712_irq, align 4
  %27 = load ptr, ptr @mk712_dev, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %26, ptr noundef nonnull @mk712_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool57.not = icmp eq i32 %call.i, 0
  br i1 %tobool57.not, label %if.end64, label %do.end61

do.end61:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %fail1

if.end64:                                         ; preds = %if.end51
  %28 = load ptr, ptr @mk712_dev, align 4
  %call65 = tail call i32 @input_register_device(ptr noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end64.cleanup_crit_edge, label %fail2

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

fail2:                                            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %29 = load i32, ptr @mk712_irq, align 4
  %30 = load ptr, ptr @mk712_dev, align 4
  %call69 = tail call ptr @free_irq(i32 noundef %29, ptr noundef %30) #5
  br label %fail1

fail1:                                            ; preds = %fail2, %do.end61, %do.end48, %do.end39
  %err.0 = phi i32 [ -19, %do.end39 ], [ -16, %do.end61 ], [ %call65, %fail2 ], [ -12, %do.end48 ]
  %31 = load ptr, ptr @mk712_dev, align 4
  tail call void @input_free_device(ptr noundef %31) #5
  %32 = load i32, ptr @mk712_io, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %32, i32 noundef 8) #5
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end64.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.0, %fail1 ], [ -19, %do.end ], [ 0, %if.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mk712_open(ptr nocapture noundef readnone %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mk712_lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %0 = load i32, ptr @mk712_io, align 4
  %add = add i32 %0, 6
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %1 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 0) #5, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %2 = load i32, ptr @mk712_io, align 4
  %add13 = add i32 %2, 6
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %3 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 87) #5, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %4 = load i32, ptr @mk712_io, align 4
  %add20 = add i32 %4, 7
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %5 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 10) #5, !srcloc !72
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mk712_lock, i32 noundef %call2) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mk712_close(ptr nocapture noundef readnone %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mk712_lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %0 = load i32, ptr @mk712_io, align 4
  %add = add i32 %0, 6
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %1 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 0) #5, !srcloc !72
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mk712_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mk712_interrupt(i32 noundef %irq, ptr nocapture noundef readnone %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @mk712_lock) #5
  %0 = load i32, ptr @mk712_io, align 4
  %and = and i32 %0, 1048575
  %add1 = or i32 %and, -18874368
  %1 = inttoptr i32 %add1 to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #5, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %conv = zext i8 %2 to i32
  %neg = xor i32 %conv, -1
  %and3 = and i32 %neg, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store i1 false, ptr @mk712_interrupt.debounce, align 4
  br label %end

if.end:                                           ; preds = %entry
  %and6 = and i32 %neg, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 false, ptr @mk712_interrupt.debounce, align 4
  %3 = load ptr, ptr @mk712_dev, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 330, i32 noundef 0) #5
  br label %end

if.end9:                                          ; preds = %if.end
  %.b = load i1, ptr @mk712_interrupt.debounce, align 4
  br i1 %.b, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mk712_interrupt.debounce, align 4
  br label %end

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %4 = load ptr, ptr @mk712_dev, align 4
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 330, i32 noundef 1) #5
  %5 = load ptr, ptr @mk712_dev, align 4
  %6 = load i16, ptr @mk712_interrupt.last_x, align 2
  %conv13 = zext i16 %6 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 0, i32 noundef %conv13) #5
  %7 = load ptr, ptr @mk712_dev, align 4
  %8 = load i16, ptr @mk712_interrupt.last_y, align 2
  %conv14 = zext i16 %8 to i32
  tail call void @input_event(ptr noundef %7, i32 noundef 3, i32 noundef 1, i32 noundef %conv14) #5
  br label %end

end:                                              ; preds = %if.end12, %if.then11, %if.then8, %if.then
  %9 = load i32, ptr @mk712_io, align 4
  %add16 = add i32 %9, 2
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %10 = inttoptr i32 %add18 to ptr
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %10) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  %12 = and i16 %11, -241
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  store i16 %13, ptr @mk712_interrupt.last_x, align 2
  %14 = load i32, ptr @mk712_io, align 4
  %add26 = add i32 %14, 4
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %15 = inttoptr i32 %add28 to ptr
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %15) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %17 = and i16 %16, -241
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  store i16 %18, ptr @mk712_interrupt.last_y, align 2
  %19 = load ptr, ptr @mk712_dev, align 4
  tail call void @input_event(ptr noundef %19, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mk712_lock) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !21, !23, !24, !26, !27, !29, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !52, !53, !55, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/mk712.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/touchscreen/mk712.c", i32 45, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/touchscreen/mk712.c", i32 46, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__param_io, !8, !"__param_io", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/mk712.c", i32 49, i32 1}
!9 = !{ptr @__UNIQUE_ID_iotype231, !8, !"__UNIQUE_ID_iotype231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_io232, !11, !"__UNIQUE_ID_io232", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/mk712.c", i32 50, i32 1}
!12 = !{ptr @__param_irq, !13, !"__param_irq", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/mk712.c", i32 53, i32 1}
!14 = !{ptr @__UNIQUE_ID_irqtype233, !13, !"__UNIQUE_ID_irqtype233", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_irq234, !16, !"__UNIQUE_ID_irq234", i1 false, i1 false}
!16 = !{!"../drivers/input/touchscreen/mk712.c", i32 54, i32 1}
!17 = !{ptr @__initcall__kmod_mk712__235_214_mk712_init6, !18, !"__initcall__kmod_mk712__235_214_mk712_init6", i1 false, i1 false}
!18 = !{!"../drivers/input/touchscreen/mk712.c", i32 214, i32 1}
!19 = !{ptr @__exitcall_mk712_exit, !20, !"__exitcall_mk712_exit", i1 false, i1 false}
!20 = !{!"../drivers/input/touchscreen/mk712.c", i32 215, i32 1}
!21 = !{ptr @mk712_dev, !22, !"mk712_dev", i1 false, i1 false}
!22 = !{!"../drivers/input/touchscreen/mk712.c", i32 75, i32 26}
!23 = !{ptr @__param_str_io, !8, !"__param_str_io", i1 false, i1 false}
!24 = !{ptr @mk712_io, !25, !"mk712_io", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/mk712.c", i32 48, i32 21}
!26 = !{ptr @__param_str_irq, !13, !"__param_str_irq", i1 false, i1 false}
!27 = !{ptr @mk712_irq, !28, !"mk712_irq", i1 false, i1 false}
!28 = !{!"../drivers/input/touchscreen/mk712.c", i32 52, i32 21}
!29 = !{ptr @.str, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/touchscreen/mk712.c", i32 152, i32 7}
!31 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/mk712.c", i32 153, i32 3}
!33 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mk712_init._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @mk712_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/touchscreen/mk712.c", i32 162, i32 3}
!39 = !{ptr @mk712_init._entry.4, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mk712_init._entry_ptr.6, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/touchscreen/mk712.c", i32 169, i32 3}
!43 = !{ptr @mk712_init._entry.7, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mk712_init._entry_ptr.9, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/mk712.c", i32 174, i32 20}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/mk712.c", i32 175, i32 20}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/touchscreen/mk712.c", i32 190, i32 3}
!51 = !{ptr @mk712_init._entry.12, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mk712_init._entry_ptr.14, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/mk712.c", i32 76, i32 8}
!55 = !{ptr @mk712_lock, !54, !"mk712_lock", i1 false, i1 false}
!56 = distinct !{null, !57, !"debounce", i1 false, i1 false}
!57 = !{!"../drivers/input/touchscreen/mk712.c", i32 81, i32 13}
!58 = !{ptr @mk712_interrupt.last_x, !59, !"last_x", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/mk712.c", i32 82, i32 24}
!60 = !{ptr @mk712_interrupt.last_y, !61, !"last_y", i1 false, i1 false}
!61 = !{!"../drivers/input/touchscreen/mk712.c", i32 83, i32 24}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2153819898}
!72 = !{i64 4646773}
!73 = !{i64 4646550}
!74 = !{i64 2153820679}
!75 = !{i64 2153821339}
!76 = !{i64 2153821999}
!77 = !{i64 2153816411}
!78 = !{i64 2153816801}
!79 = !{i64 2153817136}
!80 = !{i64 2153817824}
!81 = !{i64 4647168}
!82 = !{i64 2153814492}
!83 = !{i64 2153815184}
!84 = !{i64 2153815844}
