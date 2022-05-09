; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/cyber2000fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/cyber2000fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cyber2000fb_enable_extregs\22, \22a\22\09"
module asm "\09.weak\09__crc_cyber2000fb_enable_extregs\09\09\09\09"
module asm "\09.long\09__crc_cyber2000fb_enable_extregs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cyber2000fb_enable_extregs:\09\09\09\09\09"
module asm "\09.asciz \09\22cyber2000fb_enable_extregs\22\09\09\09\09\09"
module asm "__kstrtabns_cyber2000fb_enable_extregs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cyber2000fb_disable_extregs\22, \22a\22\09"
module asm "\09.weak\09__crc_cyber2000fb_disable_extregs\09\09\09\09"
module asm "\09.long\09__crc_cyber2000fb_disable_extregs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cyber2000fb_disable_extregs:\09\09\09\09\09"
module asm "\09.asciz \09\22cyber2000fb_disable_extregs\22\09\09\09\09\09"
module asm "__kstrtabns_cyber2000fb_disable_extregs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cyber2000fb_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_cyber2000fb_attach\09\09\09\09"
module asm "\09.long\09__crc_cyber2000fb_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cyber2000fb_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cyber2000fb_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cyber2000fb_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cyber2000fb_detach\22, \22a\22\09"
module asm "\09.weak\09__crc_cyber2000fb_detach\09\09\09\09"
module asm "\09.long\09__crc_cyber2000fb_detach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cyber2000fb_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22cyber2000fb_detach\22\09\09\09\09\09"
module asm "__kstrtabns_cyber2000fb_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cfb_info = type { %struct.fb_info, ptr, ptr, ptr, i32, i32, i32, i32, [4 x i32], [256 x %struct.anon.85], i8, i8, i8, i8, i8, i8, [16 x i32], %struct.spinlock, i8, %struct.i2c_adapter, %struct.i2c_algo_bit_data }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.84 = type { ptr }
%struct.anon.85 = type { i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.cyberpro_info = type { ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.86, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.86 = type { ptr }
%struct.par_info = type { i8, i8, i8, i8, i8, [19 x i8], i32, i32, i32, i8 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }

@__param_str_default_font = internal constant [25 x i8] c"cyber2000fb.default_font\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@default_font = internal global { ptr, [28 x i8] } { ptr @.str.3, [28 x i8] zeroinitializer }, align 32
@__param_default_font = internal constant %struct.kernel_param { ptr @__param_str_default_font, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @default_font } }, section "__param", align 4
@__UNIQUE_ID_default_fonttype305 = internal constant [40 x i8] c"cyber2000fb.parmtype=default_font:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_default_font306 = internal constant [48 x i8] c"cyber2000fb.parm=default_font:Default font name\00", section ".modinfo", align 1
@__kstrtab_cyber2000fb_enable_extregs = external dso_local constant [0 x i8], align 1
@__kstrtabns_cyber2000fb_enable_extregs = external dso_local constant [0 x i8], align 1
@__ksymtab_cyber2000fb_enable_extregs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cyber2000fb_enable_extregs to i32), ptr @__kstrtab_cyber2000fb_enable_extregs, ptr @__kstrtabns_cyber2000fb_enable_extregs }, section "___ksymtab+cyber2000fb_enable_extregs", align 4
@cyber2000fb_disable_extregs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013disable_extregs: count = 0\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cyber2000fb_disable_extregs\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/video/fbdev/cyber2000fb.c\00", [62 x i8] zeroinitializer }, align 32
@cyber2000fb_disable_extregs._entry_ptr = internal global ptr @cyber2000fb_disable_extregs._entry, section ".printk_index", align 4
@__kstrtab_cyber2000fb_disable_extregs = external dso_local constant [0 x i8], align 1
@__kstrtabns_cyber2000fb_disable_extregs = external dso_local constant [0 x i8], align 1
@__ksymtab_cyber2000fb_disable_extregs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cyber2000fb_disable_extregs to i32), ptr @__kstrtab_cyber2000fb_disable_extregs, ptr @__kstrtabns_cyber2000fb_disable_extregs }, section "___ksymtab+cyber2000fb_disable_extregs", align 4
@int_cfb_info = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_cyber2000fb_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cyber2000fb_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cyber2000fb_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cyber2000fb_attach to i32), ptr @__kstrtab_cyber2000fb_attach, ptr @__kstrtabns_cyber2000fb_attach }, section "___ksymtab+cyber2000fb_attach", align 4
@__kstrtab_cyber2000fb_detach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cyber2000fb_detach = external dso_local constant [0 x i8], align 1
@__ksymtab_cyber2000fb_detach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cyber2000fb_detach to i32), ptr @__kstrtab_cyber2000fb_detach, ptr @__kstrtabns_cyber2000fb_detach }, section "___ksymtab+cyber2000fb_detach", align 4
@__initcall__kmod_cyber2000fb__307_1886_cyber2000fb_init6 = internal global ptr @cyber2000fb_init, section ".initcall6.init", align 4
@cyberpro_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.9, ptr @cyberpro_pci_table, ptr @cyberpro_pci_probe, ptr @cyberpro_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cyberpro_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cyberpro_exit = internal global ptr @cyberpro_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author308 = internal constant [32 x i8] c"cyber2000fb.author=Russell King\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [72 x i8] c"cyber2000fb.description=CyberPro 2000, 2010 and 5000 framebuffer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [49 x i8] c"cyber2000fb.file=drivers/video/fbdev/cyber2000fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [24 x i8] c"cyber2000fb.license=GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Acorn8x8\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cyber2000fb\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"font:\00", [26 x i8] zeroinitializer }, align 32
@cyber2000fb_setup.default_font_storage = internal global { [40 x i8], [56 x i8] } zeroinitializer, align 32
@cyber2000fb_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013CyberPro20x0: unknown parameter: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cyber2000fb_setup\00", [46 x i8] zeroinitializer }, align 32
@cyber2000fb_setup._entry_ptr = internal global ptr @cyber2000fb_setup._entry, section ".printk_index", align 4
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CyberPro\00", [23 x i8] zeroinitializer }, align 32
@cyberpro_pci_table = internal global { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4330, i32 8192, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4330, i32 8208, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4330, i32 20480, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cyberpro_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cyberpro_pci_suspend, ptr @cyberpro_pci_resume, ptr @cyberpro_pci_suspend, ptr @cyberpro_pci_resume, ptr @cyberpro_pci_suspend, ptr @cyberpro_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CyberPro%4X\00", [20 x i8] zeroinitializer }, align 32
@cyber2000fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cyber2000fb_check_var, ptr @cyber2000fb_set_par, ptr @cyber2000fb_setcolreg, ptr null, ptr @cyber2000fb_blank, ptr @cyber2000fb_pan_display, ptr @cyber2000fb_fillrect, ptr @cyber2000fb_copyarea, ptr @cyber2000fb_imageblit, ptr null, ptr @cyber2000fb_sync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cyberpro_alloc_fb_info.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&cfb->reg_b0_lock\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@crtc_idx = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\00\01\02\03\04\05\06\07\08\09\10\11\12\13\14\15\16\17\18", [45 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cyberpro_pci_enable_mmio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: NOT enabling PCI bursts\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cyberpro_pci_enable_mmio\00", [39 x i8] zeroinitializer }, align 32
@cyberpro_pci_enable_mmio._entry_ptr = internal global ptr @cyberpro_pci_enable_mmio._entry, section ".printk_index", align 4
@cyberpro_pci_enable_mmio._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 1700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: enabling PCI bursts\0A\00", [37 x i8] zeroinitializer }, align 32
@cyberpro_pci_enable_mmio._entry_ptr.16 = internal global ptr @cyberpro_pci_enable_mmio._entry.14, section ".printk_index", align 4
@cyber2000fb_default_mode = internal constant { %struct.fb_videomode, [40 x i8] } { %struct.fb_videomode { ptr null, i32 60, i32 640, i32 480, i32 39722, i32 56, i32 16, i32 34, i32 9, i32 88, i32 2, i32 10, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@cyberpro_common_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: no valid mode found\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cyberpro_common_probe\00", [42 x i8] zeroinitializer }, align 32
@cyberpro_common_probe._entry_ptr = internal global ptr @cyberpro_common_probe._entry, section ".printk_index", align 4
@cyberpro_common_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 1596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: %dKiB VRAM, using %dx%d, %d.%03dkHz, %dHz\0A\00", [47 x i8] zeroinitializer }, align 32
@cyberpro_common_probe._entry_ptr.21 = internal global ptr @cyberpro_common_probe._entry.19, section ".printk_index", align 4
@igs_regs = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\12\00\13\00\16\001\002\003\0D<\00P\00Q\00R\00S\00T\00U\00V\00W\01X\00Y\00Z\00p\0Bs0t\0Bu\17v\00z\C8", [48 x i8] zeroinitializer }, align 32
@switch.table.cyberpro_pci_probe = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 33, i32 34, i32 35], [16 x i8] zeroinitializer }, align 32
@switch.table.cyberpro_pci_probe.22 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1048576, i32 2097152, i32 4194304], [20 x i8] zeroinitializer }, align 32
@switch.table.cyber2000fb_blank = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 1046, i16 278, i16 1302], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"default_font\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 102, i32 14 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1113, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"int_cfb_info\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1080, i32 25 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"cyberpro_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1853, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 102, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1875, i32 21 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1496, i32 33 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1500, i32 20 }
@___asan_gen_.59 = private unnamed_addr constant [21 x i8] c"default_font_storage\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1501, i32 16 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1509, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1854, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c"cyberpro_pci_table\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1833, i32 29 }
@___asan_gen_.77 = private unnamed_addr constant [20 x i8] c"cyberpro_pci_pm_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1849, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1721, i32 16 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"cyber2000fb_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1062, i32 28 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1465, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [9 x i8] c"crtc_idx\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 433, i32 21 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1694, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1699, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant [25 x i8] c"cyber2000fb_default_mode\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1336, i32 34 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1569, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1593, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [9 x i8] c"igs_regs\00", align 1
@___asan_gen_.129 = private constant [37 x i8] c"../drivers/video/fbdev/cyber2000fb.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1351, i32 13 }
@___asan_gen_.131 = private unnamed_addr constant [32 x i8] c"switch.table.cyberpro_pci_probe\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [35 x i8] c"switch.table.cyberpro_pci_probe.22\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [31 x i8] c"switch.table.cyber2000fb_blank\00", align 1
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_default_font306, ptr @__UNIQUE_ID_default_fonttype305, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_cyberpro_exit, ptr @__initcall__kmod_cyber2000fb__307_1886_cyber2000fb_init6, ptr @__ksymtab_cyber2000fb_attach, ptr @__ksymtab_cyber2000fb_detach, ptr @__ksymtab_cyber2000fb_disable_extregs, ptr @__ksymtab_cyber2000fb_enable_extregs, ptr @__param_default_font, ptr @cyber2000fb_disable_extregs._entry, ptr @cyber2000fb_disable_extregs._entry_ptr, ptr @cyber2000fb_setup._entry, ptr @cyber2000fb_setup._entry_ptr, ptr @cyberpro_common_probe._entry, ptr @cyberpro_common_probe._entry.19, ptr @cyberpro_common_probe._entry_ptr, ptr @cyberpro_common_probe._entry_ptr.21, ptr @cyberpro_exit, ptr @cyberpro_pci_enable_mmio._entry, ptr @cyberpro_pci_enable_mmio._entry.14, ptr @cyberpro_pci_enable_mmio._entry_ptr, ptr @cyberpro_pci_enable_mmio._entry_ptr.16, ptr @default_font, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @int_cfb_info, ptr @cyberpro_driver, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cyber2000fb_setup.default_font_storage, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @cyberpro_pci_table, ptr @cyberpro_pci_pm_ops, ptr @.str.10, ptr @cyber2000fb_ops, ptr @cyberpro_alloc_fb_info.__key, ptr @.str.11, ptr @crtc_idx, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @cyber2000fb_default_mode, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @igs_regs, ptr @switch.table.cyberpro_pci_probe, ptr @switch.table.cyberpro_pci_probe.22, ptr @switch.table.cyber2000fb_blank], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_font to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyber2000fb_disable_extregs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_cfb_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyberpro_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyber2000fb_setup.default_font_storage to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyber2000fb_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyberpro_pci_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyberpro_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyber2000fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyberpro_alloc_fb_info.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crtc_idx to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyberpro_pci_enable_mmio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyberpro_pci_enable_mmio._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyber2000fb_default_mode to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyberpro_common_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyberpro_common_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igs_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cyberpro_pci_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cyberpro_pci_probe.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cyber2000fb_blank to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cyber2000fb_enable_extregs(ptr nocapture noundef %cfb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %func_use_count = getelementptr inbounds %struct.cfb_info, ptr %cfb, i32 0, i32 6
  %0 = ptrtoint ptr %func_use_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %func_use_count, align 8
  %add = add i32 %1, 1
  store i32 %add, ptr %func_use_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !98
  tail call void @arm_heavy_mb() #15
  %regs.i = getelementptr inbounds %struct.cfb_info, ptr %cfb, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 60) #15, !srcloc !99
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 975
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #15, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !101
  %7 = or i8 %6, -128
  %or = zext i8 %7 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  tail call void @arm_heavy_mb() #15
  %shl.i = shl nuw i16 %or, 8
  %or.i = or i16 %shl.i, 60
  %8 = tail call i16 @llvm.bswap.i16(i16 %or.i) #15
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %10, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i7, i16 %8) #15, !srcloc !103
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cyber2000fb_disable_extregs(ptr nocapture noundef %cfb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %func_use_count = getelementptr inbounds %struct.cfb_info, ptr %cfb, i32 0, i32 6
  %0 = ptrtoint ptr %func_use_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %func_use_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !98
  tail call void @arm_heavy_mb() #15
  %regs.i = getelementptr inbounds %struct.cfb_info, ptr %cfb, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 60) #15, !srcloc !99
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 975
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #15, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !101
  %7 = and i8 %6, 127
  %and = zext i8 %7 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  tail call void @arm_heavy_mb() #15
  %shl.i = shl nuw nsw i16 %and, 8
  %or.i = or i16 %shl.i, 60
  %8 = tail call i16 @llvm.bswap.i16(i16 %or.i) #15
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %10, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i13, i16 %8) #15, !srcloc !103
  %11 = ptrtoint ptr %func_use_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %func_use_count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = phi i32 [ %.pr, %if.then ], [ %1, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2 = icmp eq i32 %12, 0
  br i1 %cmp2, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #18
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub = add i32 %12, -1
  %13 = ptrtoint ptr %func_use_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %func_use_count, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyber2000fb_attach(ptr noundef %info, i32 %idx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @int_cfb_info, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %device = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 21
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %info, align 4
  %i2c = getelementptr inbounds %struct.cyberpro_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %i2c, align 4
  %regs = getelementptr inbounds %struct.cfb_info, ptr %0, i32 0, i32 3
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %regs1 = getelementptr inbounds %struct.cyberpro_info, ptr %info, i32 0, i32 2
  %7 = ptrtoint ptr %regs1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %regs1, align 4
  %irq = getelementptr inbounds %struct.cfb_info, ptr %0, i32 0, i32 5
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %irq2 = getelementptr inbounds %struct.cyberpro_info, ptr %info, i32 0, i32 7
  %10 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %irq2, align 4
  %11 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 25
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %fb4 = getelementptr inbounds %struct.cyberpro_info, ptr %info, i32 0, i32 3
  %14 = ptrtoint ptr %fb4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %fb4, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %smem_len, align 4
  %fb_size = getelementptr inbounds %struct.cyberpro_info, ptr %info, i32 0, i32 5
  %17 = ptrtoint ptr %fb_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %fb_size, align 4
  %info6 = getelementptr inbounds %struct.cyberpro_info, ptr %info, i32 0, i32 8
  %18 = ptrtoint ptr %info6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %0, ptr %info6, align 4
  %dev_name = getelementptr inbounds %struct.cyberpro_info, ptr %info, i32 0, i32 4
  %fix8 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7
  %call = tail call i32 @strlcpy(ptr noundef %dev_name, ptr noundef %fix8, i32 noundef 32) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %19 = load ptr, ptr @int_cfb_info, align 4
  %cmp10 = icmp ne ptr %19, null
  %conv = zext i1 %cmp10 to i32
  ret i32 %conv
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cyber2000fb_detach(i32 %idx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cyber2000fb_init() #6 section ".init.text" align 64 {
entry:
  %options.addr.i = alloca ptr, align 4
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #15
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str.4, ptr noundef nonnull %option) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.addr.i)
  %3 = ptrtoint ptr %options.addr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %options.addr.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.cyber2000fb_setup.exit_crit_edge, label %lor.lhs.false.i

if.end.cyber2000fb_setup.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cyber2000fb_setup.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cyber2000fb_setup.exit_crit_edge, label %while.cond.preheader.i

lor.lhs.false.i.cyber2000fb_setup.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cyber2000fb_setup.exit

while.cond.preheader.i:                           ; preds = %lor.lhs.false.i
  %call1.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.5) #15
  %cmp.not2.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not2.i, label %while.cond.preheader.i.cyber2000fb_setup.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.cyber2000fb_setup.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cyber2000fb_setup.exit

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call3.i = phi ptr [ %call.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %call1.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %call3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not.i = icmp eq i8 %7, 0
  br i1 %tobool2.not.i, label %while.body.i.while.cond.backedge.i_crit_edge, label %if.end4.i

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge.i

if.end4.i:                                        ; preds = %while.body.i
  %call5.i = call i32 @strncmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(6) @.str.6, i32 noundef 5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then7.i, label %do.end.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 5
  %call8.i = call i32 @strlcpy(ptr noundef nonnull @cyber2000fb_setup.default_font_storage, ptr noundef %add.ptr.i, i32 noundef 40) #15
  store ptr @cyber2000fb_setup.default_font_storage, ptr @default_font, align 4
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %do.end.i, %if.then7.i, %while.body.i.while.cond.backedge.i_crit_edge
  %call.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.5) #15
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %while.cond.backedge.i.cyber2000fb_setup.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.cond.backedge.i.cyber2000fb_setup.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cyber2000fb_setup.exit

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %call3.i) #18
  br label %while.cond.backedge.i

cyber2000fb_setup.exit:                           ; preds = %while.cond.backedge.i.cyber2000fb_setup.exit_crit_edge, %while.cond.preheader.i.cyber2000fb_setup.exit_crit_edge, %lor.lhs.false.i.cyber2000fb_setup.exit_crit_edge, %if.end.cyber2000fb_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  %call2 = call i32 @__pci_register_driver(ptr noundef nonnull @cyberpro_driver, ptr noundef null, ptr noundef nonnull @.str.4) #15
  br label %cleanup

cleanup:                                          ; preds = %cyber2000fb_setup.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %cyber2000fb_setup.exit ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #15
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cyberpro_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @pci_unregister_driver(ptr noundef nonnull @cyberpro_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyberpro_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #15
  %device = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 1
  %0 = call ptr @memset(ptr %name, i32 255, i32 16)
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %device, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.10, i32 noundef %2)
  %call1 = tail call i32 @pci_enable_device(ptr noundef %dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 3448) #19
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %id1.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %id1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %id1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.i = icmp eq i32 %4, 3
  %ref_ps.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 7
  br i1 %cmp.i, label %if.end4.thread.i, label %if.end4.i

if.end4.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %ref_ps.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 40690, ptr %ref_ps.i, align 4
  %divisors93.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %divisors93.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %divisors93.i, align 8
  %arrayidx694.i = getelementptr %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %arrayidx694.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %arrayidx694.i, align 4
  %arrayidx895.i = getelementptr %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %arrayidx895.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %arrayidx895.i, align 8
  br label %if.else13.i

if.end4.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %ref_ps.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 69842, ptr %ref_ps.i, align 4
  %divisors.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %divisors.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %divisors.i, align 8
  %arrayidx6.i = getelementptr %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 8, i32 2
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %arrayidx8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp9.i = icmp eq i32 %4, 1
  br i1 %cmp9.i, label %if.end4.i.if.end16.i_crit_edge, label %if.end4.i.if.else13.i_crit_edge

if.end4.i.if.else13.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else13.i

if.end4.i.if.end16.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i

if.else13.i:                                      ; preds = %if.end4.i.if.else13.i_crit_edge, %if.end4.thread.i
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else13.i, %if.end4.i.if.end16.i_crit_edge
  %.sink.i = phi i32 [ 6, %if.else13.i ], [ 8, %if.end4.i.if.end16.i_crit_edge ]
  %arrayidx15.i = getelementptr %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 8, i32 3
  %15 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink.i, ptr %arrayidx15.i, align 4
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 7
  %call18.i = call ptr @strcpy(ptr noundef %fix.i, ptr noundef nonnull %name) #20
  %type.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 7, i32 3
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %type.i, align 8
  %type_aux.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 7, i32 4
  %17 = ptrtoint ptr %type_aux.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %type_aux.i, align 4
  %xpanstep.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 7, i32 6
  %18 = ptrtoint ptr %xpanstep.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %xpanstep.i, align 4
  %ypanstep.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 7, i32 7
  %19 = ptrtoint ptr %ypanstep.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %ypanstep.i, align 2
  %ywrapstep.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 7, i32 8
  %20 = ptrtoint ptr %ywrapstep.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %ywrapstep.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %21 = icmp ult i32 %4, 4
  br i1 %21, label %switch.lookup, label %if.end16.i.if.end6_crit_edge

if.end16.i.if.end6_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

switch.lookup:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.cyberpro_pci_probe, i32 0, i32 %4
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load i32, ptr %switch.gep, align 4
  %accel42.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 7, i32 12
  %23 = ptrtoint ptr %accel42.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %switch.load, ptr %accel42.i, align 8
  br label %if.end6

if.end6:                                          ; preds = %switch.lookup, %if.end16.i.if.end6_crit_edge
  %nonstd.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 6, i32 12
  %24 = ptrtoint ptr %nonstd.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %nonstd.i, align 8
  %activate.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 6, i32 13
  %25 = ptrtoint ptr %activate.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %activate.i, align 4
  %height.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 6, i32 14
  %26 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %height.i, align 8
  %width.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 6, i32 15
  %27 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %width.i, align 4
  %accel_flags.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 6, i32 16
  %28 = ptrtoint ptr %accel_flags.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %accel_flags.i, align 8
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 20
  %29 = ptrtoint ptr %fbops.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @cyber2000fb_ops, ptr %fbops.i, align 8
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8192, ptr %flags.i, align 8
  %pseudo_palette.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 16
  %pseudo_palette56.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 27
  %31 = ptrtoint ptr %pseudo_palette56.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %pseudo_palette.i, ptr %pseudo_palette56.i, align 4
  %reg_b0_lock.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %reg_b0_lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @cyberpro_alloc_fb_info.__key, i16 noundef signext 3) #15
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 12
  %call59.i = tail call i32 @fb_alloc_cmap(ptr noundef %cmap.i, i32 noundef 256, i32 noundef 0) #15
  %call9 = tail call i32 @pci_request_regions(ptr noundef %dev, ptr noundef %fix.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.cyberpro_free_fb_info.exit_crit_edge

if.end6.cyberpro_free_fb_info.exit_crit_edge:     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cyberpro_free_fb_info.exit

if.end12:                                         ; preds = %if.end6
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  %irq13 = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %irq13 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %irq13, align 4
  %call14 = tail call ptr @pci_ioremap_bar(ptr noundef %dev, i32 noundef 0) #15
  %region = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call14, ptr %region, align 8
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %if.end12.failed_ioremap_crit_edge, label %if.end18

if.end12.failed_ioremap_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_ioremap

if.end18:                                         ; preds = %if.end12
  %add.ptr = getelementptr i8, ptr %call14, i32 8388608
  %regs = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr, ptr %regs, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %device22 = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 21
  %37 = ptrtoint ptr %device22 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev20, ptr %device22, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %38 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %resource, align 8
  %add = add i32 %39, 8388608
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 7, i32 10
  %40 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add, ptr %mmio_start, align 8
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %41 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %smem_start, align 8
  tail call fastcc void @cyberpro_pci_enable_mmio(ptr noundef nonnull %call7.i.i.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !98
  tail call void @arm_heavy_mb() #15
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 -78) #15, !srcloc !99
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add.ptr2.i = getelementptr i8, ptr %45, i32 975
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #15, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !101
  %mclk_mult = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 12
  %47 = ptrtoint ptr %mclk_mult to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %mclk_mult, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !98
  tail call void @arm_heavy_mb() #15
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 4
  %add.ptr.i81 = getelementptr i8, ptr %49, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i81, i8 -77) #15, !srcloc !99
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %add.ptr2.i82 = getelementptr i8, ptr %51, i32 975
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i82) #15, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !101
  %mclk_div = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 13
  %53 = ptrtoint ptr %mclk_div to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %mclk_div, align 1
  tail call fastcc void @cyberpro_init_hw(ptr noundef nonnull %call7.i.i.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !98
  tail call void @arm_heavy_mb() #15
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 113) #15, !srcloc !99
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %57, i32 975
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i.i) #15, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !101
  %mem_ctl1.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 10
  %59 = ptrtoint ptr %mem_ctl1.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %mem_ctl1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !98
  tail call void @arm_heavy_mb() #15
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  %add.ptr.i154.i = getelementptr i8, ptr %61, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i154.i, i8 114) #15, !srcloc !99
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  %add.ptr2.i155.i = getelementptr i8, ptr %63, i32 975
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i155.i) #15, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !101
  %mem_ctl2.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 11
  %65 = ptrtoint ptr %mem_ctl2.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %mem_ctl2.i, align 1
  %66 = and i8 %64, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %66)
  %.not = icmp eq i8 %66, 3
  br i1 %.not, label %if.end18.sw.epilog.i86_crit_edge, label %switch.lookup97

if.end18.sw.epilog.i86_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i86

switch.lookup97:                                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %and.i = zext i8 %66 to i32
  %switch.gep98 = getelementptr inbounds [3 x i32], ptr @switch.table.cyberpro_pci_probe.22, i32 0, i32 %and.i
  %67 = ptrtoint ptr %switch.gep98 to i32
  call void @__asan_load4_noabort(i32 %67)
  %switch.load99 = load i32, ptr %switch.gep98, align 4
  br label %sw.epilog.i86

sw.epilog.i86:                                    ; preds = %switch.lookup97, %if.end18.sw.epilog.i86_crit_edge
  %smem_size.0.i = phi i32 [ %switch.load99, %switch.lookup97 ], [ 1048576, %if.end18.sw.epilog.i86_crit_edge ]
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 7, i32 2
  %68 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %smem_size.0.i, ptr %smem_len.i, align 4
  %mmio_len.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 7, i32 11
  %69 = ptrtoint ptr %mmio_len.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 786432, ptr %mmio_len.i, align 4
  %70 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %region, align 8
  %72 = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 25
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %71, ptr %72, align 4
  %ddc_adapter.i.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 19
  %name.i.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 19, i32 12
  %call.i.i = tail call i32 @strlcpy(ptr noundef %name.i.i, ptr noundef %fix.i, i32 noundef 48) #15
  %74 = ptrtoint ptr %ddc_adapter.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %ddc_adapter.i.i, align 8
  %class.i.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 19, i32 1
  %75 = ptrtoint ptr %class.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 8, ptr %class.i.i, align 4
  %ddc_algo.i.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 20
  %algo_data.i.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 19, i32 3
  %76 = ptrtoint ptr %algo_data.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %ddc_algo.i.i, ptr %algo_data.i.i, align 4
  %77 = ptrtoint ptr %device22 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device22, align 4
  %parent.i.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 19, i32 9, i32 1
  %79 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %parent.i.i, align 8
  %setsda.i.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 20, i32 1
  %80 = ptrtoint ptr %setsda.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @cyber2000fb_ddc_setsda, ptr %setsda.i.i, align 4
  %setscl.i.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 20, i32 2
  %81 = ptrtoint ptr %setscl.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @cyber2000fb_ddc_setscl, ptr %setscl.i.i, align 8
  %getsda.i.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 20, i32 3
  %82 = ptrtoint ptr %getsda.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @cyber2000fb_ddc_getsda, ptr %getsda.i.i, align 4
  %getscl.i.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 20, i32 4
  %83 = ptrtoint ptr %getscl.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @cyber2000fb_ddc_getscl, ptr %getscl.i.i, align 8
  %udelay.i.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 20, i32 7
  %84 = ptrtoint ptr %udelay.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 10, ptr %udelay.i.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 20, i32 8
  %85 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 20, ptr %timeout.i.i, align 8
  %86 = ptrtoint ptr %ddc_algo.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call7.i.i.i, ptr %ddc_algo.i.i, align 8
  %driver_data.i.i.i.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 19, i32 9, i32 8
  %87 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call7.i.i.i, ptr %driver_data.i.i.i.i, align 4
  %call16.i.i = tail call i32 @i2c_bit_add_bus(ptr noundef %ddc_adapter.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %cmp.i85 = icmp eq i32 %call16.i.i, 0
  br i1 %cmp.i85, label %if.then.i, label %sw.epilog.i86.if.end.i88_crit_edge

sw.epilog.i86.if.end.i88_crit_edge:               ; preds = %sw.epilog.i86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i88

if.then.i:                                        ; preds = %sw.epilog.i86
  call void @__sanitizer_cov_trace_pc() #17
  %ddc_registered.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 18
  %88 = ptrtoint ptr %ddc_registered.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %ddc_registered.i, align 4
  br label %if.end.i88

if.end.i88:                                       ; preds = %if.then.i, %sw.epilog.i86.if.end.i88_crit_edge
  %var.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 6
  %call14.i = tail call i32 @fb_find_mode(ptr noundef %var.i, ptr noundef nonnull %call7.i.i.i, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull @cyber2000fb_default_mode, i32 noundef 8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i87 = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i87, label %failed.thread.i, label %failed.i

failed.thread.i:                                  ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #17
  %call18.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %fix.i) #18
  br label %land.lhs.true.i

failed.i:                                         ; preds = %if.end.i88
  %89 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %smem_len.i, align 4
  %mul.i = shl i32 %90, 3
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 6, i32 6
  %91 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bits_per_pixel.i, align 8
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 6, i32 2
  %93 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %xres_virtual.i, align 8
  %mul27.i = mul i32 %94, %92
  %div.i = udiv i32 %mul.i, %mul27.i
  %yres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 6, i32 3
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %95 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %yres.i, align 4
  %97 = tail call i32 @llvm.umax.i32(i32 %div.i, i32 %96) #15
  %98 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %yres_virtual.i, align 4
  %pixclock.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 6, i32 17
  %99 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pixclock.i, align 4
  %div47.i = udiv i32 1953125000, %100
  %mul48.i = shl i32 %div47.i, 9
  %101 = ptrtoint ptr %var.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %var.i, align 8
  %left_margin.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 6, i32 18
  %103 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %left_margin.i, align 8
  %add.i = add i32 %104, %102
  %right_margin.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 6, i32 19
  %105 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %right_margin.i, align 4
  %add55.i = add i32 %add.i, %106
  %hsync_len.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 6, i32 22
  %107 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %hsync_len.i, align 8
  %add58.i = add i32 %add55.i, %108
  %div59.i = udiv i32 %mul48.i, %add58.i
  %upper_margin.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 6, i32 20
  %109 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %upper_margin.i, align 8
  %add65.i = add i32 %110, %96
  %lower_margin.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 6, i32 21
  %111 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %lower_margin.i, align 4
  %add68.i = add i32 %add65.i, %112
  %vsync_len.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i.i, i32 0, i32 6, i32 23
  %113 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %vsync_len.i, align 4
  %add71.i = add i32 %add68.i, %114
  %div72.i = udiv i32 %div59.i, %add71.i
  %shr.i = lshr i32 %90, 10
  %div59.i.frozen = freeze i32 %div59.i
  %div90.i = udiv i32 %div59.i.frozen, 1000
  %115 = mul i32 %div90.i, 1000
  %rem.i.decomposed = sub i32 %div59.i.frozen, %115
  %call91.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %fix.i, i32 noundef %shr.i, i32 noundef %102, i32 noundef %96, i32 noundef %div90.i, i32 noundef %rem.i.decomposed, i32 noundef %div72.i) #18
  %call96.i = tail call i32 @register_framebuffer(ptr noundef nonnull %call7.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %tobool103.not.i = icmp eq i32 %call96.i, 0
  br i1 %tobool103.not.i, label %if.end40, label %failed.i.land.lhs.true.i_crit_edge

failed.i.land.lhs.true.i_crit_edge:               ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %failed.i.land.lhs.true.i_crit_edge, %failed.thread.i
  %err.0159.i = phi i32 [ -22, %failed.thread.i ], [ %call96.i, %failed.i.land.lhs.true.i_crit_edge ]
  %ddc_registered104.i = getelementptr inbounds %struct.cfb_info, ptr %call7.i.i.i, i32 0, i32 18
  %116 = ptrtoint ptr %ddc_registered104.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %ddc_registered104.i, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool105.not.i = icmp eq i8 %117, 0
  br i1 %tobool105.not.i, label %land.lhs.true.i.failed_crit_edge, label %if.then107.i

land.lhs.true.i.failed_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed

if.then107.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @i2c_del_adapter(ptr noundef %ddc_adapter.i.i) #15
  br label %failed

if.end40:                                         ; preds = %failed.i
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %118 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call7.i.i.i, ptr %driver_data.i.i, align 4
  %119 = load ptr, ptr @int_cfb_info, align 4
  %cmp = icmp eq ptr %119, null
  br i1 %cmp, label %if.then42, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  store ptr %call7.i.i.i, ptr @int_cfb_info, align 4
  br label %cleanup

failed:                                           ; preds = %if.then107.i, %land.lhs.true.i.failed_crit_edge
  %120 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %region, align 8
  tail call void @iounmap(ptr noundef %121) #15
  br label %failed_ioremap

failed_ioremap:                                   ; preds = %failed, %if.end12.failed_ioremap_crit_edge
  %err.1 = phi i32 [ %err.0159.i, %failed ], [ -12, %if.end12.failed_ioremap_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %dev) #15
  br label %cyberpro_free_fb_info.exit

cyberpro_free_fb_info.exit:                       ; preds = %failed_ioremap, %if.end6.cyberpro_free_fb_info.exit_crit_edge
  %err.2 = phi i32 [ %call9, %if.end6.cyberpro_free_fb_info.exit_crit_edge ], [ %err.1, %failed_ioremap ]
  %call.i = tail call i32 @fb_alloc_cmap(ptr noundef %cmap.i, i32 noundef 0, i32 noundef 0) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %cyberpro_free_fb_info.exit, %if.then42, %if.end40.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then42 ], [ 0, %if.end40.cleanup_crit_edge ], [ %err.2, %cyberpro_free_fb_info.exit ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyberpro_pci_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end2

if.then:                                          ; preds = %entry
  tail call void @unregister_framebuffer(ptr noundef nonnull %1) #15
  %ddc_registered.i = getelementptr inbounds %struct.cfb_info, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %ddc_registered.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ddc_registered.i, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.cyberpro_free_fb_info.exit_crit_edge, label %if.then.i

if.then.cyberpro_free_fb_info.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cyberpro_free_fb_info.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %ddc_adapter.i = getelementptr inbounds %struct.cfb_info, ptr %1, i32 0, i32 19
  tail call void @i2c_del_adapter(ptr noundef %ddc_adapter.i) #15
  br label %cyberpro_free_fb_info.exit

cyberpro_free_fb_info.exit:                       ; preds = %if.then.i, %if.then.cyberpro_free_fb_info.exit_crit_edge
  %region = getelementptr inbounds %struct.cfb_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %region, align 8
  tail call void @iounmap(ptr noundef %5) #15
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  %call.i = tail call i32 @fb_alloc_cmap(ptr noundef %cmap.i, i32 noundef 0, i32 noundef 0) #15
  tail call void @kfree(ptr noundef nonnull %1) #15
  %6 = load ptr, ptr @int_cfb_info, align 4
  %cmp = icmp eq ptr %1, %6
  br i1 %cmp, label %if.then1, label %cyberpro_free_fb_info.exit.if.end_crit_edge

cyberpro_free_fb_info.exit.if.end_crit_edge:      ; preds = %cyberpro_free_fb_info.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then1:                                         ; preds = %cyberpro_free_fb_info.exit
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr @int_cfb_info, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %cyberpro_free_fb_info.exit.if.end_crit_edge
  tail call void @pci_release_regions(ptr noundef %dev) #15
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry.if.end2_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cyberpro_pci_enable_mmio(ptr noundef %cfb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !105
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18856216 to ptr), i8 24) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !106
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874110 to ptr), i8 1) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !107
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18856216 to ptr), i8 8) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !108
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 51) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !109
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 1) #15, !srcloc !99
  %id = getelementptr inbounds %struct.cfb_info, ptr %cfb, i32 0, i32 4
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %do.end19, label %if.else

do.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %fix = getelementptr inbounds %struct.fb_info, ptr %cfb, i32 0, i32 7
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %fix) #18
  br label %if.end45

if.else:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !98
  tail call void @arm_heavy_mb() #15
  %regs.i = getelementptr inbounds %struct.cfb_info, ptr %cfb, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 48) #15, !srcloc !99
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 975
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #15, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !101
  %conv4.i = zext i8 %6 to i32
  %and = and i32 %conv4.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end27, label %if.else.if.end45_crit_edge

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

do.end27:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %fix30 = getelementptr inbounds %struct.fb_info, ptr %cfb, i32 0, i32 7
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %fix30) #18
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp37 = icmp eq i32 %8, 3
  %spec.select.v = select i1 %cmp37, i32 160, i32 32
  %spec.select = or i32 %spec.select.v, %conv4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  tail call void @arm_heavy_mb() #15
  %spec.select.tr = trunc i32 %spec.select to i16
  %9 = shl nuw i16 %spec.select.tr, 8
  %conv.i = or i16 %9, 48
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #15
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %12, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i2, i16 %10) #15, !srcloc !103
  br label %if.end45

if.end45:                                         ; preds = %do.end27, %if.else.if.end45_crit_edge, %do.end19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyber2000fb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #13 align 64 {
entry:
  %hw = alloca %struct.par_info, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %hw) #15
  %0 = call ptr @memset(ptr %hw, i32 255, i32 40)
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %msb_right1 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %1 = ptrtoint ptr %msb_right1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %msb_right1, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %msb_right2 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %msb_right2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %msb_right2, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %msb_right3 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 2
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %3 = call ptr @memset(ptr %msb_right3, i32 0, i32 16)
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel, align 4
  %6 = add i32 %5, -8
  %7 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 29)
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
    i32 2, label %sw.bb64
    i32 3, label %sw.bb77
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %red, align 4
  %length9 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %length9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %length9, align 4
  %11 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %green, align 4
  %length13 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %length13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %length13, align 4
  br label %sw.epilog95

sw.bb18:                                          ; preds = %entry
  %length20 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %length20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length20, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %14, label %sw.bb34 [
    i32 6, label %sw.bb21
    i32 4, label %sw.bb47
  ]

sw.bb21:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 11, ptr %red, align 4
  %length25 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %length25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %length25, align 4
  %18 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %green, align 4
  %19 = ptrtoint ptr %length20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 6, ptr %length20, align 4
  br label %sw.epilog95

sw.bb34:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 10, ptr %red, align 4
  %length38 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %length38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 5, ptr %length38, align 4
  %22 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %green, align 4
  %23 = ptrtoint ptr %length20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %length20, align 4
  br label %sw.epilog95

sw.bb47:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 12, ptr %transp, align 4
  %25 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %length, align 4
  %26 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %red, align 4
  %length55 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %length55 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %length55, align 4
  %28 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %green, align 4
  %29 = ptrtoint ptr %length20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %length20, align 4
  br label %sw.epilog95

sw.bb64:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16, ptr %red, align 4
  %length68 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %31 = ptrtoint ptr %length68 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %length68, align 4
  %32 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %green, align 4
  %length72 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %33 = ptrtoint ptr %length72 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %length72, align 4
  br label %sw.epilog95

sw.bb77:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 24, ptr %transp, align 4
  %35 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 8, ptr %length, align 4
  %36 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16, ptr %red, align 4
  %length85 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %37 = ptrtoint ptr %length85 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8, ptr %length85, align 4
  %38 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8, ptr %green, align 4
  %length89 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %39 = ptrtoint ptr %length89 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %length89, align 4
  br label %sw.epilog95

sw.epilog95:                                      ; preds = %sw.bb77, %sw.bb64, %sw.bb47, %sw.bb34, %sw.bb21, %sw.bb
  %.sink = phi i32 [ 5, %sw.bb21 ], [ 5, %sw.bb34 ], [ 4, %sw.bb47 ], [ 8, %sw.bb77 ], [ 8, %sw.bb64 ], [ 8, %sw.bb ]
  %40 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %blue, align 4
  %length33 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %41 = ptrtoint ptr %length33 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink, ptr %length33, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %42 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %44 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %yres_virtual, align 4
  %div199 = lshr i32 %5, 3
  %mul = mul i32 %43, %div199
  %mul97 = mul i32 %mul, %45
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %46 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul97, i32 %47)
  %cmp = icmp ugt i32 %mul97, %47
  br i1 %cmp, label %if.then, label %sw.epilog95.if.end_crit_edge

sw.epilog95.if.end_crit_edge:                     ; preds = %sw.epilog95
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %sw.epilog95
  call void @__sanitizer_cov_trace_pc() #17
  %mul101 = shl i32 %47, 3
  %mul104 = mul i32 %43, %5
  %div105 = udiv i32 %mul101, %mul104
  %48 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div105, ptr %yres_virtual, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog95.if.end_crit_edge
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %49 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %yres, align 4
  %51 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp108 = icmp ugt i32 %50, %52
  br i1 %cmp108, label %if.then109, label %if.end.if.end112_crit_edge

if.end.if.end112_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end112

if.then109:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %yres, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %if.end.if.end112_crit_edge
  %54 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %43)
  %cmp114 = icmp ugt i32 %55, %43
  br i1 %cmp114, label %if.then115, label %if.end112.if.end118_crit_edge

if.end112.if.end118_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end118

if.then115:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %43, ptr %var, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then115, %if.end112.if.end118_crit_edge
  %pixclock.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %57 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pixclock.i, align 4
  %ref_ps1.i = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 7
  %59 = ptrtoint ptr %ref_ps1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ref_ps1.i, align 4
  %arrayidx.i = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 8, i32 0
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i, align 4
  %div.i = udiv i32 %58, %62
  %63 = add i32 %div.i, -3847
  call void @__sanitizer_cov_trace_const_cmp4(i32 4849, i32 %63)
  %64 = icmp ult i32 %63, 4849
  br i1 %64, label %if.end118.for.cond7.preheader.i_crit_edge, label %for.inc.i

if.end118.for.cond7.preheader.i_crit_edge:        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond7.preheader.i

for.inc.i:                                        ; preds = %if.end118
  %arrayidx.1.i = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 8, i32 1
  %65 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.1.i, align 4
  %div.1.i = udiv i32 %58, %66
  %67 = add i32 %div.1.i, -3847
  call void @__sanitizer_cov_trace_const_cmp4(i32 4849, i32 %67)
  %68 = icmp ult i32 %67, 4849
  br i1 %68, label %for.inc.i.for.cond7.preheader.i_crit_edge, label %for.inc.1.i

for.inc.i.for.cond7.preheader.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond7.preheader.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 8, i32 2
  %69 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.2.i, align 4
  %div.2.i = udiv i32 %58, %70
  %71 = add i32 %div.2.i, -3847
  call void @__sanitizer_cov_trace_const_cmp4(i32 4849, i32 %71)
  %72 = icmp ult i32 %71, 4849
  br i1 %72, label %for.inc.1.i.for.cond7.preheader.i_crit_edge, label %for.inc.2.i

for.inc.1.i.for.cond7.preheader.i_crit_edge:      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond7.preheader.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 8, i32 3
  %73 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.3.i, align 4
  %div.3.i = udiv i32 %58, %74
  %75 = add i32 %div.3.i, -3847
  call void @__sanitizer_cov_trace_const_cmp4(i32 4849, i32 %75)
  %76 = icmp ult i32 %75, 4849
  br i1 %76, label %for.inc.2.i.for.cond7.preheader.i_crit_edge, label %for.inc.2.i.cleanup_crit_edge

for.inc.2.i.cleanup_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.2.i.for.cond7.preheader.i_crit_edge:      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond7.preheader.i

for.cond7.preheader.i:                            ; preds = %for.inc.2.i.for.cond7.preheader.i_crit_edge, %for.inc.1.i.for.cond7.preheader.i_crit_edge, %for.inc.i.for.cond7.preheader.i_crit_edge, %if.end118.for.cond7.preheader.i_crit_edge
  %div2.0.lcssa.ph.i = phi i32 [ 0, %if.end118.for.cond7.preheader.i_crit_edge ], [ 64, %for.inc.i.for.cond7.preheader.i_crit_edge ], [ 128, %for.inc.1.i.for.cond7.preheader.i_crit_edge ], [ 192, %for.inc.2.i.for.cond7.preheader.i_crit_edge ]
  %pll_ps.2.ph.i = phi i32 [ %div.i, %if.end118.for.cond7.preheader.i_crit_edge ], [ %div.1.i, %for.inc.i.for.cond7.preheader.i_crit_edge ], [ %div.2.i, %for.inc.1.i.for.cond7.preheader.i_crit_edge ], [ %div.3.i, %for.inc.2.i.for.cond7.preheader.i_crit_edge ]
  %div1091.i = lshr i32 %pll_ps.2.ph.i, 1
  br label %for.body9.i

for.body9.i:                                      ; preds = %for.inc35.i.for.body9.i_crit_edge, %for.cond7.preheader.i
  %best_diff.0109.i = phi i32 [ 2147483647, %for.cond7.preheader.i ], [ %best_diff.2103.i, %for.inc35.i.for.body9.i_crit_edge ]
  %best_mult.0108.i = phi i32 [ 2, %for.cond7.preheader.i ], [ %best_mult.2102.i, %for.inc35.i.for.body9.i_crit_edge ]
  %best_div1.0107.i = phi i32 [ 32, %for.cond7.preheader.i ], [ %best_div1.2101.i, %for.inc35.i.for.body9.i_crit_edge ]
  %t_div1.0105.i = phi i32 [ 2, %for.cond7.preheader.i ], [ %add36.i, %for.inc35.i.for.body9.i_crit_edge ]
  %mul.i = mul i32 %t_div1.0105.i, %60
  %add.i = add i32 %mul.i, %div1091.i
  %div11.i = udiv i32 %add.i, %pll_ps.2.ph.i
  %77 = add i32 %div11.i, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %77)
  %78 = icmp ult i32 %77, -255
  br i1 %78, label %for.body9.i.for.inc35.i_crit_edge, label %cleanup29.i

for.body9.i.for.inc35.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc35.i

cleanup29.i:                                      ; preds = %for.body9.i
  %div1692.i = lshr i32 %div11.i, 1
  %add17.i = add i32 %div1692.i, %mul.i
  %div18.i = udiv i32 %add17.i, %div11.i
  %sub.i = sub i32 %pll_ps.2.ph.i, %div18.i
  %79 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %best_diff.0109.i)
  %cmp23.i = icmp slt i32 %79, %best_diff.0109.i
  %best_div1.1.i = select i1 %cmp23.i, i32 %t_div1.0105.i, i32 %best_div1.0107.i
  %best_mult.1.i = select i1 %cmp23.i, i32 %div11.i, i32 %best_mult.0108.i
  %80 = tail call i32 @llvm.smin.i32(i32 %79, i32 %best_diff.0109.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %pll_ps.2.ph.i, i32 %div18.i)
  %cmp26.i = icmp eq i32 %pll_ps.2.ph.i, %div18.i
  br i1 %cmp26.i, label %cleanup29.i.for.end37.i_crit_edge, label %cleanup29.i.for.inc35.i_crit_edge

cleanup29.i.for.inc35.i_crit_edge:                ; preds = %cleanup29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc35.i

cleanup29.i.for.end37.i_crit_edge:                ; preds = %cleanup29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end37.i

for.inc35.i:                                      ; preds = %cleanup29.i.for.inc35.i_crit_edge, %for.body9.i.for.inc35.i_crit_edge
  %best_diff.2103.i = phi i32 [ %80, %cleanup29.i.for.inc35.i_crit_edge ], [ %best_diff.0109.i, %for.body9.i.for.inc35.i_crit_edge ]
  %best_mult.2102.i = phi i32 [ %best_mult.1.i, %cleanup29.i.for.inc35.i_crit_edge ], [ %best_mult.0108.i, %for.body9.i.for.inc35.i_crit_edge ]
  %best_div1.2101.i = phi i32 [ %best_div1.1.i, %cleanup29.i.for.inc35.i_crit_edge ], [ %best_div1.0107.i, %for.body9.i.for.inc35.i_crit_edge ]
  %add36.i = add nuw nsw i32 %t_div1.0105.i, 1
  %exitcond.not.i = icmp eq i32 %add36.i, 32
  br i1 %exitcond.not.i, label %for.inc35.i.for.end37.i_crit_edge, label %for.inc35.i.for.body9.i_crit_edge

for.inc35.i.for.body9.i_crit_edge:                ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body9.i

for.inc35.i.for.end37.i_crit_edge:                ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end37.i

for.end37.i:                                      ; preds = %for.inc35.i.for.end37.i_crit_edge, %cleanup29.i.for.end37.i_crit_edge
  %best_div1.3.i = phi i32 [ %best_div1.1.i, %cleanup29.i.for.end37.i_crit_edge ], [ %best_div1.2101.i, %for.inc35.i.for.end37.i_crit_edge ]
  %best_mult.3.i = phi i32 [ %best_mult.1.i, %cleanup29.i.for.end37.i_crit_edge ], [ %best_mult.2102.i, %for.inc35.i.for.end37.i_crit_edge ]
  %81 = trunc i32 %best_mult.3.i to i8
  %conv.i = add i8 %81, -1
  %82 = ptrtoint ptr %hw to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv.i, ptr %hw, align 4
  %sub39.i = add i32 %best_div1.3.i, 255
  %or.i = or i32 %sub39.i, %div2.0.lcssa.ph.i
  %conv40.i = trunc i32 %or.i to i8
  %clock_div.i = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 1
  %83 = ptrtoint ptr %clock_div.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv40.i, ptr %clock_div.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 40690, i32 %60)
  %cmp43.i = icmp eq i32 %60, 40690
  br i1 %cmp43.i, label %land.lhs.true45.i, label %for.end37.i.if.end120_crit_edge

for.end37.i.if.end120_crit_edge:                  ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end120

land.lhs.true45.i:                                ; preds = %for.end37.i
  %mul41.i = mul i32 %best_div1.3.i, 40690
  %div42.i = udiv i32 %mul41.i, %best_mult.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5556, i32 %div42.i)
  %cmp46.i = icmp slt i32 %div42.i, 5556
  br i1 %cmp46.i, label %if.then48.i, label %land.lhs.true45.i.if.end120_crit_edge

land.lhs.true45.i.if.end120_crit_edge:            ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end120

if.then48.i:                                      ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv52.i = or i8 %conv40.i, 32
  %84 = ptrtoint ptr %clock_div.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv52.i, ptr %clock_div.i, align 1
  br label %if.end120

if.end120:                                        ; preds = %if.then48.i, %land.lhs.true45.i.if.end120_crit_edge, %for.end37.i.if.end120_crit_edge
  %call121 = call fastcc i32 @cyber2000fb_decode_crtc(ptr noundef nonnull %hw, ptr noundef %var)
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %for.inc.2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call121, %if.end120 ], [ -22, %for.inc.2.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %hw) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyber2000fb_set_par(ptr noundef %info) #0 align 64 {
entry:
  %hw = alloca %struct.par_info, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %var1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %hw) #15
  %0 = call ptr @memset(ptr %hw, i32 255, i32 40)
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %1 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %xres_virtual, align 4
  %width = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 6
  %3 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %width, align 4
  %ramdac = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 9
  %4 = ptrtoint ptr %ramdac to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 6, ptr %ramdac, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %5 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bits_per_pixel, align 4
  %7 = add i32 %6, -8
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 29)
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %8, label %do.body37 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb17
    i32 3, label %sw.bb26
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %co_pixfmt = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 3
  %10 = ptrtoint ptr %co_pixfmt to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %co_pixfmt, align 1
  %shr = lshr i32 %2, 3
  %pitch = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 7
  %11 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr, ptr %pitch, align 4
  br label %do.body44

sw.bb3:                                           ; preds = %entry
  %co_pixfmt4 = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 3
  %12 = ptrtoint ptr %co_pixfmt4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %co_pixfmt4, align 1
  %shr6 = lshr i32 %2, 2
  %pitch7 = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 7
  %13 = ptrtoint ptr %pitch7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr6, ptr %pitch7, align 4
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  %switch.tableidx = add i32 %15, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %16 = icmp ult i32 %switch.tableidx, 3
  br i1 %16, label %switch.lookup, label %do.body

do.body:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/cyber2000fb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 889, 0\0A.popsection", ""() #15, !srcloc !110
  unreachable

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %co_pixfmt18 = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 3
  %17 = ptrtoint ptr %co_pixfmt18 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %co_pixfmt18, align 1
  %mul = mul i32 %2, 3
  %18 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %width, align 4
  %shr21 = lshr i32 %mul, 3
  %pitch22 = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 7
  %19 = ptrtoint ptr %pitch22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr21, ptr %pitch22, align 4
  %20 = ptrtoint ptr %ramdac to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 23, ptr %ramdac, align 4
  br label %do.body44

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %co_pixfmt27 = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 3
  %21 = ptrtoint ptr %co_pixfmt27 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %co_pixfmt27, align 1
  %shr29 = lshr i32 %2, 1
  %pitch30 = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 7
  %22 = ptrtoint ptr %pitch30 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr29, ptr %pitch30, align 4
  %23 = ptrtoint ptr %ramdac to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 23, ptr %ramdac, align 4
  br label %do.body44

do.body37:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/cyber2000fb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 909, 0\0A.popsection", ""() #15, !srcloc !111
  unreachable

switch.lookup:                                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #17
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.idx.mult = mul i8 %switch.idx.cast, -4
  %switch.offset = add i8 %switch.idx.mult, 10
  br label %do.body44

do.body44:                                        ; preds = %switch.lookup, %sw.bb26, %sw.bb17, %sw.bb
  %.sink = phi i8 [ 1, %sw.bb ], [ 4, %sw.bb17 ], [ 3, %sw.bb26 ], [ %switch.offset, %switch.lookup ]
  %extseqmisc = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 2
  %24 = ptrtoint ptr %extseqmisc to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink, ptr %extseqmisc, align 2
  %pixclock.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %25 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pixclock.i, align 4
  %ref_ps1.i = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 7
  %27 = ptrtoint ptr %ref_ps1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ref_ps1.i, align 4
  %arrayidx.i = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 8, i32 0
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %div.i = udiv i32 %26, %30
  %31 = add i32 %div.i, -3847
  call void @__sanitizer_cov_trace_const_cmp4(i32 4849, i32 %31)
  %32 = icmp ult i32 %31, 4849
  br i1 %32, label %do.body44.for.cond7.preheader.i_crit_edge, label %for.inc.i

do.body44.for.cond7.preheader.i_crit_edge:        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond7.preheader.i

for.inc.i:                                        ; preds = %do.body44
  %arrayidx.1.i = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.1.i, align 4
  %div.1.i = udiv i32 %26, %34
  %35 = add i32 %div.1.i, -3847
  call void @__sanitizer_cov_trace_const_cmp4(i32 4849, i32 %35)
  %36 = icmp ult i32 %35, 4849
  br i1 %36, label %for.inc.i.for.cond7.preheader.i_crit_edge, label %for.inc.1.i

for.inc.i.for.cond7.preheader.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond7.preheader.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 8, i32 2
  %37 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.2.i, align 4
  %div.2.i = udiv i32 %26, %38
  %39 = add i32 %div.2.i, -3847
  call void @__sanitizer_cov_trace_const_cmp4(i32 4849, i32 %39)
  %40 = icmp ult i32 %39, 4849
  br i1 %40, label %for.inc.1.i.for.cond7.preheader.i_crit_edge, label %for.inc.2.i

for.inc.1.i.for.cond7.preheader.i_crit_edge:      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond7.preheader.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 8, i32 3
  %41 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.3.i, align 4
  %div.3.i = udiv i32 %26, %42
  %43 = add i32 %div.3.i, -3847
  call void @__sanitizer_cov_trace_const_cmp4(i32 4849, i32 %43)
  %44 = icmp ult i32 %43, 4849
  br i1 %44, label %for.inc.2.i.for.cond7.preheader.i_crit_edge, label %do.body47

for.inc.2.i.for.cond7.preheader.i_crit_edge:      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond7.preheader.i

for.cond7.preheader.i:                            ; preds = %for.inc.2.i.for.cond7.preheader.i_crit_edge, %for.inc.1.i.for.cond7.preheader.i_crit_edge, %for.inc.i.for.cond7.preheader.i_crit_edge, %do.body44.for.cond7.preheader.i_crit_edge
  %div2.0.lcssa.ph.i = phi i32 [ 0, %do.body44.for.cond7.preheader.i_crit_edge ], [ 64, %for.inc.i.for.cond7.preheader.i_crit_edge ], [ 128, %for.inc.1.i.for.cond7.preheader.i_crit_edge ], [ 192, %for.inc.2.i.for.cond7.preheader.i_crit_edge ]
  %pll_ps.2.ph.i = phi i32 [ %div.i, %do.body44.for.cond7.preheader.i_crit_edge ], [ %div.1.i, %for.inc.i.for.cond7.preheader.i_crit_edge ], [ %div.2.i, %for.inc.1.i.for.cond7.preheader.i_crit_edge ], [ %div.3.i, %for.inc.2.i.for.cond7.preheader.i_crit_edge ]
  %div1091.i = lshr i32 %pll_ps.2.ph.i, 1
  br label %for.body9.i

for.body9.i:                                      ; preds = %for.inc35.i.for.body9.i_crit_edge, %for.cond7.preheader.i
  %best_diff.0109.i = phi i32 [ 2147483647, %for.cond7.preheader.i ], [ %best_diff.2103.i, %for.inc35.i.for.body9.i_crit_edge ]
  %best_mult.0108.i = phi i32 [ 2, %for.cond7.preheader.i ], [ %best_mult.2102.i, %for.inc35.i.for.body9.i_crit_edge ]
  %best_div1.0107.i = phi i32 [ 32, %for.cond7.preheader.i ], [ %best_div1.2101.i, %for.inc35.i.for.body9.i_crit_edge ]
  %t_div1.0105.i = phi i32 [ 2, %for.cond7.preheader.i ], [ %add36.i, %for.inc35.i.for.body9.i_crit_edge ]
  %mul.i = mul i32 %t_div1.0105.i, %28
  %add.i = add i32 %mul.i, %div1091.i
  %div11.i = udiv i32 %add.i, %pll_ps.2.ph.i
  %45 = add i32 %div11.i, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %45)
  %46 = icmp ult i32 %45, -255
  br i1 %46, label %for.body9.i.for.inc35.i_crit_edge, label %cleanup29.i

for.body9.i.for.inc35.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc35.i

cleanup29.i:                                      ; preds = %for.body9.i
  %div1692.i = lshr i32 %div11.i, 1
  %add17.i = add i32 %div1692.i, %mul.i
  %div18.i = udiv i32 %add17.i, %div11.i
  %sub.i = sub i32 %pll_ps.2.ph.i, %div18.i
  %47 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %best_diff.0109.i)
  %cmp23.i = icmp slt i32 %47, %best_diff.0109.i
  %best_div1.1.i = select i1 %cmp23.i, i32 %t_div1.0105.i, i32 %best_div1.0107.i
  %best_mult.1.i = select i1 %cmp23.i, i32 %div11.i, i32 %best_mult.0108.i
  %48 = tail call i32 @llvm.smin.i32(i32 %47, i32 %best_diff.0109.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %pll_ps.2.ph.i, i32 %div18.i)
  %cmp26.i = icmp eq i32 %pll_ps.2.ph.i, %div18.i
  br i1 %cmp26.i, label %cleanup29.i.for.end37.i_crit_edge, label %cleanup29.i.for.inc35.i_crit_edge

cleanup29.i.for.inc35.i_crit_edge:                ; preds = %cleanup29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc35.i

cleanup29.i.for.end37.i_crit_edge:                ; preds = %cleanup29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end37.i

for.inc35.i:                                      ; preds = %cleanup29.i.for.inc35.i_crit_edge, %for.body9.i.for.inc35.i_crit_edge
  %best_diff.2103.i = phi i32 [ %48, %cleanup29.i.for.inc35.i_crit_edge ], [ %best_diff.0109.i, %for.body9.i.for.inc35.i_crit_edge ]
  %best_mult.2102.i = phi i32 [ %best_mult.1.i, %cleanup29.i.for.inc35.i_crit_edge ], [ %best_mult.0108.i, %for.body9.i.for.inc35.i_crit_edge ]
  %best_div1.2101.i = phi i32 [ %best_div1.1.i, %cleanup29.i.for.inc35.i_crit_edge ], [ %best_div1.0107.i, %for.body9.i.for.inc35.i_crit_edge ]
  %add36.i = add nuw nsw i32 %t_div1.0105.i, 1
  %exitcond.not.i = icmp eq i32 %add36.i, 32
  br i1 %exitcond.not.i, label %for.inc35.i.for.end37.i_crit_edge, label %for.inc35.i.for.body9.i_crit_edge

for.inc35.i.for.body9.i_crit_edge:                ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body9.i

for.inc35.i.for.end37.i_crit_edge:                ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end37.i

for.end37.i:                                      ; preds = %for.inc35.i.for.end37.i_crit_edge, %cleanup29.i.for.end37.i_crit_edge
  %best_div1.3.i = phi i32 [ %best_div1.1.i, %cleanup29.i.for.end37.i_crit_edge ], [ %best_div1.2101.i, %for.inc35.i.for.end37.i_crit_edge ]
  %best_mult.3.i = phi i32 [ %best_mult.1.i, %cleanup29.i.for.end37.i_crit_edge ], [ %best_mult.2102.i, %for.inc35.i.for.end37.i_crit_edge ]
  %49 = trunc i32 %best_mult.3.i to i8
  %conv.i = add i8 %49, -1
  %50 = ptrtoint ptr %hw to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i, ptr %hw, align 4
  %sub39.i = add i32 %best_div1.3.i, 255
  %or.i = or i32 %sub39.i, %div2.0.lcssa.ph.i
  %conv40.i = trunc i32 %or.i to i8
  %clock_div.i = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 1
  %51 = ptrtoint ptr %clock_div.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv40.i, ptr %clock_div.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 40690, i32 %28)
  %cmp43.i = icmp eq i32 %28, 40690
  br i1 %cmp43.i, label %land.lhs.true45.i, label %for.end37.i.do.body55_crit_edge

for.end37.i.do.body55_crit_edge:                  ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body55

land.lhs.true45.i:                                ; preds = %for.end37.i
  %mul41.i = mul i32 %best_div1.3.i, 40690
  %div42.i = udiv i32 %mul41.i, %best_mult.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5556, i32 %div42.i)
  %cmp46.i = icmp slt i32 %div42.i, 5556
  br i1 %cmp46.i, label %if.then48.i, label %land.lhs.true45.i.do.body55_crit_edge

land.lhs.true45.i.do.body55_crit_edge:            ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body55

if.then48.i:                                      ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv52.i = or i8 %conv40.i, 32
  %52 = ptrtoint ptr %clock_div.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv52.i, ptr %clock_div.i, align 1
  br label %do.body55

do.body47:                                        ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/cyber2000fb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 923, 0\0A.popsection", ""() #15, !srcloc !112
  unreachable

do.body55:                                        ; preds = %if.then48.i, %land.lhs.true45.i.do.body55_crit_edge, %for.end37.i.do.body55_crit_edge
  %call56 = call fastcc i32 @cyber2000fb_decode_crtc(ptr noundef nonnull %hw, ptr noundef %var1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57.not = icmp eq i32 %call56, 0
  br i1 %cmp57.not, label %do.end74, label %do.body66, !prof !113

do.body66:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/cyber2000fb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 924, 0\0A.popsection", ""() #15, !srcloc !114
  unreachable

do.end74:                                         ; preds = %do.body55
  %53 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %width, align 4
  %sub = add i32 %54, -1
  store i32 %sub, ptr %width, align 4
  %pitch76 = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 7
  %55 = ptrtoint ptr %pitch76 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pitch76, align 4
  %fetch = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 8
  %57 = ptrtoint ptr %fetch to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %fetch, align 4
  %mem_ctl2 = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 11
  %58 = ptrtoint ptr %mem_ctl2 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %mem_ctl2, align 1
  %60 = and i8 %59, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool78.not = icmp eq i8 %60, 0
  br i1 %tobool78.not, label %if.then79, label %do.end74.if.end81_crit_edge

do.end74.if.end81_crit_edge:                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81

if.then79:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #17
  %shl = shl i32 %56, 1
  %61 = ptrtoint ptr %fetch to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %shl, ptr %fetch, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %do.end74.if.end81_crit_edge
  %62 = ptrtoint ptr %fetch to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fetch, align 4
  %add = add i32 %63, 1
  store i32 %add, ptr %fetch, align 4
  %mul85 = mul i32 %6, %2
  %div153 = lshr i32 %mul85, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %64 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %div153, ptr %line_length, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %65 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %yres_virtual, align 4
  %mul90 = mul i32 %66, %div153
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %67 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul90, i32 %68)
  %cmp94 = icmp ugt i32 %mul90, %68
  br i1 %cmp94, label %do.body103, label %do.end111, !prof !115

do.body103:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/cyber2000fb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 942, 0\0A.popsection", ""() #15, !srcloc !116
  unreachable

do.end111:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp113 = icmp eq i32 %6, 8
  br i1 %cmp113, label %if.then115, label %if.else

if.then115:                                       ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #17
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %69 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 3, ptr %visual, align 8
  br label %if.end131

if.else:                                          ; preds = %do.end111
  %70 = ptrtoint ptr %ramdac to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ramdac, align 4
  %72 = and i8 %71, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool121.not = icmp eq i8 %72, 0
  %visual129 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  br i1 %tobool121.not, label %if.else126, label %if.then122

if.then122:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %73 = ptrtoint ptr %visual129 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2, ptr %visual129, align 8
  br label %if.end131

if.else126:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %74 = ptrtoint ptr %visual129 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 4, ptr %visual129, align 8
  br label %if.end131

if.end131:                                        ; preds = %if.else126, %if.then122, %if.then115
  %regs.i = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end131
  %i.0277.i = phi i32 [ 0, %if.end131 ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !117
  call void @arm_heavy_mb() #15
  %conv.i154 = trunc i32 %i.0277.i to i8
  %75 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %76, i32 968
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv.i154) #15, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !118
  call void @arm_heavy_mb() #15
  %77 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %78, i32 969
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 0) #15, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !119
  call void @arm_heavy_mb() #15
  %79 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %80, i32 969
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i, i8 0) #15, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !120
  call void @arm_heavy_mb() #15
  %81 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %82, i32 969
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i, i8 0) #15, !srcloc !99
  %inc.i = add nuw nsw i32 %i.0277.i, 1
  %exitcond.not.i155 = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i155, label %do.body16.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

do.body16.i:                                      ; preds = %do.body.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !121
  call void @arm_heavy_mb() #15
  %83 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %84, i32 962
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20.i, i8 -17) #15, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !122
  call void @arm_heavy_mb() #15
  %85 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %86, i32 980
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 4363) #15, !srcloc !103
  %87 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i, align 4
  %add.ptr.i159.i = getelementptr i8, ptr %88, i32 986
  %89 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i159.i) #15, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !124
  call void @arm_heavy_mb() #15
  %90 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %91, i32 960
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i, i8 17) #15, !srcloc !99
  %92 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %93, i32 961
  %94 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i.i) #15, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !126
  call void @arm_heavy_mb() #15
  %95 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %96, i32 960
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i.i, i8 0) #15, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !127
  call void @arm_heavy_mb() #15
  %97 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i, align 4
  %add.ptr.i161.i = getelementptr i8, ptr %98, i32 964
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i161.i, i16 1) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !127
  call void @arm_heavy_mb() #15
  %99 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs.i, align 4
  %add.ptr.i163.i = getelementptr i8, ptr %100, i32 964
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i163.i, i16 257) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !127
  call void @arm_heavy_mb() #15
  %101 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs.i, align 4
  %add.ptr.i165.i = getelementptr i8, ptr %102, i32 964
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i165.i, i16 527) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !127
  call void @arm_heavy_mb() #15
  %103 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs.i, align 4
  %add.ptr.i167.i = getelementptr i8, ptr %104, i32 964
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i167.i, i16 768) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !127
  call void @arm_heavy_mb() #15
  %105 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs.i, align 4
  %add.ptr.i169.i = getelementptr i8, ptr %106, i32 964
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i169.i, i16 1038) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !127
  call void @arm_heavy_mb() #15
  %107 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i, align 4
  %add.ptr.i171.i = getelementptr i8, ptr %108, i32 964
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i171.i, i16 3) #15, !srcloc !103
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.body24.i.for.body24.i_crit_edge, %do.body16.i
  %i.1278.i = phi i32 [ 0, %do.body16.i ], [ %inc29.i, %for.body24.i.for.body24.i_crit_edge ]
  %arrayidx.i156 = getelementptr [19 x i8], ptr @crtc_idx, i32 0, i32 %i.1278.i
  %109 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.i156, align 1
  %conv25.i = zext i8 %110 to i16
  %arrayidx26.i = getelementptr %struct.par_info, ptr %hw, i32 0, i32 5, i32 %i.1278.i
  %111 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %112 to i16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !122
  call void @arm_heavy_mb() #15
  %shl.i.i = shl nuw i16 %conv27.i, 8
  %or.i.i = or i16 %shl.i.i, %conv25.i
  %113 = call i16 @llvm.bswap.i16(i16 %or.i.i) #15
  %114 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs.i, align 4
  %add.ptr.i173.i = getelementptr i8, ptr %115, i32 980
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i173.i, i16 %113) #15, !srcloc !103
  %inc29.i = add nuw nsw i32 %i.1278.i, 1
  %exitcond281.not.i = icmp eq i32 %inc29.i, 19
  br i1 %exitcond281.not.i, label %for.body34.preheader.i, label %for.body24.i.for.body24.i_crit_edge

for.body24.i.for.body24.i_crit_edge:              ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body24.i

for.body34.preheader.i:                           ; preds = %for.body24.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !122
  call void @arm_heavy_mb() #15
  %116 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs.i, align 4
  %add.ptr.i177.i = getelementptr i8, ptr %117, i32 980
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i177.i, i16 2560) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !122
  call void @arm_heavy_mb() #15
  %118 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i, align 4
  %add.ptr.i177.1.i = getelementptr i8, ptr %119, i32 980
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i177.1.i, i16 2816) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !122
  call void @arm_heavy_mb() #15
  %120 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs.i, align 4
  %add.ptr.i177.2.i = getelementptr i8, ptr %121, i32 980
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i177.2.i, i16 3072) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !122
  call void @arm_heavy_mb() #15
  %122 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i, align 4
  %add.ptr.i177.3.i = getelementptr i8, ptr %123, i32 980
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i177.3.i, i16 3328) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !122
  call void @arm_heavy_mb() #15
  %124 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs.i, align 4
  %add.ptr.i177.4.i = getelementptr i8, ptr %125, i32 980
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i177.4.i, i16 3584) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !122
  call void @arm_heavy_mb() #15
  %126 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs.i, align 4
  %add.ptr.i177.5.i = getelementptr i8, ptr %127, i32 980
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i177.5.i, i16 3840) #15, !srcloc !103
  %crtc_ofl.i = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 4
  %128 = ptrtoint ptr %crtc_ofl.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %crtc_ofl.i, align 4
  %conv38.i = zext i8 %129 to i16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %shl.i178.i = shl nuw i16 %conv38.i, 8
  %or.i179.i = or i16 %shl.i178.i, 17
  %130 = call i16 @llvm.bswap.i16(i16 %or.i179.i) #15
  %131 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs.i, align 4
  %add.ptr.i182.i = getelementptr i8, ptr %132, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i182.i, i16 %130) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %133 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs.i, align 4
  %add.ptr.i184.i = getelementptr i8, ptr %134, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i184.i, i16 0) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %135 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regs.i, align 4
  %add.ptr.i186.i = getelementptr i8, ptr %136, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i186.i, i16 256) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %137 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regs.i, align 4
  %add.ptr.i188.i = getelementptr i8, ptr %138, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i188.i, i16 512) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %139 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regs.i, align 4
  %add.ptr.i190.i = getelementptr i8, ptr %140, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i190.i, i16 768) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %141 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs.i, align 4
  %add.ptr.i192.i = getelementptr i8, ptr %142, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i192.i, i16 1024) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %143 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regs.i, align 4
  %add.ptr.i194.i = getelementptr i8, ptr %144, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i194.i, i16 1376) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %145 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs.i, align 4
  %add.ptr.i196.i = getelementptr i8, ptr %146, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i196.i, i16 1541) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %147 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regs.i, align 4
  %add.ptr.i198.i = getelementptr i8, ptr %148, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i198.i, i16 1807) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %149 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regs.i, align 4
  %add.ptr.i200.i = getelementptr i8, ptr %150, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i200.i, i16 2303) #15, !srcloc !103
  br label %for.body42.i

for.body42.i:                                     ; preds = %for.body42.i.for.body42.i_crit_edge, %for.body34.preheader.i
  %i.3280.i = phi i32 [ 0, %for.body34.preheader.i ], [ %inc44.i, %for.body42.i.for.body42.i_crit_edge ]
  %151 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs.i, align 4
  %add.ptr.i202.i = getelementptr i8, ptr %152, i32 986
  %153 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i202.i) #15, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !124
  call void @arm_heavy_mb() #15
  %conv.i203.i = trunc i32 %i.3280.i to i8
  %154 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i204.i = getelementptr i8, ptr %155, i32 960
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i204.i, i8 %conv.i203.i) #15, !srcloc !99
  %156 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs.i, align 4
  %add.ptr7.i205.i = getelementptr i8, ptr %157, i32 961
  %158 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i205.i) #15, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !126
  call void @arm_heavy_mb() #15
  %159 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regs.i, align 4
  %add.ptr15.i206.i = getelementptr i8, ptr %160, i32 960
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i206.i, i8 %conv.i203.i) #15, !srcloc !99
  %inc44.i = add nuw nsw i32 %i.3280.i, 1
  %exitcond283.not.i = icmp eq i32 %inc44.i, 16
  br i1 %exitcond283.not.i, label %cyber2000fb_set_timing.exit, label %for.body42.i.for.body42.i_crit_edge

for.body42.i.for.body42.i_crit_edge:              ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body42.i

cyber2000fb_set_timing.exit:                      ; preds = %for.body42.i
  %161 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regs.i, align 4
  %add.ptr.i208.i = getelementptr i8, ptr %162, i32 986
  %163 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i208.i) #15, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !124
  call void @arm_heavy_mb() #15
  %164 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i209.i = getelementptr i8, ptr %165, i32 960
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i209.i, i8 16) #15, !srcloc !99
  %166 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regs.i, align 4
  %add.ptr7.i210.i = getelementptr i8, ptr %167, i32 961
  %168 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i210.i) #15, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !126
  call void @arm_heavy_mb() #15
  %169 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regs.i, align 4
  %add.ptr15.i211.i = getelementptr i8, ptr %170, i32 960
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i211.i, i8 1) #15, !srcloc !99
  %171 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regs.i, align 4
  %add.ptr.i213.i = getelementptr i8, ptr %172, i32 986
  %173 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i213.i) #15, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !124
  call void @arm_heavy_mb() #15
  %174 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i214.i = getelementptr i8, ptr %175, i32 960
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i214.i, i8 17) #15, !srcloc !99
  %176 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regs.i, align 4
  %add.ptr7.i215.i = getelementptr i8, ptr %177, i32 961
  %178 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i215.i) #15, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !126
  call void @arm_heavy_mb() #15
  %179 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %regs.i, align 4
  %add.ptr15.i216.i = getelementptr i8, ptr %180, i32 960
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i216.i, i8 0) #15, !srcloc !99
  %181 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regs.i, align 4
  %add.ptr.i218.i = getelementptr i8, ptr %182, i32 986
  %183 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i218.i) #15, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !124
  call void @arm_heavy_mb() #15
  %184 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i219.i = getelementptr i8, ptr %185, i32 960
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i219.i, i8 18) #15, !srcloc !99
  %186 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regs.i, align 4
  %add.ptr7.i220.i = getelementptr i8, ptr %187, i32 961
  %188 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i220.i) #15, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !126
  call void @arm_heavy_mb() #15
  %189 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %regs.i, align 4
  %add.ptr15.i221.i = getelementptr i8, ptr %190, i32 960
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i221.i, i8 15) #15, !srcloc !99
  %191 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %regs.i, align 4
  %add.ptr.i223.i = getelementptr i8, ptr %192, i32 986
  %193 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i223.i) #15, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !124
  call void @arm_heavy_mb() #15
  %194 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i224.i = getelementptr i8, ptr %195, i32 960
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i224.i, i8 19) #15, !srcloc !99
  %196 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regs.i, align 4
  %add.ptr7.i225.i = getelementptr i8, ptr %197, i32 961
  %198 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i225.i) #15, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !126
  call void @arm_heavy_mb() #15
  %199 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %regs.i, align 4
  %add.ptr15.i226.i = getelementptr i8, ptr %200, i32 960
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i226.i, i8 0) #15, !srcloc !99
  %201 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %regs.i, align 4
  %add.ptr.i228.i = getelementptr i8, ptr %202, i32 986
  %203 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i228.i) #15, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !124
  call void @arm_heavy_mb() #15
  %204 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i229.i = getelementptr i8, ptr %205, i32 960
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i229.i, i8 20) #15, !srcloc !99
  %206 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %regs.i, align 4
  %add.ptr7.i230.i = getelementptr i8, ptr %207, i32 961
  %208 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i230.i) #15, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !126
  call void @arm_heavy_mb() #15
  %209 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %regs.i, align 4
  %add.ptr15.i231.i = getelementptr i8, ptr %210, i32 960
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i231.i, i8 0) #15, !srcloc !99
  %reg_b0_lock.i = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %reg_b0_lock.i) #15
  %211 = ptrtoint ptr %hw to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %hw, align 4
  %conv46.i = zext i8 %212 to i16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %shl.i232.i = shl nuw i16 %conv46.i, 8
  %or.i233.i = or i16 %shl.i232.i, 176
  %213 = call i16 @llvm.bswap.i16(i16 %or.i233.i) #15
  %214 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %regs.i, align 4
  %add.ptr.i236.i = getelementptr i8, ptr %215, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i236.i, i16 %213) #15, !srcloc !103
  %216 = ptrtoint ptr %clock_div.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %clock_div.i, align 1
  %conv47.i = zext i8 %217 to i16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %shl.i237.i = shl nuw i16 %conv47.i, 8
  %or.i238.i = or i16 %shl.i237.i, 177
  %218 = call i16 @llvm.bswap.i16(i16 %or.i238.i) #15
  %219 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %regs.i, align 4
  %add.ptr.i241.i = getelementptr i8, ptr %220, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i241.i, i16 %218) #15, !srcloc !103
  %mclk_mult.i = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 12
  %221 = ptrtoint ptr %mclk_mult.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %mclk_mult.i, align 2
  %conv48.i = zext i8 %222 to i16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %shl.i242.i = shl nuw i16 %conv48.i, 8
  %or.i243.i = or i16 %shl.i242.i, 178
  %223 = call i16 @llvm.bswap.i16(i16 %or.i243.i) #15
  %224 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regs.i, align 4
  %add.ptr.i246.i = getelementptr i8, ptr %225, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i246.i, i16 %223) #15, !srcloc !103
  %mclk_div.i = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 13
  %226 = ptrtoint ptr %mclk_div.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %mclk_div.i, align 1
  %conv49.i = zext i8 %227 to i16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %shl.i247.i = shl nuw i16 %conv49.i, 8
  %or.i248.i = or i16 %shl.i247.i, 179
  %228 = call i16 @llvm.bswap.i16(i16 %or.i248.i) #15
  %229 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %regs.i, align 4
  %add.ptr.i251.i = getelementptr i8, ptr %230, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i251.i, i16 %228) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %231 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %regs.i, align 4
  %add.ptr.i253.i = getelementptr i8, ptr %232, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i253.i, i16 -28671) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %233 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %regs.i, align 4
  %add.ptr.i255.i = getelementptr i8, ptr %234, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i255.i, i16 -18048) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %235 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %regs.i, align 4
  %add.ptr.i257.i = getelementptr i8, ptr %236, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i257.i, i16 -18176) #15, !srcloc !103
  call void @_raw_spin_unlock(ptr noundef %reg_b0_lock.i) #15
  %237 = ptrtoint ptr %ramdac to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %ramdac, align 4
  %ramdac_ctrl.i = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 14
  %239 = ptrtoint ptr %ramdac_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %238, ptr %ramdac_ctrl.i, align 4
  %ramdac_powerdown.i.i = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 15
  %240 = ptrtoint ptr %ramdac_powerdown.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %ramdac_powerdown.i.i, align 1
  %or40.i.i = or i8 %241, %238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !128
  call void @arm_heavy_mb() #15
  %242 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %regs.i, align 4
  %add.ptr.i259.i = getelementptr i8, ptr %243, i32 974
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i259.i, i8 86) #15, !srcloc !99
  %244 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i260.i = getelementptr i8, ptr %245, i32 975
  %246 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i260.i) #15, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !130
  call void @arm_heavy_mb() #15
  %247 = or i8 %246, 4
  %248 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %regs.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %249, i32 975
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i.i, i8 %247) #15, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  call void @arm_heavy_mb() #15
  %250 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %regs.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %251, i32 966
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i.i, i8 %or40.i.i) #15, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !132
  call void @arm_heavy_mb() #15
  %252 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %regs.i, align 4
  %add.ptr24.i.i = getelementptr i8, ptr %253, i32 975
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i.i, i8 %246) #15, !srcloc !99
  %254 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %regs.i, align 4
  %add.ptr28.i.i = getelementptr i8, ptr %255, i32 975
  %256 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28.i.i) #15, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  call void @arm_heavy_mb() #15
  %257 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %regs.i, align 4
  %add.ptr55.i = getelementptr i8, ptr %258, i32 960
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr55.i, i8 32) #15, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !135
  call void @arm_heavy_mb() #15
  %259 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %regs.i, align 4
  %add.ptr60.i = getelementptr i8, ptr %260, i32 966
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr60.i, i8 -1) #15, !srcloc !99
  %261 = ptrtoint ptr %fetch to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %fetch, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %.tr.i = trunc i32 %262 to i16
  %263 = shl i16 %.tr.i, 8
  %conv.i263.i = or i16 %263, 20
  %264 = call i16 @llvm.bswap.i16(i16 %conv.i263.i) #15
  %265 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %regs.i, align 4
  %add.ptr.i265.i = getelementptr i8, ptr %266, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i265.i, i16 %264) #15, !srcloc !103
  %267 = ptrtoint ptr %fetch to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %fetch, align 4
  %269 = ptrtoint ptr %pitch76 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %pitch76, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %271 = shl i32 %270, 4
  %or276.i = and i32 %271, 12288
  %.mask.i = and i32 %268, 768
  %shl.i266.i = or i32 %or276.i, %.mask.i
  %272 = trunc i32 %shl.i266.i to i16
  %conv.i268.i = or i16 %272, 21
  %273 = call i16 @llvm.bswap.i16(i16 %conv.i268.i) #15
  %274 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %regs.i, align 4
  %add.ptr.i270.i = getelementptr i8, ptr %275, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i270.i, i16 %273) #15, !srcloc !103
  %extseqmisc.i = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 2
  %276 = ptrtoint ptr %extseqmisc.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %extseqmisc.i, align 2
  %conv64.i = zext i8 %277 to i16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %shl.i271.i = shl nuw i16 %conv64.i, 8
  %or.i272.i = or i16 %shl.i271.i, 119
  %278 = call i16 @llvm.bswap.i16(i16 %or.i272.i) #15
  %279 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %regs.i, align 4
  %add.ptr.i275.i = getelementptr i8, ptr %280, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i275.i, i16 %278) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  call void @arm_heavy_mb() #15
  %281 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %width, align 4
  %conv68.i = trunc i32 %282 to i16
  %283 = call i16 @llvm.bswap.i16(i16 %conv68.i) #15
  %284 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %regs.i, align 4
  %add.ptr70.i = getelementptr i8, ptr %285, i32 782360
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr70.i, i16 %283) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !137
  call void @arm_heavy_mb() #15
  %286 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %width, align 4
  %conv75.i = trunc i32 %287 to i16
  %288 = call i16 @llvm.bswap.i16(i16 %conv75.i) #15
  %289 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %regs.i, align 4
  %add.ptr77.i = getelementptr i8, ptr %290, i32 782872
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr77.i, i16 %288) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !138
  call void @arm_heavy_mb() #15
  %co_pixfmt.i = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 3
  %291 = ptrtoint ptr %co_pixfmt.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %co_pixfmt.i, align 1
  %293 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %regs.i, align 4
  %add.ptr82.i = getelementptr i8, ptr %294, i32 782364
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr82.i, i8 %292) #15, !srcloc !99
  %yoffset.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %295 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %yoffset.i, align 4
  %297 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %xres_virtual, align 4
  %mul.i158 = mul i32 %298, %296
  %xoffset.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %299 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %xoffset.i, align 4
  %add.i159 = add i32 %mul.i158, %300
  %301 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %bits_per_pixel, align 4
  %mul1.i = mul i32 %add.i159, %302
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %mul1.i)
  %cmp.i = icmp ugt i32 %mul1.i, 33554431
  br i1 %cmp.i, label %cyber2000fb_set_timing.exit.cyber2000fb_update_start.exit_crit_edge, label %if.end.i

cyber2000fb_set_timing.exit.cyber2000fb_update_start.exit_crit_edge: ; preds = %cyber2000fb_set_timing.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cyber2000fb_update_start.exit

if.end.i:                                         ; preds = %cyber2000fb_set_timing.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  call void @arm_heavy_mb() #15
  %303 = lshr i32 %mul1.i, 13
  %304 = trunc i32 %303 to i16
  %305 = and i16 %304, -4352
  %conv.i.i = or i16 %305, 4112
  %306 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #15
  %307 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i160 = getelementptr i8, ptr %308, i32 974
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i160, i16 %306) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !122
  call void @arm_heavy_mb() #15
  %309 = lshr i32 %mul1.i, 5
  %310 = trunc i32 %309 to i16
  %311 = and i16 %310, -256
  %conv.i16.i = or i16 %311, 12
  %312 = call i16 @llvm.bswap.i16(i16 %conv.i16.i) #15
  %313 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %regs.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %314, i32 980
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i18.i, i16 %312) #15, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !122
  call void @arm_heavy_mb() #15
  %mul1.tr.i = trunc i32 %mul1.i to i16
  %315 = shl i16 %mul1.tr.i, 3
  %316 = and i16 %315, -256
  %conv.i21.i = or i16 %316, 13
  %317 = call i16 @llvm.bswap.i16(i16 %conv.i21.i) #15
  %318 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %regs.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %319, i32 980
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i23.i, i16 %317) #15, !srcloc !103
  br label %cyber2000fb_update_start.exit

cyber2000fb_update_start.exit:                    ; preds = %if.end.i, %cyber2000fb_set_timing.exit.cyber2000fb_update_start.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %hw) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyber2000fb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %visual, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb34
    i32 2, label %sw.bb192
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp = icmp ugt i32 %regno, 255
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %shr = lshr i32 %red, 8
  %shr3 = lshr i32 %green, 8
  %shr4 = lshr i32 %blue, 8
  %conv = trunc i32 %shr to i8
  %arrayidx = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 9, i32 %regno
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %arrayidx, align 1
  %conv6 = trunc i32 %shr3 to i8
  %green9 = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 9, i32 %regno, i32 1
  %4 = ptrtoint ptr %green9 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv6, ptr %green9, align 1
  %conv10 = trunc i32 %shr4 to i8
  %blue13 = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 9, i32 %regno, i32 2
  %5 = ptrtoint ptr %blue13 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv10, ptr %blue13, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !139
  tail call void @arm_heavy_mb() #15
  %conv14 = trunc i32 %regno to i8
  %regs = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 3
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr15 = getelementptr i8, ptr %7, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 %conv14) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !140
  tail call void @arm_heavy_mb() #15
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr21 = getelementptr i8, ptr %9, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 %conv) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !141
  tail call void @arm_heavy_mb() #15
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr27 = getelementptr i8, ptr %11, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27, i8 %conv6) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !142
  tail call void @arm_heavy_mb() #15
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr33 = getelementptr i8, ptr %13, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr33, i8 %conv10) #15, !srcloc !99
  br label %cleanup

sw.bb34:                                          ; preds = %entry
  %shr35 = lshr i32 %red, 8
  %shr36 = lshr i32 %green, 8
  %shr37 = lshr i32 %blue, 8
  %green38 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp39 = icmp eq i32 %15, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %regno)
  %cmp41 = icmp ult i32 %regno, 64
  %or.cond = and i1 %cmp41, %cmp39
  br i1 %or.cond, label %if.then43, label %sw.bb34.if.end84_crit_edge

sw.bb34.if.end84_crit_edge:                       ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

if.then43:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #17
  %conv44 = trunc i32 %shr36 to i8
  %shl = shl nuw nsw i32 %regno, 2
  %green47 = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 9, i32 %shl, i32 1
  %16 = ptrtoint ptr %green47 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv44, ptr %green47, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !143
  tail call void @arm_heavy_mb() #15
  %conv52 = trunc i32 %shl to i8
  %regs53 = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 3
  %17 = ptrtoint ptr %regs53 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs53, align 4
  %add.ptr54 = getelementptr i8, ptr %18, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr54, i8 %conv52) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !144
  tail call void @arm_heavy_mb() #15
  %shr59 = lshr i32 %regno, 1
  %arrayidx60 = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 9, i32 %shr59
  %19 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx60, align 1
  %21 = ptrtoint ptr %regs53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs53, align 4
  %add.ptr63 = getelementptr i8, ptr %22, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63, i8 %20) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !145
  tail call void @arm_heavy_mb() #15
  %23 = ptrtoint ptr %regs53 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs53, align 4
  %add.ptr69 = getelementptr i8, ptr %24, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr69, i8 %conv44) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !146
  tail call void @arm_heavy_mb() #15
  %blue76 = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 9, i32 %shr59, i32 2
  %25 = ptrtoint ptr %blue76 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %blue76, align 1
  %27 = ptrtoint ptr %regs53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs53, align 4
  %add.ptr78 = getelementptr i8, ptr %28, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr78, i8 %26) #15, !srcloc !99
  %shl80 = shl nuw nsw i32 %regno, 3
  %green82 = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 9, i32 %shl80, i32 1
  %29 = ptrtoint ptr %green82 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %green82, align 1
  %conv83 = zext i8 %30 to i32
  br label %if.end84

if.end84:                                         ; preds = %if.then43, %sw.bb34.if.end84_crit_edge
  %green.addr.0 = phi i32 [ %conv83, %if.then43 ], [ %shr36, %sw.bb34.if.end84_crit_edge ]
  %ret.0 = phi i32 [ 0, %if.then43 ], [ 1, %sw.bb34.if.end84_crit_edge ]
  %31 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp87 = icmp ugt i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %regno)
  %cmp90 = icmp ult i32 %regno, 32
  %or.cond306 = and i1 %cmp90, %cmp87
  br i1 %or.cond306, label %if.then92, label %if.end84.if.end133_crit_edge

if.end84.if.end133_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end133

if.then92:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  %conv93 = trunc i32 %shr35 to i8
  %shl95 = shl nuw nsw i32 %regno, 3
  %arrayidx96 = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 9, i32 %shl95
  %33 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv93, ptr %arrayidx96, align 1
  %conv98 = trunc i32 %green.addr.0 to i8
  %green102 = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 9, i32 %shl95, i32 1
  %34 = ptrtoint ptr %green102 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv98, ptr %green102, align 1
  %conv103 = trunc i32 %shr37 to i8
  %blue107 = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 9, i32 %shl95, i32 2
  %35 = ptrtoint ptr %blue107 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv103, ptr %blue107, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !147
  tail call void @arm_heavy_mb() #15
  %conv112 = trunc i32 %shl95 to i8
  %regs113 = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 3
  %36 = ptrtoint ptr %regs113 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs113, align 4
  %add.ptr114 = getelementptr i8, ptr %37, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr114, i8 %conv112) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !148
  tail call void @arm_heavy_mb() #15
  %38 = ptrtoint ptr %regs113 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs113, align 4
  %add.ptr120 = getelementptr i8, ptr %39, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr120, i8 %conv93) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !149
  tail call void @arm_heavy_mb() #15
  %40 = ptrtoint ptr %regs113 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs113, align 4
  %add.ptr126 = getelementptr i8, ptr %41, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr126, i8 %conv98) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !150
  tail call void @arm_heavy_mb() #15
  %42 = ptrtoint ptr %regs113 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs113, align 4
  %add.ptr132 = getelementptr i8, ptr %43, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr132, i8 %conv103) #15, !srcloc !99
  br label %if.end133

if.end133:                                        ; preds = %if.then92, %if.end84.if.end133_crit_edge
  %ret.1 = phi i32 [ 0, %if.then92 ], [ %ret.0, %if.end84.if.end133_crit_edge ]
  %44 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp136 = icmp eq i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp139 = icmp ult i32 %regno, 16
  %or.cond307 = and i1 %cmp139, %cmp136
  br i1 %or.cond307, label %if.then141, label %if.end133.if.end182_crit_edge

if.end133.if.end182_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end182

if.then141:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #17
  %conv142 = trunc i32 %shr35 to i8
  %shl144 = shl nuw nsw i32 %regno, 4
  %arrayidx145 = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 9, i32 %shl144
  %46 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv142, ptr %arrayidx145, align 1
  %conv147 = trunc i32 %green.addr.0 to i8
  %green151 = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 9, i32 %shl144, i32 1
  %47 = ptrtoint ptr %green151 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv147, ptr %green151, align 1
  %conv152 = trunc i32 %shr37 to i8
  %blue156 = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 9, i32 %shl144, i32 2
  %48 = ptrtoint ptr %blue156 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv152, ptr %blue156, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !151
  tail call void @arm_heavy_mb() #15
  %conv161 = trunc i32 %shl144 to i8
  %regs162 = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 3
  %49 = ptrtoint ptr %regs162 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs162, align 4
  %add.ptr163 = getelementptr i8, ptr %50, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr163, i8 %conv161) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !152
  tail call void @arm_heavy_mb() #15
  %51 = ptrtoint ptr %regs162 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs162, align 4
  %add.ptr169 = getelementptr i8, ptr %52, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr169, i8 %conv142) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !153
  tail call void @arm_heavy_mb() #15
  %53 = ptrtoint ptr %regs162 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs162, align 4
  %add.ptr175 = getelementptr i8, ptr %54, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr175, i8 %conv147) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !154
  tail call void @arm_heavy_mb() #15
  %55 = ptrtoint ptr %regs162 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs162, align 4
  %add.ptr181 = getelementptr i8, ptr %56, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr181, i8 %conv152) #15, !srcloc !99
  br label %if.end182

if.end182:                                        ; preds = %if.then141, %if.end133.if.end182_crit_edge
  %ret.2 = phi i32 [ 0, %if.then141 ], [ %ret.1, %if.end133.if.end182_crit_edge ]
  %red183 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %57 = ptrtoint ptr %red183 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %red183, align 4
  %shl184 = shl i32 %regno, %58
  %59 = ptrtoint ptr %green38 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %green38, align 4
  %shl187 = shl i32 %regno, %60
  %or = or i32 %shl187, %shl184
  br label %sw.epilog

sw.bb192:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %xor = xor i32 %transp, 65535
  %transp193 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %61 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %length.i, align 4
  %notmask.i = shl nsw i32 -1, %62
  %sub.i = xor i32 %notmask.i, -1
  %sub2.i = sub i32 16, %62
  %shr.i = lshr i32 %xor, %sub2.i
  %and.i = and i32 %shr.i, %sub.i
  %63 = ptrtoint ptr %transp193 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %transp193, align 4
  %shl3.i = shl i32 %and.i, %64
  %red194 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %length.i308 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %65 = ptrtoint ptr %length.i308 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %length.i308, align 4
  %notmask.i309 = shl nsw i32 -1, %66
  %sub.i310 = xor i32 %notmask.i309, -1
  %sub2.i311 = sub i32 16, %66
  %shr.i312 = lshr i32 %red, %sub2.i311
  %and.i313 = and i32 %shr.i312, %sub.i310
  %67 = ptrtoint ptr %red194 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %red194, align 4
  %shl3.i314 = shl i32 %and.i313, %68
  %or196 = or i32 %shl3.i314, %shl3.i
  %green197 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length.i315 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %69 = ptrtoint ptr %length.i315 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %length.i315, align 4
  %notmask.i316 = shl nsw i32 -1, %70
  %sub.i317 = xor i32 %notmask.i316, -1
  %sub2.i318 = sub i32 16, %70
  %shr.i319 = lshr i32 %green, %sub2.i318
  %and.i320 = and i32 %shr.i319, %sub.i317
  %71 = ptrtoint ptr %green197 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %green197, align 4
  %shl3.i321 = shl i32 %and.i320, %72
  %or199 = or i32 %or196, %shl3.i321
  %length.i322 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %73 = ptrtoint ptr %length.i322 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %length.i322, align 4
  %notmask.i323 = shl nsw i32 -1, %74
  %sub.i324 = xor i32 %notmask.i323, -1
  %sub2.i325 = sub i32 16, %74
  %shr.i326 = lshr i32 %blue, %sub2.i325
  %and.i327 = and i32 %shr.i326, %sub.i324
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb192, %if.end182
  %and.i327.sink = phi i32 [ %and.i327, %sw.bb192 ], [ %regno, %if.end182 ]
  %or199.sink = phi i32 [ %or199, %sw.bb192 ], [ %or, %if.end182 ]
  %ret.3 = phi i32 [ 0, %sw.bb192 ], [ %ret.2, %if.end182 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp203 = icmp ult i32 %regno, 16
  br i1 %cmp203, label %if.then205, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then205:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %blue200.sink = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %75 = ptrtoint ptr %blue200.sink to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %blue200.sink, align 4
  %shl3.i328 = shl i32 %and.i327.sink, %76
  %or202 = or i32 %or199.sink, %shl3.i328
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %77 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pseudo_palette, align 4
  %arrayidx207 = getelementptr i32, ptr %78, i32 %regno
  %79 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or202, ptr %arrayidx207, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then205, %sw.epilog.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry.cleanup_crit_edge ], [ 1, %sw.bb.cleanup_crit_edge ], [ %ret.3, %if.then205 ], [ %ret.3, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyber2000fb_blank(i32 noundef %blank, ptr nocapture noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %blank, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.cyber2000fb_blank, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %1)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %sync.0 = phi i16 [ 22, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  tail call void @arm_heavy_mb() #15
  %2 = tail call i16 @llvm.bswap.i16(i16 %sync.0) #15
  %regs.i = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %2) #15, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %blank)
  %cmp = icmp slt i32 %blank, 2
  br i1 %cmp, label %if.end, label %sw.epilog.do.body.preheader_crit_edge

sw.epilog.do.body.preheader_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.preheader

if.end:                                           ; preds = %sw.epilog
  %ramdac_powerdown = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 15
  %5 = ptrtoint ptr %ramdac_powerdown to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ramdac_powerdown, align 1
  %7 = and i8 %6, -82
  store i8 %7, ptr %ramdac_powerdown, align 1
  %ramdac_ctrl.i = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 14
  %8 = ptrtoint ptr %ramdac_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ramdac_ctrl.i, align 4
  %or40.i = or i8 %9, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !128
  tail call void @arm_heavy_mb() #15
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %11, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i92, i8 86) #15, !srcloc !99
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %13, i32 975
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i) #15, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !130
  tail call void @arm_heavy_mb() #15
  %15 = or i8 %14, 4
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %17, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 %15) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  tail call void @arm_heavy_mb() #15
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %19, i32 966
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i, i8 %or40.i) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !132
  tail call void @arm_heavy_mb() #15
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %21, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i, i8 %14) #15, !srcloc !99
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %23, i32 975
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28.i) #15, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank)
  %tobool.not = icmp eq i32 %blank, 0
  br i1 %tobool.not, label %if.end.do.body29_crit_edge, label %if.end.do.body.preheader_crit_edge

if.end.do.body.preheader_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.preheader

if.end.do.body29_crit_edge:                       ; preds = %if.end
  br label %do.body29

do.body.preheader:                                ; preds = %if.end.do.body.preheader_crit_edge, %sw.epilog.do.body.preheader_crit_edge
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %i.0104 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %do.body.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !155
  tail call void @arm_heavy_mb() #15
  %conv8 = trunc i32 %i.0104 to i8
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr9 = getelementptr i8, ptr %26, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 %conv8) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !156
  tail call void @arm_heavy_mb() #15
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr14 = getelementptr i8, ptr %28, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 0) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !157
  tail call void @arm_heavy_mb() #15
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr19 = getelementptr i8, ptr %30, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19, i8 0) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !158
  tail call void @arm_heavy_mb() #15
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr24 = getelementptr i8, ptr %32, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24, i8 0) #15, !srcloc !99
  %inc = add nuw nsw i32 %i.0104, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %do.body.if.end57_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body.if.end57_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

do.body29:                                        ; preds = %do.body29.do.body29_crit_edge, %if.end.do.body29_crit_edge
  %i.1105 = phi i32 [ %inc55, %do.body29.do.body29_crit_edge ], [ 0, %if.end.do.body29_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !159
  tail call void @arm_heavy_mb() #15
  %conv32 = trunc i32 %i.1105 to i8
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr34 = getelementptr i8, ptr %34, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34, i8 %conv32) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !160
  tail call void @arm_heavy_mb() #15
  %arrayidx = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 9, i32 %i.1105
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr39 = getelementptr i8, ptr %38, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr39, i8 %36) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !161
  tail call void @arm_heavy_mb() #15
  %green = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 9, i32 %i.1105, i32 1
  %39 = ptrtoint ptr %green to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %green, align 1
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr46 = getelementptr i8, ptr %42, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr46, i8 %40) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !162
  tail call void @arm_heavy_mb() #15
  %blue = getelementptr %struct.cfb_info, ptr %info, i32 0, i32 9, i32 %i.1105, i32 2
  %43 = ptrtoint ptr %blue to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %blue, align 1
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 4
  %add.ptr53 = getelementptr i8, ptr %46, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr53, i8 %44) #15, !srcloc !99
  %inc55 = add nuw nsw i32 %i.1105, 1
  %exitcond107.not = icmp eq i32 %inc55, 256
  br i1 %exitcond107.not, label %do.body29.if.end57_crit_edge, label %do.body29.do.body29_crit_edge

do.body29.do.body29_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body29

do.body29.if.end57_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.end57:                                         ; preds = %do.body29.if.end57_crit_edge, %do.body.if.end57_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %blank)
  %cmp58 = icmp sgt i32 %blank, 1
  br i1 %cmp58, label %if.then60, label %if.end57.if.end64_crit_edge

if.end57.if.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  %ramdac_powerdown61 = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 15
  %47 = ptrtoint ptr %ramdac_powerdown61 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ramdac_powerdown61, align 1
  %49 = or i8 %48, 81
  store i8 %49, ptr %ramdac_powerdown61, align 1
  %ramdac_ctrl.i93 = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 14
  %50 = ptrtoint ptr %ramdac_ctrl.i93 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ramdac_ctrl.i93, align 4
  %or40.i95 = or i8 %51, %49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !128
  tail call void @arm_heavy_mb() #15
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %53, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i97, i8 86) #15, !srcloc !99
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i98 = getelementptr i8, ptr %55, i32 975
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i98) #15, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !130
  tail call void @arm_heavy_mb() #15
  %57 = or i8 %56, 4
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %add.ptr12.i99 = getelementptr i8, ptr %59, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i99, i8 %57) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  tail call void @arm_heavy_mb() #15
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 4
  %add.ptr18.i100 = getelementptr i8, ptr %61, i32 966
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i100, i8 %or40.i95) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !132
  tail call void @arm_heavy_mb() #15
  %62 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i, align 4
  %add.ptr24.i101 = getelementptr i8, ptr %63, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i101, i8 %56) #15, !srcloc !99
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 4
  %add.ptr28.i102 = getelementptr i8, ptr %65, i32 975
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28.i102) #15, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !133
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.end57.if.end64_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyber2000fb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %yoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %0 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %yoffset.i, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %2 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xres_virtual.i, align 4
  %mul.i = mul i32 %3, %1
  %xoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %4 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xoffset.i, align 4
  %add.i = add i32 %mul.i, %5
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %6 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bits_per_pixel.i, align 4
  %mul1.i = mul i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %mul1.i)
  %cmp.i = icmp ugt i32 %mul1.i, 33554431
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  tail call void @arm_heavy_mb() #15
  %8 = lshr i32 %mul1.i, 13
  %9 = trunc i32 %8 to i16
  %10 = and i16 %9, -4352
  %conv.i.i = or i16 %10, 4112
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #15
  %regs.i.i = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 3
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %11) #15, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !122
  tail call void @arm_heavy_mb() #15
  %14 = lshr i32 %mul1.i, 5
  %15 = trunc i32 %14 to i16
  %16 = and i16 %15, -256
  %conv.i16.i = or i16 %16, 12
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv.i16.i) #15
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %19, i32 980
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i18.i, i16 %17) #15, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !122
  tail call void @arm_heavy_mb() #15
  %mul1.tr.i = trunc i32 %mul1.i to i16
  %20 = shl i16 %mul1.tr.i, 3
  %21 = and i16 %20, -256
  %conv.i21.i = or i16 %21, 13
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv.i21.i) #15
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %24, i32 980
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i23.i, i16 %22) #15, !srcloc !103
  %25 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xoffset.i, align 4
  %xoffset2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %27 = ptrtoint ptr %xoffset2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %xoffset2, align 8
  %28 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %yoffset.i, align 4
  %yoffset5 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %30 = ptrtoint ptr %yoffset5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %yoffset5, align 4
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %31 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vmode, align 4
  %and = and i32 %32, 256
  %vmode13 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %33 = ptrtoint ptr %vmode13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vmode13, align 4
  %and14 = and i32 %34, -257
  %or.sink = or i32 %and14, %and
  store i32 %or.sink, ptr %vmode13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyber2000fb_fillrect(ptr noundef %info, ptr noundef %rect) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %accel_flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 16
  %0 = ptrtoint ptr %accel_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %accel_flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @cfb_fillrect(ptr noundef %info, ptr noundef %rect) #15
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !163
  tail call void @arm_heavy_mb() #15
  %regs = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 782353
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 0) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !164
  tail call void @arm_heavy_mb() #15
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %6 = trunc i32 %5 to i16
  %conv = add i16 %6, -1
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 782432
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6, i16 %7) #15, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !165
  tail call void @arm_heavy_mb() #15
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %12 = trunc i32 %11 to i16
  %conv11 = add i16 %12, -1
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv11)
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %15, i32 782434
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13, i16 %13) #15, !srcloc !103
  %color = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %16 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %color, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %18 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bits_per_pixel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %cmp = icmp ugt i32 %19, 8
  br i1 %cmp, label %if.then17, label %do.body.do.body20_crit_edge

do.body.do.body20_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body20

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %20 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pseudo_palette, align 4
  %arrayidx = getelementptr i32, ptr %21, i32 %17
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  br label %do.body20

do.body20:                                        ; preds = %if.then17, %do.body.do.body20_crit_edge
  %col.0 = phi i32 [ %23, %if.then17 ], [ %17, %do.body.do.body20_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !166
  tail call void @arm_heavy_mb() #15
  %24 = tail call i32 @llvm.bswap.i32(i32 %col.0)
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr24 = getelementptr i8, ptr %26, i32 782424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %24) #15, !srcloc !167
  %27 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rect, align 4
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %29 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dy, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %31 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xres_virtual, align 8
  %mul = mul i32 %32, %30
  %add = add i32 %mul, %28
  %33 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bits_per_pixel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %34)
  %cmp30 = icmp eq i32 %34, 24
  br i1 %cmp30, label %do.body33, label %do.body20.do.body41_crit_edge

do.body20.do.body41_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body41

do.body33:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !168
  tail call void @arm_heavy_mb() #15
  %conv36 = trunc i32 %add to i8
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %add.ptr38 = getelementptr i8, ptr %36, i32 782456
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38, i8 %conv36) #15, !srcloc !99
  %mul39 = mul i32 %add, 3
  br label %do.body41

do.body41:                                        ; preds = %do.body33, %do.body20.do.body41_crit_edge
  %dst.0 = phi i32 [ %mul39, %do.body33 ], [ %add, %do.body20.do.body41_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @arm_heavy_mb() #15
  %37 = tail call i32 @llvm.bswap.i32(i32 %dst.0)
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %add.ptr45 = getelementptr i8, ptr %39, i32 782712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %37) #15, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !170
  tail call void @arm_heavy_mb() #15
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %add.ptr50 = getelementptr i8, ptr %41, i32 782408
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr50, i8 3) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !171
  tail call void @arm_heavy_mb() #15
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %add.ptr55 = getelementptr i8, ptr %43, i32 782460
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr55, i16 128) #15, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !172
  tail call void @arm_heavy_mb() #15
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add.ptr60 = getelementptr i8, ptr %45, i32 782462
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr60, i16 8) #15, !srcloc !103
  br label %cleanup

cleanup:                                          ; preds = %do.body41, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyber2000fb_copyarea(ptr noundef %info, ptr noundef %region) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %accel_flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 16
  %0 = ptrtoint ptr %accel_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %accel_flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @cfb_copyarea(ptr noundef %info, ptr noundef %region) #15
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !173
  tail call void @arm_heavy_mb() #15
  %regs = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 782353
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 0) #15, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !174
  tail call void @arm_heavy_mb() #15
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %6 = trunc i32 %5 to i16
  %conv = add i16 %6, -1
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 782432
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6, i16 %7) #15, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !175
  tail call void @arm_heavy_mb() #15
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 3
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %12 = trunc i32 %11 to i16
  %conv11 = add i16 %12, -1
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv11)
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %15, i32 782434
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13, i16 %13) #15, !srcloc !103
  %sx = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 4
  %16 = ptrtoint ptr %sx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sx, align 4
  %sy = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 5
  %18 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sy, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %20 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xres_virtual, align 8
  %mul = mul i32 %21, %19
  %add = add i32 %mul, %17
  %22 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %region, align 4
  %dy = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 1
  %24 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dy, align 4
  %mul19 = mul i32 %25, %21
  %add20 = add i32 %mul19, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %23)
  %cmp = icmp ult i32 %17, %23
  br i1 %cmp, label %if.then24, label %do.body.if.end31_crit_edge

do.body.if.end31_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %width, align 4
  %sub26 = add i32 %27, -1
  %add27 = add i32 %sub26, %add
  %add30 = add i32 %sub26, %add20
  br label %if.end31

if.end31:                                         ; preds = %if.then24, %do.body.if.end31_crit_edge
  %cmd.0 = phi i32 [ 32772, %if.then24 ], [ 32768, %do.body.if.end31_crit_edge ]
  %src.0 = phi i32 [ %add27, %if.then24 ], [ %add, %do.body.if.end31_crit_edge ]
  %dst.0 = phi i32 [ %add30, %if.then24 ], [ %add20, %do.body.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %25)
  %cmp34 = icmp ult i32 %19, %25
  br i1 %cmp34, label %if.then36, label %if.end31.if.end52_crit_edge

if.end31.if.end52_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height, align 4
  %sub38 = add i32 %29, -1
  %mul42 = mul i32 %sub38, %21
  %add43 = add i32 %mul42, %src.0
  %add50 = add i32 %mul42, %dst.0
  %or51 = or i32 %cmd.0, 2
  br label %if.end52

if.end52:                                         ; preds = %if.then36, %if.end31.if.end52_crit_edge
  %cmd.1 = phi i32 [ %or51, %if.then36 ], [ %cmd.0, %if.end31.if.end52_crit_edge ]
  %src.1 = phi i32 [ %add43, %if.then36 ], [ %src.0, %if.end31.if.end52_crit_edge ]
  %dst.1 = phi i32 [ %add50, %if.then36 ], [ %dst.0, %if.end31.if.end52_crit_edge ]
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %30 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bits_per_pixel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %31)
  %cmp55 = icmp eq i32 %31, 24
  br i1 %cmp55, label %do.body58, label %if.end52.do.body67_crit_edge

if.end52.do.body67_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body67

do.body58:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !176
  tail call void @arm_heavy_mb() #15
  %conv61 = trunc i32 %dst.1 to i8
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %add.ptr63 = getelementptr i8, ptr %33, i32 782456
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63, i8 %conv61) #15, !srcloc !99
  %mul64 = mul i32 %src.1, 3
  %mul65 = mul i32 %dst.1, 3
  br label %do.body67

do.body67:                                        ; preds = %do.body58, %if.end52.do.body67_crit_edge
  %src.2 = phi i32 [ %mul64, %do.body58 ], [ %src.1, %if.end52.do.body67_crit_edge ]
  %dst.2 = phi i32 [ %mul65, %do.body58 ], [ %dst.1, %if.end52.do.body67_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !177
  tail call void @arm_heavy_mb() #15
  %34 = tail call i32 @llvm.bswap.i32(i32 %src.2)
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %add.ptr71 = getelementptr i8, ptr %36, i32 782704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %34) #15, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !178
  tail call void @arm_heavy_mb() #15
  %37 = tail call i32 @llvm.bswap.i32(i32 %dst.2)
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %add.ptr76 = getelementptr i8, ptr %39, i32 782712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %37) #15, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !179
  tail call void @arm_heavy_mb() #15
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %add.ptr81 = getelementptr i8, ptr %41, i32 782408
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr81, i16 768) #15, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !180
  tail call void @arm_heavy_mb() #15
  %conv85 = trunc i32 %cmd.1 to i16
  %42 = tail call i16 @llvm.bswap.i16(i16 %conv85)
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %add.ptr87 = getelementptr i8, ptr %44, i32 782460
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr87, i16 %42) #15, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !181
  tail call void @arm_heavy_mb() #15
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %add.ptr92 = getelementptr i8, ptr %46, i32 782462
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr92, i16 40) #15, !srcloc !103
  br label %cleanup

cleanup:                                          ; preds = %do.body67, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyber2000fb_imageblit(ptr noundef %info, ptr noundef %image) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyber2000fb_sync(ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %accel_flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 16
  %0 = ptrtoint ptr %accel_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %accel_flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %regs = getelementptr inbounds %struct.cfb_info, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr118 = getelementptr i8, ptr %3, i32 782353
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr118) #15, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %tobool5.not19 = icmp sgt i8 %4, -1
  br i1 %tobool5.not19, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %count.020 = phi i32 [ %dec, %if.end13.while.body_crit_edge ], [ 100000, %while.cond.preheader.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.020)
  %tobool6.not = icmp eq i32 %count.020, 0
  br i1 %tobool6.not, label %do.body8, label %if.end13

do.body8:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !183
  tail call void @arm_heavy_mb() #15
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %6, i32 782353
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 0) #15, !srcloc !99
  br label %cleanup

if.end13:                                         ; preds = %while.body
  %dec = add nsw i32 %count.020, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #15
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr1 = getelementptr i8, ptr %9, i32 782353
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1) #15, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  %tobool5.not = icmp sgt i8 %10, -1
  br i1 %tobool5.not, label %if.end13.cleanup_crit_edge, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end13.cleanup_crit_edge, %do.body8, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @cyber2000fb_decode_crtc(ptr noundef %hw, ptr nocapture noundef readonly %var) unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pitch = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pitch, align 4
  %conv = trunc i32 %1 to i8
  %arrayidx = getelementptr %struct.par_info, ptr %hw, i32 0, i32 5, i32 13
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr %struct.par_info, ptr %hw, i32 0, i32 5, i32 17
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -29, ptr %arrayidx2, align 1
  %arrayidx4 = getelementptr %struct.par_info, ptr %hw, i32 0, i32 5, i32 14
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr %struct.par_info, ptr %hw, i32 0, i32 5, i32 8
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx6, align 1
  %6 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %var, align 4
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %8 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %right_margin, align 4
  %add = add i32 %9, %7
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %10 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hsync_len, align 4
  %add7 = add i32 %add, %11
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %12 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %left_margin, align 4
  %add8 = add i32 %add7, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2080, i32 %add8)
  %cmp = icmp ugt i32 %add8, 2080
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %crtc = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 5
  %shr = lshr i32 %add8, 3
  %14 = trunc i32 %shr to i8
  %conv10 = add i8 %14, -5
  %15 = ptrtoint ptr %crtc to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv10, ptr %crtc, align 1
  %16 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %var, align 4
  %shr14 = lshr i32 %17, 3
  %18 = trunc i32 %shr14 to i8
  %conv16 = add i8 %18, -1
  %arrayidx18 = getelementptr %struct.par_info, ptr %hw, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv16, ptr %arrayidx18, align 1
  %20 = load i32, ptr %var, align 4
  %shr20 = lshr i32 %20, 3
  %conv21 = trunc i32 %shr20 to i8
  %arrayidx23 = getelementptr %struct.par_info, ptr %hw, i32 0, i32 5, i32 2
  %21 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv21, ptr %arrayidx23, align 1
  %22 = load i32, ptr %var, align 4
  %23 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %right_margin, align 4
  %add26 = add i32 %24, %22
  %shr27 = lshr i32 %add26, 3
  %conv28 = trunc i32 %shr27 to i8
  %arrayidx30 = getelementptr %struct.par_info, ptr %hw, i32 0, i32 5, i32 4
  %25 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv28, ptr %arrayidx30, align 1
  %sub31 = add nsw i32 %add8, -32
  %26 = trunc i32 %sub31 to i8
  %27 = lshr i8 %26, 3
  %conv34 = or i8 %27, -128
  %arrayidx36 = getelementptr %struct.par_info, ptr %hw, i32 0, i32 5, i32 3
  %28 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv34, ptr %arrayidx36, align 1
  %29 = load i32, ptr %var, align 4
  %30 = load i32, ptr %right_margin, align 4
  %add39 = add i32 %30, %29
  %31 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hsync_len, align 4
  %add41 = add i32 %add39, %32
  %shr42 = lshr i32 %add41, 3
  %and44 = and i32 %shr42, 31
  %33 = lshr i32 %sub31, 1
  %shl48 = and i32 %33, 128
  %or49 = or i32 %and44, %shl48
  %conv50 = trunc i32 %or49 to i8
  %arrayidx52 = getelementptr %struct.par_info, ptr %hw, i32 0, i32 5, i32 5
  %34 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv50, ptr %arrayidx52, align 1
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %35 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %yres, align 4
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %37 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lower_margin, align 4
  %add55 = add i32 %38, %36
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %39 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vsync_len, align 4
  %add59 = add i32 %add55, %40
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %41 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %upper_margin, align 4
  %add65 = add i32 %add59, %42
  %sub66 = add i32 %add65, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %sub66)
  %cmp67 = icmp ugt i32 %sub66, 2047
  br i1 %cmp67, label %if.end.cleanup_crit_edge, label %if.end70

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end70:                                         ; preds = %if.end
  %sub53 = add i32 %36, -1
  %add72 = add i32 %36, 6
  %conv74 = trunc i32 %sub66 to i8
  %arrayidx76 = getelementptr %struct.par_info, ptr %hw, i32 0, i32 5, i32 6
  %43 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv74, ptr %arrayidx76, align 1
  %shr77 = lshr i32 %sub66, 8
  %and78 = and i32 %shr77, 1
  %44 = lshr i32 %sub53, 7
  %shl82 = and i32 %44, 2
  %45 = lshr i32 %add55, 6
  %shl86 = and i32 %45, 4
  %46 = lshr i32 %add72, 5
  %shl90 = and i32 %46, 8
  %47 = lshr i32 %sub66, 4
  %shl95 = and i32 %47, 32
  %48 = lshr i32 %sub53, 3
  %shl99 = and i32 %48, 64
  %49 = lshr i32 %add55, 2
  %shl103 = and i32 %49, 128
  %or83 = or i32 %shl90, %shl82
  %or87 = or i32 %or83, %shl99
  %or91 = or i32 %or87, %shl86
  %or92 = or i32 %or91, %shl103
  %or96 = or i32 %or92, %and78
  %or100 = or i32 %or96, %shl95
  %50 = trunc i32 %or100 to i8
  %conv105 = or i8 %50, 16
  %arrayidx107 = getelementptr %struct.par_info, ptr %hw, i32 0, i32 5, i32 7
  %51 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv105, ptr %arrayidx107, align 1
  %52 = lshr i32 %add72, 4
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 32
  %conv113 = or i8 %54, 64
  %arrayidx115 = getelementptr %struct.par_info, ptr %hw, i32 0, i32 5, i32 9
  %55 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv113, ptr %arrayidx115, align 1
  %conv116 = trunc i32 %add55 to i8
  %arrayidx118 = getelementptr %struct.par_info, ptr %hw, i32 0, i32 5, i32 10
  %56 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv116, ptr %arrayidx118, align 1
  %57 = trunc i32 %add59 to i8
  %58 = and i8 %57, 15
  %conv123 = or i8 %58, -128
  %arrayidx125 = getelementptr %struct.par_info, ptr %hw, i32 0, i32 5, i32 11
  %59 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv123, ptr %arrayidx125, align 1
  %conv126 = trunc i32 %sub53 to i8
  %arrayidx128 = getelementptr %struct.par_info, ptr %hw, i32 0, i32 5, i32 12
  %60 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv126, ptr %arrayidx128, align 1
  %conv129 = trunc i32 %add72 to i8
  %arrayidx131 = getelementptr %struct.par_info, ptr %hw, i32 0, i32 5, i32 15
  %61 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv129, ptr %arrayidx131, align 1
  %62 = trunc i32 %add65 to i8
  %conv132 = add i8 %62, -12
  %arrayidx134 = getelementptr %struct.par_info, ptr %hw, i32 0, i32 5, i32 16
  %63 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv132, ptr %arrayidx134, align 1
  %arrayidx136 = getelementptr %struct.par_info, ptr %hw, i32 0, i32 5, i32 18
  %64 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %arrayidx136, align 1
  %shr137 = lshr i32 %sub66, 10
  %65 = lshr i32 %sub53, 9
  %shl142 = and i32 %65, 2
  %66 = lshr i32 %add55, 8
  %shl146 = and i32 %66, 4
  %67 = lshr i32 %add72, 7
  %shl150 = and i32 %67, 8
  %or143 = or i32 %shl150, %shl142
  %or147 = or i32 %or143, %shl146
  %or151 = or i32 %or147, %shr137
  %68 = trunc i32 %or151 to i8
  %conv153 = or i8 %68, 16
  %crtc_ofl = getelementptr inbounds %struct.par_info, ptr %hw, i32 0, i32 4
  %69 = ptrtoint ptr %crtc_ofl to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv153, ptr %crtc_ofl, align 4
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %70 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %vmode, align 4
  %and154 = and i32 %71, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and154)
  %cmp155 = icmp eq i32 %and154, 1
  br i1 %cmp155, label %if.then157, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then157:                                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  %72 = or i8 %68, 48
  %73 = ptrtoint ptr %crtc_ofl to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %crtc_ofl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then157, %if.end70.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then157 ], [ 0, %if.end70.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cyberpro_init_hw(ptr nocapture noundef readonly %cfb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.cfb_info, ptr %cfb, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.023 = phi i32 [ 0, %entry ], [ %add3, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [48 x i8], ptr @igs_regs, i32 0, i32 %i.023
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i16
  %add = or i32 %i.023, 1
  %arrayidx1 = getelementptr [48 x i8], ptr @igs_regs, i32 0, i32 %add
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  tail call void @arm_heavy_mb() #15
  %shl.i = shl nuw i16 %conv2, 8
  %or.i = or i16 %shl.i, %conv
  %4 = tail call i16 @llvm.bswap.i16(i16 %or.i) #15
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %4) #15, !srcloc !103
  %add3 = add nuw nsw i32 %i.023, 2
  %cmp = icmp ult i32 %i.023, 46
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  %id = getelementptr inbounds %struct.cfb_info, ptr %cfb, i32 0, i32 4
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp4 = icmp eq i32 %8, 3
  br i1 %cmp4, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !184
  tail call void @arm_heavy_mb() #15
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -70) #15, !srcloc !99
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr7 = getelementptr i8, ptr %12, i32 975
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7) #15, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  %14 = and i8 %13, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !186
  tail call void @arm_heavy_mb() #15
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr15 = getelementptr i8, ptr %16, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 %14) #15, !srcloc !99
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyber2000fb_ddc_setsda(ptr noundef %data, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_b0_lock.i = getelementptr inbounds %struct.cfb_info, ptr %data, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %reg_b0_lock.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !187
  tail call void @arm_heavy_mb() #15
  %regs.i = getelementptr inbounds %struct.cfb_info, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 -16639) #15, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !98
  tail call void @arm_heavy_mb() #15
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %3, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12, i8 -80) #15, !srcloc !99
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 975
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #15, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !101
  %conv4.i = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %and = and i32 %conv4.i, 239
  %conv2 = or i32 %conv4.i, 16
  %reg.0 = select i1 %tobool.not, i32 %conv2, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  tail call void @arm_heavy_mb() #15
  %reg.0.tr = trunc i32 %reg.0 to i16
  %7 = shl nuw i16 %reg.0.tr, 8
  %conv.i = or i16 %7, 176
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #15
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %10, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i14, i16 %8) #15, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !188
  tail call void @arm_heavy_mb() #15
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %12, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i16, i16 -16640) #15, !srcloc !103
  tail call void @_raw_spin_unlock(ptr noundef %reg_b0_lock.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyber2000fb_ddc_setscl(ptr noundef %data, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_b0_lock.i = getelementptr inbounds %struct.cfb_info, ptr %data, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %reg_b0_lock.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !187
  tail call void @arm_heavy_mb() #15
  %regs.i = getelementptr inbounds %struct.cfb_info, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 -16639) #15, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !98
  tail call void @arm_heavy_mb() #15
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %3, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12, i8 -80) #15, !srcloc !99
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 975
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #15, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !101
  %conv4.i = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %and = and i32 %conv4.i, 254
  %conv2 = or i32 %conv4.i, 1
  %reg.0 = select i1 %tobool.not, i32 %conv2, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  tail call void @arm_heavy_mb() #15
  %reg.0.tr = trunc i32 %reg.0 to i16
  %7 = shl nuw i16 %reg.0.tr, 8
  %conv.i = or i16 %7, 176
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #15
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %10, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i14, i16 %8) #15, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !188
  tail call void @arm_heavy_mb() #15
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %12, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i16, i16 -16640) #15, !srcloc !103
  tail call void @_raw_spin_unlock(ptr noundef %reg_b0_lock.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyber2000fb_ddc_getsda(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_b0_lock.i = getelementptr inbounds %struct.cfb_info, ptr %data, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %reg_b0_lock.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !187
  tail call void @arm_heavy_mb() #15
  %regs.i = getelementptr inbounds %struct.cfb_info, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 -16639) #15, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !98
  tail call void @arm_heavy_mb() #15
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %3, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i6, i8 -80) #15, !srcloc !99
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 975
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #15, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !101
  %7 = lshr i8 %6, 6
  %8 = and i8 %7, 1
  %and.lobit = zext i8 %8 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !188
  tail call void @arm_heavy_mb() #15
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %10, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8, i16 -16640) #15, !srcloc !103
  tail call void @_raw_spin_unlock(ptr noundef %reg_b0_lock.i) #15
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyber2000fb_ddc_getscl(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_b0_lock.i = getelementptr inbounds %struct.cfb_info, ptr %data, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %reg_b0_lock.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !187
  tail call void @arm_heavy_mb() #15
  %regs.i = getelementptr inbounds %struct.cfb_info, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 -16639) #15, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !98
  tail call void @arm_heavy_mb() #15
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %3, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i6, i8 -80) #15, !srcloc !99
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 975
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #15, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !101
  %7 = lshr i8 %6, 2
  %8 = and i8 %7, 1
  %and.lobit = zext i8 %8 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !188
  tail call void @arm_heavy_mb() #15
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %10, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8, i16 -16640) #15, !srcloc !103
  tail call void @_raw_spin_unlock(ptr noundef %reg_b0_lock.i) #15
  ret i32 %and.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cyberpro_pci_suspend(ptr nocapture noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyberpro_pci_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @cyberpro_pci_enable_mmio(ptr noundef nonnull %1)
  tail call fastcc void @cyberpro_init_hw(ptr noundef nonnull %1) #15
  %mem_ctl1.i = getelementptr inbounds %struct.cfb_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mem_ctl1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mem_ctl1.i, align 8
  %conv.i = zext i8 %3 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  tail call void @arm_heavy_mb() #15
  %shl.i.i = shl nuw i16 %conv.i, 8
  %or.i.i = or i16 %shl.i.i, 113
  %4 = tail call i16 @llvm.bswap.i16(i16 %or.i.i) #15
  %regs.i.i = getelementptr inbounds %struct.cfb_info, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %4) #15, !srcloc !103
  %mem_ctl2.i = getelementptr inbounds %struct.cfb_info, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %mem_ctl2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mem_ctl2.i, align 1
  %conv1.i = zext i8 %8 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  tail call void @arm_heavy_mb() #15
  %shl.i7.i = shl nuw i16 %conv1.i, 8
  %or.i8.i = or i16 %shl.i7.i, 114
  %9 = tail call i16 @llvm.bswap.i16(i16 %or.i8.i) #15
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %11, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11.i, i16 %9) #15, !srcloc !103
  %call.i = tail call i32 @cyber2000fb_set_par(ptr noundef nonnull %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !54, !56, !58, !60, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__param_default_font, !1, !"__param_default_font", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 103, i32 1}
!2 = !{ptr @__UNIQUE_ID_default_fonttype305, !1, !"__UNIQUE_ID_default_fonttype305", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_default_font306, !4, !"__UNIQUE_ID_default_font306", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 104, i32 1}
!5 = !{ptr @__ksymtab_cyber2000fb_enable_extregs, !6, !"__ksymtab_cyber2000fb_enable_extregs", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1097, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1113, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cyber2000fb_disable_extregs._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @cyber2000fb_disable_extregs._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_cyber2000fb_disable_extregs, !14, !"__ksymtab_cyber2000fb_disable_extregs", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1117, i32 1}
!15 = !{ptr @__ksymtab_cyber2000fb_attach, !16, !"__ksymtab_cyber2000fb_attach", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1143, i32 1}
!17 = !{ptr @__ksymtab_cyber2000fb_detach, !18, !"__ksymtab_cyber2000fb_detach", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1151, i32 1}
!19 = !{ptr @__initcall__kmod_cyber2000fb__307_1886_cyber2000fb_init6, !20, !"__initcall__kmod_cyber2000fb__307_1886_cyber2000fb_init6", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1886, i32 1}
!21 = !{ptr @__exitcall_cyberpro_exit, !22, !"__exitcall_cyberpro_exit", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1892, i32 1}
!23 = !{ptr @__UNIQUE_ID_author308, !24, !"__UNIQUE_ID_author308", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1894, i32 1}
!25 = !{ptr @__UNIQUE_ID_description309, !26, !"__UNIQUE_ID_description309", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1895, i32 1}
!27 = !{ptr @__UNIQUE_ID_file310, !28, !"__UNIQUE_ID_file310", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1896, i32 1}
!29 = !{ptr @__UNIQUE_ID_license311, !28, !"__UNIQUE_ID_license311", i1 false, i1 false}
!30 = !{ptr @int_cfb_info, !31, !"int_cfb_info", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1080, i32 25}
!32 = !{ptr @__param_str_default_font, !1, !"__param_str_default_font", i1 false, i1 false}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 102, i32 29}
!35 = !{ptr @default_font, !36, !"default_font", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 102, i32 14}
!37 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1875, i32 21}
!39 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1496, i32 33}
!41 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1500, i32 20}
!43 = !{ptr @cyber2000fb_setup.default_font_storage, !44, !"default_font_storage", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1501, i32 16}
!45 = !{ptr @.str.7, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1509, i32 3}
!47 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @cyber2000fb_setup._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @cyber2000fb_setup._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1854, i32 11}
!52 = !{ptr @cyberpro_driver, !53, !"cyberpro_driver", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1853, i32 26}
!54 = !{ptr @cyberpro_pci_table, !55, !"cyberpro_pci_table", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1833, i32 29}
!56 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1721, i32 16}
!58 = !{ptr @cyberpro_alloc_fb_info.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1465, i32 2}
!60 = !{ptr @.str.11, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @cyber2000fb_ops, !62, !"cyber2000fb_ops", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1062, i32 28}
!63 = !{ptr @crtc_idx, !64, !"crtc_idx", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 433, i32 21}
!65 = !{ptr @.str.12, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1694, i32 3}
!67 = !{ptr @.str.13, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @cyberpro_pci_enable_mmio._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @cyberpro_pci_enable_mmio._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.15, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1699, i32 4}
!72 = !{ptr @cyberpro_pci_enable_mmio._entry.14, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @cyberpro_pci_enable_mmio._entry_ptr.16, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.17, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1569, i32 3}
!76 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @cyberpro_common_probe._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @cyberpro_common_probe._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.20, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1593, i32 2}
!81 = !{ptr @cyberpro_common_probe._entry.19, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @cyberpro_common_probe._entry_ptr.21, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @igs_regs, !84, !"igs_regs", i1 false, i1 false}
!84 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1351, i32 13}
!85 = !{ptr @cyber2000fb_default_mode, !86, !"cyber2000fb_default_mode", i1 false, i1 false}
!86 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1336, i32 34}
!87 = !{ptr @cyberpro_pci_pm_ops, !88, !"cyberpro_pci_pm_ops", i1 false, i1 false}
!88 = !{!"../drivers/video/fbdev/cyber2000fb.c", i32 1849, i32 8}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i64 2156469902}
!99 = !{i64 6257606}
!100 = !{i64 6258001}
!101 = !{i64 2156470248}
!102 = !{i64 2156469224}
!103 = !{i64 6257183}
!104 = !{i8 0, i8 2}
!105 = !{i64 2156533945}
!106 = !{i64 2156534267}
!107 = !{i64 2156534589}
!108 = !{i64 2156534916}
!109 = !{i64 2156535242}
!110 = !{i64 2156501334, i64 2156501832, i64 2156501371, i64 2156501427, i64 2156501461, i64 2156501485, i64 2156501526, i64 2156501547, i64 2156501575, i64 2156501609}
!111 = !{i64 2156506955, i64 2156507453, i64 2156506992, i64 2156507048, i64 2156507082, i64 2156507106, i64 2156507147, i64 2156507168, i64 2156507196, i64 2156507230}
!112 = !{i64 2156508641, i64 2156509139, i64 2156508678, i64 2156508734, i64 2156508768, i64 2156508792, i64 2156508833, i64 2156508854, i64 2156508882, i64 2156508916}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{i64 2156510325, i64 2156510823, i64 2156510362, i64 2156510418, i64 2156510452, i64 2156510476, i64 2156510517, i64 2156510538, i64 2156510566, i64 2156510600}
!115 = !{!"branch_weights", i32 1, i32 2000}
!116 = !{i64 2156511980, i64 2156512478, i64 2156512017, i64 2156512073, i64 2156512107, i64 2156512131, i64 2156512172, i64 2156512193, i64 2156512221, i64 2156512255}
!117 = !{i64 2156494125}
!118 = !{i64 2156494449}
!119 = !{i64 2156494773}
!120 = !{i64 2156495097}
!121 = !{i64 2156495427}
!122 = !{i64 2156468508}
!123 = !{i64 2156470702}
!124 = !{i64 2156470971}
!125 = !{i64 2156471317}
!126 = !{i64 2156471586}
!127 = !{i64 2156472123}
!128 = !{i64 2156492234}
!129 = !{i64 2156492581}
!130 = !{i64 2156492854}
!131 = !{i64 2156493186}
!132 = !{i64 2156493512}
!133 = !{i64 2156493856}
!134 = !{i64 2156495785}
!135 = !{i64 2156496118}
!136 = !{i64 2156496478}
!137 = !{i64 2156496974}
!138 = !{i64 2156497478}
!139 = !{i64 2156486697}
!140 = !{i64 2156487029}
!141 = !{i64 2156487363}
!142 = !{i64 2156487697}
!143 = !{i64 2156488044}
!144 = !{i64 2156488431}
!145 = !{i64 2156488790}
!146 = !{i64 2156489174}
!147 = !{i64 2156489544}
!148 = !{i64 2156489881}
!149 = !{i64 2156490215}
!150 = !{i64 2156490549}
!151 = !{i64 2156490894}
!152 = !{i64 2156491231}
!153 = !{i64 2156491565}
!154 = !{i64 2156491899}
!155 = !{i64 2156515829}
!156 = !{i64 2156516153}
!157 = !{i64 2156516477}
!158 = !{i64 2156516801}
!159 = !{i64 2156517129}
!160 = !{i64 2156517489}
!161 = !{i64 2156517871}
!162 = !{i64 2156518253}
!163 = !{i64 2156473765}
!164 = !{i64 2156474131}
!165 = !{i64 2156474659}
!166 = !{i64 2156475164}
!167 = !{i64 6257803}
!168 = !{i64 2156475630}
!169 = !{i64 2156475974}
!170 = !{i64 2156476447}
!171 = !{i64 2156476805}
!172 = !{i64 2156477293}
!173 = !{i64 2156478896}
!174 = !{i64 2156479266}
!175 = !{i64 2156479804}
!176 = !{i64 2156480329}
!177 = !{i64 2156480673}
!178 = !{i64 2156481139}
!179 = !{i64 2156481612}
!180 = !{i64 2156482081}
!181 = !{i64 2156482585}
!182 = !{i64 2156484230}
!183 = !{i64 2156484529}
!184 = !{i64 2156527734}
!185 = !{i64 2156528081}
!186 = !{i64 2156528350}
!187 = !{i64 2156526542}
!188 = !{i64 2156527004}
