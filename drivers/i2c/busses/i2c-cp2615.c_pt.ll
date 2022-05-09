; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-cp2615.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-cp2615.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.cp2615_iop_msg = type { i16, i16, i16, [58 x i8] }
%struct.cp2615_i2c_transfer = type { i8, i8, i8, i8, [54 x i8] }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_cp2615__296_332_cp2615_i2c_driver_init6 = internal global ptr @cp2615_i2c_driver_init, section ".initcall6.init", align 4
@cp2615_i2c_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @cp2615_i2c_probe, ptr @cp2615_i2c_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_cp2615_i2c_driver_exit = internal global ptr @cp2615_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [54 x i8] c"i2c_cp2615.author=Bence Cs\C3\B3k\C3\A1s <bence98@sch.bme.hu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [45 x i8] c"i2c_cp2615.description=CP2615 I2C bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [46 x i8] c"i2c_cp2615.file=drivers/i2c/busses/i2c-cp2615\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [23 x i8] c"i2c_cp2615.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c_cp2615\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c-cp2615\00", [21 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 1027, i16 4292, i16 -5439, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cp2615_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @cp2615_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @cp2615_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cp2615_i2c_quirks = internal global { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 239, i32 0, i16 54, i16 54, i16 54, i16 54 }, [40 x i8] zeroinitializer }, align 32
@cp2615_check_iop.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 49, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cp2615_check_iop\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/i2c/busses/i2c-cp2615.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Found A01 part. (WARNING: errata exists!)\0A\00", [53 x i8] zeroinitializer }, align 32
@cp2615_check_iop.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 50, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Found good A02 part.\0A\00", [42 x i8] zeroinitializer }, align 32
@cp2615_check_iop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 205, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown part ID %04X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cp2615_check_iop._entry_ptr = internal global ptr @cp2615_check_iop._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cp2615_i2c_master_xfer.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 55, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cp2615_i2c_master_xfer\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Doing %d I2C transactions\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 5120, i64 5376]
@__sancov_gen_cov_switch_values.11 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4294967290, i64 4294967292, i64 4294967293, i64 4294967294, i64 4294967295]
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"cp2615_i2c_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 325, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 332, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 326, i32 10 }
@___asan_gen_.21 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 318, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"cp2615_i2c_algo\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 252, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"cp2615_i2c_quirks\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 265, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 199, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 202, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 205, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [35 x i8] c"../drivers/i2c/busses/i2c-cp2615.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 221, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_cp2615_i2c_driver_exit, ptr @__initcall__kmod_i2c_cp2615__296_332_cp2615_i2c_driver_init6, ptr @cp2615_check_iop._entry, ptr @cp2615_check_iop._entry_ptr, ptr @cp2615_i2c_driver_exit, ptr @cp2615_i2c_driver, ptr @.str, ptr @.str.1, ptr @id_table, ptr @cp2615_i2c_algo, ptr @cp2615_i2c_quirks, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2615_i2c_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2615_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2615_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2615_check_iop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cp2615_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @cp2615_i2c_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cp2615_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @cp2615_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp2615_i2c_probe(ptr noundef %usbif, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %usbif, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %call1 = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @cp2615_check_iop(ptr noundef %usbif)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.usb_interface, ptr %usbif, i32 0, i32 7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1360, i32 noundef 3520) #9
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %serial = getelementptr i8, ptr %1, i32 1112
  %2 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial, align 8
  %call10 = tail call ptr @strncpy(ptr noundef %name, ptr noundef %3, i32 noundef 47)
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %call.i, align 8
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.usb_interface, ptr %usbif, i32 0, i32 7, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %of_node15 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %8 = ptrtoint ptr %of_node15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %of_node15, align 8
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100, ptr %timeout, align 4
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @cp2615_i2c_algo, ptr %algo, align 8
  %quirks = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 17
  %11 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @cp2615_i2c_quirks, ptr %quirks, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %usbif, ptr %algo_data, align 4
  %call16 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %usbif, i32 0, i32 7, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %call16, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp2615_i2c_remove(ptr nocapture noundef %usbif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %usbif, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @i2c_del_adapter(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cp2615_check_iop(ptr noundef %usbif) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #12
  %data = getelementptr inbounds %struct.cp2615_iop_msg, ptr %call7.i.i, i32 0, i32 3
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %usbif, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 -128
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 10794, ptr %call7.i.i, align 8
  %length.i = getelementptr inbounds %struct.cp2615_iop_msg, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 6, ptr %length.i, align 2
  %msg4.i = getelementptr inbounds %struct.cp2615_iop_msg, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %msg4.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -12032, ptr %msg4.i, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %7, 8
  %or = or i32 %shl.i, -1073676288
  %call4 = tail call i32 @usb_bulk_msg(ptr noundef %add.ptr.i, i32 noundef %or, ptr noundef nonnull %call7.i.i, i32 noundef 6, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 8
  %shl.i74 = shl i32 %9, 8
  %or10 = or i32 %shl.i74, -1069481856
  %call11 = tail call i32 @usb_bulk_msg(ptr noundef %add.ptr.i, i32 noundef %or10, ptr noundef nonnull %call7.i.i, i32 noundef 64, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end14:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %msg4.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %msg4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24320, i16 %11)
  %cmp.not = icmp eq i16 %11, -24320
  br i1 %cmp.not, label %if.end19, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end19:                                         ; preds = %if.end14
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %data, align 2
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i16 %13, label %do.end50 [
    i16 5120, label %do.body
    i16 5376, label %do.body29
  ]

do.body:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp2615_check_iop.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cp2615_check_iop, %out)) #9
          to label %if.then26 [label %out], !srcloc !48

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %usbif, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp2615_check_iop.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  br label %out

do.body29:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp2615_check_iop.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cp2615_check_iop, %out)) #9
          to label %if.then43 [label %out], !srcloc !48

if.then43:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %dev44 = getelementptr inbounds %struct.usb_interface, ptr %usbif, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp2615_check_iop.__UNIQUE_ID_ddebug294, ptr noundef %dev44, ptr noundef nonnull @.str.5) #9
  br label %out

do.end50:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %conv20 = zext i16 %13 to i32
  %dev51 = getelementptr inbounds %struct.usb_interface, ptr %usbif, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev51, ptr noundef nonnull @.str.6, i32 noundef %conv20) #13
  br label %out

out:                                              ; preds = %do.end50, %if.then43, %do.body29, %if.then26, %do.body, %if.end14.out_crit_edge, %if.end7.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %res.0 = phi i32 [ %call4, %if.end.out_crit_edge ], [ %call11, %if.end7.out_crit_edge ], [ 0, %do.end50 ], [ 0, %if.then43 ], [ 0, %if.then26 ], [ -5, %if.end14.out_crit_edge ], [ -22, %entry.out_crit_edge ], [ 0, %do.body ], [ 0, %do.body29 ]
  tail call void @kfree(ptr noundef %call7.i.i) #9
  ret i32 %res.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp2615_i2c_master_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  %i2c_w = alloca %struct.cp2615_i2c_transfer, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %i2c_w)
  %2 = getelementptr inbounds i8, ptr %i2c_w, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 54)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp2615_i2c_master_xfer.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cp2615_i2c_master_xfer, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !48

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp2615_i2c_master_xfer.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %num) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %smax = call i32 @llvm.smax.i32(i32 %num, i32 0)
  %i2c_w.1.i2c_w.1.i2caddr.sroa_idx = getelementptr inbounds i8, ptr %i2c_w, i32 1
  %i2c_w.4.i2c_w.4.data.sroa_idx = getelementptr inbounds i8, ptr %i2c_w, i32 4
  %4 = getelementptr inbounds i8, ptr %i2c_w, i32 2
  %5 = getelementptr inbounds i8, ptr %i2c_w, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %exitcond.not131 = icmp slt i32 %num, 1
  br i1 %exitcond.not131, label %do.end.for.end.thread59_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end.thread59_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread59

for.body:                                         ; preds = %cp2615_i2c_recv.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.069132 = phi i32 [ %inc, %cp2615_i2c_recv.exit.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.069132
  %6 = ptrtoint ptr %i2c_w to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -35, ptr %i2c_w, align 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 4
  %conv.i = trunc i16 %8 to i8
  %shl.i = shl i8 %conv.i, 1
  %flags.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.069132, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags.i, align 2
  %11 = trunc i16 %10 to i8
  %12 = and i8 %11, 1
  %or.i = or i8 %12, %shl.i
  %13 = ptrtoint ptr %i2c_w.1.i2c_w.1.i2caddr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %or.i, ptr %i2c_w.1.i2c_w.1.i2caddr.sroa_idx, align 1
  %14 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool6.not = icmp eq i16 %14, 0
  %len10 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.069132, i32 2
  %15 = ptrtoint ptr %len10 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %len10, align 4
  %conv11 = trunc i16 %16 to i8
  br i1 %tobool6.not, label %if.else, label %for.body.if.end15_crit_edge

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.069132, i32 3
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf, align 4
  %conv11.mask = and i16 %16, 255
  %conv14 = zext i16 %conv11.mask to i32
  %19 = call ptr @memcpy(ptr %i2c_w.4.i2c_w.4.data.sroa_idx, ptr %18, i32 %conv14)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %for.body.if.end15_crit_edge
  %conv8.sink = phi i8 [ 0, %if.else ], [ %conv11, %for.body.if.end15_crit_edge ]
  %.sink = phi i8 [ %conv11, %if.else ], [ 0, %for.body.if.end15_crit_edge ]
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv8.sink, ptr %4, align 1
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink, ptr %5, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 64) #12
  %23 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 -128
  %conv.i.i = zext i8 %.sink to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 54, i8 %.sink)
  %cmp.i.i.i = icmp ugt i8 %.sink, 54
  br i1 %cmp.i.i.i, label %if.end15.cp2615_i2c_send.exit.thread_crit_edge, label %if.end.i.i.i

if.end15.cp2615_i2c_send.exit.thread_crit_edge:   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cp2615_i2c_send.exit.thread

if.end.i.i.i:                                     ; preds = %if.end15
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.cp2615_i2c_send.exit.thread_crit_edge, label %cp2615_i2c_send.exit

if.end.i.i.i.cp2615_i2c_send.exit.thread_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cp2615_i2c_send.exit.thread

cp2615_i2c_send.exit.thread:                      ; preds = %if.end.i.i.i.cp2615_i2c_send.exit.thread_crit_edge, %if.end15.cp2615_i2c_send.exit.thread_crit_edge
  %call7.i.i.i.lcssa = phi ptr [ %call7.i.i.i, %if.end15.cp2615_i2c_send.exit.thread_crit_edge ], [ null, %if.end.i.i.i.cp2615_i2c_send.exit.thread_crit_edge ]
  %res.0.i.ph = phi i32 [ -27, %if.end15.cp2615_i2c_send.exit.thread_crit_edge ], [ -22, %if.end.i.i.i.cp2615_i2c_send.exit.thread_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i.i.lcssa) #9
  br label %for.end.thread

cp2615_i2c_send.exit:                             ; preds = %if.end.i.i.i
  %25 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 10794, ptr %call7.i.i.i, align 8
  %26 = trunc i32 %add.i.i to i16
  %conv.i.i.i = add nuw nsw i16 %26, 6
  %length.i.i.i = getelementptr inbounds %struct.cp2615_iop_msg, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i.i.i, ptr %length.i.i.i, align 2
  %msg4.i.i.i = getelementptr inbounds %struct.cp2615_iop_msg, ptr %call7.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %msg4.i.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -11264, ptr %msg4.i.i.i, align 4
  %data8.i.i.i = getelementptr inbounds %struct.cp2615_iop_msg, ptr %call7.i.i.i, i32 0, i32 3
  %29 = call ptr @memcpy(ptr %data8.i.i.i, ptr %i2c_w, i32 %add.i.i)
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i = shl i32 %31, 8
  %or.i45 = or i32 %shl.i.i, -1073676288
  %conv.i46 = zext i16 %conv.i.i.i to i32
  %call4.i = tail call i32 @usb_bulk_msg(ptr noundef %add.ptr.i.i, i32 noundef %or.i45, ptr noundef nonnull %call7.i.i.i, i32 noundef %conv.i46, ptr noundef null, i32 noundef 0) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool17.not = icmp eq i32 %call4.i, 0
  br i1 %tobool17.not, label %if.end19, label %for.end

if.end19:                                         ; preds = %cp2615_i2c_send.exit
  %buf21 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.069132, i32 3
  %32 = ptrtoint ptr %buf21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf21, align 4
  %34 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i48 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 64) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i48, null
  br i1 %tobool.not.i, label %if.end19.for.end.thread_crit_edge, label %if.end.i

if.end19.for.end.thread_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

if.end.i:                                         ; preds = %if.end19
  %add.ptr.i.i49 = getelementptr i8, ptr %35, i32 -128
  %37 = ptrtoint ptr %add.ptr.i.i49 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i49, align 8
  %shl.i.i50 = shl i32 %38, 8
  %or3.i = or i32 %shl.i.i50, -1069481856
  %call4.i51 = tail call i32 @usb_bulk_msg(ptr noundef %add.ptr.i.i49, i32 noundef %or3.i, ptr noundef nonnull %call7.i.i.i48, i32 noundef 64, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i51)
  %cmp.i = icmp slt i32 %call4.i51, 0
  br i1 %cmp.i, label %if.end.i.cp2615_i2c_recv.exit.thread80.loopexit_crit_edge, label %if.end6.i

if.end.i.cp2615_i2c_recv.exit.thread80.loopexit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cp2615_i2c_recv.exit.thread80.loopexit

if.end6.i:                                        ; preds = %if.end.i
  %msg7.i = getelementptr inbounds %struct.cp2615_iop_msg, ptr %call7.i.i.i48, i32 0, i32 2
  %39 = ptrtoint ptr %msg7.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %msg7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23552, i16 %40)
  %cmp8.not.i = icmp eq i16 %40, -23552
  br i1 %cmp8.not.i, label %lor.lhs.false.i, label %if.end6.i.cp2615_i2c_recv.exit.thread80.loopexit_crit_edge

if.end6.i.cp2615_i2c_recv.exit.thread80.loopexit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cp2615_i2c_recv.exit.thread80.loopexit

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %data.i = getelementptr inbounds %struct.cp2615_iop_msg, ptr %call7.i.i.i48, i32 0, i32 3
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %data.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %42)
  %cmp13.not.i = icmp eq i8 %42, -35
  br i1 %cmp13.not.i, label %if.end16.i, label %lor.lhs.false.i.cp2615_i2c_recv.exit.thread80.loopexit_crit_edge

lor.lhs.false.i.cp2615_i2c_recv.exit.thread80.loopexit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cp2615_i2c_recv.exit.thread80.loopexit

if.end16.i:                                       ; preds = %lor.lhs.false.i
  %status.i = getelementptr inbounds %struct.cp2615_iop_msg, ptr %call7.i.i.i48, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %status.i, align 8
  %conv17.i = sext i8 %44 to i32
  %45 = zext i32 %conv17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %conv17.i, label %sw.epilog.i.i [
    i32 0, label %cp2615_i2c_recv.exit
    i32 -1, label %if.end16.i.cp2615_i2c_recv.exit.thread80.loopexit_crit_edge
    i32 -2, label %cp2615_i2c_recv.exit.thread80.loopexit107
    i32 -3, label %cp2615_i2c_recv.exit.thread80.loopexit133
    i32 -4, label %if.end16.i.cp2615_i2c_recv.exit.thread80_crit_edge
    i32 -6, label %sw.bb5.i.i
  ]

if.end16.i.cp2615_i2c_recv.exit.thread80_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cp2615_i2c_recv.exit.thread80

if.end16.i.cp2615_i2c_recv.exit.thread80.loopexit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cp2615_i2c_recv.exit.thread80.loopexit

sw.bb5.i.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cp2615_i2c_recv.exit.thread80

sw.epilog.i.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cp2615_i2c_recv.exit.thread80

cp2615_i2c_recv.exit.thread80.loopexit:           ; preds = %if.end16.i.cp2615_i2c_recv.exit.thread80.loopexit_crit_edge, %lor.lhs.false.i.cp2615_i2c_recv.exit.thread80.loopexit_crit_edge, %if.end6.i.cp2615_i2c_recv.exit.thread80.loopexit_crit_edge, %if.end.i.cp2615_i2c_recv.exit.thread80.loopexit_crit_edge
  %retval.0.ph.i.ph.ph = phi i32 [ %call4.i51, %if.end.i.cp2615_i2c_recv.exit.thread80.loopexit_crit_edge ], [ -5, %lor.lhs.false.i.cp2615_i2c_recv.exit.thread80.loopexit_crit_edge ], [ -5, %if.end6.i.cp2615_i2c_recv.exit.thread80.loopexit_crit_edge ], [ -6, %if.end16.i.cp2615_i2c_recv.exit.thread80.loopexit_crit_edge ]
  br label %cp2615_i2c_recv.exit.thread80

cp2615_i2c_recv.exit.thread80.loopexit107:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cp2615_i2c_recv.exit.thread80

cp2615_i2c_recv.exit.thread80.loopexit133:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cp2615_i2c_recv.exit.thread80

cp2615_i2c_recv.exit.thread80:                    ; preds = %cp2615_i2c_recv.exit.thread80.loopexit133, %cp2615_i2c_recv.exit.thread80.loopexit107, %cp2615_i2c_recv.exit.thread80.loopexit, %sw.epilog.i.i, %sw.bb5.i.i, %if.end16.i.cp2615_i2c_recv.exit.thread80_crit_edge
  %retval.0.ph.i.ph = phi i32 [ -71, %sw.epilog.i.i ], [ -1, %sw.bb5.i.i ], [ %retval.0.ph.i.ph.ph, %cp2615_i2c_recv.exit.thread80.loopexit ], [ -11, %cp2615_i2c_recv.exit.thread80.loopexit107 ], [ -110, %cp2615_i2c_recv.exit.thread80.loopexit133 ], [ -22, %if.end16.i.cp2615_i2c_recv.exit.thread80_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i48) #9
  br label %for.end.thread

cp2615_i2c_recv.exit:                             ; preds = %if.end16.i
  %data21.i = getelementptr inbounds %struct.cp2615_iop_msg, ptr %call7.i.i.i48, i32 0, i32 3, i32 4
  %read_len.i = getelementptr inbounds %struct.cp2615_iop_msg, ptr %call7.i.i.i48, i32 0, i32 3, i32 3
  %46 = ptrtoint ptr %read_len.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %read_len.i, align 1
  %conv22.i = zext i8 %47 to i32
  %48 = call ptr @memcpy(ptr %33, ptr %data21.i, i32 %conv22.i)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i48) #9
  %inc = add nuw i32 %i.069132, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %cp2615_i2c_recv.exit.for.end.thread59_crit_edge, label %cp2615_i2c_recv.exit.for.body_crit_edge

cp2615_i2c_recv.exit.for.body_crit_edge:          ; preds = %cp2615_i2c_recv.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cp2615_i2c_recv.exit.for.end.thread59_crit_edge:  ; preds = %cp2615_i2c_recv.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread59

for.end:                                          ; preds = %cp2615_i2c_send.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp23 = icmp slt i32 %call4.i, 0
  br i1 %cmp23, label %for.end.for.end.thread_crit_edge, label %for.end.for.end.thread59_crit_edge

for.end.for.end.thread59_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread59

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %cp2615_i2c_recv.exit.thread80, %if.end19.for.end.thread_crit_edge, %cp2615_i2c_send.exit.thread
  %ret.158 = phi i32 [ %call4.i, %for.end.for.end.thread_crit_edge ], [ %res.0.i.ph, %cp2615_i2c_send.exit.thread ], [ %retval.0.ph.i.ph, %cp2615_i2c_recv.exit.thread80 ], [ -12, %if.end19.for.end.thread_crit_edge ]
  br label %for.end.thread59

for.end.thread59:                                 ; preds = %for.end.thread, %for.end.for.end.thread59_crit_edge, %cp2615_i2c_recv.exit.for.end.thread59_crit_edge, %do.end.for.end.thread59_crit_edge
  %49 = phi i32 [ %ret.158, %for.end.thread ], [ %i.069132, %for.end.for.end.thread59_crit_edge ], [ %smax, %do.end.for.end.thread59_crit_edge ], [ %smax, %cp2615_i2c_recv.exit.for.end.thread59_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %i2c_w)
  ret i32 %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cp2615_i2c_func(ptr nocapture noundef readnone %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !22, !23, !25, !26, !27, !28, !29, !31, !33, !34, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_i2c_cp2615__296_332_cp2615_i2c_driver_init6, !1, !"__initcall__kmod_i2c_cp2615__296_332_cp2615_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-cp2615.c", i32 332, i32 1}
!2 = !{ptr @__exitcall_cp2615_i2c_driver_exit, !1, !"__exitcall_cp2615_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-cp2615.c", i32 334, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-cp2615.c", i32 335, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-cp2615.c", i32 336, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/i2c/busses/i2c-cp2615.c", i32 326, i32 10}
!13 = !{ptr @cp2615_i2c_driver, !14, !"cp2615_i2c_driver", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-cp2615.c", i32 325, i32 26}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-cp2615.c", i32 199, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cp2615_check_iop.__UNIQUE_ID_ddebug293, !16, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/i2c/busses/i2c-cp2615.c", i32 202, i32 3}
!22 = !{ptr @cp2615_check_iop.__UNIQUE_ID_ddebug294, !21, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/i2c/busses/i2c-cp2615.c", i32 205, i32 3}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cp2615_check_iop._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @cp2615_check_iop._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @cp2615_i2c_algo, !30, !"cp2615_i2c_algo", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-cp2615.c", i32 252, i32 35}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-cp2615.c", i32 221, i32 2}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @cp2615_i2c_master_xfer.__UNIQUE_ID_ddebug295, !32, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!35 = !{ptr @cp2615_i2c_quirks, !36, !"cp2615_i2c_quirks", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-cp2615.c", i32 265, i32 34}
!37 = !{ptr @id_table, !38, !"id_table", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-cp2615.c", i32 318, i32 35}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2148993416, i64 2148993421, i64 2148993434, i64 2148993478, i64 2148993512, i64 2148993533}
