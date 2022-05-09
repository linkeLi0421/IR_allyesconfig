; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/w100fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/w100fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+w100fb_get_hsynclen\22, \22a\22\09"
module asm "\09.weak\09__crc_w100fb_get_hsynclen\09\09\09\09"
module asm "\09.long\09__crc_w100fb_get_hsynclen\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w100fb_get_hsynclen:\09\09\09\09\09"
module asm "\09.asciz \09\22w100fb_get_hsynclen\22\09\09\09\09\09"
module asm "__kstrtabns_w100fb_get_hsynclen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+w100fb_gpio_read\22, \22a\22\09"
module asm "\09.weak\09__crc_w100fb_gpio_read\09\09\09\09"
module asm "\09.long\09__crc_w100fb_gpio_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w100fb_gpio_read:\09\09\09\09\09"
module asm "\09.asciz \09\22w100fb_gpio_read\22\09\09\09\09\09"
module asm "__kstrtabns_w100fb_gpio_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+w100fb_gpio_write\22, \22a\22\09"
module asm "\09.weak\09__crc_w100fb_gpio_write\09\09\09\09"
module asm "\09.long\09__crc_w100fb_gpio_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w100fb_gpio_write:\09\09\09\09\09"
module asm "\09.asciz \09\22w100fb_gpio_write\22\09\09\09\09\09"
module asm "__kstrtabns_w100fb_gpio_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pll_entries = type { i32, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.w100_pll_info = type { i16, i8, i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.w100fb_par = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.w100fb_mach_info = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.w100_mode = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32 }
%struct.w100_mem_info = type { i32, i32, i32, i32, i32 }
%struct.w100_tg_info = type { ptr, ptr, ptr }
%struct.w100_gpio_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.w100_bm_mem_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.w100_gen_regs = type { i32, i32, i32, i32, i32, i32 }

@__kstrtab_w100fb_get_hsynclen = external dso_local constant [0 x i8], align 1
@__kstrtabns_w100fb_get_hsynclen = external dso_local constant [0 x i8], align 1
@__ksymtab_w100fb_get_hsynclen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w100fb_get_hsynclen to i32), ptr @__kstrtab_w100fb_get_hsynclen, ptr @__kstrtabns_w100fb_get_hsynclen }, section "___ksymtab+w100fb_get_hsynclen", align 4
@remapped_regs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_w100fb_gpio_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_w100fb_gpio_read = external dso_local constant [0 x i8], align 1
@__ksymtab_w100fb_gpio_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w100fb_gpio_read to i32), ptr @__kstrtab_w100fb_gpio_read, ptr @__kstrtabns_w100fb_gpio_read }, section "___ksymtab+w100fb_gpio_read", align 4
@__kstrtab_w100fb_gpio_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_w100fb_gpio_write = external dso_local constant [0 x i8], align 1
@__ksymtab_w100fb_gpio_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w100fb_gpio_write to i32), ptr @__kstrtab_w100fb_gpio_write, ptr @__kstrtabns_w100fb_gpio_write }, section "___ksymtab+w100fb_gpio_write", align 4
@w100_pll_tables = internal constant { [4 x %struct.pll_entries], [32 x i8] } { [4 x %struct.pll_entries] [%struct.pll_entries { i32 12500000, ptr @xtal_12500000 }, %struct.pll_entries { i32 14318000, ptr @xtal_14318000 }, %struct.pll_entries { i32 16000000, ptr @xtal_16000000 }, %struct.pll_entries zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_w100fb__305_1632_w100fb_driver_init6 = internal global ptr @w100fb_driver_init, section ".initcall6.init", align 4
@w100fb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @w100fb_probe, ptr @w100fb_remove, ptr null, ptr @w100fb_suspend, ptr @w100fb_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @w100fb_groups, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_w100fb_driver_exit = internal global ptr @w100fb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description306 = internal constant [55 x i8] c"w100fb.description=ATI Imageon w100 framebuffer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [39 x i8] c"w100fb.file=drivers/video/fbdev/w100fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [19 x i8] c"w100fb.license=GPL\00", section ".modinfo", align 1
@xtal_12500000 = internal global { [6 x %struct.w100_pll_info], [48 x i8] } { [6 x %struct.w100_pll_info] [%struct.w100_pll_info { i16 50, i8 0, i8 1, i8 0, i8 -32, i8 56 }, %struct.w100_pll_info { i16 75, i8 0, i8 5, i8 0, i8 -34, i8 37 }, %struct.w100_pll_info { i16 100, i8 0, i8 7, i8 0, i8 -32, i8 28 }, %struct.w100_pll_info { i16 125, i8 0, i8 9, i8 0, i8 -32, i8 22 }, %struct.w100_pll_info { i16 150, i8 0, i8 11, i8 0, i8 -32, i8 17 }, %struct.w100_pll_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@xtal_14318000 = internal global { [6 x %struct.w100_pll_info], [48 x i8] } { [6 x %struct.w100_pll_info] [%struct.w100_pll_info { i16 40, i8 4, i8 13, i8 0, i8 -32, i8 80 }, %struct.w100_pll_info { i16 50, i8 1, i8 6, i8 0, i8 -32, i8 64 }, %struct.w100_pll_info { i16 57, i8 2, i8 11, i8 0, i8 -32, i8 53 }, %struct.w100_pll_info { i16 75, i8 0, i8 4, i8 3, i8 -32, i8 43 }, %struct.w100_pll_info { i16 100, i8 0, i8 6, i8 0, i8 -32, i8 32 }, %struct.w100_pll_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@xtal_16000000 = internal global { [5 x %struct.w100_pll_info], [56 x i8] } { [5 x %struct.w100_pll_info] [%struct.w100_pll_info { i16 72, i8 1, i8 8, i8 0, i8 -32, i8 48 }, %struct.w100_pll_info { i16 80, i8 1, i8 9, i8 0, i8 -32, i8 13 }, %struct.w100_pll_info { i16 95, i8 1, i8 10, i8 7, i8 -32, i8 38 }, %struct.w100_pll_info { i16 96, i8 1, i8 11, i8 0, i8 -32, i8 36 }, %struct.w100_pll_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"w100fb\00", [25 x i8] zeroinitializer }, align 32
@w100fb_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w100fb_group, ptr null], [24 x i8] zeroinitializer }, align 32
@remapped_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@w100fb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Found \00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"w100fb_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/video/fbdev/w100fb.c\00", [35 x i8] zeroinitializer }, align 32
@w100fb_probe._entry_ptr = internal global ptr @w100fb_probe._entry, section ".printk_index", align 4
@w100fb_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"w100\00", [27 x i8] zeroinitializer }, align 32
@w100fb_probe._entry_ptr.6 = internal global ptr @w100fb_probe._entry.4, section ".printk_index", align 4
@w100fb_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"w3200\00", [26 x i8] zeroinitializer }, align 32
@w100fb_probe._entry_ptr.9 = internal global ptr @w100fb_probe._entry.7, section ".printk_index", align 4
@w100fb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"w3220\00", [26 x i8] zeroinitializer }, align 32
@w100fb_probe._entry_ptr.12 = internal global ptr @w100fb_probe._entry.10, section ".printk_index", align 4
@w100fb_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown imageon chip ID\0A\00", [39 x i8] zeroinitializer }, align 32
@w100fb_probe._entry_ptr.15 = internal global ptr @w100fb_probe._entry.13, section ".printk_index", align 4
@w100fb_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" at 0x%08lx.\0A\00", [18 x i8] zeroinitializer }, align 32
@w100fb_probe._entry_ptr.18 = internal global ptr @w100fb_probe._entry.16, section ".printk_index", align 4
@remapped_fbuf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@w100fb_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013No matching Xtal definition found\0A\00", [59 x i8] zeroinitializer }, align 32
@w100fb_probe._entry_ptr.21 = internal global ptr @w100fb_probe._entry.19, section ".printk_index", align 4
@w100fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @w100fb_check_var, ptr @w100fb_set_par, ptr @w100fb_setcolreg, ptr null, ptr @w100fb_blank, ptr null, ptr @w100fb_fillrect, ptr @w100fb_copyarea, ptr @cfb_imageblit, ptr null, ptr @w100fb_sync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@w100fb_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016fb%d: %s frame buffer device\0A\00", [32 x i8] zeroinitializer }, align 32
@w100fb_probe._entry_ptr.24 = internal global ptr @w100fb_probe._entry.22, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@w100_pwr_state.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@w100_pwr_state.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@w100_pwr_state.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@w100_pwr_state.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@w100_pwr_state.4 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@w100_pwr_state.5 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@w100_fifo_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013w100fb: FIFO Timeout!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"w100_fifo_wait\00", [17 x i8] zeroinitializer }, align 32
@w100_fifo_wait._entry_ptr = internal global ptr @w100_fifo_wait._entry, section ".printk_index", align 4
@w100fb_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013w100fb: Graphic engine timeout!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"w100fb_sync\00", [20 x i8] zeroinitializer }, align 32
@w100fb_sync._entry_ptr = internal global ptr @w100fb_sync._entry, section ".printk_index", align 4
@w100fb_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w100fb_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@w100fb_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_fastpllclk, ptr @dev_attr_reg_read, ptr @dev_attr_reg_write, ptr @dev_attr_flip, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_fastpllclk = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fastpllclk_show, ptr @fastpllclk_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_reg_read = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @w100fb_reg_read }, [36 x i8] zeroinitializer }, align 32
@dev_attr_reg_write = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @w100fb_reg_write }, [36 x i8] zeroinitializer }, align 32
@dev_attr_flip = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @flip_show, ptr @flip_store }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fastpllclk\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@fastpllclk_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"w100fb: Using fast system clock (if possible)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fastpllclk_store\00", [47 x i8] zeroinitializer }, align 32
@fastpllclk_store._entry_ptr = internal global ptr @fastpllclk_store._entry, section ".printk_index", align 4
@fastpllclk_store._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"w100fb: Using normal system clock\0A\00", [61 x i8] zeroinitializer }, align 32
@fastpllclk_store._entry_ptr.35 = internal global ptr @fastpllclk_store._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reg_read\00", [23 x i8] zeroinitializer }, align 32
@w100fb_reg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Read Register 0x%08lX: 0x%08lX\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"w100fb_reg_read\00", [16 x i8] zeroinitializer }, align 32
@w100fb_reg_read._entry_ptr = internal global ptr @w100fb_reg_read._entry, section ".printk_index", align 4
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg_write\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%lx %lx\00", [24 x i8] zeroinitializer }, align 32
@w100fb_reg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Write Register 0x%08lX: 0x%08lX\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"w100fb_reg_write\00", [47 x i8] zeroinitializer }, align 32
@w100fb_reg_write._entry_ptr = internal global ptr @w100fb_reg_write._entry, section ".printk_index", align 4
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"flip\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 12500000, i64 14318000, i64 16000000]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 1447301122, i64 1463881730, i64 1464078338]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 12500000, i64 14318000, i64 16000000]
@__sancov_gen_cov_switch_values.46 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 1447301122, i64 1463881730, i64 1464078338]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 480, i64 640]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"remapped_regs\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 65, i32 22 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"w100_pll_tables\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1012, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"w100fb_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1621, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"xtal_12500000\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 978, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"xtal_14318000\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 989, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"xtal_16000000\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1000, i32 29 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1627, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"w100fb_groups\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"remapped_base\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 64, i32 22 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 663, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 666, i32 23 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 667, i32 23 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 668, i32 23 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 670, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 674, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [14 x i8] c"remapped_fbuf\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 66, i32 22 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 698, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [11 x i8] c"w100fb_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 552, i32 28 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 766, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"w100_pwr_state.0\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"w100_pwr_state.1\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"w100_pwr_state.2\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"w100_pwr_state.3\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"w100_pwr_state.4\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"w100_pwr_state.5\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 274, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 289, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [13 x i8] c"w100fb_group\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 174, i32 1 }
@___asan_gen_.164 = private unnamed_addr constant [13 x i8] c"w100fb_attrs\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 167, i32 26 }
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c"dev_attr_fastpllclk\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [18 x i8] c"dev_attr_reg_read\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [19 x i8] c"dev_attr_reg_write\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [14 x i8] c"dev_attr_flip\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 165, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 143, i32 22 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 153, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 156, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 120, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 116, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 135, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 125, i32 14 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 128, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.228 = private constant [32 x i8] c"../drivers/video/fbdev/w100fb.c\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 109, i32 8 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_w100fb_driver_exit, ptr @__initcall__kmod_w100fb__305_1632_w100fb_driver_init6, ptr @__ksymtab_w100fb_get_hsynclen, ptr @__ksymtab_w100fb_gpio_read, ptr @__ksymtab_w100fb_gpio_write, ptr @fastpllclk_store._entry, ptr @fastpllclk_store._entry.33, ptr @fastpllclk_store._entry_ptr, ptr @fastpllclk_store._entry_ptr.35, ptr @w100_fifo_wait._entry, ptr @w100_fifo_wait._entry_ptr, ptr @w100fb_driver_exit, ptr @w100fb_probe._entry, ptr @w100fb_probe._entry.10, ptr @w100fb_probe._entry.13, ptr @w100fb_probe._entry.16, ptr @w100fb_probe._entry.19, ptr @w100fb_probe._entry.22, ptr @w100fb_probe._entry.4, ptr @w100fb_probe._entry.7, ptr @w100fb_probe._entry_ptr, ptr @w100fb_probe._entry_ptr.12, ptr @w100fb_probe._entry_ptr.15, ptr @w100fb_probe._entry_ptr.18, ptr @w100fb_probe._entry_ptr.21, ptr @w100fb_probe._entry_ptr.24, ptr @w100fb_probe._entry_ptr.6, ptr @w100fb_probe._entry_ptr.9, ptr @w100fb_reg_read._entry, ptr @w100fb_reg_read._entry_ptr, ptr @w100fb_reg_write._entry, ptr @w100fb_reg_write._entry_ptr, ptr @w100fb_sync._entry, ptr @w100fb_sync._entry_ptr, ptr @remapped_regs, ptr @w100_pll_tables, ptr @w100fb_driver, ptr @xtal_12500000, ptr @xtal_14318000, ptr @xtal_16000000, ptr @.str, ptr @w100fb_groups, ptr @remapped_base, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @remapped_fbuf, ptr @.str.20, ptr @w100fb_ops, ptr @.str.23, ptr @w100_pwr_state.0, ptr @w100_pwr_state.1, ptr @w100_pwr_state.2, ptr @w100_pwr_state.3, ptr @w100_pwr_state.4, ptr @w100_pwr_state.5, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @w100fb_group, ptr @w100fb_attrs, ptr @dev_attr_fastpllclk, ptr @dev_attr_reg_read, ptr @dev_attr_reg_write, ptr @dev_attr_flip, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remapped_regs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100_pll_tables to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100fb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtal_12500000 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtal_14318000 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtal_16000000 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100fb_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remapped_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100fb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100fb_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100fb_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100fb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100fb_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100fb_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remapped_fbuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100fb_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100fb_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100_pwr_state.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100_pwr_state.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100_pwr_state.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100_pwr_state.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100_pwr_state.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100_pwr_state.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100_fifo_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100fb_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100fb_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100fb_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fastpllclk to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reg_read to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reg_write to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_flip to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastpllclk_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastpllclk_store._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100fb_reg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w100fb_reg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @w100fb_get_hsynclen(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %blanked = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %blanked to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blanked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %hsync_len = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hsync_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.else ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w100fb_gpio_read(i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp = icmp eq i32 %port, 0
  %0 = load ptr, ptr @remapped_regs, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %0, i32 1208
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !129
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !130
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr4 = getelementptr i8, ptr %0, i32 1320
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #14, !srcloc !129
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !131
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %value.0 = phi i32 [ %2, %if.then ], [ %4, %if.else ]
  ret i32 %value.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @w100fb_gpio_write(i32 noundef %port, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp = icmp eq i32 %port, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  tail call void @arm_heavy_mb() #14
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %1 = load ptr, ptr @remapped_regs, align 4
  br i1 %cmp, label %do.body, label %do.body1

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %1, i32 1208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #14, !srcloc !132
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr3 = getelementptr i8, ptr %1, i32 1320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %0) #14, !srcloc !132
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @w100_get_xtal_table(i32 noundef %freq) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %freq, label %entry.cleanup_crit_edge [
    i32 12500000, label %entry.if.then_crit_edge
    i32 14318000, label %if.then.fold.split
    i32 16000000, label %if.then.fold.split7
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then.fold.split7:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split7, %if.then.fold.split, %entry.if.then_crit_edge
  %pll_entry.0.lcssa = phi ptr [ @w100_pll_tables, %entry.if.then_crit_edge ], [ getelementptr inbounds ([4 x %struct.pll_entries], ptr @w100_pll_tables, i32 0, i32 1), %if.then.fold.split ], [ getelementptr inbounds ([4 x %struct.pll_entries], ptr @w100_pll_tables, i32 0, i32 2), %if.then.fold.split7 ]
  %pll_table = getelementptr inbounds %struct.pll_entries, ptr %pll_entry.0.lcssa, i32 0, i32 1
  %1 = ptrtoint ptr %pll_table to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pll_table, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.then ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w100fb_driver_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @w100fb_driver, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w100fb_driver_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @platform_driver_unregister(ptr noundef nonnull @w100fb_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w100fb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %call1 = tail call ptr @ioremap(i32 noundef %1, i32 noundef 16) #14
  store ptr %call1, ptr @remapped_base, align 4
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.end.if.end146_crit_edge, label %if.end3

if.end.if.end146_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end146

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %add5 = add i32 %3, 65536
  %call6 = tail call ptr @ioremap(i32 noundef %add5, i32 noundef 8192) #14
  store ptr %call6, ptr @remapped_regs, align 4
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %if.end3.if.end146_crit_edge, label %do.end

if.end3.if.end146_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end146

do.end:                                           ; preds = %if.end3
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #17
  %4 = load ptr, ptr @remapped_regs, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #14, !srcloc !129
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !133
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %6, label %do.end33 [
    i32 1463881730, label %do.end.do.end38_crit_edge
    i32 1447301122, label %do.end22
    i32 1464078338, label %do.end28
  ]

do.end.do.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end38

do.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end38

do.end28:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end38

do.end33:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #17
  br label %if.end146

do.end38:                                         ; preds = %do.end28, %do.end22, %do.end.do.end38_crit_edge
  %.str.5.sink = phi ptr [ @.str.8, %do.end22 ], [ @.str.11, %do.end28 ], [ @.str.5, %do.end.do.end38_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.5.sink) #17
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %9) #17
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call, align 4
  %add44 = add i32 %11, 1048576
  %call45 = tail call ptr @ioremap(i32 noundef %add44, i32 noundef 15728640) #14
  store ptr %call45, ptr @remapped_fbuf, align 4
  %cmp46 = icmp eq ptr %call45, null
  br i1 %cmp46, label %do.end38.if.end149_crit_edge, label %if.end48

do.end38.if.end149_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end149

if.end48:                                         ; preds = %do.end38
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call49 = tail call ptr @framebuffer_alloc(i32 noundef 52, ptr noundef %dev) #14
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.end48.if.end146_crit_edge, label %if.end52

if.end48.if.end146_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end146

if.end52:                                         ; preds = %if.end48
  %par53 = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 30
  %12 = ptrtoint ptr %par53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %par53, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call49, ptr %driver_data.i.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %15 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platform_data.i, align 8
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %6, ptr %13, align 4
  %mach = getelementptr inbounds %struct.w100fb_par, ptr %13, i32 0, i32 10
  %18 = ptrtoint ptr %mach to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %mach, align 4
  %fastpll_mode = getelementptr inbounds %struct.w100fb_par, ptr %13, i32 0, i32 6
  %19 = ptrtoint ptr %fastpll_mode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %fastpll_mode, align 4
  %blanked = getelementptr inbounds %struct.w100fb_par, ptr %13, i32 0, i32 5
  %20 = ptrtoint ptr %blanked to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %blanked, align 4
  %xtal_freq = getelementptr inbounds %struct.w100fb_mach_info, ptr %16, i32 0, i32 8
  %21 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xtal_freq, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %22, label %w100_get_xtal_table.exit.thread [
    i32 12500000, label %if.end52.w100_get_xtal_table.exit_crit_edge
    i32 14318000, label %if.then.fold.split.i
    i32 16000000, label %if.then.fold.split7.i
  ]

if.end52.w100_get_xtal_table.exit_crit_edge:      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %w100_get_xtal_table.exit

w100_get_xtal_table.exit.thread:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  %pll_table236 = getelementptr inbounds %struct.w100fb_par, ptr %13, i32 0, i32 9
  %24 = ptrtoint ptr %pll_table236 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %pll_table236, align 4
  br label %do.end63

if.then.fold.split.i:                             ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %w100_get_xtal_table.exit

if.then.fold.split7.i:                            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %w100_get_xtal_table.exit

w100_get_xtal_table.exit:                         ; preds = %if.then.fold.split7.i, %if.then.fold.split.i, %if.end52.w100_get_xtal_table.exit_crit_edge
  %pll_entry.0.lcssa.i = phi ptr [ @w100_pll_tables, %if.end52.w100_get_xtal_table.exit_crit_edge ], [ getelementptr inbounds ([4 x %struct.pll_entries], ptr @w100_pll_tables, i32 0, i32 1), %if.then.fold.split.i ], [ getelementptr inbounds ([4 x %struct.pll_entries], ptr @w100_pll_tables, i32 0, i32 2), %if.then.fold.split7.i ]
  %pll_table.i = getelementptr inbounds %struct.pll_entries, ptr %pll_entry.0.lcssa.i, i32 0, i32 1
  %25 = ptrtoint ptr %pll_table.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pll_table.i, align 4
  %pll_table = getelementptr inbounds %struct.w100fb_par, ptr %13, i32 0, i32 9
  %27 = ptrtoint ptr %pll_table to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %pll_table, align 4
  %tobool59.not = icmp eq ptr %26, null
  br i1 %tobool59.not, label %w100_get_xtal_table.exit.do.end63_crit_edge, label %if.end66

w100_get_xtal_table.exit.do.end63_crit_edge:      ; preds = %w100_get_xtal_table.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end63

do.end63:                                         ; preds = %w100_get_xtal_table.exit.do.end63_crit_edge, %w100_get_xtal_table.exit.thread
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #17
  br label %if.then143

if.end66:                                         ; preds = %w100_get_xtal_table.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3264, i32 noundef 64) #18
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 27
  %29 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %pseudo_palette, align 4
  %tobool69.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool69.not, label %if.end66.if.then143_crit_edge, label %if.end71

if.end66.if.then143_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then143

if.end71:                                         ; preds = %if.end66
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 20
  %30 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @w100fb_ops, ptr %fbops, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 2
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 768, ptr %flags, align 4
  %node = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 1
  %32 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %node, align 4
  %33 = load ptr, ptr @remapped_fbuf, align 4
  %add.ptr72 = getelementptr i8, ptr %33, i32 7340032
  %34 = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 25
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr72, ptr %34, align 4
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 26
  %36 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1441791, ptr %screen_size, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 7
  %37 = call ptr @memcpy(ptr %fix, ptr @.str, i32 7)
  %type = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 7, i32 3
  %38 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %type, align 4
  %type_aux = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 7, i32 4
  %39 = ptrtoint ptr %type_aux to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %type_aux, align 4
  %accel = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 7, i32 12
  %40 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %accel, align 4
  %41 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call, align 4
  %add78 = add i32 %42, 8388608
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 7, i32 1
  %43 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add78, ptr %smem_start, align 4
  %44 = load i32, ptr %call, align 4
  %add81 = add i32 %44, 65536
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 7, i32 10
  %45 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add81, ptr %mmio_start, align 4
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 7, i32 11
  %46 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 8192, ptr %mmio_len, align 4
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 12
  %call84 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.end71.if.then143_crit_edge, label %if.end87

if.end71.if.then143_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then143

if.end87:                                         ; preds = %if.end71
  %modelist = getelementptr inbounds %struct.w100fb_mach_info, ptr %16, i32 0, i32 1
  %47 = ptrtoint ptr %modelist to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %modelist, align 4
  %mode = getelementptr inbounds %struct.w100fb_par, ptr %13, i32 0, i32 8
  %49 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %mode, align 4
  %init_mode = getelementptr inbounds %struct.w100fb_mach_info, ptr %16, i32 0, i32 7
  %50 = ptrtoint ptr %init_mode to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %init_mode, align 4
  %and = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool88.not = icmp eq i32 %and, 0
  br i1 %tobool88.not, label %if.else, label %if.then89

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  %yres = getelementptr inbounds %struct.w100_mode, ptr %48, i32 0, i32 1
  %52 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %yres, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 6
  %54 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %var, align 4
  %55 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mode, align 4
  br label %if.end103

if.else:                                          ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %48, align 4
  %var97 = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 6
  %59 = ptrtoint ptr %var97 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %var97, align 4
  %60 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mode, align 4
  %yres100 = getelementptr inbounds %struct.w100_mode, ptr %61, i32 0, i32 1
  br label %if.end103

if.end103:                                        ; preds = %if.else, %if.then89
  %.sink.in = phi ptr [ %yres100, %if.else ], [ %56, %if.then89 ]
  %62 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %62)
  %.sink = load i32, ptr %.sink.in, align 4
  %63 = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 6, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.sink, ptr %63, align 4
  %65 = ptrtoint ptr %init_mode to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %init_mode, align 4
  %and105 = and i32 %66, 2
  store i32 %and105, ptr %init_mode, align 4
  %and105.lobit = lshr exact i32 %and105, 1
  %67 = getelementptr inbounds %struct.w100fb_par, ptr %13, i32 0, i32 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and105.lobit, ptr %67, align 4
  %var111 = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 6
  %69 = ptrtoint ptr %var111 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %var111, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 6, i32 2
  %71 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %xres_virtual, align 4
  %72 = load i32, ptr %63, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 6, i32 3
  %73 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %yres_virtual, align 4
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 6, i32 17
  %74 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 4, ptr %pixclock, align 4
  %sync = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 6, i32 24
  %75 = ptrtoint ptr %sync to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %sync, align 4
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 6, i32 7
  %76 = ptrtoint ptr %grayscale to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %grayscale, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 6, i32 5
  %77 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %yoffset, align 4
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 6, i32 4
  %78 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %xoffset, align 4
  %accel_flags = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 6, i32 16
  %79 = ptrtoint ptr %accel_flags to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %accel_flags, align 4
  %activate = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 6, i32 13
  %80 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %activate, align 4
  tail call fastcc void @w100_hw_init(ptr noundef %13)
  %call125 = tail call i32 @w100fb_check_var(ptr noundef %var111, ptr noundef nonnull %call49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %if.end103.if.then143_crit_edge, label %if.end128

if.end103.if.then143_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then143

if.end128:                                        ; preds = %if.end103
  %call129 = tail call i32 @register_framebuffer(ptr noundef nonnull %call49) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %if.end128.if.then143_crit_edge, label %do.end135

if.end128.if.then143_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then143

do.end135:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #16
  %81 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %node, align 4
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %82, ptr noundef %fix) #17
  br label %cleanup

if.then143:                                       ; preds = %if.end128.if.then143_crit_edge, %if.end103.if.then143_crit_edge, %if.end71.if.then143_crit_edge, %if.end66.if.then143_crit_edge, %do.end63
  %err.0 = phi i32 [ -22, %do.end63 ], [ -12, %if.end66.if.then143_crit_edge ], [ -12, %if.end71.if.then143_crit_edge ], [ -22, %if.end103.if.then143_crit_edge ], [ -22, %if.end128.if.then143_crit_edge ]
  %cmap144 = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap144) #14
  %pseudo_palette145 = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 27
  %83 = ptrtoint ptr %pseudo_palette145 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pseudo_palette145, align 4
  tail call void @kfree(ptr noundef %84) #14
  br label %if.end146

if.end146:                                        ; preds = %if.then143, %if.end48.if.end146_crit_edge, %do.end33, %if.end3.if.end146_crit_edge, %if.end.if.end146_crit_edge
  %tobool142.not243.ph = phi i1 [ true, %if.end48.if.end146_crit_edge ], [ true, %do.end33 ], [ true, %if.end3.if.end146_crit_edge ], [ true, %if.end.if.end146_crit_edge ], [ false, %if.then143 ]
  %err.0242.ph = phi i32 [ -12, %if.end48.if.end146_crit_edge ], [ -19, %do.end33 ], [ -5, %if.end3.if.end146_crit_edge ], [ -5, %if.end.if.end146_crit_edge ], [ %err.0, %if.then143 ]
  %info.0241.ph = phi ptr [ null, %if.end48.if.end146_crit_edge ], [ null, %do.end33 ], [ null, %if.end3.if.end146_crit_edge ], [ null, %if.end.if.end146_crit_edge ], [ %call49, %if.then143 ]
  %.pr = load ptr, ptr @remapped_fbuf, align 4
  %cmp147.not = icmp eq ptr %.pr, null
  br i1 %cmp147.not, label %if.end146.if.end149_crit_edge, label %if.then148

if.end146.if.end149_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end149

if.then148:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @iounmap(ptr noundef nonnull %.pr) #14
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %if.end146.if.end149_crit_edge, %do.end38.if.end149_crit_edge
  %info.0241250 = phi ptr [ %info.0241.ph, %if.then148 ], [ %info.0241.ph, %if.end146.if.end149_crit_edge ], [ null, %do.end38.if.end149_crit_edge ]
  %err.0242249 = phi i32 [ %err.0242.ph, %if.then148 ], [ %err.0242.ph, %if.end146.if.end149_crit_edge ], [ -5, %do.end38.if.end149_crit_edge ]
  %tobool142.not243248 = phi i1 [ %tobool142.not243.ph, %if.then148 ], [ %tobool142.not243.ph, %if.end146.if.end149_crit_edge ], [ true, %do.end38.if.end149_crit_edge ]
  %85 = load ptr, ptr @remapped_regs, align 4
  %cmp150.not = icmp eq ptr %85, null
  br i1 %cmp150.not, label %if.end149.if.end152_crit_edge, label %if.then151

if.end149.if.end152_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152

if.then151:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @iounmap(ptr noundef nonnull %85) #14
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %if.end149.if.end152_crit_edge
  %86 = load ptr, ptr @remapped_base, align 4
  %cmp153.not = icmp eq ptr %86, null
  br i1 %cmp153.not, label %if.end152.if.end155_crit_edge, label %if.then154

if.end152.if.end155_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end155

if.then154:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @iounmap(ptr noundef nonnull %86) #14
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %if.end152.if.end155_crit_edge
  br i1 %tobool142.not243248, label %if.end155.cleanup_crit_edge, label %if.then157

if.end155.cleanup_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then157:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @framebuffer_release(ptr noundef nonnull %info.0241250) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then157, %if.end155.cleanup_crit_edge, %do.end135, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end135 ], [ -22, %entry.cleanup_crit_edge ], [ %err.0242249, %if.then157 ], [ %err.0242249, %if.end155.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w100fb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  tail call void @unregister_framebuffer(ptr noundef %1) #14
  %saved_intmem = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %saved_intmem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %saved_intmem, align 4
  tail call void @vfree(ptr noundef %5) #14
  %saved_extmem = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %saved_extmem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %saved_extmem, align 4
  tail call void @vfree(ptr noundef %7) #14
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 27
  %8 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pseudo_palette, align 4
  tail call void @kfree(ptr noundef %9) #14
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #14
  %10 = load ptr, ptr @remapped_base, align 4
  tail call void @iounmap(ptr noundef %10) #14
  %11 = load ptr, ptr @remapped_regs, align 4
  tail call void @iounmap(ptr noundef %11) #14
  %12 = load ptr, ptr @remapped_fbuf, align 4
  tail call void @iounmap(ptr noundef %12) #14
  tail call void @framebuffer_release(ptr noundef %1) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w100fb_suspend(ptr nocapture noundef readonly %dev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %mach = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %mach to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mach, align 4
  %tg2 = getelementptr inbounds %struct.w100fb_mach_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %tg2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tg2, align 4
  %extmem_active.i = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %extmem_active.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extmem_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %entry.if.end5.i_crit_edge, label %if.then.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  %mem.i = getelementptr inbounds %struct.w100fb_mach_info, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem.i, align 4
  %size.i = getelementptr inbounds %struct.w100_mem_info, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  %call.i = tail call noalias ptr @vmalloc(i32 noundef %13) #19
  %saved_extmem.i = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %saved_extmem.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %saved_extmem.i, align 4
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %if.then.i.if.end5.i_crit_edge, label %if.then3.i

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %15 = load ptr, ptr @remapped_fbuf, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 7340032
  tail call void @mmiocpy(ptr noundef nonnull %call.i, ptr noundef %add.ptr.i, i32 noundef %13) #14
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.then.i.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  %call6.i = tail call noalias ptr @vmalloc(i32 noundef 393215) #19
  %saved_intmem.i = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %saved_intmem.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call6.i, ptr %saved_intmem.i, align 4
  %tobool8.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool8.not.i, label %if.end5.i.w100fb_save_vidmem.exit_crit_edge, label %land.lhs.true.i

if.end5.i.w100fb_save_vidmem.exit_crit_edge:      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w100fb_save_vidmem.exit

land.lhs.true.i:                                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  %17 = load ptr, ptr @remapped_fbuf, align 4
  %add.ptr18.i = getelementptr i8, ptr %17, i32 7340032
  tail call void @mmiocpy(ptr noundef nonnull %call6.i, ptr noundef %add.ptr18.i, i32 noundef 393215) #14
  br label %w100fb_save_vidmem.exit

w100fb_save_vidmem.exit:                          ; preds = %land.lhs.true.i, %if.end5.i.w100fb_save_vidmem.exit_crit_edge
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %w100fb_save_vidmem.exit.if.end_crit_edge, label %land.lhs.true

w100fb_save_vidmem.exit.if.end_crit_edge:         ; preds = %w100fb_save_vidmem.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %w100fb_save_vidmem.exit
  %suspend = getelementptr inbounds %struct.w100_tg_info, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %suspend, align 4
  %tobool3.not = icmp eq ptr %19, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %19(ptr noundef %3) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %w100fb_save_vidmem.exit.if.end_crit_edge
  tail call fastcc void @w100_suspend(i32 noundef 1)
  %blanked = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %blanked to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %blanked, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w100fb_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %mach = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %mach to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mach, align 4
  %tg2 = getelementptr inbounds %struct.w100fb_mach_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %tg2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tg2, align 4
  tail call fastcc void @w100_hw_init(ptr noundef %3)
  tail call fastcc void @w100fb_activate_var(ptr noundef %3)
  %extmem_active.i = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %extmem_active.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extmem_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %saved_extmem.i = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %saved_extmem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %saved_extmem.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %mach to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mach, align 4
  %mem.i = getelementptr inbounds %struct.w100fb_mach_info, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem.i, align 4
  %size.i = getelementptr inbounds %struct.w100_mem_info, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i, align 4
  %18 = load ptr, ptr @remapped_fbuf, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 7340032
  tail call void @mmiocpy(ptr noundef %add.ptr.i, ptr noundef nonnull %11, i32 noundef %17) #14
  %19 = ptrtoint ptr %saved_extmem.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %saved_extmem.i, align 4
  tail call void @vfree(ptr noundef %20) #14
  %21 = ptrtoint ptr %saved_extmem.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %saved_extmem.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %saved_intmem.i = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 11
  %22 = ptrtoint ptr %saved_intmem.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %saved_intmem.i, align 4
  %tobool5.not.i = icmp eq ptr %23, null
  br i1 %tobool5.not.i, label %if.end.i.w100fb_restore_vidmem.exit_crit_edge, label %if.then6.i

if.end.i.w100fb_restore_vidmem.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w100fb_restore_vidmem.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %24 = load ptr, ptr @remapped_fbuf, align 4
  %add.ptr12.i = getelementptr i8, ptr %24, i32 7340032
  tail call void @mmiocpy(ptr noundef %add.ptr12.i, ptr noundef nonnull %23, i32 noundef 393215) #14
  %25 = ptrtoint ptr %saved_intmem.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %saved_intmem.i, align 4
  tail call void @vfree(ptr noundef %26) #14
  %27 = ptrtoint ptr %saved_intmem.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %saved_intmem.i, align 4
  br label %w100fb_restore_vidmem.exit

w100fb_restore_vidmem.exit:                       ; preds = %if.then6.i, %if.end.i.w100fb_restore_vidmem.exit_crit_edge
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %w100fb_restore_vidmem.exit.if.end_crit_edge, label %land.lhs.true

w100fb_restore_vidmem.exit.if.end_crit_edge:      ; preds = %w100fb_restore_vidmem.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %w100fb_restore_vidmem.exit
  %resume = getelementptr inbounds %struct.w100_tg_info, ptr %7, i32 0, i32 2
  %28 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %resume, align 4
  %tobool3.not = icmp eq ptr %29, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %29(ptr noundef %3) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %w100fb_restore_vidmem.exit.if.end_crit_edge
  %blanked = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 5
  %30 = ptrtoint ptr %blanked to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %blanked, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w100_hw_init(ptr nocapture noundef readonly %par) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mach = getelementptr inbounds %struct.w100fb_par, ptr %par, i32 0, i32 10
  %0 = ptrtoint ptr %mach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mach, align 4
  %gpio1 = getelementptr inbounds %struct.w100fb_mach_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %gpio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio1, align 4
  %4 = load ptr, ptr @remapped_base, align 4
  %add.ptr.i = getelementptr i16, ptr %4, i32 6
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #14, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !136
  tail call void @arm_heavy_mb() #14
  %6 = or i16 %5, 2048
  %7 = load ptr, ptr @remapped_base, align 4
  %add.ptr3.i = getelementptr i16, ptr %7, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i, i16 %6) #14, !srcloc !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !138
  tail call void @arm_heavy_mb() #14
  %9 = load ptr, ptr @remapped_base, align 4
  %add.ptr7.i = getelementptr i16, ptr %9, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i, i16 0) #14, !srcloc !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 21474800) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  tail call void @arm_heavy_mb() #14
  %11 = load ptr, ptr @remapped_regs, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 822083584) #14, !srcloc !132
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %temp32.0200 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %12 = load ptr, ptr @remapped_regs, align 4
  %add.ptr2 = getelementptr i8, ptr %12, i32 640
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  %inc = add nuw nsw i32 %temp32.0200, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %do.body4, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body4:                                         ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !141
  tail call void @arm_heavy_mb() #14
  %14 = load ptr, ptr @remapped_regs, align 4
  %add.ptr7 = getelementptr i8, ptr %14, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 805306368) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !142
  tail call void @arm_heavy_mb() #14
  %15 = load ptr, ptr @remapped_regs, align 4
  %add.ptr11 = getelementptr i8, ptr %15, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 34147328) #14, !srcloc !132
  %16 = load ptr, ptr @remapped_regs, align 4
  %add.ptr14 = getelementptr i8, ptr %16, i32 40
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !143
  %18 = and i32 %17, -49154
  %19 = or i32 %18, 16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !144
  tail call void @arm_heavy_mb() #14
  %20 = load ptr, ptr @remapped_regs, align 4
  %add.ptr29 = getelementptr i8, ptr %20, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %19) #14, !srcloc !132
  %21 = load ptr, ptr @remapped_regs, align 4
  %add.ptr32 = getelementptr i8, ptr %21, i32 36
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !145
  %23 = or i32 %22, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !146
  tail call void @arm_heavy_mb() #14
  %24 = load ptr, ptr @remapped_regs, align 4
  %add.ptr43 = getelementptr i8, ptr %24, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %23) #14, !srcloc !132
  %25 = load ptr, ptr @remapped_regs, align 4
  %add.ptr46 = getelementptr i8, ptr %25, i32 24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !147
  %27 = and i32 %26, -805842945
  %28 = or i32 %27, 805838848
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !148
  tail call void @arm_heavy_mb() #14
  %29 = load ptr, ptr @remapped_regs, align 4
  %add.ptr69 = getelementptr i8, ptr %29, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %28) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !149
  tail call void @arm_heavy_mb() #14
  %30 = load ptr, ptr @remapped_base, align 4
  %add.ptr86 = getelementptr i8, ptr %30, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr86, i8 -120) #14, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !151
  tail call void @arm_heavy_mb() #14
  %31 = load ptr, ptr @remapped_base, align 4
  %add.ptr103 = getelementptr i8, ptr %31, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr103, i8 114) #14, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !152
  tail call void @arm_heavy_mb() #14
  %32 = load ptr, ptr @remapped_base, align 4
  %add.ptr107 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr107, i8 1) #14, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !153
  tail call void @arm_heavy_mb() #14
  %33 = load ptr, ptr @remapped_regs, align 4
  %add.ptr115 = getelementptr i8, ptr %33, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 0) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !154
  tail call void @arm_heavy_mb() #14
  %34 = load ptr, ptr @remapped_regs, align 4
  %add.ptr123 = getelementptr i8, ptr %34, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 8) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !155
  tail call void @arm_heavy_mb() #14
  %35 = load ptr, ptr @remapped_regs, align 4
  %add.ptr131 = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 16711435) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !156
  tail call void @arm_heavy_mb() #14
  %36 = load ptr, ptr @remapped_regs, align 4
  %add.ptr135 = getelementptr i8, ptr %36, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 1076101120) #14, !srcloc !132
  %37 = load ptr, ptr @remapped_regs, align 4
  %add.ptr138 = getelementptr i8, ptr %37, i32 1336
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr138) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !157
  %39 = or i32 %38, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !158
  tail call void @arm_heavy_mb() #14
  %40 = load ptr, ptr @remapped_regs, align 4
  %add.ptr145 = getelementptr i8, ptr %40, i32 1336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145, i32 %39) #14, !srcloc !132
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body4.if.end_crit_edge, label %do.body146

do.body4.if.end_crit_edge:                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body146:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !159
  tail call void @arm_heavy_mb() #14
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %3, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %44 = load ptr, ptr @remapped_regs, align 4
  %add.ptr149 = getelementptr i8, ptr %44, i32 1208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr149, i32 %43) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !160
  tail call void @arm_heavy_mb() #14
  %init_data2 = getelementptr inbounds %struct.w100_gpio_regs, ptr %3, i32 0, i32 1
  %45 = ptrtoint ptr %init_data2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %init_data2, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = load ptr, ptr @remapped_regs, align 4
  %add.ptr153 = getelementptr i8, ptr %48, i32 1320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 %47) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !161
  tail call void @arm_heavy_mb() #14
  %gpio_dir1 = getelementptr inbounds %struct.w100_gpio_regs, ptr %3, i32 0, i32 2
  %49 = ptrtoint ptr %gpio_dir1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %gpio_dir1, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = load ptr, ptr @remapped_regs, align 4
  %add.ptr157 = getelementptr i8, ptr %52, i32 1212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr157, i32 %51) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !162
  tail call void @arm_heavy_mb() #14
  %gpio_oe1 = getelementptr inbounds %struct.w100_gpio_regs, ptr %3, i32 0, i32 3
  %53 = ptrtoint ptr %gpio_oe1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %gpio_oe1, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %56 = load ptr, ptr @remapped_regs, align 4
  %add.ptr161 = getelementptr i8, ptr %56, i32 1216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161, i32 %55) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !163
  tail call void @arm_heavy_mb() #14
  %gpio_dir2 = getelementptr inbounds %struct.w100_gpio_regs, ptr %3, i32 0, i32 4
  %57 = ptrtoint ptr %gpio_dir2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %gpio_dir2, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = load ptr, ptr @remapped_regs, align 4
  %add.ptr165 = getelementptr i8, ptr %60, i32 1324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr165, i32 %59) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !164
  tail call void @arm_heavy_mb() #14
  %gpio_oe2 = getelementptr inbounds %struct.w100_gpio_regs, ptr %3, i32 0, i32 5
  %61 = ptrtoint ptr %gpio_oe2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %gpio_oe2, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %64 = load ptr, ptr @remapped_regs, align 4
  %add.ptr169 = getelementptr i8, ptr %64, i32 1328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169, i32 %63) #14, !srcloc !132
  br label %if.end

if.end:                                           ; preds = %do.body146, %do.body4.if.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w100fb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %mach.i = getelementptr inbounds %struct.w100fb_par, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mach.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mach.i, align 4
  %modelist1.i = getelementptr inbounds %struct.w100fb_mach_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %modelist1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %modelist1.i, align 4
  %num_modes.i = getelementptr inbounds %struct.w100fb_mach_info, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %num_modes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_modes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp90.not.i = icmp eq i32 %7, 0
  br i1 %cmp90.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %8 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %var, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.094.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %best_y.093.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %best_y.1.i, %for.inc.i.for.body.i_crit_edge ]
  %best_x.092.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %best_x.1.i, %for.inc.i.for.body.i_crit_edge ]
  %mode.091.i = phi ptr [ null, %for.body.lr.ph.i ], [ %mode.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.w100_mode, ptr %5, i32 %i.094.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp3.not.i = icmp ult i32 %11, %9
  br i1 %cmp3.not.i, label %for.body.i.if.else.i_crit_edge, label %land.lhs.true.i

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %yres.i = getelementptr %struct.w100_mode, ptr %5, i32 %i.094.i, i32 1
  %12 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres.i, align 4
  %14 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp5.not.i = icmp uge i32 %13, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %best_x.092.i)
  %cmp9.i = icmp ult i32 %11, %best_x.092.i
  %or.cond.i = select i1 %cmp5.not.i, i1 %cmp9.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %best_y.093.i)
  %cmp13.i = icmp ult i32 %13, %best_y.093.i
  %or.cond86.i = select i1 %or.cond.i, i1 %cmp13.i, i1 false
  br i1 %or.cond86.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.body.i.if.else.i_crit_edge
  %16 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %17)
  %cmp21.not.i = icmp ult i32 %11, %17
  br i1 %cmp21.not.i, label %if.else.i.for.inc.i_crit_edge, label %land.lhs.true22.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true22.i:                                ; preds = %if.else.i
  %yres24.i = getelementptr %struct.w100_mode, ptr %5, i32 %i.094.i, i32 1
  %18 = ptrtoint ptr %yres24.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yres24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %9)
  %cmp25.not.i = icmp uge i32 %19, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %best_y.093.i)
  %cmp29.i = icmp ult i32 %11, %best_y.093.i
  %or.cond87.i = select i1 %cmp25.not.i, i1 %cmp29.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %best_x.092.i)
  %cmp33.i = icmp ult i32 %19, %best_x.092.i
  %or.cond88.i = select i1 %or.cond87.i, i1 %cmp33.i, i1 false
  br i1 %or.cond88.i, label %if.then34.i, label %land.lhs.true22.i.for.inc.i_crit_edge

land.lhs.true22.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then34.i:                                      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then34.i, %land.lhs.true22.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %mode.1.i = phi ptr [ %arrayidx.i, %if.then34.i ], [ %mode.091.i, %land.lhs.true22.i.for.inc.i_crit_edge ], [ %mode.091.i, %if.else.i.for.inc.i_crit_edge ], [ %arrayidx.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %best_x.1.i = phi i32 [ %19, %if.then34.i ], [ %best_x.092.i, %land.lhs.true22.i.for.inc.i_crit_edge ], [ %best_x.092.i, %if.else.i.for.inc.i_crit_edge ], [ %11, %land.lhs.true.i.for.inc.i_crit_edge ]
  %best_y.1.i = phi i32 [ %11, %if.then34.i ], [ %best_y.093.i, %land.lhs.true22.i.for.inc.i_crit_edge ], [ %best_y.093.i, %if.else.i.for.inc.i_crit_edge ], [ %13, %land.lhs.true.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.094.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %tobool.not.i = icmp eq ptr %mode.1.i, null
  br i1 %tobool.not.i, label %for.end.i.cleanup_crit_edge, label %if.end

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  %20 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %best_x.1.i, ptr %var, align 4
  %21 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %best_y.1.i, ptr %yres, align 4
  %22 = ptrtoint ptr %mach.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mach.i, align 4
  %mem = getelementptr inbounds %struct.w100fb_mach_info, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mem, align 4
  %tobool2.not = icmp eq ptr %25, null
  br i1 %tobool2.not, label %land.lhs.true13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %mul = shl i32 %best_x.1.i, 1
  %26 = mul i32 %mul, %best_y.1.i
  %div86 = and i32 %26, 536870910
  %size = getelementptr inbounds %struct.w100_mem_info, ptr %25, i32 0, i32 4
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size, align 4
  %add = add i32 %28, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div86, i32 %add)
  %cmp = icmp ugt i32 %div86, %add
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true13:                                  ; preds = %if.end
  %mul16 = mul i32 %best_y.1.i, %best_x.1.i
  %29 = and i32 %mul16, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %29)
  %cmp19 = icmp ugt i32 %29, 196608
  br i1 %cmp19, label %land.lhs.true13.cleanup_crit_edge, label %land.lhs.true13.if.end21_crit_edge

land.lhs.true13.if.end21_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true13.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %30 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %xres_virtual, align 4
  %32 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %var, align 4
  %34 = tail call i32 @llvm.umax.i32(i32 %31, i32 %33)
  %35 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %36 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %yres_virtual, align 4
  %38 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %yres, align 4
  %40 = tail call i32 @llvm.umax.i32(i32 %37, i32 %39)
  %41 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %yres_virtual, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %42 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %43)
  %cmp33 = icmp ugt i32 %43, 16
  br i1 %cmp33, label %if.end21.cleanup_crit_edge, label %if.else

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16, ptr %bits_per_pixel, align 4
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %45 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 11, ptr %red, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 5, ptr %length, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %47 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 5, ptr %green, align 4
  %length40 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %48 = ptrtoint ptr %length40 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 6, ptr %length40, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %49 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %blue, align 4
  %length43 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %50 = ptrtoint ptr %length43 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 5, ptr %length43, align 4
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %length44 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %51 = ptrtoint ptr %length44 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %length44, align 4
  %52 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %transp, align 4
  %nonstd = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 12
  %53 = ptrtoint ptr %nonstd to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %nonstd, align 4
  %height = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 14
  %54 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 15
  %55 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %width, align 4
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %56 = ptrtoint ptr %vmode to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %vmode, align 4
  %sync = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %57 = ptrtoint ptr %sync to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %sync, align 4
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %58 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %pixclock, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end21.cleanup_crit_edge, %land.lhs.true13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true13.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ -22, %for.end.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w100fb_set_par(ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %xres = getelementptr inbounds %struct.w100fb_par, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xres, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %4 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %yres = getelementptr inbounds %struct.w100fb_par, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yres, align 4
  %yres4 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %yres4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5.not = icmp eq i32 %7, %9
  br i1 %cmp5.not, label %lor.lhs.false.if.end30_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false.if.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %10 = ptrtoint ptr %xres to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %5, ptr %xres, align 4
  %yres10 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %yres10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %yres10, align 4
  %yres11 = getelementptr inbounds %struct.w100fb_par, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %yres11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %yres11, align 4
  %mach.i = getelementptr inbounds %struct.w100fb_par, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %mach.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mach.i, align 4
  %modelist1.i = getelementptr inbounds %struct.w100fb_mach_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %modelist1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %modelist1.i, align 4
  %num_modes.i = getelementptr inbounds %struct.w100fb_mach_info, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %num_modes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_modes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp90.not.i = icmp eq i32 %19, 0
  br i1 %cmp90.not.i, label %if.then.w100fb_get_mode.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.w100fb_get_mode.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %w100fb_get_mode.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.094.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %best_y.093.i = phi i32 [ %best_y.1.i, %for.inc.i.for.body.i_crit_edge ], [ -1, %if.then.for.body.i_crit_edge ]
  %best_x.092.i = phi i32 [ %best_x.1.i, %for.inc.i.for.body.i_crit_edge ], [ -1, %if.then.for.body.i_crit_edge ]
  %mode.091.i = phi ptr [ %mode.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.w100_mode, ptr %17, i32 %i.094.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %5)
  %cmp3.not.i = icmp ult i32 %21, %5
  br i1 %cmp3.not.i, label %for.body.i.if.else.i_crit_edge, label %land.lhs.true.i

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %yres.i = getelementptr %struct.w100_mode, ptr %17, i32 %i.094.i, i32 1
  %22 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %yres.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %12)
  %cmp5.not.i = icmp uge i32 %23, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %best_x.092.i)
  %cmp9.i = icmp ult i32 %21, %best_x.092.i
  %or.cond.i = select i1 %cmp5.not.i, i1 %cmp9.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %best_y.093.i)
  %cmp13.i = icmp ult i32 %23, %best_y.093.i
  %or.cond86.i = select i1 %or.cond.i, i1 %cmp13.i, i1 false
  br i1 %or.cond86.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.body.i.if.else.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %12)
  %cmp21.not.i = icmp ult i32 %21, %12
  br i1 %cmp21.not.i, label %if.else.i.for.inc.i_crit_edge, label %land.lhs.true22.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true22.i:                                ; preds = %if.else.i
  %yres24.i = getelementptr %struct.w100_mode, ptr %17, i32 %i.094.i, i32 1
  %24 = ptrtoint ptr %yres24.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %yres24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %5)
  %cmp25.not.i = icmp uge i32 %25, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %best_y.093.i)
  %cmp29.i = icmp ult i32 %21, %best_y.093.i
  %or.cond87.i = select i1 %cmp25.not.i, i1 %cmp29.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %best_x.092.i)
  %cmp33.i = icmp ult i32 %25, %best_x.092.i
  %or.cond88.i = select i1 %or.cond87.i, i1 %cmp33.i, i1 false
  br i1 %or.cond88.i, label %if.then34.i, label %land.lhs.true22.i.for.inc.i_crit_edge

land.lhs.true22.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then34.i:                                      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then34.i, %land.lhs.true22.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %mode.1.i = phi ptr [ %arrayidx.i, %if.then34.i ], [ %mode.091.i, %land.lhs.true22.i.for.inc.i_crit_edge ], [ %mode.091.i, %if.else.i.for.inc.i_crit_edge ], [ %arrayidx.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %best_x.1.i = phi i32 [ %25, %if.then34.i ], [ %best_x.092.i, %land.lhs.true22.i.for.inc.i_crit_edge ], [ %best_x.092.i, %if.else.i.for.inc.i_crit_edge ], [ %21, %land.lhs.true.i.for.inc.i_crit_edge ]
  %best_y.1.i = phi i32 [ %21, %if.then34.i ], [ %best_y.093.i, %land.lhs.true22.i.for.inc.i_crit_edge ], [ %best_y.093.i, %if.else.i.for.inc.i_crit_edge ], [ %23, %land.lhs.true.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.094.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %19
  br i1 %exitcond.not.i, label %for.inc.i.w100fb_get_mode.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.w100fb_get_mode.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w100fb_get_mode.exit

w100fb_get_mode.exit:                             ; preds = %for.inc.i.w100fb_get_mode.exit_crit_edge, %if.then.w100fb_get_mode.exit_crit_edge
  %mode.0.lcssa105.i = phi ptr [ null, %if.then.w100fb_get_mode.exit_crit_edge ], [ %mode.1.i, %for.inc.i.w100fb_get_mode.exit_crit_edge ]
  %mode = getelementptr inbounds %struct.w100fb_par, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %mode.0.lcssa105.i, ptr %mode, align 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %27 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %visual, align 4
  %ypanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 7
  %28 = ptrtoint ptr %ypanstep to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %ypanstep, align 2
  %ywrapstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 8
  %29 = ptrtoint ptr %ywrapstep to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %ywrapstep, align 4
  %30 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %xres, align 4
  %32 = shl i32 %31, 1
  %div57 = and i32 %32, 536870910
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %33 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div57, ptr %line_length, align 4
  %mm_lock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mm_lock, i32 noundef 0) #14
  %34 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xres, align 4
  %36 = ptrtoint ptr %yres11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %yres11, align 4
  %mul20 = mul i32 %37, %35
  %38 = and i32 %mul20, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %38)
  %cmp23 = icmp ugt i32 %38, 196608
  %extmem_active = getelementptr inbounds %struct.w100fb_par, ptr %1, i32 0, i32 3
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %w100fb_get_mode.exit
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %extmem_active to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %extmem_active, align 4
  %40 = ptrtoint ptr %mach.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mach.i, align 4
  %mem = getelementptr inbounds %struct.w100fb_mach_info, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mem, align 4
  %size = getelementptr inbounds %struct.w100_mem_info, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size, align 4
  %add = add i32 %45, 1
  br label %if.end

if.else:                                          ; preds = %w100fb_get_mode.exit
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %extmem_active to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %extmem_active, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then24
  %.sink = phi i32 [ %add, %if.then24 ], [ 393216, %if.else ]
  %47 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink, ptr %47, align 4
  tail call void @mutex_unlock(ptr noundef %mm_lock) #14
  tail call fastcc void @w100fb_activate_var(ptr noundef %1)
  br label %if.end30

if.end30:                                         ; preds = %if.end, %lor.lhs.false.if.end30_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @w100fb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %trans, ptr nocapture noundef readonly %info) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %0 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mul = mul i32 %red, 19595
  %mul1 = mul i32 %green, 38470
  %add = add i32 %mul1, %mul
  %mul2 = mul i32 %blue, 7471
  %add3 = add i32 %add, %mul2
  %shr = lshr i32 %add3, 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %blue.addr.0 = phi i32 [ %shr, %if.then ], [ %blue, %entry.if.end_crit_edge ]
  %green.addr.0 = phi i32 [ %shr, %if.then ], [ %green, %entry.if.end_crit_edge ]
  %red.addr.0 = phi i32 [ %shr, %if.then ], [ %red, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp = icmp ult i32 %regno, 16
  br i1 %cmp, label %if.then4, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %2 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pseudo_palette, align 4
  %and = and i32 %red.addr.0, 63488
  %and5 = lshr i32 %green.addr.0, 5
  %shr6 = and i32 %and5, 2016
  %and7 = lshr i32 %blue.addr.0, 11
  %shr8 = and i32 %and7, 31
  %or = or i32 %shr6, %shr8
  %or9 = or i32 %or, %and
  %arrayidx = getelementptr i32, ptr %3, i32 %regno
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or9, ptr %arrayidx, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %if.end.if.end10_crit_edge
  %ret.0 = phi i32 [ 0, %if.then4 ], [ 1, %if.end.if.end10_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w100fb_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %mach = getelementptr inbounds %struct.w100fb_par, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mach, align 4
  %tg2 = getelementptr inbounds %struct.w100fb_mach_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %tg2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tg2, align 4
  %6 = zext i32 %blank_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %blank_mode, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge33
    i32 3, label %entry.sw.bb_crit_edge34
    i32 4, label %entry.sw.bb_crit_edge35
    i32 0, label %sw.bb8
  ]

entry.sw.bb_crit_edge35:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.bb_crit_edge34:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.bb_crit_edge33:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge33, %entry.sw.bb_crit_edge34, %entry.sw.bb_crit_edge35
  %blanked = getelementptr inbounds %struct.w100fb_par, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %blanked to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %blanked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %suspend = getelementptr inbounds %struct.w100_tg_info, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %suspend, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then4

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %10(ptr noundef %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %11 = ptrtoint ptr %blanked to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %blanked, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %blanked9 = getelementptr inbounds %struct.w100fb_par, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %blanked9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blanked9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp10.not = icmp eq i32 %13, 0
  br i1 %cmp10.not, label %sw.bb8.sw.epilog_crit_edge, label %if.then11

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then11:                                        ; preds = %sw.bb8
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %if.then11.if.end17_crit_edge, label %land.lhs.true13

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

land.lhs.true13:                                  ; preds = %if.then11
  %resume = getelementptr inbounds %struct.w100_tg_info, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resume, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %land.lhs.true13.if.end17_crit_edge, label %if.then15

land.lhs.true13.if.end17_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %15(ptr noundef %1) #14
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %land.lhs.true13.if.end17_crit_edge, %if.then11.if.end17_crit_edge
  %16 = ptrtoint ptr %blanked9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %blanked9, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end17, %sw.bb8.sw.epilog_crit_edge, %if.end, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w100fb_fillrect(ptr noundef %info, ptr noundef %rect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @cfb_fillrect(ptr noundef %info, ptr noundef %rect) #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr @remapped_regs, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 4204
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !165
  %6 = and i32 %5, 2139160560
  %7 = or i32 %6, 7864333
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end2
  %i.07.i = phi i32 [ 0, %if.end2 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %8 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 320
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !166
  %10 = and i32 %9, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2.not.i = icmp eq i32 %10, 0
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.w100_fifo_wait.exit_crit_edge

for.body.i.w100_fifo_wait.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w100_fifo_wait.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #14
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2000000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #17
  br label %w100_fifo_wait.exit

w100_fifo_wait.exit:                              ; preds = %do.end.i, %for.body.i.w100_fifo_wait.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !167
  tail call void @arm_heavy_mb() #14
  %12 = load ptr, ptr @remapped_regs, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 4204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %7) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !168
  tail call void @arm_heavy_mb() #14
  %color = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %13 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %color, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = load ptr, ptr @remapped_regs, align 4
  %add.ptr12 = getelementptr i8, ptr %16, i32 4220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %15) #14, !srcloc !132
  br label %for.body.i38

for.body.i38:                                     ; preds = %if.end.i41.for.body.i38_crit_edge, %w100_fifo_wait.exit
  %i.07.i34 = phi i32 [ 0, %w100_fifo_wait.exit ], [ %inc.i39, %if.end.i41.for.body.i38_crit_edge ]
  %17 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i35 = getelementptr i8, ptr %17, i32 320
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !166
  %19 = and i32 %18, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2.not.i37 = icmp eq i32 %19, 0
  br i1 %cmp2.not.i37, label %if.end.i41, label %for.body.i38.w100_fifo_wait.exit44_crit_edge

for.body.i38.w100_fifo_wait.exit44_crit_edge:     ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #16
  br label %w100_fifo_wait.exit44

if.end.i41:                                       ; preds = %for.body.i38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #14
  %inc.i39 = add nuw nsw i32 %i.07.i34, 1
  %exitcond.not.i40 = icmp eq i32 %inc.i39, 2000000
  br i1 %exitcond.not.i40, label %do.end.i43, label %if.end.i41.for.body.i38_crit_edge

if.end.i41.for.body.i38_crit_edge:                ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i38

do.end.i43:                                       ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #17
  br label %w100_fifo_wait.exit44

w100_fifo_wait.exit44:                            ; preds = %do.end.i43, %for.body.i38.w100_fifo_wait.exit44_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !169
  tail call void @arm_heavy_mb() #14
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %21 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dy, align 4
  %shl = shl i32 %22, 16
  %23 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rect, align 4
  %and16 = and i32 %24, 65535
  %or = or i32 %and16, %shl
  %25 = tail call i32 @llvm.bswap.i32(i32 %or)
  %26 = load ptr, ptr @remapped_regs, align 4
  %add.ptr17 = getelementptr i8, ptr %26, i32 4152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %25) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !170
  tail call void @arm_heavy_mb() #14
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %27 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width, align 4
  %shl21 = shl i32 %28, 16
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %29 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height, align 4
  %and22 = and i32 %30, 65535
  %or23 = or i32 %and22, %shl21
  %31 = tail call i32 @llvm.bswap.i32(i32 %or23)
  %32 = load ptr, ptr @remapped_regs, align 4
  %add.ptr24 = getelementptr i8, ptr %32, i32 4504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %31) #14, !srcloc !132
  br label %cleanup

cleanup:                                          ; preds = %w100_fifo_wait.exit44, %if.then1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w100fb_copyarea(ptr noundef %info, ptr noundef %area) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %area, align 4
  %dy2 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %2 = ptrtoint ptr %dy2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dy2, align 4
  %sx3 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %4 = ptrtoint ptr %sx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sx3, align 4
  %sy4 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %6 = ptrtoint ptr %sy4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sy4, align 4
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 4
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @cfb_copyarea(ptr noundef %info, ptr noundef %area) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %16 = load ptr, ptr @remapped_regs, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 4204
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !171
  %18 = and i32 %17, 2139160560
  %19 = or i32 %18, 6684687
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end6
  %i.07.i = phi i32 [ 0, %if.end6 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %20 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 320
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !166
  %22 = and i32 %21, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp2.not.i = icmp eq i32 %22, 0
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.w100_fifo_wait.exit_crit_edge

for.body.i.w100_fifo_wait.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w100_fifo_wait.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #14
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2000000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #17
  br label %w100_fifo_wait.exit

w100_fifo_wait.exit:                              ; preds = %do.end.i, %for.body.i.w100_fifo_wait.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !172
  tail call void @arm_heavy_mb() #14
  %24 = load ptr, ptr @remapped_regs, align 4
  %add.ptr12 = getelementptr i8, ptr %24, i32 4204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %19) #14, !srcloc !132
  br label %for.body.i52

for.body.i52:                                     ; preds = %if.end.i55.for.body.i52_crit_edge, %w100_fifo_wait.exit
  %i.07.i48 = phi i32 [ 0, %w100_fifo_wait.exit ], [ %inc.i53, %if.end.i55.for.body.i52_crit_edge ]
  %25 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i49 = getelementptr i8, ptr %25, i32 320
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !166
  %27 = and i32 %26, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %27)
  %cmp2.not.i51 = icmp ult i32 %27, 6
  br i1 %cmp2.not.i51, label %if.end.i55, label %for.body.i52.w100_fifo_wait.exit58_crit_edge

for.body.i52.w100_fifo_wait.exit58_crit_edge:     ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #16
  br label %w100_fifo_wait.exit58

if.end.i55:                                       ; preds = %for.body.i52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #14
  %inc.i53 = add nuw nsw i32 %i.07.i48, 1
  %exitcond.not.i54 = icmp eq i32 %inc.i53, 2000000
  br i1 %exitcond.not.i54, label %do.end.i57, label %if.end.i55.for.body.i52_crit_edge

if.end.i55.for.body.i52_crit_edge:                ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i52

do.end.i57:                                       ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #17
  br label %w100_fifo_wait.exit58

w100_fifo_wait.exit58:                            ; preds = %do.end.i57, %for.body.i52.w100_fifo_wait.exit58_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !173
  tail call void @arm_heavy_mb() #14
  %shl = shl i32 %7, 16
  %and16 = and i32 %5, 65535
  %or = or i32 %shl, %and16
  %29 = tail call i32 @llvm.bswap.i32(i32 %or)
  %30 = load ptr, ptr @remapped_regs, align 4
  %add.ptr17 = getelementptr i8, ptr %30, i32 4148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %29) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !174
  tail call void @arm_heavy_mb() #14
  %shl21 = shl i32 %3, 16
  %and22 = and i32 %1, 65535
  %or23 = or i32 %shl21, %and22
  %31 = tail call i32 @llvm.bswap.i32(i32 %or23)
  %32 = load ptr, ptr @remapped_regs, align 4
  %add.ptr24 = getelementptr i8, ptr %32, i32 4152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %31) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !175
  tail call void @arm_heavy_mb() #14
  %shl28 = shl i32 %11, 16
  %and29 = and i32 %9, 65535
  %or30 = or i32 %shl28, %and29
  %33 = tail call i32 @llvm.bswap.i32(i32 %or30)
  %34 = load ptr, ptr @remapped_regs, align 4
  %add.ptr31 = getelementptr i8, ptr %34, i32 4504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %33) #14, !srcloc !132
  br label %cleanup

cleanup:                                          ; preds = %w100_fifo_wait.exit58, %if.then5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w100fb_sync(ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = load ptr, ptr @remapped_regs, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 320
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !176
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #14
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 2000000
  br i1 %exitcond.not, label %do.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w100fb_activate_var(ptr noundef %par) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mach = getelementptr inbounds %struct.w100fb_par, ptr %par, i32 0, i32 10
  %0 = ptrtoint ptr %mach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mach, align 4
  %tg1 = getelementptr inbounds %struct.w100fb_mach_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tg1, align 4
  %bf.load.i = load i32, ptr @w100_pwr_state.0, align 4
  %xtal_dbl.i = getelementptr inbounds %struct.w100fb_mach_info, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %xtal_dbl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xtal_dbl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.not.i = icmp eq i32 %5, 0
  %bf.shl.i = select i1 %tobool.not.not.i, i32 0, i32 8388608
  %bf.clear5.i = and i32 %bf.load.i, 8323072
  %bf.clear11.i = or i32 %bf.clear5.i, %bf.shl.i
  %bf.set12.i = or i32 %bf.clear11.i, -67108864
  store i32 %bf.set12.i, ptr @w100_pwr_state.0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !177
  tail call void @arm_heavy_mb() #14
  %bf.load16.i = load i32, ptr @w100_pwr_state.0, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %bf.load16.i) #14
  %7 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #14, !srcloc !132
  %bf.load17.i = load i32, ptr @w100_pwr_state.3, align 4
  %bf.clear24.i = and i32 %bf.load17.i, 805306375
  %bf.set25.i = or i32 %bf.clear24.i, 6291456
  store i32 %bf.set25.i, ptr @w100_pwr_state.3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !178
  tail call void @arm_heavy_mb() #14
  %bf.load73.i = load i32, ptr @w100_pwr_state.3, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %bf.load73.i) #14
  %9 = load ptr, ptr @remapped_regs, align 4
  %add.ptr74.i = getelementptr i8, ptr %9, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i, i32 %8) #14, !srcloc !132
  %bf.load75.i = load i32, ptr @w100_pwr_state.4, align 4
  %bf.clear79.i = and i32 %bf.load75.i, 822050815
  %bf.set80.i = or i32 %bf.clear79.i, 16777216
  store i32 %bf.set80.i, ptr @w100_pwr_state.4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !179
  tail call void @arm_heavy_mb() #14
  %bf.load86.i = load i32, ptr @w100_pwr_state.4, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %bf.load86.i) #14
  %11 = load ptr, ptr @remapped_regs, align 4
  %add.ptr87.i = getelementptr i8, ptr %11, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87.i, i32 %10) #14, !srcloc !132
  %bf.load88.i = load i32, ptr @w100_pwr_state.1, align 4
  %bf.clear98.i = and i32 %bf.load88.i, 251858944
  %bf.set102.i = or i32 %bf.clear98.i, 1535
  store i32 %bf.set102.i, ptr @w100_pwr_state.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !180
  tail call void @arm_heavy_mb() #14
  %bf.load105.i = load i32, ptr @w100_pwr_state.1, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %bf.load105.i) #14
  %13 = load ptr, ptr @remapped_regs, align 4
  %add.ptr106.i = getelementptr i8, ptr %13, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.i, i32 %12) #14, !srcloc !132
  store i32 -1056964396, ptr @w100_pwr_state.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !181
  tail call void @arm_heavy_mb() #14
  %bf.load163.i = load i32, ptr @w100_pwr_state.2, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %bf.load163.i) #14
  %15 = load ptr, ptr @remapped_regs, align 4
  %add.ptr164.i = getelementptr i8, ptr %15, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr164.i, i32 %14) #14, !srcloc !132
  %bf.load165.i = load i32, ptr @w100_pwr_state.5, align 4
  %bf.clear169.i = and i32 %bf.load165.i, 1073741824
  %bf.set191.i = or i32 %bf.clear169.i, 269615103
  store i32 %bf.set191.i, ptr @w100_pwr_state.5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !182
  tail call void @arm_heavy_mb() #14
  %bf.load194.i = load i32, ptr @w100_pwr_state.5, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %bf.load194.i) #14
  %17 = load ptr, ptr @remapped_regs, align 4
  %add.ptr195.i = getelementptr i8, ptr %17, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr195.i, i32 %16) #14, !srcloc !132
  %18 = ptrtoint ptr %mach to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mach, align 4
  %bm_mem3.i = getelementptr inbounds %struct.w100fb_mach_info, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %bm_mem3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bm_mem3.i, align 4
  %extmem_active.i = getelementptr inbounds %struct.w100fb_par, ptr %par, i32 0, i32 3
  %22 = ptrtoint ptr %extmem_active.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %extmem_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @w100_suspend(i32 noundef 0) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  tail call void @arm_heavy_mb() #14
  %24 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i20 = getelementptr i8, ptr %24, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 -8060800) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %25 = load ptr, ptr @remapped_regs, align 4
  %add.ptr18.i = getelementptr i8, ptr %25, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 -8454016) #14, !srcloc !132
  br label %w100_setup_memory.exit

if.else.i:                                        ; preds = %entry
  %mem1.i = getelementptr inbounds %struct.w100fb_mach_info, ptr %19, i32 0, i32 4
  %26 = ptrtoint ptr %mem1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mem1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !185
  tail call void @arm_heavy_mb() #14
  %28 = load ptr, ptr @remapped_regs, align 4
  %add.ptr29.i = getelementptr i8, ptr %28, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 -15400944) #14, !srcloc !132
  %29 = ptrtoint ptr %mach to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mach, align 4
  %mem34.i = getelementptr inbounds %struct.w100fb_mach_info, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %mem34.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mem34.i, align 4
  %size.i = getelementptr inbounds %struct.w100_mem_info, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i, align 4
  %add.i = add i32 %34, 8388608
  %shr.i = lshr i32 %add.i, 8
  %bf.value.i = and i32 %shr.i, 65535
  %bf.set37.i = or i32 %bf.value.i, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !186
  tail call void @arm_heavy_mb() #14
  %35 = tail call i32 @llvm.bswap.i32(i32 %bf.set37.i) #14
  %36 = load ptr, ptr @remapped_regs, align 4
  %add.ptr42.i = getelementptr i8, ptr %36, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %35) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !187
  tail call void @arm_heavy_mb() #14
  %37 = load ptr, ptr @remapped_regs, align 4
  %add.ptr46.i = getelementptr i8, ptr %37, i32 420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 7864320) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !188
  tail call void @arm_heavy_mb() #14
  %38 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %27, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #14
  %41 = load ptr, ptr @remapped_regs, align 4
  %add.ptr50.i = getelementptr i8, ptr %41, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %40) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !189
  tail call void @arm_heavy_mb() #14
  %42 = load ptr, ptr @remapped_regs, align 4
  %add.ptr54.i = getelementptr i8, ptr %42, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 553656320) #14, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 21474800) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !190
  tail call void @arm_heavy_mb() #14
  %44 = load ptr, ptr @remapped_regs, align 4
  %add.ptr58.i = getelementptr i8, ptr %44, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.i, i32 553656448) #14, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 21474800) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !191
  tail call void @arm_heavy_mb() #14
  %sdram_mode_reg.i = getelementptr inbounds %struct.w100_mem_info, ptr %27, i32 0, i32 1
  %46 = ptrtoint ptr %sdram_mode_reg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sdram_mode_reg.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #14
  %49 = load ptr, ptr @remapped_regs, align 4
  %add.ptr62.i = getelementptr i8, ptr %49, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 %48) #14, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 21474800) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !192
  tail call void @arm_heavy_mb() #14
  %ext_timing_cntl.i = getelementptr inbounds %struct.w100_mem_info, ptr %27, i32 0, i32 2
  %51 = ptrtoint ptr %ext_timing_cntl.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ext_timing_cntl.i, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #14
  %54 = load ptr, ptr @remapped_regs, align 4
  %add.ptr66.i = getelementptr i8, ptr %54, i32 404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i, i32 %53) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !193
  tail call void @arm_heavy_mb() #14
  %io_cntl.i = getelementptr inbounds %struct.w100_mem_info, ptr %27, i32 0, i32 3
  %55 = ptrtoint ptr %io_cntl.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %io_cntl.i, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #14
  %58 = load ptr, ptr @remapped_regs, align 4
  %add.ptr70.i = getelementptr i8, ptr %58, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i, i32 %57) #14, !srcloc !132
  %tobool71.not.i = icmp eq ptr %21, null
  br i1 %tobool71.not.i, label %if.else.i.w100_setup_memory.exit_crit_edge, label %do.body73.i

if.else.i.w100_setup_memory.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w100_setup_memory.exit

do.body73.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !194
  tail call void @arm_heavy_mb() #14
  %59 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %21, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #14
  %62 = load ptr, ptr @remapped_regs, align 4
  %add.ptr76.i = getelementptr i8, ptr %62, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76.i, i32 %61) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !195
  tail call void @arm_heavy_mb() #14
  %offset.i = getelementptr inbounds %struct.w100_bm_mem_info, ptr %21, i32 0, i32 1
  %63 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %offset.i, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #14
  %66 = load ptr, ptr @remapped_regs, align 4
  %add.ptr80.i = getelementptr i8, ptr %66, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80.i, i32 %65) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !196
  tail call void @arm_heavy_mb() #14
  %ext_timing_ctl.i = getelementptr inbounds %struct.w100_bm_mem_info, ptr %21, i32 0, i32 2
  %67 = ptrtoint ptr %ext_timing_ctl.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ext_timing_ctl.i, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #14
  %70 = load ptr, ptr @remapped_regs, align 4
  %add.ptr84.i = getelementptr i8, ptr %70, i32 2568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 %69) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !197
  tail call void @arm_heavy_mb() #14
  %ext_cntl88.i = getelementptr inbounds %struct.w100_bm_mem_info, ptr %21, i32 0, i32 3
  %71 = ptrtoint ptr %ext_cntl88.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ext_cntl88.i, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #14
  %74 = load ptr, ptr @remapped_regs, align 4
  %add.ptr89.i = getelementptr i8, ptr %74, i32 2572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89.i, i32 %73) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !198
  tail call void @arm_heavy_mb() #14
  %mode_reg.i = getelementptr inbounds %struct.w100_bm_mem_info, ptr %21, i32 0, i32 4
  %75 = ptrtoint ptr %mode_reg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mode_reg.i, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #14
  %78 = load ptr, ptr @remapped_regs, align 4
  %add.ptr93.i = getelementptr i8, ptr %78, i32 2576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i, i32 %77) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !199
  tail call void @arm_heavy_mb() #14
  %io_cntl97.i = getelementptr inbounds %struct.w100_bm_mem_info, ptr %21, i32 0, i32 5
  %79 = ptrtoint ptr %io_cntl97.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %io_cntl97.i, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #14
  %82 = load ptr, ptr @remapped_regs, align 4
  %add.ptr98.i = getelementptr i8, ptr %82, i32 2584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i, i32 %81) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !200
  tail call void @arm_heavy_mb() #14
  %config.i = getelementptr inbounds %struct.w100_bm_mem_info, ptr %21, i32 0, i32 6
  %83 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %config.i, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #14
  %86 = load ptr, ptr @remapped_regs, align 4
  %add.ptr102.i = getelementptr i8, ptr %86, i32 2588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102.i, i32 %85) #14, !srcloc !132
  br label %w100_setup_memory.exit

w100_setup_memory.exit:                           ; preds = %do.body73.i, %if.else.i.w100_setup_memory.exit_crit_edge, %if.then.i
  tail call fastcc void @w100_init_clocks(ptr noundef %par)
  %87 = load ptr, ptr @remapped_fbuf, align 4
  %add.ptr.i21 = getelementptr i8, ptr %87, i32 7340032
  %xres.i = getelementptr inbounds %struct.w100fb_par, ptr %par, i32 0, i32 1
  %88 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %xres.i, align 4
  %yres.i = getelementptr inbounds %struct.w100fb_par, ptr %par, i32 0, i32 2
  %90 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %yres.i, align 4
  %mul.i = shl i32 %89, 1
  %92 = mul i32 %mul.i, %91
  %div3.i = and i32 %92, 536870910
  tail call void @mmioset(ptr noundef %add.ptr.i21, i32 noundef 0, i32 noundef %div3.i) #14
  %93 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i22 = getelementptr i8, ptr %93, i32 1064
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #14, !srcloc !129
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %shr.i23 = lshr i32 %95, 16
  %and.i = and i32 %shr.i23, 1023
  %96 = tail call i32 @llvm.bswap.i32(i32 %and.i) #14
  %97 = load ptr, ptr @remapped_regs, align 4
  %add.ptr3.i = getelementptr i8, ptr %97, i32 1160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %96) #14, !srcloc !132
  %98 = load ptr, ptr @remapped_regs, align 4
  %add.ptr6.i = getelementptr i8, ptr %98, i32 512
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !203
  %100 = and i32 %99, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !204
  tail call void @arm_heavy_mb() #14
  %101 = load ptr, ptr @remapped_regs, align 4
  %add.ptr14.i = getelementptr i8, ptr %101, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %100) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  tail call void @arm_heavy_mb() #14
  %102 = load ptr, ptr @remapped_regs, align 4
  %add.ptr18.i24 = getelementptr i8, ptr %102, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i24, i32 33554432) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !206
  tail call void @arm_heavy_mb() #14
  %103 = or i32 %99, 33554432
  %104 = load ptr, ptr @remapped_regs, align 4
  %add.ptr22.i = getelementptr i8, ptr %104, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %103) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !207
  tail call void @arm_heavy_mb() #14
  %105 = load ptr, ptr @remapped_regs, align 4
  %add.ptr26.i = getelementptr i8, ptr %105, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 33554432) #14, !srcloc !132
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %w100_setup_memory.exit
  %timeout.047.i = phi i32 [ 30000, %w100_setup_memory.exit ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %106 = load ptr, ptr @remapped_regs, align 4
  %add.ptr29.i25 = getelementptr i8, ptr %106, i32 516
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i25) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !208
  %108 = and i32 %107, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not.i26 = icmp eq i32 %108, 0
  br i1 %tobool.not.i26, label %if.end.i, label %while.body.i.w100_vsync.exit_crit_edge

while.body.i.w100_vsync.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w100_vsync.exit

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 214748) #14
  %dec.i = add nsw i32 %timeout.047.i, -1
  %cmp.i = icmp ugt i32 %timeout.047.i, 1
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.w100_vsync.exit_crit_edge

if.end.i.w100_vsync.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w100_vsync.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

w100_vsync.exit:                                  ; preds = %if.end.i.w100_vsync.exit_crit_edge, %while.body.i.w100_vsync.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  tail call void @arm_heavy_mb() #14
  %110 = load ptr, ptr @remapped_regs, align 4
  %add.ptr37.i = getelementptr i8, ptr %110, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %100) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  tail call void @arm_heavy_mb() #14
  %111 = load ptr, ptr @remapped_regs, align 4
  %add.ptr41.i = getelementptr i8, ptr %111, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 33554432) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !211
  tail call void @arm_heavy_mb() #14
  %112 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i27 = getelementptr i8, ptr %112, i32 1240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 -226) #14, !srcloc !132
  %mode1.i = getelementptr inbounds %struct.w100fb_par, ptr %par, i32 0, i32 8
  %113 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mode1.i, align 4
  %115 = ptrtoint ptr %mach to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mach, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %left_margin.i = getelementptr inbounds %struct.w100_mode, ptr %114, i32 0, i32 2
  %119 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %left_margin.i, align 4
  %conv.i = zext i16 %120 to i32
  %bf.shl.i29 = shl i32 %conv.i, 22
  %121 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %114, align 4
  %add.i30 = add i32 %122, %conv.i
  %bf.value6.i = shl i32 %add.i30, 6
  %bf.shl7.i = and i32 %bf.value6.i, 65472
  %bf.set9.i = or i32 %bf.shl7.i, %bf.shl.i29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %123 = tail call i32 @llvm.bswap.i32(i32 %bf.set9.i) #14
  %124 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i31 = getelementptr i8, ptr %124, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %123) #14, !srcloc !132
  %upper_margin.i = getelementptr inbounds %struct.w100_mode, ptr %114, i32 0, i32 4
  %125 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %upper_margin.i, align 4
  %conv11.i = zext i16 %126 to i32
  %bf.shl14.i = shl i32 %conv11.i, 22
  %yres.i32 = getelementptr inbounds %struct.w100_mode, ptr %114, i32 0, i32 1
  %127 = ptrtoint ptr %yres.i32 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %yres.i32, align 4
  %add19.i = add i32 %128, %conv11.i
  %bf.value21.i = shl i32 %add19.i, 6
  %bf.shl22.i = and i32 %bf.value21.i, 65472
  %bf.set24.i = or i32 %bf.shl22.i, %bf.shl14.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !213
  tail call void @arm_heavy_mb() #14
  %129 = tail call i32 @llvm.bswap.i32(i32 %bf.set24.i) #14
  %130 = load ptr, ptr @remapped_regs, align 4
  %add.ptr29.i33 = getelementptr i8, ptr %130, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i33, i32 %129) #14, !srcloc !132
  %131 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %left_margin.i, align 4
  %conv31.i = zext i16 %132 to i32
  %bf.shl34.i = shl i32 %conv31.i, 22
  %133 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %114, align 4
  %add40.i = add i32 %134, %conv31.i
  %bf.value42.i = shl i32 %add40.i, 6
  %bf.shl43.i = and i32 %bf.value42.i, 65472
  %bf.set45.i = or i32 %bf.shl43.i, %bf.shl34.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  tail call void @arm_heavy_mb() #14
  %135 = tail call i32 @llvm.bswap.i32(i32 %bf.set45.i) #14
  %136 = load ptr, ptr @remapped_regs, align 4
  %add.ptr50.i34 = getelementptr i8, ptr %136, i32 1068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i34, i32 %135) #14, !srcloc !132
  %137 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %upper_margin.i, align 4
  %conv52.i = zext i16 %138 to i32
  %bf.shl55.i = shl i32 %conv52.i, 22
  %139 = ptrtoint ptr %yres.i32 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %yres.i32, align 4
  %add61.i = add i32 %140, %conv52.i
  %bf.value63.i = shl i32 %add61.i, 6
  %bf.shl64.i = and i32 %bf.value63.i, 65472
  %bf.set66.i = or i32 %bf.shl64.i, %bf.shl55.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  %141 = tail call i32 @llvm.bswap.i32(i32 %bf.set66.i) #14
  %142 = load ptr, ptr @remapped_regs, align 4
  %add.ptr71.i = getelementptr i8, ptr %142, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71.i, i32 %141) #14, !srcloc !132
  %143 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %left_margin.i, align 4
  %conv73.i = zext i16 %144 to i32
  %145 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %114, align 4
  %add75.i = add i32 %146, %conv73.i
  %right_margin.i = getelementptr inbounds %struct.w100_mode, ptr %114, i32 0, i32 3
  %147 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %right_margin.i, align 2
  %conv76.i = zext i16 %148 to i32
  %add77.i = add i32 %add75.i, %conv76.i
  %bf.shl80.i = shl i32 %add77.i, 22
  %149 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %upper_margin.i, align 4
  %conv84.i = zext i16 %150 to i32
  %151 = ptrtoint ptr %yres.i32 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %yres.i32, align 4
  %add86.i = add i32 %152, %conv84.i
  %lower_margin.i = getelementptr inbounds %struct.w100_mode, ptr %114, i32 0, i32 5
  %153 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %lower_margin.i, align 2
  %conv87.i = zext i16 %154 to i32
  %add88.i = add i32 %add86.i, %conv87.i
  %bf.value90.i = shl i32 %add88.i, 6
  %bf.shl91.i = and i32 %bf.value90.i, 65472
  %bf.set93.i = or i32 %bf.shl91.i, %bf.shl80.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !216
  tail call void @arm_heavy_mb() #14
  %155 = tail call i32 @llvm.bswap.i32(i32 %bf.set93.i) #14
  %156 = load ptr, ptr @remapped_regs, align 4
  %add.ptr98.i35 = getelementptr i8, ptr %156, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i35, i32 %155) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !217
  tail call void @arm_heavy_mb() #14
  %crtc_ss.i = getelementptr inbounds %struct.w100_mode, ptr %114, i32 0, i32 6
  %157 = ptrtoint ptr %crtc_ss.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %crtc_ss.i, align 4
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #14
  %160 = load ptr, ptr @remapped_regs, align 4
  %add.ptr102.i36 = getelementptr i8, ptr %160, i32 1164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102.i36, i32 %159) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  tail call void @arm_heavy_mb() #14
  %crtc_ls.i = getelementptr inbounds %struct.w100_mode, ptr %114, i32 0, i32 7
  %161 = ptrtoint ptr %crtc_ls.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %crtc_ls.i, align 4
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #14
  %164 = load ptr, ptr @remapped_regs, align 4
  %add.ptr106.i37 = getelementptr i8, ptr %164, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.i37, i32 %163) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !219
  tail call void @arm_heavy_mb() #14
  %crtc_gs.i = getelementptr inbounds %struct.w100_mode, ptr %114, i32 0, i32 8
  %165 = ptrtoint ptr %crtc_gs.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %crtc_gs.i, align 4
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #14
  %168 = load ptr, ptr @remapped_regs, align 4
  %add.ptr110.i = getelementptr i8, ptr %168, i32 1184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110.i, i32 %167) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  tail call void @arm_heavy_mb() #14
  %crtc_vpos_gs.i = getelementptr inbounds %struct.w100_mode, ptr %114, i32 0, i32 9
  %169 = ptrtoint ptr %crtc_vpos_gs.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %crtc_vpos_gs.i, align 4
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #14
  %172 = load ptr, ptr @remapped_regs, align 4
  %add.ptr114.i = getelementptr i8, ptr %172, i32 1188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114.i, i32 %171) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  tail call void @arm_heavy_mb() #14
  %crtc_rev.i = getelementptr inbounds %struct.w100_mode, ptr %114, i32 0, i32 10
  %173 = ptrtoint ptr %crtc_rev.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %crtc_rev.i, align 4
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #14
  %176 = load ptr, ptr @remapped_regs, align 4
  %add.ptr118.i = getelementptr i8, ptr %176, i32 1172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118.i, i32 %175) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !222
  tail call void @arm_heavy_mb() #14
  %crtc_dclk.i = getelementptr inbounds %struct.w100_mode, ptr %114, i32 0, i32 11
  %177 = ptrtoint ptr %crtc_dclk.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %crtc_dclk.i, align 4
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #14
  %180 = load ptr, ptr @remapped_regs, align 4
  %add.ptr122.i = getelementptr i8, ptr %180, i32 1180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122.i, i32 %179) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !223
  tail call void @arm_heavy_mb() #14
  %crtc_gclk.i = getelementptr inbounds %struct.w100_mode, ptr %114, i32 0, i32 12
  %181 = ptrtoint ptr %crtc_gclk.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %crtc_gclk.i, align 4
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #14
  %184 = load ptr, ptr @remapped_regs, align 4
  %add.ptr126.i = getelementptr i8, ptr %184, i32 1192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126.i, i32 %183) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !224
  tail call void @arm_heavy_mb() #14
  %crtc_goe.i = getelementptr inbounds %struct.w100_mode, ptr %114, i32 0, i32 13
  %185 = ptrtoint ptr %crtc_goe.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %crtc_goe.i, align 4
  %187 = tail call i32 @llvm.bswap.i32(i32 %186) #14
  %188 = load ptr, ptr @remapped_regs, align 4
  %add.ptr130.i = getelementptr i8, ptr %188, i32 1196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130.i, i32 %187) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !225
  tail call void @arm_heavy_mb() #14
  %crtc_ps1_active.i = getelementptr inbounds %struct.w100_mode, ptr %114, i32 0, i32 14
  %189 = ptrtoint ptr %crtc_ps1_active.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %crtc_ps1_active.i, align 4
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #14
  %192 = load ptr, ptr @remapped_regs, align 4
  %add.ptr134.i = getelementptr i8, ptr %192, i32 1264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134.i, i32 %191) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %193 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %118, align 4
  %195 = tail call i32 @llvm.bswap.i32(i32 %194) #14
  %196 = load ptr, ptr @remapped_regs, align 4
  %add.ptr138.i = getelementptr i8, ptr %196, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138.i, i32 %195) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !227
  tail call void @arm_heavy_mb() #14
  %lcdd_cntl1.i = getelementptr inbounds %struct.w100_gen_regs, ptr %118, i32 0, i32 1
  %197 = ptrtoint ptr %lcdd_cntl1.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %lcdd_cntl1.i, align 4
  %199 = tail call i32 @llvm.bswap.i32(i32 %198) #14
  %200 = load ptr, ptr @remapped_regs, align 4
  %add.ptr142.i = getelementptr i8, ptr %200, i32 1220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142.i, i32 %199) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !228
  tail call void @arm_heavy_mb() #14
  %lcdd_cntl2.i = getelementptr inbounds %struct.w100_gen_regs, ptr %118, i32 0, i32 2
  %201 = ptrtoint ptr %lcdd_cntl2.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %lcdd_cntl2.i, align 4
  %203 = tail call i32 @llvm.bswap.i32(i32 %202) #14
  %204 = load ptr, ptr @remapped_regs, align 4
  %add.ptr146.i = getelementptr i8, ptr %204, i32 1224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146.i, i32 %203) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !229
  tail call void @arm_heavy_mb() #14
  %genlcd_cntl1.i = getelementptr inbounds %struct.w100_gen_regs, ptr %118, i32 0, i32 3
  %205 = ptrtoint ptr %genlcd_cntl1.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %genlcd_cntl1.i, align 4
  %207 = tail call i32 @llvm.bswap.i32(i32 %206) #14
  %208 = load ptr, ptr @remapped_regs, align 4
  %add.ptr150.i = getelementptr i8, ptr %208, i32 1228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150.i, i32 %207) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void @arm_heavy_mb() #14
  %genlcd_cntl2.i = getelementptr inbounds %struct.w100_gen_regs, ptr %118, i32 0, i32 4
  %209 = ptrtoint ptr %genlcd_cntl2.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %genlcd_cntl2.i, align 4
  %211 = tail call i32 @llvm.bswap.i32(i32 %210) #14
  %212 = load ptr, ptr @remapped_regs, align 4
  %add.ptr154.i = getelementptr i8, ptr %212, i32 1232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154.i, i32 %211) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !231
  tail call void @arm_heavy_mb() #14
  %genlcd_cntl3.i = getelementptr inbounds %struct.w100_gen_regs, ptr %118, i32 0, i32 5
  %213 = ptrtoint ptr %genlcd_cntl3.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %genlcd_cntl3.i, align 4
  %215 = tail call i32 @llvm.bswap.i32(i32 %214) #14
  %216 = load ptr, ptr @remapped_regs, align 4
  %add.ptr158.i = getelementptr i8, ptr %216, i32 1316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158.i, i32 %215) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !232
  tail call void @arm_heavy_mb() #14
  %217 = load ptr, ptr @remapped_regs, align 4
  %add.ptr162.i = getelementptr i8, ptr %217, i32 1200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162.i, i32 0) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  tail call void @arm_heavy_mb() #14
  %218 = load ptr, ptr @remapped_regs, align 4
  %add.ptr166.i = getelementptr i8, ptr %218, i32 1204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166.i, i32 0) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void @arm_heavy_mb() #14
  %219 = load ptr, ptr @remapped_regs, align 4
  %add.ptr170.i = getelementptr i8, ptr %219, i32 1248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr170.i, i32 0) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  tail call void @arm_heavy_mb() #14
  %220 = load ptr, ptr @remapped_regs, align 4
  %add.ptr174.i = getelementptr i8, ptr %220, i32 1252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr174.i, i32 16711680) #14, !srcloc !132
  %221 = load ptr, ptr @remapped_regs, align 4
  %add.ptr175.i = getelementptr i8, ptr %221, i32 1336
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr175.i) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !236
  %223 = or i32 %222, 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !237
  tail call void @arm_heavy_mb() #14
  %224 = load ptr, ptr @remapped_regs, align 4
  %add.ptr180.i = getelementptr i8, ptr %224, i32 1336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr180.i, i32 %223) #14, !srcloc !132
  tail call fastcc void @w100_set_dispregs(ptr noundef %par)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !238
  tail call void @arm_heavy_mb() #14
  %225 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i38 = getelementptr i8, ptr %225, i32 1240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 -34) #14, !srcloc !132
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %w100_vsync.exit
  %i.07.i.i = phi i32 [ 0, %w100_vsync.exit ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %226 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %226, i32 320
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !166
  %228 = and i32 %227, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %cmp2.not.i.i = icmp eq i32 %228, 0
  br i1 %cmp2.not.i.i, label %if.end.i.i, label %for.body.i.i.w100_fifo_wait.exit.i_crit_edge

for.body.i.i.w100_fifo_wait.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w100_fifo_wait.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %229 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %229(i32 noundef 214748) #14
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 2000000
  br i1 %exitcond.not.i.i, label %do.end.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #17
  br label %w100_fifo_wait.exit.i

w100_fifo_wait.exit.i:                            ; preds = %do.end.i.i, %for.body.i.i.w100_fifo_wait.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @arm_heavy_mb() #14
  %230 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i39 = getelementptr i8, ptr %230, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 32768) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !240
  tail call void @arm_heavy_mb() #14
  %231 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %xres.i, align 4
  %233 = tail call i32 @llvm.bswap.i32(i32 %232) #14
  %234 = load ptr, ptr @remapped_regs, align 4
  %add.ptr4.i = getelementptr i8, ptr %234, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %233) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !241
  tail call void @arm_heavy_mb() #14
  %235 = load ptr, ptr @remapped_regs, align 4
  %add.ptr8.i = getelementptr i8, ptr %235, i32 4524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 32768) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !242
  tail call void @arm_heavy_mb() #14
  %236 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %xres.i, align 4
  %238 = tail call i32 @llvm.bswap.i32(i32 %237) #14
  %239 = load ptr, ptr @remapped_regs, align 4
  %add.ptr13.i = getelementptr i8, ptr %239, i32 4528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %238) #14, !srcloc !132
  br label %for.body.i215.i

for.body.i215.i:                                  ; preds = %if.end.i218.i.for.body.i215.i_crit_edge, %w100_fifo_wait.exit.i
  %i.07.i211.i = phi i32 [ 0, %w100_fifo_wait.exit.i ], [ %inc.i216.i, %if.end.i218.i.for.body.i215.i_crit_edge ]
  %240 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i212.i = getelementptr i8, ptr %240, i32 320
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i212.i) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !166
  %242 = and i32 %241, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %242)
  %cmp2.not.i214.i = icmp ult i32 %242, 6
  br i1 %cmp2.not.i214.i, label %if.end.i218.i, label %for.body.i215.i.w100_fifo_wait.exit221.i_crit_edge

for.body.i215.i.w100_fifo_wait.exit221.i_crit_edge: ; preds = %for.body.i215.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w100_fifo_wait.exit221.i

if.end.i218.i:                                    ; preds = %for.body.i215.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %243 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %243(i32 noundef 214748) #14
  %inc.i216.i = add nuw nsw i32 %i.07.i211.i, 1
  %exitcond.not.i217.i = icmp eq i32 %inc.i216.i, 2000000
  br i1 %exitcond.not.i217.i, label %do.end.i220.i, label %if.end.i218.i.for.body.i215.i_crit_edge

if.end.i218.i.for.body.i215.i_crit_edge:          ; preds = %if.end.i218.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i215.i

do.end.i220.i:                                    ; preds = %if.end.i218.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i219.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #17
  br label %w100_fifo_wait.exit221.i

w100_fifo_wait.exit221.i:                         ; preds = %do.end.i220.i, %for.body.i215.i.w100_fifo_wait.exit221.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !243
  tail call void @arm_heavy_mb() #14
  %244 = load ptr, ptr @remapped_regs, align 4
  %add.ptr17.i = getelementptr i8, ptr %244, i32 4540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 0) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !244
  tail call void @arm_heavy_mb() #14
  %245 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %yres.i, align 4
  %shl.i = shl i32 %246, 16
  %247 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %xres.i, align 4
  %or.i = or i32 %shl.i, %248
  %249 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %250 = load ptr, ptr @remapped_regs, align 4
  %add.ptr22.i42 = getelementptr i8, ptr %250, i32 4544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i42, i32 %249) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !245
  tail call void @arm_heavy_mb() #14
  %251 = load ptr, ptr @remapped_regs, align 4
  %add.ptr26.i43 = getelementptr i8, ptr %251, i32 4548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i43, i32 -14680289) #14, !srcloc !132
  br label %for.body.i226.i

for.body.i226.i:                                  ; preds = %if.end.i229.i.for.body.i226.i_crit_edge, %w100_fifo_wait.exit221.i
  %i.07.i222.i = phi i32 [ 0, %w100_fifo_wait.exit221.i ], [ %inc.i227.i, %if.end.i229.i.for.body.i226.i_crit_edge ]
  %252 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i223.i = getelementptr i8, ptr %252, i32 320
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i223.i) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !166
  %254 = and i32 %253, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %cmp2.not.i225.i = icmp eq i32 %254, 0
  br i1 %cmp2.not.i225.i, label %if.end.i229.i, label %for.body.i226.i.w100_init_graphic_engine.exit_crit_edge

for.body.i226.i.w100_init_graphic_engine.exit_crit_edge: ; preds = %for.body.i226.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w100_init_graphic_engine.exit

if.end.i229.i:                                    ; preds = %for.body.i226.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %255 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %255(i32 noundef 214748) #14
  %inc.i227.i = add nuw nsw i32 %i.07.i222.i, 1
  %exitcond.not.i228.i = icmp eq i32 %inc.i227.i, 2000000
  br i1 %exitcond.not.i228.i, label %do.end.i231.i, label %if.end.i229.i.for.body.i226.i_crit_edge

if.end.i229.i.for.body.i226.i_crit_edge:          ; preds = %if.end.i229.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i226.i

do.end.i231.i:                                    ; preds = %if.end.i229.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i230.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #17
  br label %w100_init_graphic_engine.exit

w100_init_graphic_engine.exit:                    ; preds = %do.end.i231.i, %for.body.i226.i.w100_init_graphic_engine.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !246
  tail call void @arm_heavy_mb() #14
  %256 = load ptr, ptr @remapped_regs, align 4
  %add.ptr46.i44 = getelementptr i8, ptr %256, i32 4552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i44, i32 252) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  tail call void @arm_heavy_mb() #14
  %257 = load ptr, ptr @remapped_regs, align 4
  %add.ptr93.i45 = getelementptr i8, ptr %257, i32 4204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i45, i32 711342079) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !248
  tail call void @arm_heavy_mb() #14
  %258 = load ptr, ptr @remapped_regs, align 4
  %add.ptr138.i46 = getelementptr i8, ptr %258, i32 4804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138.i46, i32 39908144) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !249
  tail call void @arm_heavy_mb() #14
  %259 = load ptr, ptr @remapped_regs, align 4
  %add.ptr169.i = getelementptr i8, ptr %259, i32 4808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169.i, i32 13386752) #14, !srcloc !132
  %260 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %mode1.i, align 4
  %pixclk_src.i = getelementptr inbounds %struct.w100_mode, ptr %261, i32 0, i32 19
  %262 = ptrtoint ptr %pixclk_src.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %pixclk_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %cmp.i48 = icmp eq i32 %263, 0
  br i1 %cmp.i48, label %if.then.i50, label %if.else.i52

if.then.i50:                                      ; preds = %w100_init_graphic_engine.exit
  call void @__sanitizer_cov_trace_pc() #16
  %264 = ptrtoint ptr %mach to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %mach, align 4
  %xtal_freq.i = getelementptr inbounds %struct.w100fb_mach_info, ptr %265, i32 0, i32 8
  %266 = ptrtoint ptr %xtal_freq.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %xtal_freq.i, align 4
  br label %if.end.i56

if.else.i52:                                      ; preds = %w100_init_graphic_engine.exit
  %fastpll_mode.i = getelementptr inbounds %struct.w100fb_par, ptr %par, i32 0, i32 6
  %268 = ptrtoint ptr %fastpll_mode.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %fastpll_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool.not.i51 = icmp eq i32 %269, 0
  br i1 %tobool.not.i51, label %if.else.i52.cond.false.i_crit_edge, label %land.lhs.true.i

if.else.i52.cond.false.i_crit_edge:               ; preds = %if.else.i52
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.else.i52
  %fast_pll_freq.i = getelementptr inbounds %struct.w100_mode, ptr %261, i32 0, i32 16
  %270 = ptrtoint ptr %fast_pll_freq.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %fast_pll_freq.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool2.not.i = icmp eq i8 %271, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true.i.cond.end.i_crit_edge

land.lhs.true.i.cond.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %if.else.i52.cond.false.i_crit_edge
  %pll_freq.i = getelementptr inbounds %struct.w100_mode, ptr %261, i32 0, i32 15
  %272 = ptrtoint ptr %pll_freq.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %pll_freq.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %land.lhs.true.i.cond.end.i_crit_edge
  %cond.in.i = phi i8 [ %273, %cond.false.i ], [ %271, %land.lhs.true.i.cond.end.i_crit_edge ]
  %cond.i = zext i8 %cond.in.i to i32
  %mul.i53 = mul nuw nsw i32 %cond.i, 100000
  br label %if.end.i56

if.end.i56:                                       ; preds = %cond.end.i, %if.then.i50
  %hsync.0.i = phi i32 [ %267, %if.then.i50 ], [ %mul.i53, %cond.end.i ]
  %bf.load.i54 = load i32, ptr @w100_pwr_state.4, align 4
  %274 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i55 = getelementptr i8, ptr %274, i32 1164
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %tobool8.not.i = icmp eq i32 %275, 0
  br i1 %tobool8.not.i, label %if.end.i56.calc_hsync.exit_crit_edge, label %if.then9.i

if.end.i56.calc_hsync.exit_crit_edge:             ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #16
  br label %calc_hsync.exit

if.then9.i:                                       ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #16
  %276 = tail call i32 @llvm.bswap.i32(i32 %275) #14
  %bf.lshr.i = lshr i32 %bf.load.i54, 24
  %bf.clear.i = and i32 %bf.lshr.i, 15
  %add.i57 = add nuw nsw i32 %bf.clear.i, 1
  %div.i = udiv i32 %hsync.0.i, %add.i57
  %bf.lshr11.i = lshr i32 %276, 6
  %bf.clear12.i = and i32 %bf.lshr11.i, 1023
  %bf.lshr14.i = lshr i32 %276, 22
  %sub.i = sub nsw i32 %bf.clear12.i, %bf.lshr14.i
  %div15.i = udiv i32 %div.i, %sub.i
  br label %calc_hsync.exit

calc_hsync.exit:                                  ; preds = %if.then9.i, %if.end.i56.calc_hsync.exit_crit_edge
  %div15.sink.i = phi i32 [ %div15.i, %if.then9.i ], [ 0, %if.end.i56.calc_hsync.exit_crit_edge ]
  %277 = getelementptr inbounds %struct.w100fb_par, ptr %par, i32 0, i32 7
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %div15.sink.i, ptr %277, align 4
  %blanked = getelementptr inbounds %struct.w100fb_par, ptr %par, i32 0, i32 5
  %279 = ptrtoint ptr %blanked to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %blanked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %tobool.not = icmp ne i32 %280, 0
  %tobool2.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %calc_hsync.exit.if.end_crit_edge, label %land.lhs.true3

calc_hsync.exit.if.end_crit_edge:                 ; preds = %calc_hsync.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true3:                                   ; preds = %calc_hsync.exit
  %281 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %3, align 4
  %tobool4.not = icmp eq ptr %282, null
  br i1 %tobool4.not, label %land.lhs.true3.if.end_crit_edge, label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %282(ptr noundef %par) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %calc_hsync.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w100_init_clocks(ptr nocapture noundef readonly %par) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr inbounds %struct.w100fb_par, ptr %par, i32 0, i32 8
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode1, align 4
  %pixclk_src = getelementptr inbounds %struct.w100_mode, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %pixclk_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixclk_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sysclk_src = getelementptr inbounds %struct.w100_mode, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysclk_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %fastpll_mode = getelementptr inbounds %struct.w100fb_par, ptr %par, i32 0, i32 6
  %6 = ptrtoint ptr %fastpll_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fastpll_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %fast_pll_freq = getelementptr inbounds %struct.w100_mode, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %fast_pll_freq to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fast_pll_freq, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true.cond.end_crit_edge

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false

cond.false:                                       ; preds = %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %pll_freq = getelementptr inbounds %struct.w100_mode, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %pll_freq to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pll_freq, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.lhs.true.cond.end_crit_edge
  %cond.in = phi i8 [ %11, %cond.false ], [ %9, %land.lhs.true.cond.end_crit_edge ]
  %pll_table.i = getelementptr inbounds %struct.w100fb_par, ptr %par, i32 0, i32 9
  %12 = ptrtoint ptr %pll_table.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pll_table.i, align 4
  %14 = zext i8 %cond.in to i16
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %cond.end
  %pll.0.i = phi ptr [ %13, %cond.end ], [ %incdec.ptr.i, %if.end.i.do.body.i_crit_edge ]
  %15 = ptrtoint ptr %pll.0.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pll.0.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %14)
  %cmp.i = icmp eq i16 %16, %14
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.body.i
  %bf.load5.i.i = load i32, ptr @w100_pwr_state.3, align 4
  %bf.clear6.i.i = and i32 %bf.load5.i.i, 1073741823
  store i32 %bf.clear6.i.i, ptr @w100_pwr_state.3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  tail call void @arm_heavy_mb() #14
  %bf.load11.i.i = load i32, ptr @w100_pwr_state.3, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %bf.load11.i.i) #14
  %18 = load ptr, ptr @remapped_regs, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %18, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %17) #14, !srcloc !132
  %M.i.i = getelementptr inbounds %struct.w100_pll_info, ptr %pll.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %M.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %M.i.i, align 2
  %bf.load13.i.i = load i32, ptr @w100_pwr_state.1, align 4
  %bf.value.i.i = zext i8 %20 to i32
  %bf.shl.i.i = shl i32 %bf.value.i.i, 28
  %bf.clear14.i.i = and i32 %bf.load13.i.i, 251862784
  %bf.set15.i.i = or i32 %bf.clear14.i.i, %bf.shl.i.i
  %N_int.i.i = getelementptr inbounds %struct.w100_pll_info, ptr %pll.0.i, i32 0, i32 2
  %21 = ptrtoint ptr %N_int.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %N_int.i.i, align 1
  %23 = and i8 %22, 63
  %bf.value18.i.i = zext i8 %23 to i32
  %bf.shl19.i.i = shl nuw nsw i32 %bf.value18.i.i, 18
  %bf.set21.i.i = or i32 %bf.shl19.i.i, %bf.set15.i.i
  %N_fac.i.i = getelementptr inbounds %struct.w100_pll_info, ptr %pll.0.i, i32 0, i32 3
  %24 = ptrtoint ptr %N_fac.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %N_fac.i.i, align 2
  %26 = and i8 %25, 7
  %bf.value24.i.i = zext i8 %26 to i32
  %bf.shl25.i.i = shl nuw nsw i32 %bf.value24.i.i, 13
  %bf.set27.i.i = or i32 %bf.set21.i.i, %bf.shl25.i.i
  %lock_time.i.i = getelementptr inbounds %struct.w100_pll_info, ptr %pll.0.i, i32 0, i32 5
  %27 = ptrtoint ptr %lock_time.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %lock_time.i.i, align 2
  %conv28.i.i = zext i8 %28 to i32
  %bf.set32.i.i = or i32 %bf.set27.i.i, %conv28.i.i
  store i32 %bf.set32.i.i, ptr @w100_pwr_state.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  %bf.load36.i.i = load i32, ptr @w100_pwr_state.1, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %bf.load36.i.i) #14
  %30 = load ptr, ptr @remapped_regs, align 4
  %add.ptr37.i.i = getelementptr i8, ptr %30, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i.i, i32 %29) #14, !srcloc !132
  %bf.load38.i.i = load i32, ptr @w100_pwr_state.5, align 4
  %bf.clear39.i.i = and i32 %bf.load38.i.i, -805306369
  store i32 %bf.clear39.i.i, ptr @w100_pwr_state.5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  tail call void @arm_heavy_mb() #14
  %bf.load44.i.i = load i32, ptr @w100_pwr_state.5, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %bf.load44.i.i) #14
  %32 = load ptr, ptr @remapped_regs, align 4
  %add.ptr45.i.i = getelementptr i8, ptr %32, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i.i, i32 %31) #14, !srcloc !132
  %bf.load.i.i.i.i = load i32, ptr @w100_pwr_state.2, align 4
  %bf.clear5.i.i.i.i = and i32 %bf.load.i.i.i.i, 1036058622
  %bf.set6.i.i.i.i = or i32 %bf.clear5.i.i.i.i, 33554432
  store i32 %bf.set6.i.i.i.i, ptr @w100_pwr_state.2, align 4
  %tfgoal.i.i.i.i = getelementptr inbounds %struct.w100_pll_info, ptr %pll.0.i, i32 0, i32 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.cond98.i.i.i.i, %if.then.i
  %bf.load19.i.i.i.i = load i32, ptr @w100_pwr_state.2, align 4
  %bf.clear20.i.i.i.i = and i32 %bf.load19.i.i.i.i, -3841
  %bf.set21.i.i.i.i = or i32 %bf.clear20.i.i.i.i, 3328
  store i32 %bf.set21.i.i.i.i, ptr @w100_pwr_state.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !254
  tail call void @arm_heavy_mb() #14
  %bf.load23.i.i.i.i = load i32, ptr @w100_pwr_state.2, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %bf.load23.i.i.i.i) #14
  %34 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %34, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %33) #14, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 1073740) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  tail call void @arm_heavy_mb() #14
  %36 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %36, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i, i32 -226) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void @arm_heavy_mb() #14
  %37 = load ptr, ptr @remapped_regs, align 4
  %add.ptr15.i.i.i.i.i = getelementptr i8, ptr %37, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i.i.i.i, i32 -32994) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %38 = load ptr, ptr @remapped_regs, align 4
  %add.ptr23.i.i.i.i.i = getelementptr i8, ptr %38, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i.i.i.i.i, i32 -32993) #14, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 4294960) #14
  %40 = load ptr, ptr @remapped_regs, align 4
  %add.ptr24.i.i.i.i.i = getelementptr i8, ptr %40, i32 148
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i.i.i.i.i) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !258
  %42 = and i32 %41, -2
  %43 = lshr i32 %41, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  %44 = load ptr, ptr @remapped_regs, align 4
  %add.ptr33.i.i.i.i.i = getelementptr i8, ptr %44, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i.i.i.i.i, i32 %42) #14, !srcloc !132
  %45 = ptrtoint ptr %tfgoal.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tfgoal.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv.i.i.i.i)
  %cmp.not.i.i.i.i = icmp ult i32 %43, %conv.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %do.body.i.i.i.i.if.end64.i.i.i.i_crit_edge, label %if.then.i.i.i.i

do.body.i.i.i.i.if.end64.i.i.i.i_crit_edge:       ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %bf.load25.i.i.i.i = load i32, ptr @w100_pwr_state.2, align 4
  %bf.clear26.i.i.i.i = and i32 %bf.load25.i.i.i.i, -3841
  %bf.set27.i.i.i.i = or i32 %bf.clear26.i.i.i.i, 1792
  store i32 %bf.set27.i.i.i.i, ptr @w100_pwr_state.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !260
  tail call void @arm_heavy_mb() #14
  %bf.load31.i.i.i.i = load i32, ptr @w100_pwr_state.2, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %bf.load31.i.i.i.i) #14
  %48 = load ptr, ptr @remapped_regs, align 4
  %add.ptr32.i.i.i.i = getelementptr i8, ptr %48, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i.i.i.i, i32 %47) #14, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 1073740) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  tail call void @arm_heavy_mb() #14
  %50 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i102.i.i.i.i = getelementptr i8, ptr %50, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102.i.i.i.i, i32 -226) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void @arm_heavy_mb() #14
  %51 = load ptr, ptr @remapped_regs, align 4
  %add.ptr15.i103.i.i.i.i = getelementptr i8, ptr %51, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i103.i.i.i.i, i32 -32994) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %52 = load ptr, ptr @remapped_regs, align 4
  %add.ptr23.i104.i.i.i.i = getelementptr i8, ptr %52, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i104.i.i.i.i, i32 -32993) #14, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 4294960) #14
  %54 = load ptr, ptr @remapped_regs, align 4
  %add.ptr24.i105.i.i.i.i = getelementptr i8, ptr %54, i32 148
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i105.i.i.i.i) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !258
  %56 = and i32 %55, -2
  %57 = lshr i32 %55, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  %58 = load ptr, ptr @remapped_regs, align 4
  %add.ptr33.i106.i.i.i.i = getelementptr i8, ptr %58, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i106.i.i.i.i, i32 %56) #14, !srcloc !132
  %59 = ptrtoint ptr %tfgoal.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %tfgoal.i.i.i.i, align 1
  %conv35.i.i.i.i = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv35.i.i.i.i)
  %cmp36.not.i.i.i.i = icmp ugt i32 %57, %conv35.i.i.i.i
  br i1 %cmp36.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i.w100_pll_set_clk.exit.i_crit_edge

if.then.i.i.i.i.w100_pll_set_clk.exit.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w100_pll_set_clk.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  %bf.load39.i.i.i.i = load i32, ptr @w100_pwr_state.2, align 4
  %61 = and i32 %bf.load39.i.i.i.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp41.i.i.i.i = icmp eq i32 %61, 0
  br i1 %cmp41.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.i.i.i.if.end64.i.i.i.i_crit_edge

if.end.i.i.i.i.if.end64.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %62 = and i32 %bf.load39.i.i.i.i, 3670016
  call void @__sanitizer_cov_trace_const_cmp4(i32 3670016, i32 %62)
  %cmp46.i.i.i.i = icmp eq i32 %62, 3670016
  %63 = and i32 %bf.load39.i.i.i.i, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp51.i.i.i.i = icmp eq i32 %63, 0
  %or.cond.i.i.i.i = or i1 %cmp46.i.i.i.i, %cmp51.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %if.then53.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end64.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.if.end64.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64.i.i.i.i

if.then53.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set56.i.i.i.i = and i32 %bf.load39.i.i.i.i, -4128769
  %bf.clear58.i.i.i.i = or i32 %bf.set56.i.i.i.i, 262144
  br label %do.cond98.i.i.i.i

if.end64.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.if.end64.i.i.i.i_crit_edge, %if.end.i.i.i.i.if.end64.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end64.i.i.i.i_crit_edge
  %bf.load65.i.i.i.i = load i32, ptr @w100_pwr_state.2, align 4
  %64 = and i32 %bf.load65.i.i.i.i, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %64)
  %cmp68.not.i.i.i.i = icmp eq i32 %64, 196608
  br i1 %cmp68.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then70.i.i.i.i

if.then70.i.i.i.i:                                ; preds = %if.end64.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %65 = add i32 %bf.load65.i.i.i.i, 65536
  %bf.shl.i.i.i.i = and i32 %65, 196608
  %bf.clear75.i.i.i.i = and i32 %bf.load65.i.i.i.i, -196609
  %bf.set76.i.i.i.i = or i32 %bf.shl.i.i.i.i, %bf.clear75.i.i.i.i
  br label %do.cond98.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end64.i.i.i.i
  %66 = and i32 %bf.load65.i.i.i.i, 3670016
  call void @__sanitizer_cov_trace_const_cmp4(i32 3670016, i32 %66)
  %cmp80.not.i.i.i.i = icmp eq i32 %66, 3670016
  br i1 %cmp80.not.i.i.i.i, label %if.else.i.i.i.i.w100_pll_set_clk.exit.i_crit_edge, label %if.then82.i.i.i.i

if.else.i.i.i.i.w100_pll_set_clk.exit.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w100_pll_set_clk.exit.i

if.then82.i.i.i.i:                                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %67 = add i32 %bf.load65.i.i.i.i, 524288
  %bf.shl92.i.i.i.i = and i32 %67, 3670016
  %bf.clear93.i.i.i.i = and i32 %bf.load65.i.i.i.i, -3866625
  %bf.set94.i.i.i.i = or i32 %bf.shl92.i.i.i.i, %bf.clear93.i.i.i.i
  br label %do.cond98.i.i.i.i

do.cond98.i.i.i.i:                                ; preds = %if.then82.i.i.i.i, %if.then70.i.i.i.i, %if.then53.i.i.i.i
  %bf.set76.sink.i.i.i.i = phi i32 [ %bf.set76.i.i.i.i, %if.then70.i.i.i.i ], [ %bf.set94.i.i.i.i, %if.then82.i.i.i.i ], [ %bf.clear58.i.i.i.i, %if.then53.i.i.i.i ]
  store i32 %bf.set76.sink.i.i.i.i, ptr @w100_pwr_state.2, align 4
  br label %do.body.i.i.i.i

w100_pll_set_clk.exit.i:                          ; preds = %if.else.i.i.i.i.w100_pll_set_clk.exit.i_crit_edge, %if.then.i.i.i.i.w100_pll_set_clk.exit.i_crit_edge
  %bf.load.i.i.i = load i32, ptr @w100_pwr_state.2, align 4
  %bf.clear.i.i.i = and i32 %bf.load.i.i.i, -3841
  %bf.set.i.i.i = or i32 %bf.clear.i.i.i, 2560
  store i32 %bf.set.i.i.i, ptr @w100_pwr_state.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !261
  tail call void @arm_heavy_mb() #14
  %bf.load1.i.i.i = load i32, ptr @w100_pwr_state.2, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %bf.load1.i.i.i) #14
  %69 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %69, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %68) #14, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748) #14
  %bf.load2.i.i.i = load i32, ptr @w100_pwr_state.2, align 4
  %bf.clear3.i.i.i = and i32 %bf.load2.i.i.i, -33554433
  store i32 %bf.clear3.i.i.i, ptr @w100_pwr_state.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !262
  tail call void @arm_heavy_mb() #14
  %bf.load8.i.i.i = load i32, ptr @w100_pwr_state.2, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %bf.load8.i.i.i) #14
  %72 = load ptr, ptr @remapped_regs, align 4
  %add.ptr9.i.i.i = getelementptr i8, ptr %72, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i, i32 %71) #14, !srcloc !132
  %bf.load10.i.i.i = load i32, ptr @w100_pwr_state.2, align 4
  %bf.clear11.i.i.i = and i32 %bf.load10.i.i.i, -3841
  store i32 %bf.clear11.i.i.i, ptr @w100_pwr_state.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !263
  tail call void @arm_heavy_mb() #14
  %bf.load16.i.i.i = load i32, ptr @w100_pwr_state.2, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %bf.load16.i.i.i) #14
  %74 = load ptr, ptr @remapped_regs, align 4
  %add.ptr17.i.i.i = getelementptr i8, ptr %74, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i.i, i32 %73) #14, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 85899200) #14
  br label %if.end

if.end.i:                                         ; preds = %do.body.i
  %incdec.ptr.i = getelementptr %struct.w100_pll_info, ptr %pll.0.i, i32 1
  %76 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %incdec.ptr.i, align 2
  %tobool.not.i = icmp eq i16 %77, 0
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %w100_pll_set_clk.exit.i, %lor.lhs.false.if.end_crit_edge
  %sysclk_src7 = getelementptr inbounds %struct.w100_mode, ptr %1, i32 0, i32 17
  %78 = ptrtoint ptr %sysclk_src7 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sysclk_src7, align 4
  %bf.load = load i32, ptr @w100_pwr_state.3, align 4
  %bf.shl = shl i32 %79, 30
  %bf.clear = and i32 %bf.load, 820117503
  %bf.set = or i32 %bf.clear, %bf.shl
  %sysclk_divider = getelementptr inbounds %struct.w100_mode, ptr %1, i32 0, i32 18
  %80 = ptrtoint ptr %sysclk_divider to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sysclk_divider, align 4
  %bf.value9 = shl i32 %81, 24
  %bf.shl10 = and i32 %bf.value9, 251658240
  %bf.set12 = or i32 %bf.shl10, %bf.set
  %bf.value15 = shl i32 %81, 17
  %bf.shl16 = and i32 %bf.value15, 1966080
  %bf.set18 = or i32 %bf.set12, %bf.shl16
  store i32 %bf.set18, ptr @w100_pwr_state.3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !264
  tail call void @arm_heavy_mb() #14
  %bf.load19 = load i32, ptr @w100_pwr_state.3, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %bf.load19)
  %83 = load ptr, ptr @remapped_regs, align 4
  %add.ptr = getelementptr i8, ptr %83, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %82) #14, !srcloc !132
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w100_set_dispregs(ptr nocapture noundef readonly %par) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %xres = getelementptr inbounds %struct.w100fb_par, ptr %par, i32 0, i32 1
  %0 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xres, align 4
  %mode = getelementptr inbounds %struct.w100fb_par, ptr %par, i32 0, i32 8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp = icmp eq i32 %1, %5
  %flip = getelementptr inbounds %struct.w100fb_par, ptr %par, i32 0, i32 4
  %6 = ptrtoint ptr %flip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %yres = getelementptr inbounds %struct.w100fb_par, ptr %par, i32 0, i32 2
  %8 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres, align 4
  %mul = mul i32 %9, %1
  %sub = add i32 %mul, -1
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %rot.0 = phi i32 [ 3, %if.then2 ], [ 0, %if.then.if.end_crit_edge ]
  %offset.0 = phi i32 [ %sub, %if.then2 ], [ 0, %if.then.if.end_crit_edge ]
  %pixclk_divider = getelementptr inbounds %struct.w100_mode, ptr %3, i32 0, i32 20
  br label %if.end17

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else10, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %sub9 = add i32 %1, -1
  br label %if.end15

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %yres12 = getelementptr inbounds %struct.w100fb_par, ptr %par, i32 0, i32 2
  %10 = ptrtoint ptr %yres12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres12, align 4
  %sub13 = add i32 %11, -1
  %mul14 = mul i32 %sub13, %1
  br label %if.end15

if.end15:                                         ; preds = %if.else10, %if.then7
  %rot.1 = phi i32 [ 2, %if.then7 ], [ 1, %if.else10 ]
  %offset.1 = phi i32 [ %sub9, %if.then7 ], [ %mul14, %if.else10 ]
  %pixclk_divider_rotated = getelementptr inbounds %struct.w100_mode, ptr %3, i32 0, i32 21
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.end
  %rot.2 = phi i32 [ %rot.0, %if.end ], [ %rot.1, %if.end15 ]
  %divider.0.in = phi ptr [ %pixclk_divider, %if.end ], [ %pixclk_divider_rotated, %if.end15 ]
  %offset.2 = phi i32 [ %offset.0, %if.end ], [ %offset.1, %if.end15 ]
  %12 = ptrtoint ptr %divider.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %divider.0 = load i32, ptr %divider.0.in, align 4
  %13 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %par, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %14, label %if.end17.sw.epilog101_crit_edge [
    i32 1463881730, label %sw.bb
    i32 1447301122, label %if.end17.sw.bb64_crit_edge
    i32 1464078338, label %if.end17.sw.bb64_crit_edge174
  ]

if.end17.sw.bb64_crit_edge174:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb64

if.end17.sw.bb64_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb64

if.end17.sw.epilog101_crit_edge:                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog101

sw.bb:                                            ; preds = %if.end17
  %bf.value = shl nuw nsw i32 %rot.2, 27
  %bf.shl = and i32 %bf.value, 402653184
  %16 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %1, label %sw.default [
    i32 640, label %sw.bb.sw.bb47_crit_edge
    i32 480, label %sw.bb.sw.bb47_crit_edge175
  ]

sw.bb.sw.bb47_crit_edge175:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb47

sw.bb.sw.bb47_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb47

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set46 = or i32 %bf.shl, -1069907200
  br label %sw.epilog101

sw.bb47:                                          ; preds = %sw.bb.sw.bb47_crit_edge, %sw.bb.sw.bb47_crit_edge175
  %bf.set41 = or i32 %bf.shl, -1070071040
  %17 = zext i32 %rot.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %rot.2, label %sw.bb47.sw.epilog_crit_edge [
    i32 0, label %sw.bb47.sw.bb48_crit_edge
    i32 3, label %sw.bb47.sw.bb48_crit_edge176
    i32 1, label %sw.bb47.sw.bb55_crit_edge
    i32 2, label %sw.bb47.sw.bb55_crit_edge177
  ]

sw.bb47.sw.bb55_crit_edge177:                     ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb55

sw.bb47.sw.bb55_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb55

sw.bb47.sw.bb48_crit_edge176:                     ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb48

sw.bb47.sw.bb48_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb48

sw.bb47.sw.epilog_crit_edge:                      ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb48:                                          ; preds = %sw.bb47.sw.bb48_crit_edge, %sw.bb47.sw.bb48_crit_edge176
  %bf.set54 = or i32 %bf.shl, -981990656
  br label %sw.epilog

sw.bb55:                                          ; preds = %sw.bb47.sw.bb55_crit_edge, %sw.bb47.sw.bb55_crit_edge177
  %bf.set58 = or i32 %bf.shl, -1053293824
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb55, %sw.bb48, %sw.bb47.sw.epilog_crit_edge
  %graphic_ctrl.sroa.0.0 = phi i32 [ %bf.set41, %sw.bb47.sw.epilog_crit_edge ], [ %bf.set58, %sw.bb55 ], [ %bf.set54, %sw.bb48 ]
  %bf.clear61 = and i32 %graphic_ctrl.sroa.0.0, -523265
  %bf.set62 = or i32 %bf.clear61, 245760
  br label %sw.epilog101

sw.bb64:                                          ; preds = %if.end17.sw.bb64_crit_edge, %if.end17.sw.bb64_crit_edge174
  %18 = shl i32 %5, 8
  %bf.shl93 = and i32 %18, 523776
  %bf.value97 = shl nuw nsw i32 %rot.2, 27
  %bf.shl98 = and i32 %bf.value97, 402653184
  %bf.set95 = or i32 %bf.shl93, %bf.shl98
  %bf.set100 = or i32 %bf.set95, -1070071424
  br label %sw.epilog101

sw.epilog101:                                     ; preds = %sw.bb64, %sw.epilog, %sw.default, %if.end17.sw.epilog101_crit_edge
  %graphic_ctrl.sroa.0.1 = phi i32 [ 0, %if.end17.sw.epilog101_crit_edge ], [ %bf.set100, %sw.bb64 ], [ %bf.set46, %sw.default ], [ %bf.set62, %sw.epilog ]
  %pixclk_src = getelementptr inbounds %struct.w100_mode, ptr %3, i32 0, i32 19
  %19 = ptrtoint ptr %pixclk_src to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pixclk_src, align 4
  %bf.load103 = load i32, ptr @w100_pwr_state.4, align 4
  %bf.shl105 = shl i32 %20, 30
  %bf.clear106 = and i32 %bf.load103, 822083583
  %bf.set107 = or i32 %bf.clear106, %bf.shl105
  %bf.value109 = shl i32 %divider.0, 24
  %bf.shl110 = and i32 %bf.value109, 251658240
  %bf.set112 = or i32 %bf.set107, %bf.shl110
  store i32 %bf.set112, ptr @w100_pwr_state.4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !265
  tail call void @arm_heavy_mb() #14
  %bf.load113 = load i32, ptr @w100_pwr_state.4, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %bf.load113)
  %22 = load ptr, ptr @remapped_regs, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !266
  tail call void @arm_heavy_mb() #14
  %23 = tail call i32 @llvm.bswap.i32(i32 %graphic_ctrl.sroa.0.1)
  %24 = load ptr, ptr @remapped_regs, align 4
  %add.ptr118 = getelementptr i8, ptr %24, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %23) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !267
  tail call void @arm_heavy_mb() #14
  %25 = shl i32 %offset.2, 1
  %and = and i32 %25, 536870908
  %add = add nuw nsw i32 %and, 8388608
  %26 = tail call i32 @llvm.bswap.i32(i32 %add)
  %27 = load ptr, ptr @remapped_regs, align 4
  %add.ptr123 = getelementptr i8, ptr %27, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 %26) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !268
  tail call void @arm_heavy_mb() #14
  %28 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xres, align 4
  %30 = shl i32 %29, 1
  %div129173 = and i32 %30, 536870910
  %31 = tail call i32 @llvm.bswap.i32(i32 %div129173)
  %32 = load ptr, ptr @remapped_regs, align 4
  %add.ptr130 = getelementptr i8, ptr %32, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 %31) #14, !srcloc !132
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w100_suspend(i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !269
  tail call void @arm_heavy_mb() #14
  %0 = load ptr, ptr @remapped_regs, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 8454015) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !270
  tail call void @arm_heavy_mb() #14
  %1 = load ptr, ptr @remapped_regs, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 65280) #14, !srcloc !132
  %2 = load ptr, ptr @remapped_regs, align 4
  %add.ptr5 = getelementptr i8, ptr %2, i32 404
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !271
  %4 = and i32 %3, -4352
  %5 = or i32 %4, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !272
  tail call void @arm_heavy_mb() #14
  %6 = load ptr, ptr @remapped_regs, align 4
  %add.ptr10 = getelementptr i8, ptr %6, i32 404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %5) #14, !srcloc !132
  %7 = load ptr, ptr @remapped_regs, align 4
  %add.ptr13 = getelementptr i8, ptr %7, i32 396
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !273
  %9 = and i32 %8, -3073
  %10 = or i32 %9, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !274
  tail call void @arm_heavy_mb() #14
  %11 = load ptr, ptr @remapped_regs, align 4
  %add.ptr22 = getelementptr i8, ptr %11, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %10) #14, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  br i1 %cmp, label %if.then, label %do.body45

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %13 = load ptr, ptr @remapped_regs, align 4
  %add.ptr25 = getelementptr i8, ptr %13, i32 396
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !275
  %15 = or i32 %14, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !276
  tail call void @arm_heavy_mb() #14
  %16 = load ptr, ptr @remapped_regs, align 4
  %add.ptr33 = getelementptr i8, ptr %16, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %15) #14, !srcloc !132
  %17 = load ptr, ptr @remapped_regs, align 4
  %add.ptr36 = getelementptr i8, ptr %17, i32 396
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !277
  %19 = and i32 %18, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !278
  tail call void @arm_heavy_mb() #14
  %20 = load ptr, ptr @remapped_regs, align 4
  %add.ptr44 = getelementptr i8, ptr %20, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %19) #14, !srcloc !132
  br label %if.end

do.body45:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !279
  tail call void @arm_heavy_mb() #14
  %21 = load ptr, ptr @remapped_regs, align 4
  %add.ptr48 = getelementptr i8, ptr %21, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 0) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !280
  tail call void @arm_heavy_mb() #14
  %22 = load ptr, ptr @remapped_regs, align 4
  %add.ptr52 = getelementptr i8, ptr %22, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 -1090519040) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !281
  tail call void @arm_heavy_mb() #14
  %23 = load ptr, ptr @remapped_regs, align 4
  %add.ptr56 = getelementptr i8, ptr %23, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 352321536) #14, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 1073740) #14
  %25 = load ptr, ptr @remapped_regs, align 4
  %add.ptr59 = getelementptr i8, ptr %25, i32 136
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !282
  %27 = or i32 %26, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !283
  tail call void @arm_heavy_mb() #14
  %28 = load ptr, ptr @remapped_regs, align 4
  %add.ptr67 = getelementptr i8, ptr %28, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %27) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !284
  tail call void @arm_heavy_mb() #14
  %29 = load ptr, ptr @remapped_regs, align 4
  %add.ptr71 = getelementptr i8, ptr %29, i32 1220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 0) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !285
  tail call void @arm_heavy_mb() #14
  %30 = load ptr, ptr @remapped_regs, align 4
  %add.ptr75 = getelementptr i8, ptr %30, i32 1224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 0) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !286
  tail call void @arm_heavy_mb() #14
  %31 = load ptr, ptr @remapped_regs, align 4
  %add.ptr79 = getelementptr i8, ptr %31, i32 1228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 0) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !287
  tail call void @arm_heavy_mb() #14
  %32 = load ptr, ptr @remapped_regs, align 4
  %add.ptr83 = getelementptr i8, ptr %32, i32 1232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 0) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !288
  tail call void @arm_heavy_mb() #14
  %33 = load ptr, ptr @remapped_regs, align 4
  %add.ptr87 = getelementptr i8, ptr %33, i32 1316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 0) #14, !srcloc !132
  %34 = load ptr, ptr @remapped_regs, align 4
  %add.ptr90 = getelementptr i8, ptr %34, i32 396
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !289
  %36 = and i32 %35, -16777457
  %37 = or i32 %36, 240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !290
  tail call void @arm_heavy_mb() #14
  %38 = load ptr, ptr @remapped_regs, align 4
  %add.ptr99 = getelementptr i8, ptr %38, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 %37) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !291
  tail call void @arm_heavy_mb() #14
  %39 = load ptr, ptr @remapped_regs, align 4
  %add.ptr103 = getelementptr i8, ptr %39, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 486539264) #14, !srcloc !132
  br label %if.end

if.end:                                           ; preds = %do.body45, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fastpllclk_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %fastpll_mode = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %fastpll_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fastpll_mode, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.30, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fastpllclk_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %call2 = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  %fastpll_mode4 = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 6
  %not.cmp.not = xor i1 %cmp.not, true
  %. = zext i1 %not.cmp.not to i32
  %.str.34..str.31 = select i1 %cmp.not, ptr @.str.34, ptr @.str.31
  %4 = ptrtoint ptr %fastpll_mode4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %., ptr %fastpll_mode4, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.34..str.31) #17
  tail call fastcc void @w100_init_clocks(ptr noundef %3)
  %mode1.i = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode1.i, align 4
  %pixclk_src.i = getelementptr inbounds %struct.w100_mode, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %pixclk_src.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pixclk_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mach.i = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %mach.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mach.i, align 4
  %xtal_freq.i = getelementptr inbounds %struct.w100fb_mach_info, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %xtal_freq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %xtal_freq.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  %fastpll_mode.i = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %fastpll_mode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fastpll_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.else.i.cond.false.i_crit_edge, label %land.lhs.true.i

if.else.i.cond.false.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %fast_pll_freq.i = getelementptr inbounds %struct.w100_mode, ptr %6, i32 0, i32 16
  %15 = ptrtoint ptr %fast_pll_freq.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fast_pll_freq.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool2.not.i = icmp eq i8 %16, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true.i.cond.end.i_crit_edge

land.lhs.true.i.cond.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %if.else.i.cond.false.i_crit_edge
  %pll_freq.i = getelementptr inbounds %struct.w100_mode, ptr %6, i32 0, i32 15
  %17 = ptrtoint ptr %pll_freq.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pll_freq.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %land.lhs.true.i.cond.end.i_crit_edge
  %cond.in.i = phi i8 [ %18, %cond.false.i ], [ %16, %land.lhs.true.i.cond.end.i_crit_edge ]
  %cond.i = zext i8 %cond.in.i to i32
  %mul.i = mul nuw nsw i32 %cond.i, 100000
  br label %if.end.i

if.end.i:                                         ; preds = %cond.end.i, %if.then.i
  %hsync.0.i = phi i32 [ %12, %if.then.i ], [ %mul.i, %cond.end.i ]
  %bf.load.i = load i32, ptr @w100_pwr_state.4, align 4
  %19 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 1164
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not.i = icmp eq i32 %20, 0
  br i1 %tobool8.not.i, label %if.end.i.calc_hsync.exit_crit_edge, label %if.then9.i

if.end.i.calc_hsync.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %calc_hsync.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #14
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  %bf.clear.i = and i32 %bf.lshr.i, 15
  %add.i = add nuw nsw i32 %bf.clear.i, 1
  %div.i = udiv i32 %hsync.0.i, %add.i
  %bf.lshr11.i = lshr i32 %21, 6
  %bf.clear12.i = and i32 %bf.lshr11.i, 1023
  %bf.lshr14.i = lshr i32 %21, 22
  %sub.i = sub nsw i32 %bf.clear12.i, %bf.lshr14.i
  %div15.i = udiv i32 %div.i, %sub.i
  br label %calc_hsync.exit

calc_hsync.exit:                                  ; preds = %if.then9.i, %if.end.i.calc_hsync.exit_crit_edge
  %div15.sink.i = phi i32 [ %div15.i, %if.then9.i ], [ 0, %if.end.i.calc_hsync.exit_crit_edge ]
  %22 = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 7
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div15.sink.i, ptr %22, align 4
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w100fb_reg_read(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 16) #14
  %0 = load ptr, ptr @remapped_regs, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 %call
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !129
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !292
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %call, i32 noundef %2) #17
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w100fb_reg_write(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef returned %count) #2 align 64 {
entry:
  %regs = alloca i32, align 4
  %param = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regs) #14
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regs, align 4, !annotation !293
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #14
  %1 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %param, align 4, !annotation !293
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.40, ptr noundef nonnull %regs, ptr noundef nonnull %param)
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %3)
  %cmp = icmp ult i32 %3, 8193
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param, align 4
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %3, i32 noundef %5) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !294
  call void @arm_heavy_mb() #14
  %6 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %9 = load ptr, ptr @remapped_regs, align 4
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #14, !srcloc !132
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs) #14
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flip_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %flip = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flip, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.30, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flip_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %call2 = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp ne i32 %call2, 0
  %spec.select = zext i1 %cmp.not to i32
  %4 = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !211
  tail call void @arm_heavy_mb() #14
  %6 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 1240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -226) #14, !srcloc !132
  tail call fastcc void @w100_set_dispregs(ptr noundef %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !238
  tail call void @arm_heavy_mb() #14
  %7 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 1240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 -34) #14, !srcloc !132
  %mode1.i = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mode1.i, align 4
  %pixclk_src.i = getelementptr inbounds %struct.w100_mode, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %pixclk_src.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixclk_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mach.i = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %mach.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mach.i, align 4
  %xtal_freq.i = getelementptr inbounds %struct.w100fb_mach_info, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %xtal_freq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xtal_freq.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  %fastpll_mode.i = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %fastpll_mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fastpll_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.else.i.cond.false.i_crit_edge, label %land.lhs.true.i

if.else.i.cond.false.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %fast_pll_freq.i = getelementptr inbounds %struct.w100_mode, ptr %9, i32 0, i32 16
  %18 = ptrtoint ptr %fast_pll_freq.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fast_pll_freq.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not.i = icmp eq i8 %19, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true.i.cond.end.i_crit_edge

land.lhs.true.i.cond.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %if.else.i.cond.false.i_crit_edge
  %pll_freq.i = getelementptr inbounds %struct.w100_mode, ptr %9, i32 0, i32 15
  %20 = ptrtoint ptr %pll_freq.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pll_freq.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %land.lhs.true.i.cond.end.i_crit_edge
  %cond.in.i = phi i8 [ %21, %cond.false.i ], [ %19, %land.lhs.true.i.cond.end.i_crit_edge ]
  %cond.i = zext i8 %cond.in.i to i32
  %mul.i = mul nuw nsw i32 %cond.i, 100000
  br label %if.end.i

if.end.i:                                         ; preds = %cond.end.i, %if.then.i
  %hsync.0.i = phi i32 [ %15, %if.then.i ], [ %mul.i, %cond.end.i ]
  %bf.load.i = load i32, ptr @w100_pwr_state.4, align 4
  %22 = load ptr, ptr @remapped_regs, align 4
  %add.ptr.i9 = getelementptr i8, ptr %22, i32 1164
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool8.not.i = icmp eq i32 %23, 0
  br i1 %tobool8.not.i, label %if.end.i.calc_hsync.exit_crit_edge, label %if.then9.i

if.end.i.calc_hsync.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %calc_hsync.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #14
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  %bf.clear.i = and i32 %bf.lshr.i, 15
  %add.i = add nuw nsw i32 %bf.clear.i, 1
  %div.i = udiv i32 %hsync.0.i, %add.i
  %bf.lshr11.i = lshr i32 %24, 6
  %bf.clear12.i = and i32 %bf.lshr11.i, 1023
  %bf.lshr14.i = lshr i32 %24, 22
  %sub.i = sub nsw i32 %bf.clear12.i, %bf.lshr14.i
  %div15.i = udiv i32 %div.i, %sub.i
  br label %calc_hsync.exit

calc_hsync.exit:                                  ; preds = %if.then9.i, %if.end.i.calc_hsync.exit_crit_edge
  %div15.sink.i = phi i32 [ %div15.i, %if.then9.i ], [ 0, %if.end.i.calc_hsync.exit_crit_edge ]
  %25 = getelementptr inbounds %struct.w100fb_par, ptr %3, i32 0, i32 7
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div15.sink.i, ptr %25, align 4
  ret i32 %count
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !85, !87, !88, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106, !107, !109, !110, !112, !114, !115, !116, !117, !119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__ksymtab_w100fb_get_hsynclen, !1, !"__ksymtab_w100fb_get_hsynclen", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/w100fb.c", i32 191, i32 1}
!2 = !{ptr @__ksymtab_w100fb_gpio_read, !3, !"__ksymtab_w100fb_gpio_read", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/w100fb.c", i32 861, i32 1}
!4 = !{ptr @__ksymtab_w100fb_gpio_write, !5, !"__ksymtab_w100fb_gpio_write", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/w100fb.c", i32 862, i32 1}
!6 = !{ptr @__initcall__kmod_w100fb__305_1632_w100fb_driver_init6, !7, !"__initcall__kmod_w100fb__305_1632_w100fb_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/w100fb.c", i32 1632, i32 1}
!8 = !{ptr @__exitcall_w100fb_driver_exit, !7, !"__exitcall_w100fb_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description306, !10, !"__UNIQUE_ID_description306", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/w100fb.c", i32 1634, i32 1}
!11 = !{ptr @__UNIQUE_ID_file307, !12, !"__UNIQUE_ID_file307", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/w100fb.c", i32 1635, i32 1}
!13 = !{ptr @__UNIQUE_ID_license308, !12, !"__UNIQUE_ID_license308", i1 false, i1 false}
!14 = !{ptr @remapped_regs, !15, !"remapped_regs", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/w100fb.c", i32 65, i32 22}
!16 = !{ptr @w100_pll_tables, !17, !"w100_pll_tables", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/w100fb.c", i32 1012, i32 3}
!18 = !{ptr @xtal_12500000, !19, !"xtal_12500000", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/w100fb.c", i32 978, i32 29}
!20 = !{ptr @xtal_14318000, !21, !"xtal_14318000", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/w100fb.c", i32 989, i32 29}
!22 = !{ptr @xtal_16000000, !23, !"xtal_16000000", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/w100fb.c", i32 1000, i32 29}
!24 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/w100fb.c", i32 1627, i32 11}
!26 = !{ptr @w100fb_driver, !27, !"w100fb_driver", i1 false, i1 false}
!27 = !{!"../drivers/video/fbdev/w100fb.c", i32 1621, i32 31}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/w100fb.c", i32 663, i32 2}
!30 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @w100fb_probe._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @w100fb_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/w100fb.c", i32 666, i32 23}
!36 = !{ptr @w100fb_probe._entry.4, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @w100fb_probe._entry_ptr.6, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/w100fb.c", i32 667, i32 23}
!40 = !{ptr @w100fb_probe._entry.7, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @w100fb_probe._entry_ptr.9, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/w100fb.c", i32 668, i32 23}
!44 = !{ptr @w100fb_probe._entry.10, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @w100fb_probe._entry_ptr.12, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/video/fbdev/w100fb.c", i32 670, i32 4}
!48 = !{ptr @w100fb_probe._entry.13, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @w100fb_probe._entry_ptr.15, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/w100fb.c", i32 674, i32 2}
!52 = !{ptr @w100fb_probe._entry.16, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @w100fb_probe._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/w100fb.c", i32 698, i32 3}
!56 = !{ptr @w100fb_probe._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @w100fb_probe._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/w100fb.c", i32 766, i32 2}
!60 = !{ptr @w100fb_probe._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @w100fb_probe._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @remapped_base, !63, !"remapped_base", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/w100fb.c", i32 64, i32 22}
!64 = !{ptr @remapped_fbuf, !65, !"remapped_fbuf", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/w100fb.c", i32 66, i32 22}
!66 = !{ptr @w100fb_ops, !67, !"w100fb_ops", i1 false, i1 false}
!67 = !{!"../drivers/video/fbdev/w100fb.c", i32 552, i32 28}
!68 = distinct !{null, !69, !"w100_pwr_state", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/w100fb.c", i32 973, i32 27}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/w100fb.c", i32 274, i32 2}
!72 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @w100_fifo_wait._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @w100_fifo_wait._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/video/fbdev/w100fb.c", i32 289, i32 2}
!77 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @w100fb_sync._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @w100fb_sync._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @w100fb_groups, !81, !"w100fb_groups", i1 false, i1 false}
!81 = !{!"../drivers/video/fbdev/w100fb.c", i32 174, i32 1}
!82 = !{ptr @w100fb_group, !81, !"w100fb_group", i1 false, i1 false}
!83 = !{ptr @w100fb_attrs, !84, !"w100fb_attrs", i1 false, i1 false}
!84 = !{!"../drivers/video/fbdev/w100fb.c", i32 167, i32 26}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/video/fbdev/w100fb.c", i32 165, i32 8}
!87 = !{ptr @dev_attr_fastpllclk, !86, !"dev_attr_fastpllclk", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/video/fbdev/w100fb.c", i32 143, i32 22}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/video/fbdev/w100fb.c", i32 153, i32 3}
!92 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @fastpllclk_store._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @fastpllclk_store._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/video/fbdev/w100fb.c", i32 156, i32 3}
!97 = !{ptr @fastpllclk_store._entry.33, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @fastpllclk_store._entry_ptr.35, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/video/fbdev/w100fb.c", i32 120, i32 8}
!101 = !{ptr @dev_attr_reg_read, !100, !"dev_attr_reg_read", i1 false, i1 false}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/video/fbdev/w100fb.c", i32 116, i32 2}
!104 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @w100fb_reg_read._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @w100fb_reg_read._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/video/fbdev/w100fb.c", i32 135, i32 8}
!109 = !{ptr @dev_attr_reg_write, !108, !"dev_attr_reg_write", i1 false, i1 false}
!110 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/video/fbdev/w100fb.c", i32 125, i32 14}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/video/fbdev/w100fb.c", i32 128, i32 3}
!114 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @w100fb_reg_write._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @w100fb_reg_write._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.43, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/video/fbdev/w100fb.c", i32 109, i32 8}
!119 = !{ptr @dev_attr_flip, !118, !"dev_attr_flip", i1 false, i1 false}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i64 4351837}
!130 = !{i64 2155964627}
!131 = !{i64 2155965140}
!132 = !{i64 4351419}
!133 = !{i64 2155950452}
!134 = !{i64 4350999}
!135 = !{i64 2155961076}
!136 = !{i64 2155961324}
!137 = !{i64 4350799}
!138 = !{i64 2155962330}
!139 = !{i64 2155969106}
!140 = !{i64 2155969802}
!141 = !{i64 2155970029}
!142 = !{i64 2155970463}
!143 = !{i64 2155971198}
!144 = !{i64 2155971446}
!145 = !{i64 2155972205}
!146 = !{i64 2155972452}
!147 = !{i64 2155973208}
!148 = !{i64 2155973451}
!149 = !{i64 2155973936}
!150 = !{i64 4351222}
!151 = !{i64 2155974267}
!152 = !{i64 2155974596}
!153 = !{i64 2155974933}
!154 = !{i64 2155975441}
!155 = !{i64 2155975956}
!156 = !{i64 2155976434}
!157 = !{i64 2155977154}
!158 = !{i64 2155977383}
!159 = !{i64 2155977811}
!160 = !{i64 2155978269}
!161 = !{i64 2155978726}
!162 = !{i64 2155979179}
!163 = !{i64 2155979630}
!164 = !{i64 2155980083}
!165 = !{i64 2155940208}
!166 = !{i64 2155930352}
!167 = !{i64 2155940446}
!168 = !{i64 2155940872}
!169 = !{i64 2155941337}
!170 = !{i64 2155941890}
!171 = !{i64 2155942718}
!172 = !{i64 2155942956}
!173 = !{i64 2155943397}
!174 = !{i64 2155943895}
!175 = !{i64 2155944391}
!176 = !{i64 2155932808}
!177 = !{i64 2155990637}
!178 = !{i64 2155991186}
!179 = !{i64 2155991726}
!180 = !{i64 2155992269}
!181 = !{i64 2155992821}
!182 = !{i64 2155993358}
!183 = !{i64 2156006337}
!184 = !{i64 2156006857}
!185 = !{i64 2156007386}
!186 = !{i64 2156007944}
!187 = !{i64 2156008429}
!188 = !{i64 2156008866}
!189 = !{i64 2156009309}
!190 = !{i64 2156010291}
!191 = !{i64 2156011282}
!192 = !{i64 2156012301}
!193 = !{i64 2156012767}
!194 = !{i64 2156013215}
!195 = !{i64 2156013677}
!196 = !{i64 2156014135}
!197 = !{i64 2156014611}
!198 = !{i64 2156015069}
!199 = !{i64 2156015526}
!200 = !{i64 2156015979}
!201 = !{i64 2156030653}
!202 = !{i64 2156030895}
!203 = !{i64 2156031636}
!204 = !{i64 2156031862}
!205 = !{i64 2156032275}
!206 = !{i64 2156032717}
!207 = !{i64 2156033175}
!208 = !{i64 2156033889}
!209 = !{i64 2156034651}
!210 = !{i64 2156035064}
!211 = !{i64 2155963330}
!212 = !{i64 2155994425}
!213 = !{i64 2155994887}
!214 = !{i64 2155995350}
!215 = !{i64 2155995816}
!216 = !{i64 2155996278}
!217 = !{i64 2155996727}
!218 = !{i64 2155997173}
!219 = !{i64 2155997619}
!220 = !{i64 2155998070}
!221 = !{i64 2155998532}
!222 = !{i64 2155998983}
!223 = !{i64 2155999437}
!224 = !{i64 2155999890}
!225 = !{i64 2156000347}
!226 = !{i64 2156000820}
!227 = !{i64 2156001278}
!228 = !{i64 2156001736}
!229 = !{i64 2156002196}
!230 = !{i64 2156002662}
!231 = !{i64 2156003128}
!232 = !{i64 2156003586}
!233 = !{i64 2156004020}
!234 = !{i64 2156004454}
!235 = !{i64 2156004888}
!236 = !{i64 2156005602}
!237 = !{i64 2156005831}
!238 = !{i64 2155963848}
!239 = !{i64 2155935073}
!240 = !{i64 2155935500}
!241 = !{i64 2155935957}
!242 = !{i64 2155936384}
!243 = !{i64 2155936806}
!244 = !{i64 2155937232}
!245 = !{i64 2155937723}
!246 = !{i64 2155938158}
!247 = !{i64 2155938606}
!248 = !{i64 2155939036}
!249 = !{i64 2155939485}
!250 = !{i64 2156018778}
!251 = !{i64 2155988446}
!252 = !{i64 2155988989}
!253 = !{i64 2155989544}
!254 = !{i64 2155984133}
!255 = !{i64 2155981092}
!256 = !{i64 2155981586}
!257 = !{i64 2155982080}
!258 = !{i64 2155983381}
!259 = !{i64 2155983629}
!260 = !{i64 2155984672}
!261 = !{i64 2155985211}
!262 = !{i64 2155986281}
!263 = !{i64 2155986815}
!264 = !{i64 2155993906}
!265 = !{i64 2156016484}
!266 = !{i64 2156017002}
!267 = !{i64 2156017512}
!268 = !{i64 2156018038}
!269 = !{i64 2156019011}
!270 = !{i64 2156019445}
!271 = !{i64 2156020159}
!272 = !{i64 2156020385}
!273 = !{i64 2156021078}
!274 = !{i64 2156021304}
!275 = !{i64 2156022535}
!276 = !{i64 2156022761}
!277 = !{i64 2156023454}
!278 = !{i64 2156023680}
!279 = !{i64 2156024093}
!280 = !{i64 2156024527}
!281 = !{i64 2156024961}
!282 = !{i64 2156026211}
!283 = !{i64 2156026437}
!284 = !{i64 2156026850}
!285 = !{i64 2156027284}
!286 = !{i64 2156027718}
!287 = !{i64 2156028152}
!288 = !{i64 2156028586}
!289 = !{i64 2156029300}
!290 = !{i64 2156029526}
!291 = !{i64 2156029939}
!292 = !{i64 2155917573}
!293 = !{!"auto-init"}
!294 = !{i64 2155921967}
