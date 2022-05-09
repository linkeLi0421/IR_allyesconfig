; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-74x164.c_pt.bc'
source_filename = "../drivers/gpio/gpio-74x164.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.gen_74x164_chip = type { %struct.gpio_chip, %struct.mutex, ptr, i32, [0 x i8] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.71, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.71 = type { ptr }

@__initcall__kmod_gpio_74x164__230_200_gen_74x164_driver_init6 = internal global ptr @gen_74x164_driver_init, section ".initcall6.init", align 4
@gen_74x164_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @gen_74x164_spi_ids, ptr @gen_74x164_probe, ptr @gen_74x164_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gen_74x164_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_gen_74x164_driver_exit = internal global ptr @gen_74x164_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [52 x i8] c"gpio_74x164.author=Gabor Juhos <juhosg@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [55 x i8] c"gpio_74x164.author=Miguel Gaio <miguel.gaio@efixo.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [78 x i8] c"gpio_74x164.description=GPIO expander driver for 74X164 8-bits shift register\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [42 x i8] c"gpio_74x164.file=drivers/gpio/gpio-74x164\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [27 x i8] c"gpio_74x164.license=GPL v2\00", section ".modinfo", align 1
@gen_74x164_spi_ids = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"74hc595\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"74lvc594\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"74x164\00", [25 x i8] zeroinitializer }, align 32
@gen_74x164_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fairchild,74hc595\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,74lvc594\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"registers-number\00", [47 x i8] zeroinitializer }, align 32
@gen_74x164_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 117, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Missing 'registers-number' property.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gen_74x164_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/gpio/gpio-74x164.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gen_74x164_probe._entry_ptr = internal global ptr @gen_74x164_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@gen_74x164_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@gen_74x164_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 152, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed writing: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@gen_74x164_probe._entry_ptr.11 = internal global ptr @gen_74x164_probe._entry.9, section ".printk_index", align 4
@gen_74x164_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gen_74x164_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"gen_74x164_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 191, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"gen_74x164_spi_ids\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 177, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 193, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"gen_74x164_dt_ids\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 184, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 115, i32 44 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 117, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 125, i32 54 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 148, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 152, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.64 = private constant [30 x i8] c"../drivers/gpio/gpio-74x164.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 156, i32 8 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_gen_74x164_driver_exit, ptr @__initcall__kmod_gpio_74x164__230_200_gen_74x164_driver_init6, ptr @gen_74x164_driver_exit, ptr @gen_74x164_probe._entry, ptr @gen_74x164_probe._entry.9, ptr @gen_74x164_probe._entry_ptr, ptr @gen_74x164_probe._entry_ptr.11, ptr @gen_74x164_driver, ptr @gen_74x164_spi_ids, ptr @.str, ptr @gen_74x164_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @gen_74x164_probe.__key, ptr @.str.8, ptr @.str.10, ptr @gen_74x164_probe.lock_key, ptr @gen_74x164_probe.request_key], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen_74x164_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen_74x164_spi_ids to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen_74x164_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen_74x164_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen_74x164_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen_74x164_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen_74x164_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen_74x164_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gen_74x164_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @gen_74x164_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gen_74x164_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @gen_74x164_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gen_74x164_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %nregs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nregs) #5
  %0 = ptrtoint ptr %nregs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nregs, align 4, !annotation !51
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %1 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 8, ptr %bits_per_word, align 1
  %call = tail call i32 @spi_setup(ptr noundef %spi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.1, ptr noundef nonnull %nregs, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %nregs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nregs, align 4
  %add = add i32 %3, 448
  %call.i86 = call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef %add, i32 noundef 3520) #5
  %tobool7.not = icmp eq ptr %call.i86, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call11 = call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.7, i32 noundef 3) #5
  %gpiod_oe = getelementptr inbounds %struct.gen_74x164_chip, ptr %call.i86, i32 0, i32 2
  %4 = ptrtoint ptr %gpiod_oe to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %gpiod_oe, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  call void @gpiod_set_value_cansleep(ptr noundef %call11, i32 noundef 1) #5
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i86, ptr %driver_data.i.i, align 4
  %modalias = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 11
  %7 = ptrtoint ptr %call.i86 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %modalias, ptr %call.i86, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i86, i32 0, i32 9
  %8 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @gen_74x164_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i86, i32 0, i32 10
  %9 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gen_74x164_get_value, ptr %get, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i86, i32 0, i32 12
  %10 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @gen_74x164_set_value, ptr %set, align 4
  %set_multiple = getelementptr inbounds %struct.gpio_chip, ptr %call.i86, i32 0, i32 13
  %11 = ptrtoint ptr %set_multiple to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @gen_74x164_set_multiple, ptr %set_multiple, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i86, i32 0, i32 19
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %base, align 4
  %13 = ptrtoint ptr %nregs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nregs, align 4
  %registers = getelementptr inbounds %struct.gen_74x164_chip, ptr %call.i86, i32 0, i32 3
  %15 = ptrtoint ptr %registers to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %registers, align 4
  %.tr = trunc i32 %14 to i16
  %conv = shl i16 %.tr, 3
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i86, i32 0, i32 20
  %16 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %ngpio, align 4
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %call.i86, i32 0, i32 23
  %17 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %can_sleep, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i86, i32 0, i32 2
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %spi, ptr %parent, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call.i86, i32 0, i32 4
  %19 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %owner, align 4
  %lock = getelementptr inbounds %struct.gen_74x164_chip, ptr %call.i86, i32 0, i32 1
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @gen_74x164_probe.__key) #5
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent, align 4
  %buffer.i = getelementptr inbounds %struct.gen_74x164_chip, ptr %call.i86, i32 0, i32 4
  %22 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %registers, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %24 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %25 = call ptr @memset(ptr %24, i32 0, i32 92)
  %26 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %23, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %28 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 40)
  %30 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %32 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %33 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end17.__gen_74x164_write_config.exit_crit_edge

if.end17.__gen_74x164_write_config.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %__gen_74x164_write_config.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %35 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %37 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %__gen_74x164_write_config.exit

__gen_74x164_write_config.exit:                   ; preds = %if.end.i.i.i.i.i.i.i, %if.end17.__gen_74x164_write_config.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %21, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool34.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %__gen_74x164_write_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10, i32 noundef %call.i.i.i) #8
  br label %exit_destroy

if.end40:                                         ; preds = %__gen_74x164_write_config.exit
  %call42 = call i32 @gpiochip_add_data_with_key(ptr noundef nonnull %call.i86, ptr noundef nonnull %call.i86, ptr noundef nonnull @gen_74x164_probe.lock_key, ptr noundef nonnull @gen_74x164_probe.request_key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end40.cleanup_crit_edge, label %if.end40.exit_destroy_crit_edge

if.end40.exit_destroy_crit_edge:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_destroy

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

exit_destroy:                                     ; preds = %if.end40.exit_destroy_crit_edge, %do.end38
  %ret.0 = phi i32 [ %call.i.i.i, %do.end38 ], [ %call42, %if.end40.exit_destroy_crit_edge ]
  call void @mutex_destroy(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %exit_destroy, %if.end40.cleanup_crit_edge, %if.then14, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %5, %if.then14 ], [ %ret.0, %exit_destroy ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nregs) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gen_74x164_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gpiod_oe = getelementptr inbounds %struct.gen_74x164_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gpiod_oe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod_oe, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #5
  tail call void @gpiochip_remove(ptr noundef %1) #5
  %lock = getelementptr inbounds %struct.gen_74x164_chip, ptr %1, i32 0, i32 1
  tail call void @mutex_destroy(ptr noundef %lock) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gen_74x164_direction_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gen_74x164_set_value(ptr noundef %gc, i32 noundef %offset, i32 noundef %val)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gen_74x164_get_value(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %registers = getelementptr inbounds %struct.gen_74x164_chip, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %registers, align 4
  %div10 = lshr i32 %offset, 3
  %2 = xor i32 %div10, -1
  %sub1 = add i32 %1, %2
  %conv2 = and i32 %offset, 7
  %lock = getelementptr inbounds %struct.gen_74x164_chip, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %idxprom = and i32 %sub1, 255
  %arrayidx = getelementptr %struct.gen_74x164_chip, ptr %call, i32 0, i32 4, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %4 to i32
  %shr = lshr i32 %conv3, %conv2
  %and = and i32 %shr, 1
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gen_74x164_set_value(ptr noundef %gc, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %registers = getelementptr inbounds %struct.gen_74x164_chip, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %registers, align 4
  %div23 = lshr i32 %offset, 3
  %2 = xor i32 %div23, -1
  %sub1 = add i32 %1, %2
  %3 = trunc i32 %offset to i8
  %conv2 = and i8 %3, 7
  %lock = getelementptr inbounds %struct.gen_74x164_chip, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %shl7 = shl nuw i8 1, %conv2
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %idxprom = and i32 %sub1, 255
  %arrayidx = getelementptr %struct.gen_74x164_chip, ptr %call, i32 0, i32 4, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %or = or i8 %5, %shl7
  store i8 %or, ptr %arrayidx, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %neg = xor i8 %shl7, -1
  %idxprom9 = and i32 %sub1, 255
  %arrayidx10 = getelementptr %struct.gen_74x164_chip, ptr %call, i32 0, i32 4, i32 %idxprom9
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10, align 1
  %and = and i8 %7, %neg
  store i8 %and, ptr %arrayidx10, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %parent.i = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 4
  %buffer.i = getelementptr inbounds %struct.gen_74x164_chip, ptr %call, i32 0, i32 4
  %10 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %registers, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %12 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 92)
  %14 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %11, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %16 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.__gen_74x164_write_config.exit_crit_edge

if.end.__gen_74x164_write_config.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %__gen_74x164_write_config.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %__gen_74x164_write_config.exit

__gen_74x164_write_config.exit:                   ; preds = %if.end.i.i.i.i.i.i.i, %if.end.__gen_74x164_write_config.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %9, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  call void @mutex_unlock(ptr noundef %lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gen_74x164_set_multiple(ptr noundef %gc, ptr noundef %mask, ptr nocapture noundef readonly %bits) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %bankmask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bankmask) #5
  %0 = ptrtoint ptr %bankmask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bankmask, align 4, !annotation !51
  %lock = getelementptr inbounds %struct.gen_74x164_chip, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %registers = getelementptr inbounds %struct.gen_74x164_chip, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %registers, align 4
  %mul = shl i32 %2, 3
  %call1 = call i32 @find_next_clump8(ptr noundef nonnull %bankmask, ptr noundef %mask, i32 noundef %mul, i32 noundef 0) #5
  %3 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %registers, align 4
  %mul332 = shl i32 %4, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %mul332)
  %cmp33 = icmp ult i32 %call1, %mul332
  br i1 %cmp33, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %5 = phi i32 [ %19, %for.body.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %offset.034 = phi i32 [ %call15, %for.body.for.body_crit_edge ], [ %call1, %entry.for.body_crit_edge ]
  %div31 = lshr i32 %offset.034, 3
  %6 = xor i32 %div31, -1
  %sub5 = add i32 %5, %6
  %div2.i = lshr i32 %offset.034, 5
  %rem.i = and i32 %offset.034, 31
  %arrayidx.i = getelementptr i32, ptr %bits, i32 %div2.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %8, %rem.i
  %9 = ptrtoint ptr %bankmask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bankmask, align 4
  %and = and i32 %shr.i, %10
  %arrayidx = getelementptr %struct.gen_74x164_chip, ptr %call, i32 0, i32 4, i32 %sub5
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %13 = trunc i32 %10 to i8
  %14 = xor i8 %13, -1
  %conv8 = and i8 %12, %14
  %15 = trunc i32 %and to i8
  %conv12 = or i8 %conv8, %15
  store i8 %conv12, ptr %arrayidx, align 1
  %16 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %registers, align 4
  %mul14 = shl i32 %17, 3
  %add = add i32 %offset.034, 8
  %call15 = call i32 @find_next_clump8(ptr noundef nonnull %bankmask, ptr noundef %mask, i32 noundef %mul14, i32 noundef %add) #5
  %18 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %registers, align 4
  %mul3 = shl i32 %19, 3
  %cmp = icmp ult i32 %call15, %mul3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %4, %entry.for.end_crit_edge ], [ %19, %for.body.for.end_crit_edge ]
  %parent.i = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 2
  %20 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent.i, align 4
  %buffer.i = getelementptr inbounds %struct.gen_74x164_chip, ptr %call, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %22 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 92)
  %24 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.lcssa, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %26 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 40)
  %28 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %30 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %for.end.__gen_74x164_write_config.exit_crit_edge

for.end.__gen_74x164_write_config.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %__gen_74x164_write_config.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %35 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %__gen_74x164_write_config.exit

__gen_74x164_write_config.exit:                   ; preds = %if.end.i.i.i.i.i.i.i, %for.end.__gen_74x164_write_config.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %21, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  call void @mutex_unlock(ptr noundef %lock) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bankmask) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_next_clump8(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !35, !36, !37, !39, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_gpio_74x164__230_200_gen_74x164_driver_init6, !1, !"__initcall__kmod_gpio_74x164__230_200_gen_74x164_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-74x164.c", i32 200, i32 1}
!2 = !{ptr @__exitcall_gen_74x164_driver_exit, !1, !"__exitcall_gen_74x164_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-74x164.c", i32 202, i32 1}
!5 = !{ptr @__UNIQUE_ID_author232, !6, !"__UNIQUE_ID_author232", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-74x164.c", i32 203, i32 1}
!7 = !{ptr @__UNIQUE_ID_description233, !8, !"__UNIQUE_ID_description233", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-74x164.c", i32 204, i32 1}
!9 = !{ptr @__UNIQUE_ID_file234, !10, !"__UNIQUE_ID_file234", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpio-74x164.c", i32 205, i32 1}
!11 = !{ptr @__UNIQUE_ID_license235, !10, !"__UNIQUE_ID_license235", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-74x164.c", i32 193, i32 12}
!14 = !{ptr @gen_74x164_driver, !15, !"gen_74x164_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-74x164.c", i32 191, i32 26}
!16 = !{ptr @gen_74x164_spi_ids, !17, !"gen_74x164_spi_ids", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-74x164.c", i32 177, i32 35}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-74x164.c", i32 115, i32 44}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-74x164.c", i32 117, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @gen_74x164_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @gen_74x164_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-74x164.c", i32 125, i32 54}
!30 = !{ptr @gen_74x164_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-74x164.c", i32 148, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpio/gpio-74x164.c", i32 152, i32 3}
!35 = !{ptr @gen_74x164_probe._entry.9, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @gen_74x164_probe._entry_ptr.11, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @gen_74x164_probe.lock_key, !38, !"lock_key", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-74x164.c", i32 156, i32 8}
!39 = !{ptr @gen_74x164_probe.request_key, !38, !"request_key", i1 false, i1 false}
!40 = !{ptr @gen_74x164_dt_ids, !41, !"gen_74x164_dt_ids", i1 false, i1 false}
!41 = !{!"../drivers/gpio/gpio-74x164.c", i32 184, i32 34}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"auto-init"}
