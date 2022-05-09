; ModuleID = '/llk/IR_all_yes/drivers/mfd/htc-pasic3.c_pt.bc'
source_filename = "../drivers/mfd/htc-pasic3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pasic3_write_register\22, \22a\22\09"
module asm "\09.weak\09__crc_pasic3_write_register\09\09\09\09"
module asm "\09.long\09__crc_pasic3_write_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pasic3_write_register:\09\09\09\09\09"
module asm "\09.asciz \09\22pasic3_write_register\22\09\09\09\09\09"
module asm "__kstrtabns_pasic3_write_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pasic3_read_register\22, \22a\22\09"
module asm "\09.weak\09__crc_pasic3_read_register\09\09\09\09"
module asm "\09.long\09__crc_pasic3_read_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pasic3_read_register:\09\09\09\09\09"
module asm "\09.asciz \09\22pasic3_read_register\22\09\09\09\09\09"
module asm "__kstrtabns_pasic3_read_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ds1wm_driver_data = type { i32, i32, i32, i8, i32 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.pasic3_data = type { ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pasic3_platform_data = type { ptr, i32 }

@__kstrtab_pasic3_write_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_pasic3_write_register = external dso_local constant [0 x i8], align 1
@__ksymtab_pasic3_write_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pasic3_write_register to i32), ptr @__kstrtab_pasic3_write_register, ptr @__kstrtabns_pasic3_write_register }, section "___ksymtab+pasic3_write_register", align 4
@__kstrtab_pasic3_read_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_pasic3_read_register = external dso_local constant [0 x i8], align 1
@__ksymtab_pasic3_read_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pasic3_read_register to i32), ptr @__kstrtab_pasic3_read_register, ptr @__kstrtabns_pasic3_read_register }, section "___ksymtab+pasic3_read_register", align 4
@__UNIQUE_ID_alias229 = internal constant [33 x i8] c"htc_pasic3.alias=platform:pasic3\00", section ".modinfo", align 1
@__initcall__kmod_htc_pasic3__230_206_pasic3_driver_init6 = internal global ptr @pasic3_driver_init, section ".initcall6.init", align 4
@pasic3_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @pasic3_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pasic3_driver_exit = internal global ptr @pasic3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [58 x i8] c"htc_pasic3.author=Philipp Zabel <philipp.zabel@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [50 x i8] c"htc_pasic3.description=Core driver for HTC PASIC3\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [39 x i8] c"htc_pasic3.file=drivers/mfd/htc-pasic3\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [23 x i8] c"htc_pasic3.license=GPL\00", section ".modinfo", align 1
@ds1wm_resources = internal global [2 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], section ".init.data", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pasic3\00", [25 x i8] zeroinitializer }, align 32
@pasic3_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 155, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"couldn't ioremap PASIC3\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pasic3_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/mfd/htc-pasic3.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pasic3_probe._entry_ptr = internal global ptr @pasic3_probe._entry, section ".printk_index", align 4
@ds1wm_pdata = internal global { %struct.ds1wm_driver_data, [44 x i8] } { %struct.ds1wm_driver_data { i32 0, i32 0, i32 1, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@ds1wm_cell = internal constant %struct.mfd_cell { ptr @.str.13, i32 0, i32 0, ptr @ds1wm_enable, ptr @ds1wm_disable, ptr null, ptr null, ptr @ds1wm_pdata, i32 20, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @ds1wm_resources, i8 0, i8 0, ptr null, i32 0 }, section ".init.rodata", align 8
@pasic3_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 169, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to register DS1WM\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pasic3_probe._entry_ptr.9 = internal global ptr @pasic3_probe._entry.6, section ".printk_index", align 4
@led_cell = internal global %struct.mfd_cell { ptr @.str.19, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, section ".init.data", align 8
@pasic3_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 178, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register LED device\0A\00", [33 x i8] zeroinitializer }, align 32
@pasic3_probe._entry_ptr.12 = internal global ptr @pasic3_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ds1wm\00", [26 x i8] zeroinitializer }, align 32
@ds1wm_enable.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"htc_pasic3\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds1wm_enable\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DS1WM OWM_EN low (active) %02x\0A\00", [32 x i8] zeroinitializer }, align 32
@ds1wm_disable.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ds1wm_disable\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DS1WM OWM_EN high (inactive) %02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"leds-pasic3\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"pasic3_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 199, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 144, i32 7 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 155, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"ds1wm_pdata\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 97, i32 33 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 169, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 178, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 115, i32 19 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 81, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 93, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [28 x i8] c"../drivers/mfd/htc-pasic3.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 66, i32 10 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_alias229, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_pasic3_driver_exit, ptr @__initcall__kmod_htc_pasic3__230_206_pasic3_driver_init6, ptr @__ksymtab_pasic3_read_register, ptr @__ksymtab_pasic3_write_register, ptr @pasic3_driver_exit, ptr @pasic3_probe._entry, ptr @pasic3_probe._entry.10, ptr @pasic3_probe._entry.6, ptr @pasic3_probe._entry_ptr, ptr @pasic3_probe._entry_ptr.12, ptr @pasic3_probe._entry_ptr.9, ptr @pasic3_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ds1wm_pdata, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pasic3_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pasic3_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1wm_pdata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pasic3_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pasic3_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pasic3_write_register(ptr nocapture noundef readonly %dev, i32 noundef %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bus_shift1 = getelementptr inbounds %struct.pasic3_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus_shift1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_shift1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %shl = shl i32 5, %3
  %add.ptr = getelementptr i8, ptr %5, i32 %shl
  %shl3 = shl i32 6, %3
  %add.ptr4 = getelementptr i8, ptr %5, i32 %shl3
  %6 = trunc i32 %reg to i8
  %conv = and i8 %6, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #4, !srcloc !67
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %val) #4, !srcloc !67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @pasic3_read_register(ptr nocapture noundef readonly %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bus_shift1 = getelementptr inbounds %struct.pasic3_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus_shift1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_shift1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %shl = shl i32 5, %3
  %add.ptr = getelementptr i8, ptr %5, i32 %shl
  %shl3 = shl i32 6, %3
  %add.ptr4 = getelementptr i8, ptr %5, i32 %shl3
  %6 = trunc i32 %reg to i8
  %conv = or i8 %6, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #4, !srcloc !67
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4) #4, !srcloc !68
  ret i8 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pasic3_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @pasic3_driver, ptr noundef nonnull @pasic3_probe, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pasic3_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @pasic3_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pasic3_probe(ptr noundef %pdev) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %flags = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 3
  %or = or i32 %and, 1024
  store i32 %or, ptr getelementptr inbounds ([2 x %struct.resource], ptr @ds1wm_resources, i32 0, i32 1, i32 3), align 4
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq.0 = phi i32 [ %5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call4, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call4, i32 0, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %7
  %add.i = add i32 %sub.i, %9
  %call10 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef %add.i, ptr noundef nonnull @.str, i32 noundef 0) #4
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #4
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %11 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call4, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i, align 4
  %sub.i96 = sub i32 1, %12
  %add.i97 = add i32 %sub.i96, %14
  %call20 = tail call ptr @ioremap(i32 noundef %12, i32 noundef %add.i97) #4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call20, ptr %call.i, align 4
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %do.end, label %if.end24

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i, align 4
  %18 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call4, align 4
  %add.i100 = add i32 %17, -4
  %sub = sub i32 %add.i100, %19
  %shr = lshr i32 %sub, 3
  %bus_shift = getelementptr inbounds %struct.pasic3_data, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %bus_shift to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr, ptr %bus_shift, align 4
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %land.lhs.true

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end24
  %clock_rate = getelementptr inbounds %struct.pasic3_platform_data, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %clock_rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clock_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool27.not = icmp eq i32 %22, 0
  br i1 %tobool27.not, label %land.lhs.true.land.lhs.true41_crit_edge, label %if.then28

land.lhs.true.land.lhs.true41_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true41

if.then28:                                        ; preds = %land.lhs.true
  store i32 %22, ptr getelementptr inbounds (%struct.ds1wm_driver_data, ptr @ds1wm_pdata, i32 0, i32 1), align 4
  %shl = shl i32 5, %shr
  %sub31 = add i32 %shl, -1
  store i32 %sub31, ptr getelementptr inbounds ([2 x %struct.resource], ptr @ds1wm_resources, i32 0, i32 0, i32 1), align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  %call33 = tail call i32 @mfd_add_devices(ptr noundef %dev, i32 noundef %24, ptr noundef nonnull @ds1wm_cell, i32 noundef 1, ptr noundef nonnull %call4, i32 noundef %irq.0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  br i1 %cmp, label %do.end37, label %if.then28.land.lhs.true41_crit_edge

if.then28.land.lhs.true41_crit_edge:              ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true41

do.end37:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7) #7
  br label %land.lhs.true41

land.lhs.true41:                                  ; preds = %do.end37, %if.then28.land.lhs.true41_crit_edge, %land.lhs.true.land.lhs.true41_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %tobool42.not = icmp eq ptr %26, null
  br i1 %tobool42.not, label %land.lhs.true41.cleanup_crit_edge, label %if.then43

land.lhs.true41.cleanup_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then43:                                        ; preds = %land.lhs.true41
  store ptr %26, ptr getelementptr inbounds (%struct.mfd_cell, ptr @led_cell, i32 0, i32 7), align 4
  store i32 12, ptr getelementptr inbounds (%struct.mfd_cell, ptr @led_cell, i32 0, i32 8), align 8
  %id46 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %27 = ptrtoint ptr %id46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id46, align 4
  %call47 = tail call i32 @mfd_add_devices(ptr noundef %dev, i32 noundef %28, ptr noundef nonnull @led_cell, i32 noundef 1, ptr noundef nonnull %call4, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %do.end52, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end52:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %if.then43.cleanup_crit_edge, %land.lhs.true41.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ -6, %if.end.cleanup_crit_edge ], [ -16, %if.end7.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ 0, %if.then43.cleanup_crit_edge ], [ 0, %do.end52 ], [ 0, %land.lhs.true41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1wm_enable(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %bus_shift1.i = getelementptr inbounds %struct.pasic3_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bus_shift1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_shift1.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %shl.i = shl i32 5, %5
  %add.ptr.i = getelementptr i8, ptr %7, i32 %shl.i
  %shl3.i = shl i32 6, %5
  %add.ptr4.i = getelementptr i8, ptr %7, i32 %shl3.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 -88) #4, !srcloc !67
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4.i) #4, !srcloc !68
  %9 = and i8 %8, 127
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %bus_shift1.i11 = getelementptr inbounds %struct.pasic3_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %bus_shift1.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus_shift1.i11, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %shl.i12 = shl i32 5, %13
  %add.ptr.i13 = getelementptr i8, ptr %15, i32 %shl.i12
  %shl3.i14 = shl i32 6, %13
  %add.ptr4.i15 = getelementptr i8, ptr %15, i32 %shl3.i14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13, i8 40) #4, !srcloc !67
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i15, i8 %9) #4, !srcloc !67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_enable.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_enable, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !69

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_enable.__UNIQUE_ID_ddebug227, ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %and) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1wm_disable(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %bus_shift1.i = getelementptr inbounds %struct.pasic3_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bus_shift1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_shift1.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %shl.i = shl i32 5, %5
  %add.ptr.i = getelementptr i8, ptr %7, i32 %shl.i
  %shl3.i = shl i32 6, %5
  %add.ptr4.i = getelementptr i8, ptr %7, i32 %shl3.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 -88) #4, !srcloc !67
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4.i) #4, !srcloc !68
  %9 = or i8 %8, -128
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %bus_shift1.i11 = getelementptr inbounds %struct.pasic3_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %bus_shift1.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus_shift1.i11, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %shl.i12 = shl i32 5, %13
  %add.ptr.i13 = getelementptr i8, ptr %15, i32 %shl.i12
  %shl3.i14 = shl i32 6, %13
  %add.ptr4.i15 = getelementptr i8, ptr %15, i32 %shl3.i14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13, i8 40) #4, !srcloc !67
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i15, i8 %9) #4, !srcloc !67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_disable.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_disable, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !69

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_disable.__UNIQUE_ID_ddebug228, ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %or) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pasic3_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @mfd_remove_devices(ptr noundef %dev) #4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %3) #4
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %add.i) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__ksymtab_pasic3_write_register, !1, !"__ksymtab_pasic3_write_register", i1 false, i1 false}
!1 = !{!"../drivers/mfd/htc-pasic3.c", i32 44, i32 1}
!2 = !{ptr @__ksymtab_pasic3_read_register, !3, !"__ksymtab_pasic3_read_register", i1 false, i1 false}
!3 = !{!"../drivers/mfd/htc-pasic3.c", i32 59, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias229, !5, !"__UNIQUE_ID_alias229", i1 false, i1 false}
!5 = !{!"../drivers/mfd/htc-pasic3.c", i32 197, i32 1}
!6 = !{ptr @__initcall__kmod_htc_pasic3__230_206_pasic3_driver_init6, !7, !"__initcall__kmod_htc_pasic3__230_206_pasic3_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/mfd/htc-pasic3.c", i32 206, i32 1}
!8 = !{ptr @__exitcall_pasic3_driver_exit, !7, !"__exitcall_pasic3_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author231, !10, !"__UNIQUE_ID_author231", i1 false, i1 false}
!10 = !{!"../drivers/mfd/htc-pasic3.c", i32 208, i32 1}
!11 = !{ptr @__UNIQUE_ID_description232, !12, !"__UNIQUE_ID_description232", i1 false, i1 false}
!12 = !{!"../drivers/mfd/htc-pasic3.c", i32 209, i32 1}
!13 = !{ptr @__UNIQUE_ID_file233, !14, !"__UNIQUE_ID_file233", i1 false, i1 false}
!14 = !{!"../drivers/mfd/htc-pasic3.c", i32 210, i32 1}
!15 = !{ptr @__UNIQUE_ID_license234, !14, !"__UNIQUE_ID_license234", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mfd/htc-pasic3.c", i32 144, i32 7}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mfd/htc-pasic3.c", i32 155, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pasic3_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @pasic3_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mfd/htc-pasic3.c", i32 169, i32 4}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @pasic3_probe._entry.6, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @pasic3_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mfd/htc-pasic3.c", i32 178, i32 4}
!33 = !{ptr @pasic3_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @pasic3_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @ds1wm_resources, !36, !"ds1wm_resources", i1 false, i1 false}
!36 = !{!"../drivers/mfd/htc-pasic3.c", i32 102, i32 24}
!37 = !{ptr @ds1wm_pdata, !38, !"ds1wm_pdata", i1 false, i1 false}
!38 = !{!"../drivers/mfd/htc-pasic3.c", i32 97, i32 33}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/htc-pasic3.c", i32 115, i32 19}
!41 = !{ptr @ds1wm_cell, !42, !"ds1wm_cell", i1 false, i1 false}
!42 = !{!"../drivers/mfd/htc-pasic3.c", i32 114, i32 30}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mfd/htc-pasic3.c", i32 81, i32 2}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ds1wm_enable.__UNIQUE_ID_ddebug227, !44, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mfd/htc-pasic3.c", i32 93, i32 2}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ds1wm_disable.__UNIQUE_ID_ddebug228, !49, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mfd/htc-pasic3.c", i32 66, i32 10}
!54 = !{ptr @led_cell, !55, !"led_cell", i1 false, i1 false}
!55 = !{!"../drivers/mfd/htc-pasic3.c", i32 65, i32 24}
!56 = !{ptr @pasic3_driver, !57, !"pasic3_driver", i1 false, i1 false}
!57 = !{!"../drivers/mfd/htc-pasic3.c", i32 199, i32 31}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 4866137}
!68 = !{i64 4866532}
!69 = !{i64 2148956455, i64 2148956460, i64 2148956473, i64 2148956517, i64 2148956551, i64 2148956572}
