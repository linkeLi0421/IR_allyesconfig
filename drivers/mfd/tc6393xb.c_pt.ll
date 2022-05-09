; ModuleID = '/llk/IR_all_yes/drivers/mfd/tc6393xb.c_pt.bc'
source_filename = "../drivers/mfd/tc6393xb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tc6393xb_lcd_set_power\22, \22a\22\09"
module asm "\09.weak\09__crc_tc6393xb_lcd_set_power\09\09\09\09"
module asm "\09.long\09__crc_tc6393xb_lcd_set_power\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tc6393xb_lcd_set_power:\09\09\09\09\09"
module asm "\09.asciz \09\22tc6393xb_lcd_set_power\22\09\09\09\09\09"
module asm "__kstrtabns_tc6393xb_lcd_set_power:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tc6393xb_lcd_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_tc6393xb_lcd_mode\09\09\09\09"
module asm "\09.long\09__crc_tc6393xb_lcd_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tc6393xb_lcd_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22tc6393xb_lcd_mode\22\09\09\09\09\09"
module asm "__kstrtabns_tc6393xb_lcd_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.tmio_mmc_data = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tc6393xb = type { ptr, %struct.gpio_chip, ptr, %struct.raw_spinlock, %struct.anon.87, %struct.resource, ptr, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.anon.87 = type { i8, i16, [3 x i8], [3 x i8], [3 x i8] }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tc6393xb_platform_data = type { i16, i16, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i8 }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_tc6393xb_lcd_set_power = external dso_local constant [0 x i8], align 1
@__kstrtabns_tc6393xb_lcd_set_power = external dso_local constant [0 x i8], align 1
@__ksymtab_tc6393xb_lcd_set_power = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tc6393xb_lcd_set_power to i32), ptr @__kstrtab_tc6393xb_lcd_set_power, ptr @__kstrtabns_tc6393xb_lcd_set_power }, section "___ksymtab+tc6393xb_lcd_set_power", align 4
@__kstrtab_tc6393xb_lcd_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_tc6393xb_lcd_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_tc6393xb_lcd_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tc6393xb_lcd_mode to i32), ptr @__kstrtab_tc6393xb_lcd_mode, ptr @__kstrtabns_tc6393xb_lcd_mode }, section "___ksymtab+tc6393xb_lcd_mode", align 4
@tc6393xb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tc6393xb_probe, ptr @tc6393xb_remove, ptr null, ptr @tc6393xb_suspend, ptr @tc6393xb_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_tc6393xb__303_848_tc6393xb_init4 = internal global ptr @tc6393xb_init, section ".initcall4.init", align 4
@__exitcall_tc6393xb_exit = internal global ptr @tc6393xb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file304 = internal constant [35 x i8] c"tc6393xb.file=drivers/mfd/tc6393xb\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [24 x i8] c"tc6393xb.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author306 = internal constant [60 x i8] c"tc6393xb.author=Ian Molton, Dmitry Baryshkov and Dirk Opfer\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [59 x i8] c"tc6393xb.description=tc6393xb Toshiba Mobile IO Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_alias308 = internal constant [33 x i8] c"tc6393xb.alias=platform:tc6393xb\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tc6393xb\00", [23 x i8] zeroinitializer }, align 32
@tc6393xb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&tc6393xb->lock\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CLK_CK3P6MI\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tc6393xb-core\00", [18 x i8] zeroinitializer }, align 32
@tc6393xb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016Toshiba tc6393xb revision %d at 0x%08lx, irq %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tc6393xb_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mfd/tc6393xb.c\00", [41 x i8] zeroinitializer }, align 32
@tc6393xb_probe._entry_ptr = internal global ptr @tc6393xb_probe._entry, section ".printk_index", align 4
@tc6393xb_cells = internal global { [4 x %struct.mfd_cell], [64 x i8] } { [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.7, i32 0, i32 0, ptr @tc6393xb_nand_enable, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 3, ptr @tc6393xb_nand_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.8, i32 0, i32 0, ptr @tc6393xb_mmc_enable, ptr null, ptr null, ptr @tc6393xb_mmc_resume, ptr @tc6393xb_mmc_data, i32 52, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @tc6393xb_mmc_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.9, i32 0, i32 0, ptr @tc6393xb_ohci_enable, ptr @tc6393xb_ohci_disable, ptr @tc6393xb_ohci_suspend, ptr @tc6393xb_ohci_enable, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 5, ptr @tc6393xb_ohci_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.10, i32 0, i32 0, ptr @tc6393xb_fb_enable, ptr @tc6393xb_fb_disable, ptr @tc6393xb_fb_disable, ptr @tc6393xb_fb_enable, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 4, ptr @tc6393xb_fb_resources, i8 0, i8 0, ptr null, i32 0 }], [64 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tc6393xb_register_gpio.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tc6393xb_register_gpio.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tc6393xb_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr @tc6393xb_irq_ack, ptr @tc6393xb_irq_mask, ptr null, ptr @tc6393xb_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tmio-nand\00", [22 x i8] zeroinitializer }, align 32
@tc6393xb_nand_resources = internal constant { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 4096, i32 4103, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 256, i32 511, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tmio-mmc\00", [23 x i8] zeroinitializer }, align 32
@tc6393xb_mmc_data = internal global { %struct.tmio_mmc_data, [44 x i8] } { %struct.tmio_mmc_data { ptr null, ptr null, i32 24000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 0, ptr @tc6393xb_mmc_pwr, ptr @tc6393xb_mmc_clk_div }, [44 x i8] zeroinitializer }, align 32
@tc6393xb_mmc_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 2048, i32 2559, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1, i32 1, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tmio-ohci\00", [22 x i8] zeroinitializer }, align 32
@tc6393xb_ohci_resources = internal constant { [5 x %struct.resource], [32 x i8] } { [5 x %struct.resource] [%struct.resource { i32 12288, i32 12799, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 768, i32 1023, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 65536, i32 98303, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 98304, i32 131071, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 2, i32 2, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tmio-fb\00", [24 x i8] zeroinitializer }, align 32
@tc6393xb_fb_resources = internal constant { [4 x %struct.resource], [32 x i8] } { [4 x %struct.resource] [%struct.resource { i32 20480, i32 20991, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1280, i32 1535, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1048576, i32 2097151, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 4, i32 4, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@tc6393xb_nand_enable.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.6, ptr @.str.12, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tc6393xb_nand_enable\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SMD buffer on\0A\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"tc6393xb_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 827, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 834, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 621, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 634, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 641, i32 15 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 675, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"tc6393xb_cells\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 386, i32 24 }
@___asan_gen_.46 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 510, i32 9 }
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"tc6393xb_chip\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 561, i32 24 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 388, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [24 x i8] c"tc6393xb_nand_resources\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 136, i32 30 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 394, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"tc6393xb_mmc_data\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 380, i32 29 }
@___asan_gen_.67 = private unnamed_addr constant [23 x i8] c"tc6393xb_mmc_resources\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 154, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 403, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant [24 x i8] c"tc6393xb_ohci_resources\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 167, i32 30 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 412, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [22 x i8] c"tc6393xb_fb_resources\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 195, i32 30 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [26 x i8] c"../drivers/mfd/tc6393xb.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 128, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_alias308, ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_tc6393xb_exit, ptr @__initcall__kmod_tc6393xb__303_848_tc6393xb_init4, ptr @__ksymtab_tc6393xb_lcd_mode, ptr @__ksymtab_tc6393xb_lcd_set_power, ptr @tc6393xb_exit, ptr @tc6393xb_probe._entry, ptr @tc6393xb_probe._entry_ptr, ptr @tc6393xb_driver, ptr @.str, ptr @tc6393xb_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tc6393xb_cells, ptr @tc6393xb_register_gpio.lock_key, ptr @tc6393xb_register_gpio.request_key, ptr @tc6393xb_chip, ptr @.str.7, ptr @tc6393xb_nand_resources, ptr @.str.8, ptr @tc6393xb_mmc_data, ptr @tc6393xb_mmc_resources, ptr @.str.9, ptr @tc6393xb_ohci_resources, ptr @.str.10, ptr @tc6393xb_fb_resources, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc6393xb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc6393xb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc6393xb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc6393xb_cells to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc6393xb_register_gpio.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc6393xb_register_gpio.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc6393xb_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc6393xb_nand_resources to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc6393xb_mmc_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc6393xb_mmc_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc6393xb_ohci_resources to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc6393xb_fb_resources to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tc6393xb_lcd_set_power(ptr nocapture noundef readonly %fb, i1 noundef zeroext %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %fb, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.tc6393xb, ptr %3, i32 0, i32 3
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 224
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %7 = and i8 %6, -5
  %masksel = select i1 %on, i8 4, i8 0
  %fer.0 = or i8 %7, %masksel
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 %fer.0) #7, !srcloc !75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tc6393xb_lcd_mode(ptr nocapture noundef readonly %fb, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %fb, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.tc6393xb, ptr %3, i32 0, i32 3
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %pixclock = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 4
  %4 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixclock, align 4
  %conv2 = trunc i32 %5 to i16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv2) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %8) #7, !srcloc !77
  %9 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pixclock, align 4
  %shr = lshr i32 %10, 16
  %conv5 = trunc i32 %shr to i16
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv5) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 %13) #7, !srcloc !77
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #7
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tc6393xb_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @tc6393xb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6393xb_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tc6393xb_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6393xb_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call2 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 460) #10
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.tc6393xb, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @tc6393xb_probe.__key, i16 noundef signext 2) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call7 = tail call i32 @platform_get_irq(ptr noundef %dev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp = icmp sgt i32 %call7, -1
  br i1 %cmp, label %if.then8, label %do.body.err_clk_get_crit_edge

do.body.err_clk_get_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_get

if.then8:                                         ; preds = %do.body
  %irq = getelementptr inbounds %struct.tc6393xb, ptr %call7.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call7, ptr %irq, align 4
  %iomem10 = getelementptr inbounds %struct.tc6393xb, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %iomem10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %iomem10, align 8
  %irq_base = getelementptr inbounds %struct.tc6393xb_platform_data, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_base, align 4
  %irq_base11 = getelementptr inbounds %struct.tc6393xb, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %irq_base11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %irq_base11, align 8
  %call13 = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #7
  %clk = getelementptr inbounds %struct.tc6393xb, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call13, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call13 to i32
  br label %err_clk_get

if.end19:                                         ; preds = %if.then8
  %rscr20 = getelementptr inbounds %struct.tc6393xb, ptr %call7.i.i, i32 0, i32 5
  %name = getelementptr inbounds %struct.tc6393xb, ptr %call7.i.i, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.3, ptr %name, align 8
  %12 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call2, align 4
  %14 = ptrtoint ptr %rscr20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rscr20, align 8
  %15 = load i32, ptr %call2, align 4
  %add = add i32 %15, 255
  %end = getelementptr inbounds %struct.tc6393xb, ptr %call7.i.i, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %end, align 4
  %flags = getelementptr inbounds %struct.tc6393xb, ptr %call7.i.i, i32 0, i32 5, i32 3
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 512, ptr %flags, align 4
  %call23 = tail call i32 @request_resource(ptr noundef nonnull %call2, ptr noundef %rscr20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end19.err_request_scr_crit_edge

if.end19.err_request_scr_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_request_scr

if.end26:                                         ; preds = %if.end19
  %18 = ptrtoint ptr %rscr20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rscr20, align 8
  %20 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end, align 4
  %sub.i = sub i32 1, %19
  %add.i = add i32 %sub.i, %21
  %call29 = tail call ptr @ioremap(i32 noundef %19, i32 noundef %add.i) #7
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call29, ptr %call7.i.i, align 8
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %if.end26.err_ioremap_crit_edge, label %if.end33

if.end26.err_ioremap_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ioremap

if.end33:                                         ; preds = %if.end26
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end33.err_clk_enable_crit_edge

if.end33.err_clk_enable_crit_edge:                ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_enable

if.end.i:                                         ; preds = %if.end33
  %call1.i = tail call i32 @clk_enable(ptr noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end38, label %if.end.i.err_clk_enable.sink.split_crit_edge

if.end.i.err_clk_enable.sink.split_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_enable.sink.split

if.end38:                                         ; preds = %if.end.i
  %enable = getelementptr inbounds %struct.tc6393xb_platform_data, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %enable, align 4
  %call39 = tail call i32 %26(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.err_enable_crit_edge

if.end38.err_enable_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_enable

if.end42:                                         ; preds = %if.end38
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call7.i.i, align 8
  %add.ptr = getelementptr i8, ptr %28, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #7, !srcloc !75
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %1, align 4
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i.i, align 8
  %add.ptr45 = getelementptr i8, ptr %32, i32 154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %33 = tail call i16 @llvm.bswap.i16(i16 %30) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr45, i16 %33) #7, !srcloc !77
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call7.i.i, align 8
  %add.ptr47 = getelementptr i8, ptr %35, i32 152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr47, i16 4112) #7, !srcloc !77
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call7.i.i, align 8
  %add.ptr49 = getelementptr i8, ptr %37, i32 228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr49, i16 -13184) #7, !srcloc !77
  %scr_gper = getelementptr inbounds %struct.tc6393xb_platform_data, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %scr_gper to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %scr_gper, align 2
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call7.i.i, align 8
  %add.ptr51 = getelementptr i8, ptr %41, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %42 = tail call i16 @llvm.bswap.i16(i16 %39) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr51, i16 %42) #7, !srcloc !77
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call7.i.i, align 8
  %add.ptr53 = getelementptr i8, ptr %44, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr53, i8 0) #7, !srcloc !75
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call7.i.i, align 8
  %add.ptr55 = getelementptr i8, ptr %46, i32 82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr55, i8 -65) #7, !srcloc !75
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call7.i.i, align 8
  %add.ptr60 = getelementptr i8, ptr %48, i32 8
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr60) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %conv = zext i8 %49 to i32
  %50 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call2, align 4
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq, align 4
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %51, i32 noundef %53) #11
  %gpio = getelementptr inbounds %struct.tc6393xb, ptr %call7.i.i, i32 0, i32 1
  %base = getelementptr inbounds %struct.tc6393xb, ptr %call7.i.i, i32 0, i32 1, i32 19
  %54 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %base, align 8
  %gpio_base = getelementptr inbounds %struct.tc6393xb_platform_data, ptr %1, i32 0, i32 7
  %55 = ptrtoint ptr %gpio_base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %gpio_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp67 = icmp sgt i32 %56, -1
  br i1 %cmp67, label %if.then69, label %if.end42.if.end75_crit_edge

if.end42.if.end75_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then69:                                        ; preds = %if.end42
  %call71 = tail call fastcc i32 @tc6393xb_register_gpio(ptr noundef nonnull %call7.i.i, i32 noundef %56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then69.if.end75_crit_edge, label %if.then69.err_gpio_add_crit_edge

if.then69.err_gpio_add_crit_edge:                 ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_gpio_add

if.then69.if.end75_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.end75:                                         ; preds = %if.then69.if.end75_crit_edge, %if.end42.if.end75_crit_edge
  tail call fastcc void @tc6393xb_attach_irq(ptr noundef %dev)
  %setup = getelementptr inbounds %struct.tc6393xb_platform_data, ptr %1, i32 0, i32 8
  %57 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %setup, align 4
  %tobool76.not = icmp eq ptr %58, null
  br i1 %tobool76.not, label %if.end75.if.end83_crit_edge, label %if.then77

if.end75.if.end83_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then77:                                        ; preds = %if.end75
  %call79 = tail call i32 %58(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then77.if.end83_crit_edge, label %if.then77.err_setup_crit_edge

if.then77.err_setup_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_setup

if.then77.if.end83_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.end83:                                         ; preds = %if.then77.if.end83_crit_edge, %if.end75.if.end83_crit_edge
  %nand_data = getelementptr inbounds %struct.tc6393xb_platform_data, ptr %1, i32 0, i32 10
  %59 = ptrtoint ptr %nand_data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %nand_data, align 4
  store ptr %60, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @tc6393xb_cells, i32 0, i32 0, i32 7), align 4
  store i32 16, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @tc6393xb_cells, i32 0, i32 0, i32 8), align 8
  %fb_data = getelementptr inbounds %struct.tc6393xb_platform_data, ptr %1, i32 0, i32 11
  %61 = ptrtoint ptr %fb_data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fb_data, align 4
  store ptr %62, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @tc6393xb_cells, i32 0, i32 3, i32 7), align 4
  store i32 24, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @tc6393xb_cells, i32 0, i32 3, i32 8), align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 1
  %63 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id, align 4
  %65 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq_base, align 4
  %call86 = tail call i32 @mfd_add_devices(ptr noundef %dev1, i32 noundef %64, ptr noundef nonnull @tc6393xb_cells, i32 noundef 4, ptr noundef nonnull %call2, i32 noundef %66, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end83.cleanup_crit_edge, label %if.end89

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end89:                                         ; preds = %if.end83
  %teardown = getelementptr inbounds %struct.tc6393xb_platform_data, ptr %1, i32 0, i32 9
  %67 = ptrtoint ptr %teardown to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %teardown, align 4
  %tobool90.not = icmp eq ptr %68, null
  br i1 %tobool90.not, label %if.end89.err_setup_crit_edge, label %if.then91

if.end89.err_setup_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_setup

if.then91:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %68(ptr noundef %dev) #7
  br label %err_setup

err_setup:                                        ; preds = %if.then91, %if.end89.err_setup_crit_edge, %if.then77.err_setup_crit_edge
  %ret.0 = phi i32 [ %call79, %if.then77.err_setup_crit_edge ], [ %call86, %if.then91 ], [ %call86, %if.end89.err_setup_crit_edge ]
  tail call fastcc void @tc6393xb_detach_irq(ptr noundef %dev)
  br label %err_gpio_add

err_gpio_add:                                     ; preds = %err_setup, %if.then69.err_gpio_add_crit_edge
  %ret.1 = phi i32 [ %call71, %if.then69.err_gpio_add_crit_edge ], [ %ret.0, %err_setup ]
  %69 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %base, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %cmp96.not = icmp eq i32 %70, -1
  br i1 %cmp96.not, label %err_gpio_add.if.end100_crit_edge, label %if.then98

err_gpio_add.if.end100_crit_edge:                 ; preds = %err_gpio_add
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.then98:                                        ; preds = %err_gpio_add
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiochip_remove(ptr noundef %gpio) #7
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %err_gpio_add.if.end100_crit_edge
  %disable = getelementptr inbounds %struct.tc6393xb_platform_data, ptr %1, i32 0, i32 3
  %71 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %disable, align 4
  %call101 = tail call i32 %72(ptr noundef %dev) #7
  br label %err_enable

err_enable:                                       ; preds = %if.end100, %if.end38.err_enable_crit_edge
  %ret.2 = phi i32 [ %call39, %if.end38.err_enable_crit_edge ], [ %ret.1, %if.end100 ]
  %73 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %74) #7
  br label %err_clk_enable.sink.split

err_clk_enable.sink.split:                        ; preds = %err_enable, %if.end.i.err_clk_enable.sink.split_crit_edge
  %.sink = phi ptr [ %74, %err_enable ], [ %24, %if.end.i.err_clk_enable.sink.split_crit_edge ]
  %ret.3.ph = phi i32 [ %ret.2, %err_enable ], [ %call1.i, %if.end.i.err_clk_enable.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #7
  br label %err_clk_enable

err_clk_enable:                                   ; preds = %err_clk_enable.sink.split, %if.end33.err_clk_enable_crit_edge
  %ret.3 = phi i32 [ %call.i, %if.end33.err_clk_enable_crit_edge ], [ %ret.3.ph, %err_clk_enable.sink.split ]
  %75 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call7.i.i, align 8
  tail call void @iounmap(ptr noundef %76) #7
  br label %err_ioremap

err_ioremap:                                      ; preds = %err_clk_enable, %if.end26.err_ioremap_crit_edge
  %ret.4 = phi i32 [ %ret.3, %err_clk_enable ], [ -12, %if.end26.err_ioremap_crit_edge ]
  %call105 = tail call i32 @release_resource(ptr noundef %rscr20) #7
  br label %err_request_scr

err_request_scr:                                  ; preds = %err_ioremap, %if.end19.err_request_scr_crit_edge
  %ret.5 = phi i32 [ %call23, %if.end19.err_request_scr_crit_edge ], [ %ret.4, %err_ioremap ]
  %77 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %clk, align 8
  tail call void @clk_put(ptr noundef %78) #7
  br label %err_clk_get

err_clk_get:                                      ; preds = %err_request_scr, %if.then16, %do.body.err_clk_get_crit_edge
  %ret.6 = phi i32 [ %10, %if.then16 ], [ %ret.5, %err_request_scr ], [ %call7, %do.body.err_clk_get_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_clk_get, %if.end83.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end83.cleanup_crit_edge ], [ %ret.6, %err_clk_get ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6393xb_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mfd_remove_devices(ptr noundef %dev1) #7
  %teardown = getelementptr inbounds %struct.tc6393xb_platform_data, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %teardown to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %teardown, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %dev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @tc6393xb_detach_irq(ptr noundef %dev)
  %base = getelementptr inbounds %struct.tc6393xb, ptr %3, i32 0, i32 1, i32 19
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.not = icmp eq i32 %7, -1
  br i1 %cmp.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %gpio = getelementptr inbounds %struct.tc6393xb, ptr %3, i32 0, i32 1
  tail call void @gpiochip_remove(ptr noundef %gpio) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %disable = getelementptr inbounds %struct.tc6393xb_platform_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disable, align 4
  %call8 = tail call i32 %9(ptr noundef %dev) #7
  %clk = getelementptr inbounds %struct.tc6393xb, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  tail call void @iounmap(ptr noundef %13) #7
  %rscr = getelementptr inbounds %struct.tc6393xb, ptr %3, i32 0, i32 5
  %call9 = tail call i32 @release_resource(ptr noundef %rscr) #7
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %15) #7
  tail call void @kfree(ptr noundef %3) #7
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6393xb_suspend(ptr noundef %dev, [1 x i32] %state.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 152
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !79
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %suspend_state = getelementptr inbounds %struct.tc6393xb, ptr %3, i32 0, i32 4
  %ccr = getelementptr inbounds %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %ccr to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %ccr, align 2
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %add.ptr5 = getelementptr i8, ptr %10, i32 224
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %12 = ptrtoint ptr %suspend_state to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %suspend_state, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %add.ptr9 = getelementptr i8, ptr %14, i32 120
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %arrayidx = getelementptr %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 3, i32 0
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx, align 1
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %add.ptr14 = getelementptr i8, ptr %18, i32 124
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %arrayidx17 = getelementptr %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 4, i32 0
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx17, align 1
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %add.ptr20 = getelementptr i8, ptr %22, i32 136
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr20) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %arrayidx23 = getelementptr %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 2, i32 0
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx23, align 1
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %add.ptr9.1 = getelementptr i8, ptr %26, i32 121
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.1) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %arrayidx.1 = getelementptr %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 3, i32 1
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx.1, align 1
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %add.ptr14.1 = getelementptr i8, ptr %30, i32 125
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14.1) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %arrayidx17.1 = getelementptr %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 4, i32 1
  %32 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx17.1, align 1
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  %add.ptr20.1 = getelementptr i8, ptr %34, i32 137
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr20.1) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %arrayidx23.1 = getelementptr %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 2, i32 1
  %36 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx23.1, align 1
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  %add.ptr9.2 = getelementptr i8, ptr %38, i32 122
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.2) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %arrayidx.2 = getelementptr %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 3, i32 2
  %40 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx.2, align 1
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  %add.ptr14.2 = getelementptr i8, ptr %42, i32 126
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14.2) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %arrayidx17.2 = getelementptr %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 4, i32 2
  %44 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx17.2, align 1
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %add.ptr20.2 = getelementptr i8, ptr %46, i32 138
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr20.2) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %arrayidx23.2 = getelementptr %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 2, i32 2
  %48 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx23.2, align 1
  %suspend = getelementptr inbounds %struct.tc6393xb_platform_data, ptr %1, i32 0, i32 4
  %49 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %suspend, align 4
  %call24 = tail call i32 %50(ptr noundef %dev) #7
  %clk = getelementptr inbounds %struct.tc6393xb, ptr %3, i32 0, i32 2
  %51 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %52) #7
  tail call void @clk_unprepare(ptr noundef %52) #7
  ret i32 %call24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6393xb_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.tc6393xb, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %resume = getelementptr inbounds %struct.tc6393xb_platform_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resume, align 4
  %call4 = tail call i32 %7(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %resume_restore = getelementptr inbounds %struct.tc6393xb_platform_data, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %resume_restore to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %resume_restore, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool8.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %suspend_state = getelementptr inbounds %struct.tc6393xb, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %suspend_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %suspend_state, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %10) #7, !srcloc !75
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %add.ptr12 = getelementptr i8, ptr %16, i32 154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %17 = tail call i16 @llvm.bswap.i16(i16 %14) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12, i16 %17) #7, !srcloc !77
  %ccr = getelementptr inbounds %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %ccr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ccr, align 2
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %add.ptr15 = getelementptr i8, ptr %21, i32 152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %22 = tail call i16 @llvm.bswap.i16(i16 %19) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15, i16 %22) #7, !srcloc !77
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %add.ptr17 = getelementptr i8, ptr %24, i32 228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr17, i16 -13184) #7, !srcloc !77
  %scr_gper = getelementptr inbounds %struct.tc6393xb_platform_data, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %scr_gper to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %scr_gper, align 2
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %add.ptr19 = getelementptr i8, ptr %28, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %29 = tail call i16 @llvm.bswap.i16(i16 %26) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr19, i16 %29) #7, !srcloc !77
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %add.ptr21 = getelementptr i8, ptr %31, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 0) #7, !srcloc !75
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %add.ptr23 = getelementptr i8, ptr %33, i32 82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23, i8 -65) #7, !srcloc !75
  %arrayidx = getelementptr %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 3, i32 0
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %add.ptr26 = getelementptr i8, ptr %37, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26, i8 %35) #7, !srcloc !75
  %arrayidx28 = getelementptr %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 4, i32 0
  %38 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx28, align 1
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %add.ptr31 = getelementptr i8, ptr %41, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 %39) #7, !srcloc !75
  %arrayidx33 = getelementptr %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 2, i32 0
  %42 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx33, align 1
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %add.ptr36 = getelementptr i8, ptr %45, i32 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36, i8 %43) #7, !srcloc !75
  %arrayidx.1 = getelementptr %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 3, i32 1
  %46 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.1, align 1
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  %add.ptr26.1 = getelementptr i8, ptr %49, i32 121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26.1, i8 %47) #7, !srcloc !75
  %arrayidx28.1 = getelementptr %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 4, i32 1
  %50 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx28.1, align 1
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 4
  %add.ptr31.1 = getelementptr i8, ptr %53, i32 125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31.1, i8 %51) #7, !srcloc !75
  %arrayidx33.1 = getelementptr %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 2, i32 1
  %54 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx33.1, align 1
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  %add.ptr36.1 = getelementptr i8, ptr %57, i32 137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36.1, i8 %55) #7, !srcloc !75
  %arrayidx.2 = getelementptr %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 3, i32 2
  %58 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.2, align 1
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %3, align 4
  %add.ptr26.2 = getelementptr i8, ptr %61, i32 122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26.2, i8 %59) #7, !srcloc !75
  %arrayidx28.2 = getelementptr %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 4, i32 2
  %62 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx28.2, align 1
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %3, align 4
  %add.ptr31.2 = getelementptr i8, ptr %65, i32 126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31.2, i8 %63) #7, !srcloc !75
  %arrayidx33.2 = getelementptr %struct.tc6393xb, ptr %3, i32 0, i32 4, i32 2, i32 2
  %66 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx33.2, align 1
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %3, align 4
  %add.ptr36.2 = getelementptr i8, ptr %69, i32 138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36.2, i8 %67) #7, !srcloc !75
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc6393xb_register_gpio(ptr noundef %tc6393xb, i32 noundef %gpio_base) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio = getelementptr inbounds %struct.tc6393xb, ptr %tc6393xb, i32 0, i32 1
  %0 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str, ptr %gpio, align 4
  %base = getelementptr inbounds %struct.tc6393xb, ptr %tc6393xb, i32 0, i32 1, i32 19
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %gpio_base, ptr %base, align 4
  %ngpio = getelementptr inbounds %struct.tc6393xb, ptr %tc6393xb, i32 0, i32 1, i32 20
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 16, ptr %ngpio, align 4
  %set = getelementptr inbounds %struct.tc6393xb, ptr %tc6393xb, i32 0, i32 1, i32 12
  %3 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @tc6393xb_gpio_set, ptr %set, align 4
  %get = getelementptr inbounds %struct.tc6393xb, ptr %tc6393xb, i32 0, i32 1, i32 10
  %4 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tc6393xb_gpio_get, ptr %get, align 4
  %direction_input = getelementptr inbounds %struct.tc6393xb, ptr %tc6393xb, i32 0, i32 1, i32 8
  %5 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tc6393xb_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.tc6393xb, ptr %tc6393xb, i32 0, i32 1, i32 9
  %6 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tc6393xb_gpio_direction_output, ptr %direction_output, align 4
  %call = tail call i32 @gpiochip_add_data_with_key(ptr noundef %gpio, ptr noundef %tc6393xb, ptr noundef nonnull @tc6393xb_register_gpio.lock_key, ptr noundef nonnull @tc6393xb_register_gpio.request_key) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tc6393xb_attach_irq(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq_base1 = getelementptr inbounds %struct.tc6393xb, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %irq_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_base1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %3)
  %cmp15 = icmp ult i32 %3, -8
  br i1 %cmp15, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @irq_set_chip_and_handler_name(i32 noundef %3, ptr noundef nonnull @tc6393xb_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #7
  %call2 = tail call i32 @irq_set_chip_data(i32 noundef %3, ptr noundef %1) #7
  tail call void @irq_modify_status(i32 noundef %3, i32 noundef 3072, i32 noundef 0) #7
  %inc = add nuw i32 %3, 1
  tail call void @irq_set_chip_and_handler_name(i32 noundef %inc, ptr noundef nonnull @tc6393xb_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #7
  %call2.1 = tail call i32 @irq_set_chip_data(i32 noundef %inc, ptr noundef %1) #7
  tail call void @irq_modify_status(i32 noundef %inc, i32 noundef 3072, i32 noundef 0) #7
  %inc.1 = add nuw i32 %3, 2
  tail call void @irq_set_chip_and_handler_name(i32 noundef %inc.1, ptr noundef nonnull @tc6393xb_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #7
  %call2.2 = tail call i32 @irq_set_chip_data(i32 noundef %inc.1, ptr noundef %1) #7
  tail call void @irq_modify_status(i32 noundef %inc.1, i32 noundef 3072, i32 noundef 0) #7
  %inc.2 = add nuw i32 %3, 3
  tail call void @irq_set_chip_and_handler_name(i32 noundef %inc.2, ptr noundef nonnull @tc6393xb_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #7
  %call2.3 = tail call i32 @irq_set_chip_data(i32 noundef %inc.2, ptr noundef %1) #7
  tail call void @irq_modify_status(i32 noundef %inc.2, i32 noundef 3072, i32 noundef 0) #7
  %inc.3 = add nuw i32 %3, 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %inc.3, ptr noundef nonnull @tc6393xb_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #7
  %call2.4 = tail call i32 @irq_set_chip_data(i32 noundef %inc.3, ptr noundef %1) #7
  tail call void @irq_modify_status(i32 noundef %inc.3, i32 noundef 3072, i32 noundef 0) #7
  %inc.4 = add nuw i32 %3, 5
  tail call void @irq_set_chip_and_handler_name(i32 noundef %inc.4, ptr noundef nonnull @tc6393xb_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #7
  %call2.5 = tail call i32 @irq_set_chip_data(i32 noundef %inc.4, ptr noundef %1) #7
  tail call void @irq_modify_status(i32 noundef %inc.4, i32 noundef 3072, i32 noundef 0) #7
  %inc.5 = add nuw i32 %3, 6
  tail call void @irq_set_chip_and_handler_name(i32 noundef %inc.5, ptr noundef nonnull @tc6393xb_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #7
  %call2.6 = tail call i32 @irq_set_chip_data(i32 noundef %inc.5, ptr noundef %1) #7
  tail call void @irq_modify_status(i32 noundef %inc.5, i32 noundef 3072, i32 noundef 0) #7
  %inc.6 = add nuw i32 %3, 7
  tail call void @irq_set_chip_and_handler_name(i32 noundef %inc.6, ptr noundef nonnull @tc6393xb_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #7
  %call2.7 = tail call i32 @irq_set_chip_data(i32 noundef %inc.6, ptr noundef %1) #7
  tail call void @irq_modify_status(i32 noundef %inc.6, i32 noundef 3072, i32 noundef 0) #7
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %entry.for.end_crit_edge
  %irq3 = getelementptr inbounds %struct.tc6393xb, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq3, align 4
  %call4 = tail call i32 @irq_set_irq_type(i32 noundef %5, i32 noundef 2) #7
  %6 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq3, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %7, ptr noundef nonnull @tc6393xb_irq, ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tc6393xb_detach_irq(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq1 = getelementptr inbounds %struct.tc6393xb, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %3, ptr noundef null, ptr noundef null) #7
  %irq_base2 = getelementptr inbounds %struct.tc6393xb, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq_base2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %5)
  %cmp11 = icmp ult i32 %5, -8
  br i1 %cmp11, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @irq_modify_status(i32 noundef %5, i32 noundef 0, i32 noundef 3072) #7
  %call3 = tail call i32 @irq_set_chip(i32 noundef %5, ptr noundef null) #7
  %call4 = tail call i32 @irq_set_chip_data(i32 noundef %5, ptr noundef null) #7
  %inc = add nuw i32 %5, 1
  tail call void @irq_modify_status(i32 noundef %inc, i32 noundef 0, i32 noundef 3072) #7
  %call3.1 = tail call i32 @irq_set_chip(i32 noundef %inc, ptr noundef null) #7
  %call4.1 = tail call i32 @irq_set_chip_data(i32 noundef %inc, ptr noundef null) #7
  %inc.1 = add nuw i32 %5, 2
  tail call void @irq_modify_status(i32 noundef %inc.1, i32 noundef 0, i32 noundef 3072) #7
  %call3.2 = tail call i32 @irq_set_chip(i32 noundef %inc.1, ptr noundef null) #7
  %call4.2 = tail call i32 @irq_set_chip_data(i32 noundef %inc.1, ptr noundef null) #7
  %inc.2 = add nuw i32 %5, 3
  tail call void @irq_modify_status(i32 noundef %inc.2, i32 noundef 0, i32 noundef 3072) #7
  %call3.3 = tail call i32 @irq_set_chip(i32 noundef %inc.2, ptr noundef null) #7
  %call4.3 = tail call i32 @irq_set_chip_data(i32 noundef %inc.2, ptr noundef null) #7
  %inc.3 = add nuw i32 %5, 4
  tail call void @irq_modify_status(i32 noundef %inc.3, i32 noundef 0, i32 noundef 3072) #7
  %call3.4 = tail call i32 @irq_set_chip(i32 noundef %inc.3, ptr noundef null) #7
  %call4.4 = tail call i32 @irq_set_chip_data(i32 noundef %inc.3, ptr noundef null) #7
  %inc.4 = add nuw i32 %5, 5
  tail call void @irq_modify_status(i32 noundef %inc.4, i32 noundef 0, i32 noundef 3072) #7
  %call3.5 = tail call i32 @irq_set_chip(i32 noundef %inc.4, ptr noundef null) #7
  %call4.5 = tail call i32 @irq_set_chip_data(i32 noundef %inc.4, ptr noundef null) #7
  %inc.5 = add nuw i32 %5, 6
  tail call void @irq_modify_status(i32 noundef %inc.5, i32 noundef 0, i32 noundef 3072) #7
  %call3.6 = tail call i32 @irq_set_chip(i32 noundef %inc.5, ptr noundef null) #7
  %call4.6 = tail call i32 @irq_set_chip_data(i32 noundef %inc.5, ptr noundef null) #7
  %inc.6 = add nuw i32 %5, 7
  tail call void @irq_modify_status(i32 noundef %inc.6, i32 noundef 0, i32 noundef 3072) #7
  %call3.7 = tail call i32 @irq_set_chip(i32 noundef %inc.6, ptr noundef null) #7
  %call4.7 = tail call i32 @irq_set_chip_data(i32 noundef %inc.6, ptr noundef null) #7
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc6393xb_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %lock = getelementptr inbounds %struct.tc6393xb, ptr %call, i32 0, i32 3
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %div19.i = lshr i32 %offset, 3
  %add.i = add nuw nsw i32 %div19.i, 120
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %and4.i = and i32 %offset, 7
  %shl5.i = shl nuw nsw i32 1, %and4.i
  %3 = trunc i32 %shl5.i to i8
  %conv3.i = or i8 %2, %3
  %4 = xor i8 %3, -1
  %conv8.i = and i8 %2, %4
  %dsr.0.i = select i1 %tobool.not.i, i8 %conv8.i, i8 %conv3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %6, i32 %add.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 %dsr.0.i) #7, !srcloc !75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6393xb_gpio_get(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %div6 = lshr i32 %offset, 3
  %add = add nuw nsw i32 %div6, 120
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  %conv = zext i8 %2 to i32
  %and = and i32 %offset, 7
  %3 = lshr i32 %conv, %and
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6393xb_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %lock = getelementptr inbounds %struct.tc6393xb, ptr %call, i32 0, i32 3
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %div30 = lshr i32 %offset, 3
  %add = add nuw nsw i32 %div30, 124
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %and = and i32 %offset, 7
  %shl = shl nuw nsw i32 1, %and
  %3 = trunc i32 %shl to i8
  %4 = xor i8 %3, -1
  %conv7 = and i8 %2, %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %add.ptr14 = getelementptr i8, ptr %6, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 %conv7) #7, !srcloc !75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6393xb_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %lock = getelementptr inbounds %struct.tc6393xb, ptr %call, i32 0, i32 3
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %div19.i = lshr i32 %offset, 3
  %add.i = add nuw nsw i32 %div19.i, 120
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %and4.i = and i32 %offset, 7
  %shl5.i = shl nuw nsw i32 1, %and4.i
  %3 = trunc i32 %shl5.i to i8
  %conv3.i = or i8 %2, %3
  %4 = xor i8 %3, -1
  %conv8.i = and i8 %2, %4
  %dsr.0.i = select i1 %tobool.not.i, i8 %conv8.i, i8 %conv3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %6, i32 %add.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 %dsr.0.i) #7, !srcloc !75
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %add = add nuw nsw i32 %div19.i, 124
  %add.ptr = getelementptr i8, ptr %8, i32 %add
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %conv6 = or i8 %9, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %add.ptr13 = getelementptr i8, ptr %11, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13, i8 %conv6) #7, !srcloc !75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc6393xb_irq(ptr nocapture noundef readonly %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %irq_base1 = getelementptr inbounds %struct.tc6393xb, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %irq_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_base1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr23 = getelementptr i8, ptr %5, i32 80
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr23) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %conv24 = zext i8 %6 to i32
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr725 = getelementptr i8, ptr %8, i32 82
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr725) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %conv1126 = zext i8 %9 to i32
  %neg27 = xor i32 %conv1126, -1
  %and28 = and i32 %neg27, %conv24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool.not29 = icmp eq i32 %and28, 0
  br i1 %tobool.not29, label %entry.while.end_crit_edge, label %for.cond.preheader.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

for.cond.preheader.preheader:                     ; preds = %entry
  %add.1 = add i32 %3, 1
  %add.2 = add i32 %3, 2
  %add.3 = add i32 %3, 3
  %add.4 = add i32 %3, 4
  %add.5 = add i32 %3, 5
  %add.6 = add i32 %3, 6
  %add.7 = add i32 %3, 7
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.inc.7.for.cond.preheader_crit_edge, %for.cond.preheader.preheader
  %and30 = phi i32 [ %and, %for.inc.7.for.cond.preheader_crit_edge ], [ %and28, %for.cond.preheader.preheader ]
  %and13 = and i32 %and30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %for.cond.preheader.for.inc_crit_edge, label %if.then

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 @generic_handle_irq(i32 noundef %3) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.cond.preheader.for.inc_crit_edge
  %and13.1 = and i32 %and30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.1)
  %tobool14.not.1 = icmp eq i32 %and13.1, 0
  br i1 %tobool14.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %call15.1 = tail call i32 @generic_handle_irq(i32 noundef %add.1) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %and13.2 = and i32 %and30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.2)
  %tobool14.not.2 = icmp eq i32 %and13.2, 0
  br i1 %tobool14.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %call15.2 = tail call i32 @generic_handle_irq(i32 noundef %add.2) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %and13.3 = and i32 %and30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.3)
  %tobool14.not.3 = icmp eq i32 %and13.3, 0
  br i1 %tobool14.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %call15.3 = tail call i32 @generic_handle_irq(i32 noundef %add.3) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %and13.4 = and i32 %and30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.4)
  %tobool14.not.4 = icmp eq i32 %and13.4, 0
  br i1 %tobool14.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %call15.4 = tail call i32 @generic_handle_irq(i32 noundef %add.4) #7
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %and13.5 = and i32 %and30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.5)
  %tobool14.not.5 = icmp eq i32 %and13.5, 0
  br i1 %tobool14.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %call15.5 = tail call i32 @generic_handle_irq(i32 noundef %add.5) #7
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %and13.6 = and i32 %and30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.6)
  %tobool14.not.6 = icmp eq i32 %and13.6, 0
  br i1 %tobool14.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  %call15.6 = tail call i32 @generic_handle_irq(i32 noundef %add.6) #7
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %and13.7 = and i32 %and30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.7)
  %tobool14.not.7 = icmp eq i32 %and13.7, 0
  br i1 %tobool14.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  %call15.7 = tail call i32 @generic_handle_irq(i32 noundef %add.7) #7
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 80
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %conv = zext i8 %12 to i32
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr7 = getelementptr i8, ptr %14, i32 82
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %conv11 = zext i8 %15 to i32
  %neg = xor i32 %conv11, -1
  %and = and i32 %neg, %conv
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc.7.while.end_crit_edge, label %for.inc.7.for.cond.preheader_crit_edge

for.inc.7.for.cond.preheader_crit_edge:           ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

for.inc.7.while.end_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %for.inc.7.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tc6393xb_irq_ack(ptr nocapture noundef %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc6393xb_irq_mask(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %lock = getelementptr inbounds %struct.tc6393xb, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 82
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.tc6393xb, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %6, %8
  %shl = shl nuw i32 1, %sub
  %9 = trunc i32 %shl to i8
  %conv6 = or i8 %4, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr11 = getelementptr i8, ptr %11, i32 82
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 %conv6) #7, !srcloc !75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc6393xb_irq_unmask(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %lock = getelementptr inbounds %struct.tc6393xb, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 82
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.tc6393xb, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %6, %8
  %shl = shl nuw i32 1, %sub
  %9 = trunc i32 %shl to i8
  %10 = xor i8 %9, -1
  %conv6 = and i8 %4, %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr11 = getelementptr i8, ptr %12, i32 82
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 %conv6) #7, !srcloc !75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6393xb_nand_enable(ptr nocapture noundef readonly %nand) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %nand, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.tc6393xb, ptr %3, i32 0, i32 3
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc6393xb_nand_enable.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc6393xb_nand_enable, %if.then)) #7
          to label %do.body11 [label %if.then], !srcloc !94

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc6393xb_nand_enable.__UNIQUE_ID_ddebug302, ptr noundef %5, ptr noundef nonnull @.str.12) #7
  br label %do.body11

do.body11:                                        ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 137
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -1) #7, !srcloc !75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6393xb_mmc_enable(ptr nocapture noundef readonly %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %mmc, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 512
  %call1 = tail call i32 @tmio_core_mmc_enable(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 2048) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6393xb_mmc_resume(ptr nocapture noundef readonly %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %mmc, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 512
  %call1 = tail call i32 @tmio_core_mmc_resume(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 2048) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6393xb_ohci_enable(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.tc6393xb, ptr %3, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 152
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  %7 = or i16 %6, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr12 = getelementptr i8, ptr %9, i32 152
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12, i16 %7) #7, !srcloc !77
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %add.ptr16 = getelementptr i8, ptr %11, i32 224
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %13 = or i8 %12, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr27 = getelementptr i8, ptr %15, i32 224
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27, i8 %13) #7, !srcloc !75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6393xb_ohci_disable(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.tc6393xb, ptr %3, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 224
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %7 = and i8 %6, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr12 = getelementptr i8, ptr %9, i32 224
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 %7) #7, !srcloc !75
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %add.ptr16 = getelementptr i8, ptr %11, i32 152
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr16) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %13 = and i16 %12, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr27 = getelementptr i8, ptr %15, i32 152
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr27, i16 %13) #7, !srcloc !77
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6393xb_ohci_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %resume_restore = getelementptr inbounds %struct.tc6393xb_platform_data, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %resume_restore to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %resume_restore, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.tc6393xb, ptr %6, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 224
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %10 = and i8 %9, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %add.ptr12.i = getelementptr i8, ptr %12, i32 224
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 %10) #7, !srcloc !75
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %add.ptr16.i = getelementptr i8, ptr %14, i32 152
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr16.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %16 = and i16 %15, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %6, align 4
  %add.ptr27.i = getelementptr i8, ptr %18, i32 152
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr27.i, i16 %16) #7, !srcloc !77
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6393xb_fb_enable(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.tc6393xb, ptr %3, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 152
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %7 = and i16 %6, -8
  %8 = or i16 %7, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %add.ptr14 = getelementptr i8, ptr %10, i32 152
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14, i16 %8) #7, !srcloc !77
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6393xb_fb_disable(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.tc6393xb, ptr %3, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 152
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  %7 = and i16 %6, -8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr14 = getelementptr i8, ptr %9, i32 152
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14, i16 %7) #7, !srcloc !77
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_core_mmc_enable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_core_mmc_resume(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc6393xb_mmc_pwr(ptr nocapture noundef readonly %mmc, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %mmc, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 512
  tail call void @tmio_core_mmc_pwr(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %state) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc6393xb_mmc_clk_div(ptr nocapture noundef readonly %mmc, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %mmc, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 512
  tail call void @tmio_core_mmc_clk_div(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %state) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_core_mmc_pwr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_core_mmc_clk_div(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !26, !28, !30, !31, !32, !33, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !55, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__ksymtab_tc6393xb_lcd_set_power, !1, !"__ksymtab_tc6393xb_lcd_set_power", i1 false, i1 false}
!1 = !{!"../drivers/mfd/tc6393xb.c", i32 328, i32 1}
!2 = !{ptr @__ksymtab_tc6393xb_lcd_mode, !3, !"__ksymtab_tc6393xb_lcd_mode", i1 false, i1 false}
!3 = !{!"../drivers/mfd/tc6393xb.c", i32 344, i32 1}
!4 = !{ptr @__initcall__kmod_tc6393xb__303_848_tc6393xb_init4, !5, !"__initcall__kmod_tc6393xb__303_848_tc6393xb_init4", i1 false, i1 false}
!5 = !{!"../drivers/mfd/tc6393xb.c", i32 848, i32 1}
!6 = !{ptr @__exitcall_tc6393xb_exit, !7, !"__exitcall_tc6393xb_exit", i1 false, i1 false}
!7 = !{!"../drivers/mfd/tc6393xb.c", i32 849, i32 1}
!8 = !{ptr @__UNIQUE_ID_file304, !9, !"__UNIQUE_ID_file304", i1 false, i1 false}
!9 = !{!"../drivers/mfd/tc6393xb.c", i32 851, i32 1}
!10 = !{ptr @__UNIQUE_ID_license305, !9, !"__UNIQUE_ID_license305", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author306, !12, !"__UNIQUE_ID_author306", i1 false, i1 false}
!12 = !{!"../drivers/mfd/tc6393xb.c", i32 852, i32 1}
!13 = !{ptr @__UNIQUE_ID_description307, !14, !"__UNIQUE_ID_description307", i1 false, i1 false}
!14 = !{!"../drivers/mfd/tc6393xb.c", i32 853, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias308, !16, !"__UNIQUE_ID_alias308", i1 false, i1 false}
!16 = !{!"../drivers/mfd/tc6393xb.c", i32 854, i32 1}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mfd/tc6393xb.c", i32 834, i32 11}
!19 = !{ptr @tc6393xb_driver, !20, !"tc6393xb_driver", i1 false, i1 false}
!20 = !{!"../drivers/mfd/tc6393xb.c", i32 827, i32 31}
!21 = !{ptr @tc6393xb_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/mfd/tc6393xb.c", i32 621, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mfd/tc6393xb.c", i32 634, i32 37}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mfd/tc6393xb.c", i32 641, i32 15}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mfd/tc6393xb.c", i32 675, i32 2}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tc6393xb_probe._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @tc6393xb_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @tc6393xb_register_gpio.lock_key, !35, !"lock_key", i1 false, i1 false}
!35 = !{!"../drivers/mfd/tc6393xb.c", i32 510, i32 9}
!36 = !{ptr @tc6393xb_register_gpio.request_key, !35, !"request_key", i1 false, i1 false}
!37 = !{ptr @tc6393xb_chip, !38, !"tc6393xb_chip", i1 false, i1 false}
!38 = !{!"../drivers/mfd/tc6393xb.c", i32 561, i32 24}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/tc6393xb.c", i32 388, i32 11}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mfd/tc6393xb.c", i32 394, i32 11}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mfd/tc6393xb.c", i32 403, i32 11}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/tc6393xb.c", i32 412, i32 11}
!47 = !{ptr @tc6393xb_cells, !48, !"tc6393xb_cells", i1 false, i1 false}
!48 = !{!"../drivers/mfd/tc6393xb.c", i32 386, i32 24}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mfd/tc6393xb.c", i32 128, i32 2}
!51 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @tc6393xb_nand_enable.__UNIQUE_ID_ddebug302, !50, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!53 = !{ptr @tc6393xb_nand_resources, !54, !"tc6393xb_nand_resources", i1 false, i1 false}
!54 = !{!"../drivers/mfd/tc6393xb.c", i32 136, i32 30}
!55 = !{ptr @tc6393xb_mmc_data, !56, !"tc6393xb_mmc_data", i1 false, i1 false}
!56 = !{!"../drivers/mfd/tc6393xb.c", i32 380, i32 29}
!57 = !{ptr @tc6393xb_mmc_resources, !58, !"tc6393xb_mmc_resources", i1 false, i1 false}
!58 = !{!"../drivers/mfd/tc6393xb.c", i32 154, i32 30}
!59 = !{ptr @tc6393xb_ohci_resources, !60, !"tc6393xb_ohci_resources", i1 false, i1 false}
!60 = !{!"../drivers/mfd/tc6393xb.c", i32 167, i32 30}
!61 = !{ptr @tc6393xb_fb_resources, !62, !"tc6393xb_fb_resources", i1 false, i1 false}
!62 = !{!"../drivers/mfd/tc6393xb.c", i32 195, i32 30}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 4055745}
!73 = !{i64 2151595090}
!74 = !{i64 2151596695}
!75 = !{i64 4055350}
!76 = !{i64 2151597119}
!77 = !{i64 4054927}
!78 = !{i64 2156022081}
!79 = !{i64 4055127}
!80 = !{i64 2151595702}
!81 = !{i64 2156012530}
!82 = !{i64 2156012912}
!83 = !{i64 2156012154}
!84 = !{i64 2156014070}
!85 = !{i64 2156014432}
!86 = !{i64 2156015353}
!87 = !{i64 2156015715}
!88 = !{i64 2156016526}
!89 = !{i64 2156016802}
!90 = !{i64 2156017319}
!91 = !{i64 2156017596}
!92 = !{i64 2156018420}
!93 = !{i64 2156018697}
!94 = !{i64 2148711442, i64 2148711447, i64 2148711460, i64 2148711504, i64 2148711538, i64 2148711559}
!95 = !{i64 2155997586}
!96 = !{i64 2155998851}
!97 = !{i64 2155999210}
!98 = !{i64 2155999680}
!99 = !{i64 2156000039}
!100 = !{i64 2156000863}
!101 = !{i64 2156001222}
!102 = !{i64 2156001822}
!103 = !{i64 2156002181}
!104 = !{i64 2156003398}
!105 = !{i64 2156003693}
!106 = !{i64 2156004907}
!107 = !{i64 2156005202}
