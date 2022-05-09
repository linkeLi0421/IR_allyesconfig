; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-mc33880.c_pt.bc'
source_filename = "../drivers/gpio/gpio-mc33880.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.mc33880 = type { %struct.mutex, i8, %struct.gpio_chip, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.71, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.71 = type { ptr }

@__initcall__kmod_gpio_mc33880__231_164_mc33880_init4 = internal global ptr @mc33880_init, section ".initcall4.init", align 4
@mc33880_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @mc33880_probe, ptr @mc33880_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mc33880_exit = internal global ptr @mc33880_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author232 = internal constant [63 x i8] c"gpio_mc33880.author=Mocean Laboratories <info@mocean-labs.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [44 x i8] c"gpio_mc33880.file=drivers/gpio/gpio-mc33880\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [28 x i8] c"gpio_mc33880.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mc33880\00", [24 x i8] zeroinitializer }, align 32
@mc33880_probe.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 19, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio_mc33880\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mc33880_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpio/gpio-mc33880.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"incorrect or missing platform data\0A\00", [60 x i8] zeroinitializer }, align 32
@mc33880_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&mc->lock\00", [22 x i8] zeroinitializer }, align 32
@mc33880_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 122, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed writing to mc33880: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mc33880_probe._entry_ptr = internal global ptr @mc33880_probe._entry, section ".printk_index", align 4
@mc33880_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mc33880_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"mc33880_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 149, i32 26 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 151, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 79, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 96, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 121, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.49 = private constant [31 x i8] c"../drivers/gpio/gpio-mc33880.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 126, i32 8 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_mc33880_exit, ptr @__initcall__kmod_gpio_mc33880__231_164_mc33880_init4, ptr @mc33880_exit, ptr @mc33880_probe._entry, ptr @mc33880_probe._entry_ptr, ptr @mc33880_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mc33880_probe.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mc33880_probe.lock_key, ptr @mc33880_probe.request_key], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc33880_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc33880_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc33880_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc33880_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc33880_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mc33880_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @mc33880_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mc33880_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @mc33880_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc33880_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i.i87 = alloca %struct.spi_message, align 4
  %t.i.i88 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.do.body_crit_edge, label %if.end9

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc33880_probe.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mc33880_probe, %cleanup)) #5
          to label %if.then7 [label %cleanup], !srcloc !40

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc33880_probe.__UNIQUE_ID_ddebug230, ptr noundef %spi, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %4 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %bits_per_word, align 1
  %call10 = tail call i32 @spi_setup(ptr noundef %spi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 448, i32 noundef 3520) #5
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %do.body18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body18:                                        ; preds = %if.end12
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @mc33880_probe.__key) #5
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %spi21 = getelementptr inbounds %struct.mc33880, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %spi21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spi, ptr %spi21, align 4
  %chip = getelementptr inbounds %struct.mc33880, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str, ptr %chip, align 4
  %set = getelementptr inbounds %struct.mc33880, ptr %call.i, i32 0, i32 2, i32 12
  %8 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mc33880_set, ptr %set, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %base25 = getelementptr inbounds %struct.mc33880, ptr %call.i, i32 0, i32 2, i32 19
  %11 = ptrtoint ptr %base25 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %base25, align 4
  %ngpio = getelementptr inbounds %struct.mc33880, ptr %call.i, i32 0, i32 2, i32 20
  %12 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 8, ptr %ngpio, align 4
  %can_sleep = getelementptr inbounds %struct.mc33880, ptr %call.i, i32 0, i32 2, i32 23
  %13 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %can_sleep, align 4
  %parent = getelementptr inbounds %struct.mc33880, ptr %call.i, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spi, ptr %parent, align 4
  %owner = getelementptr inbounds %struct.mc33880, ptr %call.i, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %owner, align 4
  %port_config = getelementptr inbounds %struct.mc33880, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %port_config to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %port_config, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %17 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 92)
  %19 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %port_config, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %21 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 40)
  %23 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %do.body18.mc33880_write_config.exit_crit_edge

do.body18.mc33880_write_config.exit_crit_edge:    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %mc33880_write_config.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %mc33880_write_config.exit

mc33880_write_config.exit:                        ; preds = %if.end.i.i.i.i.i.i.i, %do.body18.mc33880_write_config.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  %31 = ptrtoint ptr %port_config to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %port_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool33.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool33.not, label %if.then34, label %mc33880_write_config.exit.do.end41_crit_edge

mc33880_write_config.exit.do.end41_crit_edge:     ; preds = %mc33880_write_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end41

if.then34:                                        ; preds = %mc33880_write_config.exit
  %32 = ptrtoint ptr %spi21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spi21, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i88) #5
  %34 = getelementptr inbounds i8, ptr %t.i.i88, i32 4
  %35 = call ptr @memset(ptr %34, i32 0, i32 92)
  %36 = ptrtoint ptr %t.i.i88 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %port_config, ptr %t.i.i88, align 4
  %len1.i.i91 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i88, i32 0, i32 2
  %37 = ptrtoint ptr %len1.i.i91 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %len1.i.i91, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i87) #5
  %38 = getelementptr inbounds i8, ptr %msg.i.i.i87, i32 8
  %39 = call ptr @memset(ptr %38, i32 0, i32 40)
  %40 = ptrtoint ptr %msg.i.i.i87 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %msg.i.i.i87, ptr %msg.i.i.i87, align 4
  %prev.i.i.i.i.i.i.i92 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i87, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i.i.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i.i87, ptr %prev.i.i.i.i.i.i.i92, align 4
  %resources.i.i.i.i.i.i93 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i87, i32 0, i32 10
  %42 = ptrtoint ptr %resources.i.i.i.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %resources.i.i.i.i.i.i93, ptr %resources.i.i.i.i.i.i93, align 4
  %prev.i2.i.i.i.i.i.i94 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i87, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %prev.i2.i.i.i.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %resources.i.i.i.i.i.i93, ptr %prev.i2.i.i.i.i.i.i94, align 4
  %transfer_list.i.i.i.i.i95 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i88, i32 0, i32 18
  %call.i.i.i.i.i.i.i96 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i95, ptr noundef nonnull %msg.i.i.i87, ptr noundef nonnull %msg.i.i.i87) #5
  br i1 %call.i.i.i.i.i.i.i96, label %if.end.i.i.i.i.i.i.i98, label %if.then34.if.end36_crit_edge

if.then34.if.end36_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.end.i.i.i.i.i.i.i98:                           ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %prev.i.i.i.i.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %transfer_list.i.i.i.i.i95, ptr %prev.i.i.i.i.i.i.i92, align 4
  %45 = ptrtoint ptr %transfer_list.i.i.i.i.i95 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg.i.i.i87, ptr %transfer_list.i.i.i.i.i95, align 4
  %prev3.i.i.i.i.i.i.i97 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i88, i32 0, i32 18, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i.i.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i.i87, ptr %prev3.i.i.i.i.i.i.i97, align 4
  %47 = ptrtoint ptr %msg.i.i.i87 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %transfer_list.i.i.i.i.i95, ptr %msg.i.i.i87, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end.i.i.i.i.i.i.i98, %if.then34.if.end36_crit_edge
  %call.i.i.i99 = call i32 @spi_sync(ptr noundef %33, ptr noundef nonnull %msg.i.i.i87) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i87) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i88) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i99)
  %tobool37.not = icmp eq i32 %call.i.i.i99, 0
  br i1 %tobool37.not, label %if.end43, label %if.end36.do.end41_crit_edge

if.end36.do.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end41

do.end41:                                         ; preds = %if.end36.do.end41_crit_edge, %mc33880_write_config.exit.do.end41_crit_edge
  %ret.0104 = phi i32 [ %call.i.i.i99, %if.end36.do.end41_crit_edge ], [ %call.i.i.i, %mc33880_write_config.exit.do.end41_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.6, i32 noundef %ret.0104) #8
  br label %exit_destroy

if.end43:                                         ; preds = %if.end36
  %call46 = call i32 @gpiochip_add_data_with_key(ptr noundef %chip, ptr noundef nonnull %call.i, ptr noundef nonnull @mc33880_probe.lock_key, ptr noundef nonnull @mc33880_probe.request_key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end43.cleanup_crit_edge, label %if.end43.exit_destroy_crit_edge

if.end43.exit_destroy_crit_edge:                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_destroy

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

exit_destroy:                                     ; preds = %if.end43.exit_destroy_crit_edge, %do.end41
  %ret.1 = phi i32 [ %ret.0104, %do.end41 ], [ %call46, %if.end43.exit_destroy_crit_edge ]
  call void @mutex_destroy(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %exit_destroy, %if.end43.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then7, %do.body
  %retval.0 = phi i32 [ %ret.1, %exit_destroy ], [ -22, %if.then7 ], [ %call10, %if.end9.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc33880_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip = getelementptr inbounds %struct.mc33880, ptr %1, i32 0, i32 2
  tail call void @gpiochip_remove(ptr noundef %chip) #5
  tail call void @mutex_destroy(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc33880_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  tail call void @mutex_lock_nested(ptr noundef %call, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %shl2.i = shl nuw i32 1, %offset
  %port_config3.i = getelementptr inbounds %struct.mc33880, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %port_config3.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_config3.i, align 4
  %2 = trunc i32 %shl2.i to i8
  %3 = xor i8 %2, -1
  %conv5.i = and i8 %1, %3
  %conv1.i = or i8 %1, %2
  %conv5.sink.i = select i1 %tobool.not.i, i8 %conv5.i, i8 %conv1.i
  store i8 %conv5.sink.i, ptr %port_config3.i, align 4
  %spi.i.i = getelementptr inbounds %struct.mc33880, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #5
  %6 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 92)
  %8 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %port_config3.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  %10 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %entry.__mc33880_set.exit_crit_edge

entry.__mc33880_set.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__mc33880_set.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %__mc33880_set.exit

__mc33880_set.exit:                               ; preds = %if.end.i.i.i.i.i.i.i.i, %entry.__mc33880_set.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %5, ptr noundef nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #5
  call void @mutex_unlock(ptr noundef %call) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !21, !22, !24, !25, !26, !27, !28, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_gpio_mc33880__231_164_mc33880_init4, !1, !"__initcall__kmod_gpio_mc33880__231_164_mc33880_init4", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-mc33880.c", i32 164, i32 1}
!2 = !{ptr @__exitcall_mc33880_exit, !3, !"__exitcall_mc33880_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-mc33880.c", i32 170, i32 1}
!4 = !{ptr @__UNIQUE_ID_author232, !5, !"__UNIQUE_ID_author232", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-mc33880.c", i32 172, i32 1}
!6 = !{ptr @__UNIQUE_ID_file233, !7, !"__UNIQUE_ID_file233", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-mc33880.c", i32 173, i32 1}
!8 = !{ptr @__UNIQUE_ID_license234, !7, !"__UNIQUE_ID_license234", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpio-mc33880.c", i32 151, i32 12}
!11 = !{ptr @mc33880_driver, !12, !"mc33880_driver", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-mc33880.c", i32 149, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpio/gpio-mc33880.c", i32 79, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mc33880_probe.__UNIQUE_ID_ddebug230, !14, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!19 = !{ptr @mc33880_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-mc33880.c", i32 96, i32 2}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-mc33880.c", i32 121, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mc33880_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @mc33880_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @mc33880_probe.lock_key, !29, !"lock_key", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-mc33880.c", i32 126, i32 8}
!30 = !{ptr @mc33880_probe.request_key, !29, !"request_key", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 2148167440, i64 2148167445, i64 2148167458, i64 2148167502, i64 2148167536, i64 2148167557}
