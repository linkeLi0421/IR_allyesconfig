; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/s1d13xxxfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/s1d13xxxfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.s1d13xxxfb_pdata = type { ptr, i32, ptr, ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.s1d13xxxfb_par = type { ptr, i8, i8, i8, [16 x i32], ptr, ptr }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.s1d13xxxfb_regval = type { i16, i8 }

@s1d13xxxfb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s1d13xxxfb_probe, ptr @s1d13xxxfb_remove, ptr null, ptr @s1d13xxxfb_suspend, ptr @s1d13xxxfb_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_s1d13xxxfb__303_1028_s1d13xxxfb_init6 = internal global ptr @s1d13xxxfb_init, section ".initcall6.init", align 4
@__exitcall_s1d13xxxfb_exit = internal global ptr @s1d13xxxfb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file304 = internal constant [47 x i8] c"s1d13xxxfb.file=drivers/video/fbdev/s1d13xxxfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [23 x i8] c"s1d13xxxfb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [63 x i8] c"s1d13xxxfb.description=Framebuffer driver for S1D13xxx devices\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [90 x i8] c"s1d13xxxfb.author=Ben Dooks <ben@simtec.co.uk>, Thibaut VARENE <varenet@parisc-linux.org>\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s1d13xxxfb\00", [21 x i8] zeroinitializer }, align 32
@s1d13xxxfb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016Epson S1D13XXX FB Driver\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s1d13xxxfb_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/video/fbdev/s1d13xxxfb.c\00", [63 x i8] zeroinitializer }, align 32
@s1d13xxxfb_probe._entry_ptr = internal global ptr @s1d13xxxfb_probe._entry, section ".printk_index", align 4
@s1d13xxxfb_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 782, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid num_resources: %i\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s1d13xxxfb_probe._entry_ptr.8 = internal global ptr @s1d13xxxfb_probe._entry.4, section ".printk_index", align 4
@s1d13xxxfb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 790, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid resource type\0A\00", [41 x i8] zeroinitializer }, align 32
@s1d13xxxfb_probe._entry_ptr.11 = internal global ptr @s1d13xxxfb_probe._entry.9, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s1d13xxxfb mem\00", [17 x i8] zeroinitializer }, align 32
@s1d13xxxfb_probe.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 -57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"request_mem_region failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s1d13xxxfb regs\00", [16 x i8] zeroinitializer }, align 32
@s1d13xxxfb_probe.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s1d13xxxfb_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013s1d13xxxfb: unable to map registers\0A\00", [57 x i8] zeroinitializer }, align 32
@s1d13xxxfb_probe._entry_ptr.17 = internal global ptr @s1d13xxxfb_probe._entry.15, section ".printk_index", align 4
@s1d13xxxfb_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013s1d13xxxfb: unable to map framebuffer\0A\00", [55 x i8] zeroinitializer }, align 32
@s1d13xxxfb_probe._entry_ptr.20 = internal global ptr @s1d13xxxfb_probe._entry.18, section ".printk_index", align 4
@s1d13xxxfb_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016s1d13xxxfb: chip production id %i = %s\0A\00", [54 x i8] zeroinitializer }, align 32
@s1d13xxxfb_probe._entry_ptr.23 = internal global ptr @s1d13xxxfb_probe._entry.21, section ".printk_index", align 4
@s1d13xxxfb_prod_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.41], [20 x i8] zeroinitializer }, align 32
@s1d13xxxfb_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016s1d13xxxfb: chip revision %i\0A\00", [32 x i8] zeroinitializer }, align 32
@s1d13xxxfb_probe._entry_ptr.26 = internal global ptr @s1d13xxxfb_probe._entry.24, section ".printk_index", align 4
@s1d13xxxfb_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016s1d13xxxfb: unknown chip production id %i, revision %i\0A\00", [38 x i8] zeroinitializer }, align 32
@s1d13xxxfb_probe._entry_ptr.29 = internal global ptr @s1d13xxxfb_probe._entry.27, section ".printk_index", align 4
@s1d13xxxfb_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016s1d13xxxfb: please contact maintainer\0A\00", [55 x i8] zeroinitializer }, align 32
@s1d13xxxfb_probe._entry_ptr.32 = internal global ptr @s1d13xxxfb_probe._entry.30, section ".printk_index", align 4
@s1d13xxxfb_fix = internal constant { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"S1D13xxx\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 3, i16 0, i16 1, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@s1d13xxxfb_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016s1d13xxxfb: regs mapped at 0x%p, fb %d KiB mapped at 0x%p\0A\00", [35 x i8] zeroinitializer }, align 32
@s1d13xxxfb_probe._entry_ptr.35 = internal global ptr @s1d13xxxfb_probe._entry.33, section ".printk_index", align 4
@s1d13xxxfb_fbops = internal global { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s1d13xxxfb_set_par, ptr @s1d13xxxfb_setcolreg, ptr null, ptr @s1d13xxxfb_blank, ptr @s1d13xxxfb_pan_display, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@s1d13xxxfb_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str.3, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016fb%d: %s frame buffer device\0A\00", [32 x i8] zeroinitializer }, align 32
@s1d13xxxfb_probe._entry_ptr.38 = internal global ptr @s1d13xxxfb_probe._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"S1D13505\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"S1D13506\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"S1D13806\00", [23 x i8] zeroinitializer }, align 32
@s1d13xxxfb_bitblt_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s1d13xxxfb_bitblt_lock\00", [41 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@s1d13xxxfb_fetch_hw_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014s1d13xxxfb: Warning: LCD and CRT detected, using LCD\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s1d13xxxfb_fetch_hw_state\00", [38 x i8] zeroinitializer }, align 32
@s1d13xxxfb_fetch_hw_state._entry_ptr = internal global ptr @s1d13xxxfb_fetch_hw_state._entry, section ".printk_index", align 4
@s1d13xxxfb_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013s1d13xxxfb: no memory to save registers\00", [54 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s1d13xxxfb_suspend\00", [45 x i8] zeroinitializer }, align 32
@s1d13xxxfb_suspend._entry_ptr = internal global ptr @s1d13xxxfb_suspend._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 6, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"s1d13xxxfb_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 996, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1004, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 771, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 781, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 790, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 795, i32 7 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 797, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 802, i32 7 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 820, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 830, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 852, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [22 x i8] c"s1d13xxxfb_prod_names\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 77, i32 20 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 854, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 856, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 859, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [15 x i8] c"s1d13xxxfb_fix\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 86, i32 39 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 869, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"s1d13xxxfb_fbops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 599, i32 22 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 898, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 78, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 79, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 80, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [23 x i8] c"s1d13xxxfb_bitblt_lock\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 63, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 654, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.185 = private constant [36 x i8] c"../drivers/video/fbdev/s1d13xxxfb.c\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 940, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_s1d13xxxfb_exit, ptr @__initcall__kmod_s1d13xxxfb__303_1028_s1d13xxxfb_init6, ptr @s1d13xxxfb_exit, ptr @s1d13xxxfb_fetch_hw_state._entry, ptr @s1d13xxxfb_fetch_hw_state._entry_ptr, ptr @s1d13xxxfb_probe._entry, ptr @s1d13xxxfb_probe._entry.15, ptr @s1d13xxxfb_probe._entry.18, ptr @s1d13xxxfb_probe._entry.21, ptr @s1d13xxxfb_probe._entry.24, ptr @s1d13xxxfb_probe._entry.27, ptr @s1d13xxxfb_probe._entry.30, ptr @s1d13xxxfb_probe._entry.33, ptr @s1d13xxxfb_probe._entry.36, ptr @s1d13xxxfb_probe._entry.4, ptr @s1d13xxxfb_probe._entry.9, ptr @s1d13xxxfb_probe._entry_ptr, ptr @s1d13xxxfb_probe._entry_ptr.11, ptr @s1d13xxxfb_probe._entry_ptr.17, ptr @s1d13xxxfb_probe._entry_ptr.20, ptr @s1d13xxxfb_probe._entry_ptr.23, ptr @s1d13xxxfb_probe._entry_ptr.26, ptr @s1d13xxxfb_probe._entry_ptr.29, ptr @s1d13xxxfb_probe._entry_ptr.32, ptr @s1d13xxxfb_probe._entry_ptr.35, ptr @s1d13xxxfb_probe._entry_ptr.38, ptr @s1d13xxxfb_probe._entry_ptr.8, ptr @s1d13xxxfb_suspend._entry, ptr @s1d13xxxfb_suspend._entry_ptr, ptr @s1d13xxxfb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @s1d13xxxfb_prod_names, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @s1d13xxxfb_fix, ptr @.str.34, ptr @s1d13xxxfb_fbops, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @s1d13xxxfb_bitblt_lock, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s1d13xxxfb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s1d13xxxfb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s1d13xxxfb_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s1d13xxxfb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s1d13xxxfb_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s1d13xxxfb_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s1d13xxxfb_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s1d13xxxfb_prod_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s1d13xxxfb_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s1d13xxxfb_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s1d13xxxfb_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s1d13xxxfb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s1d13xxxfb_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s1d13xxxfb_fbops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s1d13xxxfb_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s1d13xxxfb_bitblt_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s1d13xxxfb_fetch_hw_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s1d13xxxfb_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s1d13xxxfb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @s1d13xxxfb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s1d13xxxfb_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @s1d13xxxfb_driver, ptr noundef null) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s1d13xxxfb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %land.lhs.true

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %platform_init_video = getelementptr inbounds %struct.s1d13xxxfb_pdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %platform_init_video to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_init_video, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %land.lhs.true.if.end12_crit_edge, label %if.then10

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3() #6
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %4 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_resources, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end19, label %do.end16

do.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %5) #9
  br label %bail

if.end19:                                         ; preds = %if.end12
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %6 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resource, align 8
  %flags = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %9)
  %cmp20.not = icmp eq i32 %9, 512
  br i1 %cmp20.not, label %lor.lhs.false, label %if.end19.do.end28_crit_edge

if.end19.do.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

lor.lhs.false:                                    ; preds = %if.end19
  %flags23 = getelementptr %struct.resource, ptr %7, i32 1, i32 3
  %10 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %11)
  %cmp24.not = icmp eq i32 %11, 512
  br i1 %cmp24.not, label %if.end30, label %lor.lhs.false.do.end28_crit_edge

lor.lhs.false.do.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

do.end28:                                         ; preds = %lor.lhs.false.do.end28_crit_edge, %if.end19.do.end28_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %bail

if.end30:                                         ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %13
  %add.i = add i32 %sub.i, %15
  %call36 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %13, i32 noundef %add.i, ptr noundef nonnull @.str.12, i32 noundef 0) #6
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %do.body39, label %if.end50

do.body39:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s1d13xxxfb_probe.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s1d13xxxfb_probe, %if.then45)) #6
          to label %bail [label %if.then45], !srcloc !110

if.then45:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s1d13xxxfb_probe.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.13) #6
  br label %bail

if.end50:                                         ; preds = %if.end30
  %16 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resource, align 8
  %arrayidx52 = getelementptr %struct.resource, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx52, align 4
  %end.i287 = getelementptr %struct.resource, ptr %17, i32 1, i32 1
  %20 = ptrtoint ptr %end.i287 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.i287, align 4
  %sub.i288 = sub i32 1, %19
  %add.i289 = add i32 %sub.i288, %21
  %call57 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %19, i32 noundef %add.i289, ptr noundef nonnull @.str.14, i32 noundef 0) #6
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %do.body60, label %if.end77

do.body60:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s1d13xxxfb_probe.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s1d13xxxfb_probe, %if.then72)) #6
          to label %bail [label %if.then72], !srcloc !110

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s1d13xxxfb_probe.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.13) #6
  br label %bail

if.end77:                                         ; preds = %if.end50
  %call79 = tail call ptr @framebuffer_alloc(i32 noundef 1104, ptr noundef %dev) #6
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %if.end77.bail_crit_edge, label %if.end82

if.end77.bail_crit_edge:                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail

if.end82:                                         ; preds = %if.end77
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call79, ptr %driver_data.i.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %call79, i32 0, i32 30
  %23 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %par, align 4
  %25 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resource, align 8
  %arrayidx84 = getelementptr %struct.resource, ptr %26, i32 1
  %27 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx84, align 4
  %end.i290 = getelementptr %struct.resource, ptr %26, i32 1, i32 1
  %29 = ptrtoint ptr %end.i290 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end.i290, align 4
  %sub.i291 = sub i32 1, %28
  %add.i292 = add i32 %sub.i291, %30
  %call89 = tail call ptr @ioremap(i32 noundef %28, i32 noundef %add.i292) #6
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call89, ptr %24, align 4
  %tobool91.not = icmp eq ptr %call89, null
  br i1 %tobool91.not, label %do.end95, label %if.end98

do.end95:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %bail

if.end98:                                         ; preds = %if.end82
  %pseudo_palette = getelementptr inbounds %struct.s1d13xxxfb_par, ptr %24, i32 0, i32 4
  %pseudo_palette99 = getelementptr inbounds %struct.fb_info, ptr %call79, i32 0, i32 27
  %32 = ptrtoint ptr %pseudo_palette99 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %pseudo_palette, ptr %pseudo_palette99, align 4
  %33 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %resource, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %end.i293 = getelementptr inbounds %struct.resource, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %end.i293 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %end.i293, align 4
  %sub.i294 = sub i32 1, %36
  %add.i295 = add i32 %sub.i294, %38
  %call106 = tail call ptr @ioremap(i32 noundef %36, i32 noundef %add.i295) #6
  %39 = getelementptr inbounds %struct.fb_info, ptr %call79, i32 0, i32 25
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call106, ptr %39, align 4
  %tobool107.not = icmp eq ptr %call106, null
  br i1 %tobool107.not, label %do.end111, label %if.end114

do.end111:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  br label %bail

if.end114:                                        ; preds = %if.end98
  %41 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %24, align 4
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %42) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %44 = lshr i8 %43, 2
  %45 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %24, align 4
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %46) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %48 = and i8 %47, 3
  %conv122 = zext i8 %44 to i32
  %trunc = trunc i8 %44 to i6
  %49 = zext i6 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i6 %trunc, label %for.inc.2 [
    i6 3, label %if.end114.do.end134_crit_edge
    i6 4, label %do.end134.fold.split
    i6 7, label %do.end134.fold.split317
  ]

if.end114.do.end134_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end134

for.inc.2:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  %conv150 = zext i8 %48 to i32
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv122, i32 noundef %conv150) #9
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #9
  br label %bail

do.end134.fold.split:                             ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end134

do.end134.fold.split317:                          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end134

do.end134:                                        ; preds = %do.end134.fold.split317, %do.end134.fold.split, %if.end114.do.end134_crit_edge
  %i.0315.lcssa = phi i32 [ 0, %if.end114.do.end134_crit_edge ], [ 1, %do.end134.fold.split ], [ 2, %do.end134.fold.split317 ]
  %prod_id127 = getelementptr inbounds %struct.s1d13xxxfb_par, ptr %24, i32 0, i32 2
  %50 = ptrtoint ptr %prod_id127 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %44, ptr %prod_id127, align 1
  %revision128 = getelementptr inbounds %struct.s1d13xxxfb_par, ptr %24, i32 0, i32 3
  %51 = ptrtoint ptr %revision128 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %48, ptr %revision128, align 2
  %arrayidx137 = getelementptr [3 x ptr], ptr @s1d13xxxfb_prod_names, i32 0, i32 %i.0315.lcssa
  %52 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx137, align 4
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %conv122, ptr noundef %53) #9
  %conv143 = zext i8 %48 to i32
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv143) #9
  %fix = getelementptr inbounds %struct.fb_info, ptr %call79, i32 0, i32 7
  %54 = call ptr @memcpy(ptr %fix, ptr @s1d13xxxfb_fix, i32 68)
  %55 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %resource, align 8
  %arrayidx159 = getelementptr %struct.resource, ptr %56, i32 1
  %57 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx159, align 4
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %call79, i32 0, i32 7, i32 10
  %59 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %mmio_start, align 4
  %60 = load ptr, ptr %resource, align 8
  %arrayidx163 = getelementptr %struct.resource, ptr %60, i32 1
  %end.i296 = getelementptr %struct.resource, ptr %60, i32 1, i32 1
  %61 = ptrtoint ptr %end.i296 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %end.i296, align 4
  %63 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx163, align 4
  %sub.i297 = add i32 %62, 1
  %add.i298 = sub i32 %sub.i297, %64
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %call79, i32 0, i32 7, i32 11
  %65 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add.i298, ptr %mmio_len, align 4
  %66 = load ptr, ptr %resource, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call79, i32 0, i32 7, i32 1
  %69 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %smem_start, align 4
  %70 = load ptr, ptr %resource, align 8
  %end.i299 = getelementptr inbounds %struct.resource, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %end.i299 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %end.i299, align 4
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %70, align 4
  %sub.i300 = add i32 %72, 1
  %add.i301 = sub i32 %sub.i300, %74
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call79, i32 0, i32 7, i32 2
  %75 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add.i301, ptr %smem_len, align 4
  %76 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %24, align 4
  %div282 = lshr i32 %add.i301, 10
  %78 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %39, align 4
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %77, i32 noundef %div282, ptr noundef %79) #9
  %80 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %24, ptr %par, align 4
  %flags183 = getelementptr inbounds %struct.fb_info, ptr %call79, i32 0, i32 2
  %81 = ptrtoint ptr %flags183 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 8192, ptr %flags183, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call79, i32 0, i32 20
  %82 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @s1d13xxxfb_fbops, ptr %fbops, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %44)
  %cond = icmp eq i8 %44, 4
  br i1 %cond, label %sw.bb, label %do.end134.sw.epilog_crit_edge

do.end134.sw.epilog_crit_edge:                    ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @s1d13xxxfb_bitblt_solidfill, ptr getelementptr inbounds (%struct.fb_ops, ptr @s1d13xxxfb_fbops, i32 0, i32 11), align 4
  store ptr @s1d13xxxfb_bitblt_copyarea, ptr getelementptr inbounds (%struct.fb_ops, ptr @s1d13xxxfb_fbops, i32 0, i32 12), align 4
  %83 = ptrtoint ptr %flags183 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 8960, ptr %flags183, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %do.end134.sw.epilog_crit_edge
  br i1 %tobool.not, label %sw.epilog.if.end192_crit_edge, label %land.lhs.true187

sw.epilog.if.end192_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end192

land.lhs.true187:                                 ; preds = %sw.epilog
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 4
  %tobool188.not = icmp eq ptr %85, null
  br i1 %tobool188.not, label %land.lhs.true187.if.end192_crit_edge, label %if.then189

land.lhs.true187.if.end192_crit_edge:             ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end192

if.then189:                                       ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %par, align 4
  %initregssize = getelementptr inbounds %struct.s1d13xxxfb_pdata, ptr %1, i32 0, i32 1
  %88 = ptrtoint ptr %initregssize to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %initregssize, align 4
  tail call fastcc void @s1d13xxxfb_runinit(ptr noundef %87, ptr noundef nonnull %85, i32 noundef %89)
  br label %if.end192

if.end192:                                        ; preds = %if.then189, %land.lhs.true187.if.end192_crit_edge, %sw.epilog.if.end192_crit_edge
  tail call fastcc void @s1d13xxxfb_fetch_hw_state(ptr noundef nonnull %call79)
  %call193 = tail call i32 @register_framebuffer(ptr noundef nonnull %call79) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %cmp194 = icmp slt i32 %call193, 0
  br i1 %cmp194, label %if.end192.bail_crit_edge, label %do.end200

if.end192.bail_crit_edge:                         ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail

do.end200:                                        ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #8
  %node = getelementptr inbounds %struct.fb_info, ptr %call79, i32 0, i32 1
  %90 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %node, align 4
  %call204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %91, ptr noundef %fix) #9
  br label %cleanup

bail:                                             ; preds = %if.end192.bail_crit_edge, %for.inc.2, %do.end111, %do.end95, %if.end77.bail_crit_edge, %if.then72, %do.body60, %if.then45, %do.body39, %do.end28, %do.end16
  %ret.1 = phi i32 [ -19, %do.end16 ], [ -19, %do.end28 ], [ -19, %for.inc.2 ], [ -12, %do.end111 ], [ -12, %do.end95 ], [ -16, %if.then45 ], [ -16, %if.then72 ], [ -12, %if.end77.bail_crit_edge ], [ -22, %if.end192.bail_crit_edge ], [ -16, %do.body39 ], [ -16, %do.body60 ]
  tail call fastcc void @__s1d13xxxfb_remove(ptr noundef %pdev)
  br label %cleanup

cleanup:                                          ; preds = %bail, %do.end200
  %retval.0 = phi i32 [ %ret.1, %bail ], [ 0, %do.end200 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s1d13xxxfb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_framebuffer(ptr noundef %1) #6
  tail call fastcc void @__s1d13xxxfb_remove(ptr noundef %pdev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s1d13xxxfb_suspend(ptr nocapture noundef readonly %dev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 508
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %7 = and i8 %6, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %9, i32 508
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i, i8 %7) #6, !srcloc !114
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %add.ptr.i.i40 = getelementptr i8, ptr %11, i32 508
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i40) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %13 = and i8 %12, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr.i7.i41 = getelementptr i8, ptr %15, i32 508
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i41, i8 %13) #6, !srcloc !114
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %16 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %platform_data.i, align 8
  %disp_save = getelementptr inbounds %struct.s1d13xxxfb_par, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %disp_save to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %disp_save, align 4
  %regs_save = getelementptr inbounds %struct.s1d13xxxfb_par, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %regs_save to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs_save, align 4
  %tobool5.not = icmp eq ptr %20, null
  br i1 %tobool5.not, label %if.end8.i, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end8.i:                                        ; preds = %entry
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 11
  %21 = ptrtoint ptr %mmio_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mmio_len, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3264) #10
  %23 = ptrtoint ptr %regs_save to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i, ptr %regs_save, align 4
  %tobool11.not = icmp eq ptr %call9.i, null
  br i1 %tobool11.not, label %do.end, label %if.end8.i.if.end14_crit_edge

if.end8.i.if.end14_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.end:                                           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end8.i.if.end14_crit_edge, %entry.if.end14_crit_edge
  %24 = phi ptr [ %call9.i, %if.end8.i.if.end14_crit_edge ], [ %20, %entry.if.end14_crit_edge ]
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %mmio_len17 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 11
  %27 = ptrtoint ptr %mmio_len17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mmio_len17, align 4
  tail call void @mmiocpy(ptr noundef nonnull %24, ptr noundef %26, i32 noundef %28) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 496
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 17) #6, !srcloc !114
  %tobool18.not = icmp eq ptr %17, null
  br i1 %tobool18.not, label %if.end14.cleanup_crit_edge, label %land.lhs.true

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end14
  %platform_suspend_video = getelementptr inbounds %struct.s1d13xxxfb_pdata, ptr %17, i32 0, i32 3
  %31 = ptrtoint ptr %platform_suspend_video to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %platform_suspend_video, align 4
  %tobool19.not = icmp eq ptr %32, null
  br i1 %tobool19.not, label %land.lhs.true.cleanup_crit_edge, label %if.then20

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 %32() #6
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %land.lhs.true.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call22, %if.then20 ], [ -12, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s1d13xxxfb_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 496
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 16) #6, !srcloc !114
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr.i5863 = getelementptr i8, ptr %7, i32 497
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i5863) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not64 = icmp eq i8 %9, 0
  br i1 %tobool.not64, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #6
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %add.ptr.i58 = getelementptr i8, ptr %12, i32 497
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i58) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %14 = and i8 %13, 1
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %15 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platform_data.i, align 8
  %regs_save = getelementptr inbounds %struct.s1d13xxxfb_par, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %regs_save to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs_save, align 4
  %tobool7.not = icmp eq ptr %18, null
  br i1 %tobool7.not, label %while.end.if.end11_crit_edge, label %if.then8

while.end.if.end11_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then8:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 11
  %21 = ptrtoint ptr %mmio_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mmio_len, align 4
  tail call void @mmiocpy(ptr noundef %20, ptr noundef nonnull %18, i32 noundef %22) #6
  %23 = ptrtoint ptr %regs_save to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs_save, align 4
  tail call void @kfree(ptr noundef %24) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %while.end.if.end11_crit_edge
  %disp_save = getelementptr inbounds %struct.s1d13xxxfb_par, ptr %3, i32 0, i32 6
  %25 = ptrtoint ptr %disp_save to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %disp_save, align 4
  %tobool12.not = icmp eq ptr %26, null
  br i1 %tobool12.not, label %if.end11.if.end17_crit_edge, label %if.then13

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %27 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 2
  %30 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %smem_len, align 4
  tail call void @mmiocpy(ptr noundef %29, ptr noundef nonnull %26, i32 noundef %31) #6
  %32 = ptrtoint ptr %disp_save to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %disp_save, align 4
  tail call void @kfree(ptr noundef %33) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end11.if.end17_crit_edge
  %display = getelementptr inbounds %struct.s1d13xxxfb_par, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %display to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %display, align 4
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.not = icmp eq i8 %36, 0
  br i1 %cmp.not, label %if.end17.if.end22_crit_edge, label %if.then21

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 508
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %mode.0.i = or i8 %39, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %41, i32 508
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i, i8 %mode.0.i) #6, !srcloc !114
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17.if.end22_crit_edge
  %42 = ptrtoint ptr %display to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %display, align 4
  %44 = and i8 %43, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp26.not = icmp eq i8 %44, 0
  br i1 %cmp26.not, label %if.end22.if.end29_crit_edge, label %if.then28

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %add.ptr.i.i60 = getelementptr i8, ptr %46, i32 508
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i60) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %mode.0.i61 = or i8 %47, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  %add.ptr.i7.i62 = getelementptr i8, ptr %49, i32 508
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i62, i8 %mode.0.i61) #6, !srcloc !114
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end22.if.end29_crit_edge
  %tobool30.not = icmp eq ptr %16, null
  br i1 %tobool30.not, label %if.end29.cleanup_crit_edge, label %land.lhs.true

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end29
  %platform_resume_video = getelementptr inbounds %struct.s1d13xxxfb_pdata, ptr %16, i32 0, i32 4
  %50 = ptrtoint ptr %platform_resume_video to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %platform_resume_video, align 4
  %tobool31.not = icmp eq ptr %51, null
  br i1 %tobool31.not, label %land.lhs.true.cleanup_crit_edge, label %if.then32

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = tail call i32 %51() #6
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %land.lhs.true.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %if.then32 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s1d13xxxfb_bitblt_solidfill(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %rect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  %shr = lshr i32 %1, 3
  tail call void @_raw_spin_lock(ptr noundef nonnull @s1d13xxxfb_bitblt_lock) #6
  %conv1 = and i32 %shr, 65535
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %mul = mul i32 %conv1, %3
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %4 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dy, align 4
  %mul3 = mul i32 %5, %mul
  %6 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rect, align 4
  %mul5 = mul i32 %7, %conv1
  %add = add i32 %mul5, %mul3
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 4
  %conv12 = trunc i32 %add to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv12) #6, !srcloc !114
  %12 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %par, align 4
  %shr14 = lshr i32 %add, 8
  %conv16 = trunc i32 %shr14 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %add.ptr.i107 = getelementptr i8, ptr %15, i32 265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i107, i8 %conv16) #6, !srcloc !114
  %16 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par, align 4
  %shr18 = lshr i32 %add, 16
  %conv20 = trunc i32 %shr18 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %add.ptr.i108 = getelementptr i8, ptr %19, i32 266
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i108, i8 %conv20) #6, !srcloc !114
  %20 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %par, align 4
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %22 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width, align 4
  %24 = trunc i32 %23 to i8
  %conv23 = add i8 %24, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %21, align 4
  %add.ptr.i109 = getelementptr i8, ptr %26, i32 272
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i109, i8 %conv23) #6, !srcloc !114
  %27 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %par, align 4
  %29 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %width, align 4
  %shr26 = lshr i32 %30, 8
  %conv27 = trunc i32 %shr26 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %add.ptr.i110 = getelementptr i8, ptr %32, i32 273
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i110, i8 %conv27) #6, !srcloc !114
  %33 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %par, align 4
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %35 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height, align 4
  %37 = trunc i32 %36 to i8
  %conv31 = add i8 %37, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %34, align 4
  %add.ptr.i111 = getelementptr i8, ptr %39, i32 274
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i111, i8 %conv31) #6, !srcloc !114
  %40 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %par, align 4
  %42 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height, align 4
  %shr34 = lshr i32 %43, 8
  %conv35 = trunc i32 %shr34 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  %add.ptr.i112 = getelementptr i8, ptr %45, i32 275
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i112, i8 %conv35) #6, !srcloc !114
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %46 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %visual, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %47, label %if.else [
    i32 2, label %entry.if.then_crit_edge
    i32 4, label %entry.if.then_crit_edge121
  ]

entry.if.then_crit_edge121:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge121
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %49 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pseudo_palette, align 4
  %color = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %51 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %color, align 4
  %arrayidx = getelementptr i32, ptr %50, i32 %52
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %color47 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %fg.0.in = phi ptr [ %arrayidx, %if.then ], [ %color47, %if.else ]
  %53 = ptrtoint ptr %fg.0.in to i32
  call void @__asan_load4_noabort(i32 %53)
  %fg.0 = load i32, ptr %fg.0.in, align 4
  %54 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %par, align 4
  %conv53 = trunc i32 %fg.0 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %add.ptr.i113 = getelementptr i8, ptr %57, i32 280
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i113, i8 %conv53) #6, !srcloc !114
  %58 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %par, align 4
  %shr55 = lshr i32 %fg.0, 8
  %conv57 = trunc i32 %shr55 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %add.ptr.i114 = getelementptr i8, ptr %61, i32 281
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i114, i8 %conv57) #6, !srcloc !114
  %62 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %par, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %add.ptr.i115 = getelementptr i8, ptr %65, i32 256
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i115, i8 0) #6, !srcloc !114
  %66 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %par, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %add.ptr.i116 = getelementptr i8, ptr %69, i32 259
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i116, i8 12) #6, !srcloc !114
  %70 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %par, align 4
  %72 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bits_per_pixel, align 4
  %shr63 = lshr i32 %73, 4
  %conv64 = trunc i32 %shr63 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %71, align 4
  %add.ptr.i117 = getelementptr i8, ptr %75, i32 257
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i117, i8 %conv64) #6, !srcloc !114
  %76 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %par, align 4
  %shr66 = lshr i32 %mul, 1
  %conv68 = trunc i32 %shr66 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %add.ptr.i118 = getelementptr i8, ptr %79, i32 268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i118, i8 %conv68) #6, !srcloc !114
  %80 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %par, align 4
  %shr70 = lshr i32 %mul, 9
  %conv71 = trunc i32 %shr70 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %add.ptr.i119 = getelementptr i8, ptr %83, i32 269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i119, i8 %conv71) #6, !srcloc !114
  %84 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %par, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %add.ptr.i120 = getelementptr i8, ptr %87, i32 256
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i120, i8 -128) #6, !srcloc !114
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %timeout.addr.0.i = phi i32 [ 8000, %if.end ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %88 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %par, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %add.ptr.i.i = getelementptr i8, ptr %91, i32 256
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %92)
  %tobool.not.i = icmp sgt i8 %92, -1
  br i1 %tobool.not.i, label %while.cond.i.bltbit_wait_bitclear.exit_crit_edge, label %while.body.i

while.cond.i.bltbit_wait_bitclear.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bltbit_wait_bitclear.exit

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 2147480) #6
  %dec.i = add nsw i32 %timeout.addr.0.i, -1
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %while.body.i.bltbit_wait_bitclear.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.body.i.bltbit_wait_bitclear.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bltbit_wait_bitclear.exit

bltbit_wait_bitclear.exit:                        ; preds = %while.body.i.bltbit_wait_bitclear.exit_crit_edge, %while.cond.i.bltbit_wait_bitclear.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @s1d13xxxfb_bitblt_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s1d13xxxfb_bitblt_copyarea(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %area) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sx1 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %0 = ptrtoint ptr %sx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sx1, align 4
  %sy2 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %2 = ptrtoint ptr %sy2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sy2, align 4
  %4 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %area, align 4
  %dy6 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %6 = ptrtoint ptr %dy6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dy6, align 4
  %width8 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %8 = ptrtoint ptr %width8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width8, align 4
  %height10 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %10 = ptrtoint ptr %height10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height10, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @s1d13xxxfb_bitblt_lock) #6
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %12 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bits_per_pixel, align 4
  %shr = lshr i32 %13, 3
  %conv13 = and i32 %shr, 65535
  %14 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %var, align 4
  %mul = mul i32 %conv13, %15
  %conv15 = and i32 %7, 65535
  %conv16 = and i32 %3, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15, i32 %conv16)
  %cmp = icmp ugt i32 %conv15, %conv16
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = and i32 %5, 65535
  %.pre210 = and i32 %1, 65535
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15, i32 %conv16)
  %cmp20 = icmp ne i32 %conv15, %conv16
  %conv22 = and i32 %5, 65535
  %conv23 = and i32 %1, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv22, i32 %conv23)
  %cmp24.not = icmp ult i32 %conv22, %conv23
  %or.cond = select i1 %cmp20, i1 true, i1 %cmp24.not
  br i1 %or.cond, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %conv42.pre-phi = phi i32 [ %.pre210, %entry.if.then_crit_edge ], [ %conv23, %lor.lhs.false.if.then_crit_edge ]
  %conv30.pre-phi = phi i32 [ %.pre, %entry.if.then_crit_edge ], [ %conv22, %lor.lhs.false.if.then_crit_edge ]
  %conv27 = and i32 %11, 65535
  %add = add nsw i32 %conv27, -1
  %sub = add nsw i32 %add, %conv15
  %mul28 = mul i32 %mul, %sub
  %conv31 = and i32 %9, 65535
  %add32 = add nsw i32 %conv31, -1
  %sub33 = add nsw i32 %add32, %conv30.pre-phi
  %mul34 = mul i32 %conv13, %sub33
  %add35 = add i32 %mul28, %mul34
  %sub39 = add nsw i32 %add, %conv16
  %sub45 = add nsw i32 %add32, %conv42.pre-phi
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %mul49 = mul i32 %mul, %conv15
  %mul52 = mul nuw i32 %conv13, %conv22
  %add53 = add i32 %mul49, %mul52
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv23.sink = phi i32 [ %conv23, %if.else ], [ %sub45, %if.then ]
  %conv16.pn = phi i32 [ %conv16, %if.else ], [ %sub39, %if.then ]
  %dst.0 = phi i32 [ %add53, %if.else ], [ %add35, %if.then ]
  %cmp99 = phi i1 [ false, %if.else ], [ true, %if.then ]
  %mul55.sink = mul i32 %mul, %conv16.pn
  %mul58 = mul i32 %conv13, %conv23.sink
  %add59 = add i32 %mul55.sink, %mul58
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %16 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par, align 4
  %conv60 = trunc i32 %add59 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 260
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv60) #6, !srcloc !114
  %20 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %par, align 4
  %shr62 = lshr i32 %add59, 8
  %conv64 = trunc i32 %shr62 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %add.ptr.i193 = getelementptr i8, ptr %23, i32 261
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i193, i8 %conv64) #6, !srcloc !114
  %24 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %par, align 4
  %shr66 = lshr i32 %add59, 16
  %conv68 = trunc i32 %shr66 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %add.ptr.i194 = getelementptr i8, ptr %27, i32 262
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i194, i8 %conv68) #6, !srcloc !114
  %28 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %par, align 4
  %conv71 = trunc i32 %dst.0 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %add.ptr.i195 = getelementptr i8, ptr %31, i32 264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i195, i8 %conv71) #6, !srcloc !114
  %32 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %par, align 4
  %shr73 = lshr i32 %dst.0, 8
  %conv75 = trunc i32 %shr73 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %add.ptr.i196 = getelementptr i8, ptr %35, i32 265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i196, i8 %conv75) #6, !srcloc !114
  %36 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %par, align 4
  %shr77 = lshr i32 %dst.0, 16
  %conv79 = trunc i32 %shr77 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %add.ptr.i197 = getelementptr i8, ptr %39, i32 266
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i197, i8 %conv79) #6, !srcloc !114
  %40 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %par, align 4
  %42 = trunc i32 %9 to i8
  %conv84 = add i8 %42, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %41, align 4
  %add.ptr.i198 = getelementptr i8, ptr %44, i32 272
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i198, i8 %conv84) #6, !srcloc !114
  %45 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %par, align 4
  %conv81 = lshr i32 %9, 8
  %conv88 = trunc i32 %conv81 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %add.ptr.i199 = getelementptr i8, ptr %48, i32 273
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i199, i8 %conv88) #6, !srcloc !114
  %49 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %par, align 4
  %51 = trunc i32 %11 to i8
  %conv93 = add i8 %51, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %50, align 4
  %add.ptr.i200 = getelementptr i8, ptr %53, i32 274
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i200, i8 %conv93) #6, !srcloc !114
  %54 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %par, align 4
  %conv90 = lshr i32 %11, 8
  %conv97 = trunc i32 %conv90 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %add.ptr.i201 = getelementptr i8, ptr %57, i32 275
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i201, i8 %conv97) #6, !srcloc !114
  %58 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %par, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %add.ptr.i202 = getelementptr i8, ptr %61, i32 259
  br i1 %cmp99, label %do.end, label %if.else103

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i202, i8 3) #6, !srcloc !114
  br label %if.end108

if.else103:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i202, i8 2) #6, !srcloc !114
  br label %if.end108

if.end108:                                        ; preds = %if.else103, %do.end
  %62 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %par, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %add.ptr.i204 = getelementptr i8, ptr %65, i32 256
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i204, i8 0) #6, !srcloc !114
  %66 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %par, align 4
  %68 = lshr i32 %13, 4
  %conv113 = trunc i32 %68 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %67, align 4
  %add.ptr.i205 = getelementptr i8, ptr %70, i32 257
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i205, i8 %conv113) #6, !srcloc !114
  %71 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %par, align 4
  %shr115 = lshr i32 %mul, 1
  %conv117 = trunc i32 %shr115 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %add.ptr.i206 = getelementptr i8, ptr %74, i32 268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i206, i8 %conv117) #6, !srcloc !114
  %75 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %par, align 4
  %shr119 = lshr i32 %mul, 9
  %conv120 = trunc i32 %shr119 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %add.ptr.i207 = getelementptr i8, ptr %78, i32 269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i207, i8 %conv120) #6, !srcloc !114
  %79 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %par, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %add.ptr.i208 = getelementptr i8, ptr %82, i32 258
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i208, i8 12) #6, !srcloc !114
  %83 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %par, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %add.ptr.i209 = getelementptr i8, ptr %86, i32 256
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i209, i8 -128) #6, !srcloc !114
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end108
  %timeout.addr.0.i = phi i32 [ 8000, %if.end108 ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %87 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %par, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %add.ptr.i.i = getelementptr i8, ptr %90, i32 256
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %91)
  %tobool.not.i = icmp sgt i8 %91, -1
  br i1 %tobool.not.i, label %while.cond.i.bltbit_wait_bitclear.exit_crit_edge, label %while.body.i

while.cond.i.bltbit_wait_bitclear.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bltbit_wait_bitclear.exit

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 2147480) #6
  %dec.i = add nsw i32 %timeout.addr.0.i, -1
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %while.body.i.bltbit_wait_bitclear.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.body.i.bltbit_wait_bitclear.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bltbit_wait_bitclear.exit

bltbit_wait_bitclear.exit:                        ; preds = %while.body.i.bltbit_wait_bitclear.exit_crit_edge, %while.cond.i.bltbit_wait_bitclear.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @s1d13xxxfb_bitblt_lock) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s1d13xxxfb_runinit(ptr nocapture noundef readonly %par, ptr nocapture noundef readonly %initregs, i32 noundef %size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp70.not = icmp eq i32 %size, 0
  br i1 %cmp70.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.071 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.s1d13xxxfb_regval, ptr %initregs, i32 %i.071
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %1)
  %switch = icmp ugt i16 %1, -3
  %value = getelementptr %struct.s1d13xxxfb_regval, ptr %initregs, i32 %i.071, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value, align 2
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not68 = icmp eq i8 %3, 0
  br i1 %tobool.not68, label %if.then.for.inc_crit_edge, label %while.body.preheader

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

while.body.preheader:                             ; preds = %if.then
  %conv9 = zext i8 %3 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.069 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %conv9, %while.body.preheader ]
  %dec = add nsw i32 %__ms.069, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #6
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %par, align 4
  %conv.i = zext i16 %1 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %3) #6, !srcloc !114
  br label %for.inc

for.inc:                                          ; preds = %if.else, %while.body.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %inc = add nuw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s1d13xxxfb_fetch_hw_state(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %par3 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par3, align 4
  %type = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %type, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 508
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %display4 = getelementptr inbounds %struct.s1d13xxxfb_par, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %display4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %display4, align 4
  %conv = zext i8 %5 to i32
  %and9 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp10.not = icmp eq i32 %and9, 0
  %7 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %.not = icmp eq i32 %7, 3
  br i1 %.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  br i1 %cmp10.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i157 = getelementptr i8, ptr %9, i32 64
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i157) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  br label %if.end18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i158 = getelementptr i8, ptr %9, i32 96
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i158) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then15
  %display.0 = phi i8 [ %10, %if.then15 ], [ %11, %if.else ]
  %12 = and i8 %display.0, 7
  %and20 = zext i8 %12 to i32
  %13 = zext i32 %and20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %and20, label %if.end18.sw.epilog_crit_edge [
    i32 2, label %if.end18.sw.bb_crit_edge
    i32 3, label %if.end18.sw.bb_crit_edge171
    i32 5, label %sw.bb29
  ]

if.end18.sw.bb_crit_edge171:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end18.sw.bb_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end18.sw.bb_crit_edge, %if.end18.sw.bb_crit_edge171
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %14 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %bits_per_pixel, align 4
  %blue = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %15 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %blue, align 4
  %green = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %16 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %green, align 4
  %red = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %17 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %red, align 4
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %18 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %length, align 4
  %length26 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %19 = ptrtoint ptr %length26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %length26, align 4
  %length28 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %20 = ptrtoint ptr %length28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %length28, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %21 = ptrtoint ptr %visual.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %visual.i, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %22 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %bits_per_pixel.i, align 4
  %red.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %length.i, align 4
  %24 = ptrtoint ptr %red.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 11, ptr %red.i, align 4
  %green.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length5.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %25 = ptrtoint ptr %length5.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 6, ptr %length5.i, align 4
  %26 = ptrtoint ptr %green.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %green.i, align 4
  %blue.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %length10.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %27 = ptrtoint ptr %length10.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5, ptr %length10.i, align 4
  %28 = ptrtoint ptr %blue.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %blue.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb29, %sw.bb, %if.end18.sw.epilog_crit_edge
  %cmap = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12
  %call34 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #6
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %add.ptr.i159 = getelementptr i8, ptr %30, i32 48
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i159) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  br i1 %cmp10.not, label %if.else70, label %if.then52

if.then52:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i160 = getelementptr i8, ptr %33, i32 50
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i160) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %add.ptr.i161 = getelementptr i8, ptr %36, i32 56
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i161) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %conv56 = zext i8 %37 to i32
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %add.ptr.i162 = getelementptr i8, ptr %39, i32 57
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i162) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %41 = and i8 %40, 3
  %and59 = zext i8 %41 to i32
  %shl = shl nuw nsw i32 %and59, 8
  %add60 = or i32 %shl, %conv56
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %add.ptr.i163 = getelementptr i8, ptr %43, i32 70
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i163) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %add.ptr.i164 = getelementptr i8, ptr %46, i32 71
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i164) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  br label %if.end91

if.else70:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i165 = getelementptr i8, ptr %33, i32 80
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i165) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %add.ptr.i166 = getelementptr i8, ptr %50, i32 86
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i166) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %conv76 = zext i8 %51 to i32
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %add.ptr.i167 = getelementptr i8, ptr %53, i32 87
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i167) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %55 = and i8 %54, 3
  %and79 = zext i8 %55 to i32
  %shl80 = shl nuw nsw i32 %and79, 8
  %add81 = or i32 %shl80, %conv76
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %add.ptr.i168 = getelementptr i8, ptr %57, i32 102
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i168) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %add.ptr.i169 = getelementptr i8, ptr %60, i32 103
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i169) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  br label %if.end91

if.end91:                                         ; preds = %if.else70, %if.then52
  %.sink170 = phi i8 [ %61, %if.else70 ], [ %47, %if.then52 ]
  %conv84.sink.in = phi i8 [ %58, %if.else70 ], [ %44, %if.then52 ]
  %xres.0.in.in.in = phi i8 [ %48, %if.else70 ], [ %34, %if.then52 ]
  %yres.0.in = phi i32 [ %add81, %if.else70 ], [ %add60, %if.then52 ]
  %conv84.sink = zext i8 %conv84.sink.in to i32
  %62 = and i8 %.sink170, 7
  %and87 = zext i8 %62 to i32
  %shl88 = shl nuw nsw i32 %and87, 8
  %add89 = or i32 %shl88, %conv84.sink
  %var1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %xres.0.in.in = zext i8 %xres.0.in.in.in to i32
  %xres.0.in = shl nuw nsw i32 %xres.0.in.in, 3
  %xres.0 = add nuw nsw i32 %xres.0.in, 8
  %yres.0 = add nsw i32 %yres.0.in, 1
  %mul93 = shl nuw nsw i32 %add89, 4
  %bits_per_pixel94 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %63 = ptrtoint ptr %bits_per_pixel94 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bits_per_pixel94, align 4
  %div = udiv i32 %mul93, %64
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %65 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %smem_len, align 4
  %mul96 = shl nuw nsw i32 %add89, 1
  %div97 = udiv i32 %66, %mul96
  %67 = ptrtoint ptr %var1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %xres.0, ptr %var1, align 4
  %yres99 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %68 = ptrtoint ptr %yres99 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %yres.0, ptr %yres99, align 4
  %xres_virtual100 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %69 = ptrtoint ptr %xres_virtual100 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %div, ptr %xres_virtual100, align 4
  %yres_virtual101 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %70 = ptrtoint ptr %yres_virtual101 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div97, ptr %yres_virtual101, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %71 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %yoffset, align 4
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %72 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %xoffset, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %73 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %mul96, ptr %line_length, align 4
  %74 = lshr i8 %31, 2
  %.lobit = and i8 %74, 1
  %75 = xor i8 %.lobit, 1
  %76 = zext i8 %75 to i32
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %77 = ptrtoint ptr %grayscale to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %grayscale, align 4
  %activate = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 13
  %78 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %activate, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__s1d13xxxfb_remove(ptr nocapture noundef readonly %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %entry
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then4

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 508
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr.i33 = getelementptr i8, ptr %9, i32 496
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i33, i8 17) #6, !srcloc !114
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  tail call void @iounmap(ptr noundef %11) #6
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #6
  %12 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iounmap(ptr noundef nonnull %14) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  tail call void @framebuffer_release(ptr noundef nonnull %1) #6
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry.if.end9_crit_edge
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %15 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resource, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %18
  %add.i = add i32 %sub.i, %20
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %18, i32 noundef %add.i) #6
  %21 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resource, align 8
  %arrayidx14 = getelementptr %struct.resource, ptr %22, i32 1
  %23 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx14, align 4
  %end.i34 = getelementptr %struct.resource, ptr %22, i32 1, i32 1
  %25 = ptrtoint ptr %end.i34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end.i34, align 4
  %sub.i35 = sub i32 1, %24
  %add.i36 = add i32 %sub.i35, %26
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %24, i32 noundef %add.i36) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s1d13xxxfb_set_par(ptr nocapture noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %display = getelementptr inbounds %struct.s1d13xxxfb_par, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %display to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %display, align 4
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %6, i32 64
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i71 = getelementptr i8, ptr %6, i32 96
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i71) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.0.in = phi i8 [ %7, %if.then ], [ %8, %if.else ]
  %9 = and i8 %val.0.in, -8
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %10 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits_per_pixel, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %11, label %if.end.cleanup_crit_edge [
    i32 4, label %do.body5
    i32 8, label %do.body10
    i32 16, label %do.body16
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %13 = ptrtoint ptr %visual.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %visual.i, align 4
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %length.i, align 4
  %length2.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %15 = ptrtoint ptr %length2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %length2.i, align 4
  %length4.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %16 = ptrtoint ptr %length4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %length4.i, align 4
  br label %do.body25

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %visual.i72 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %17 = ptrtoint ptr %visual.i72 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %visual.i72, align 4
  %length.i73 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %18 = ptrtoint ptr %length.i73 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %length.i73, align 4
  %length2.i74 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %19 = ptrtoint ptr %length2.i74 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %length2.i74, align 4
  %length4.i75 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %20 = ptrtoint ptr %length4.i75 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %length4.i75, align 4
  br label %do.body25

do.body16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %visual.i76 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %21 = ptrtoint ptr %visual.i76 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %visual.i76, align 4
  %22 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %bits_per_pixel, align 4
  %red.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %length.i77 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %23 = ptrtoint ptr %length.i77 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %length.i77, align 4
  %24 = ptrtoint ptr %red.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 11, ptr %red.i, align 4
  %green.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length5.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %25 = ptrtoint ptr %length5.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 6, ptr %length5.i, align 4
  %26 = ptrtoint ptr %green.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %green.i, align 4
  %blue.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %length10.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %27 = ptrtoint ptr %length10.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5, ptr %length10.i, align 4
  %28 = ptrtoint ptr %blue.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %blue.i, align 4
  br label %do.body25

do.body25:                                        ; preds = %do.body16, %do.body10, %do.body5
  %.sink = phi i8 [ 2, %do.body5 ], [ 3, %do.body10 ], [ 5, %do.body16 ]
  %or = or i8 %.sink, %9
  %29 = ptrtoint ptr %display to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %display, align 4
  %31 = and i8 %30, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool32.not = icmp eq i8 %31, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  br i1 %tobool32.not, label %if.else35, label %if.then33

if.then33:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i78 = getelementptr i8, ptr %33, i32 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i78, i8 %or) #6, !srcloc !114
  br label %if.end37

if.else35:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i79 = getelementptr i8, ptr %33, i32 96
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i79, i8 %or) #6, !srcloc !114
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %if.then33
  %34 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %var, align 4
  %36 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %37, %35
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %div70 = lshr i32 %mul, 3
  %38 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div70, ptr %line_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s1d13xxxfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp = icmp ugt i32 %regno, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %2 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body.if.end5_crit_edge, label %if.then1

do.body.if.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul i32 %red, 19595
  %mul2 = mul i32 %green, 38470
  %add = add i32 %mul2, %mul
  %mul3 = mul i32 %blue, 7471
  %add4 = add i32 %add, %mul3
  %shr = lshr i32 %add4, 16
  br label %if.end5

if.end5:                                          ; preds = %if.then1, %do.body.if.end5_crit_edge
  %blue.addr.0 = phi i32 [ %shr, %if.then1 ], [ %blue, %do.body.if.end5_crit_edge ]
  %green.addr.0 = phi i32 [ %shr, %if.then1 ], [ %green, %do.body.if.end5_crit_edge ]
  %red.addr.0 = phi i32 [ %shr, %if.then1 ], [ %red, %do.body.if.end5_crit_edge ]
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %4 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %visual, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %5, label %if.end5.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb27
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp6 = icmp ugt i32 %regno, 15
  br i1 %cmp6, label %sw.bb.cleanup_crit_edge, label %if.end8

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %shr9 = lshr i32 %red.addr.0, 11
  %red11 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %7 = ptrtoint ptr %red11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %red11, align 4
  %shl = shl i32 %shr9, %8
  %shr12 = lshr i32 %green.addr.0, 10
  %green14 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %9 = ptrtoint ptr %green14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %green14, align 4
  %shl16 = shl i32 %shr12, %10
  %or = or i32 %shl16, %shl
  %shr17 = lshr i32 %blue.addr.0, 11
  %blue19 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %11 = ptrtoint ptr %blue19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %blue19, align 4
  %shl21 = shl i32 %shr17, %12
  %or22 = or i32 %or, %shl21
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %13 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pseudo_palette, align 4
  %arrayidx = getelementptr i32, ptr %14, i32 %regno
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or22, ptr %arrayidx, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %regno to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 482
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv) #6, !srcloc !114
  %conv28 = trunc i32 %red.addr.0 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr.i56 = getelementptr i8, ptr %19, i32 484
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i56, i8 %conv28) #6, !srcloc !114
  %conv29 = trunc i32 %green.addr.0 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr.i57 = getelementptr i8, ptr %21, i32 484
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i57, i8 %conv29) #6, !srcloc !114
  %conv30 = trunc i32 %blue.addr.0 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr.i58 = getelementptr i8, ptr %23, i32 484
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i58, i8 %conv30) #6, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %sw.bb27, %if.end8, %sw.bb.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -38, %if.end5.cleanup_crit_edge ], [ 0, %if.end8 ], [ 0, %sw.bb27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s1d13xxxfb_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = zext i32 %blank_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %blank_mode, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge27
    i32 2, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.epilog_crit_edge28
    i32 4, label %sw.bb11
  ]

entry.sw.epilog_crit_edge28:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.bb_crit_edge27:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge27
  %display = getelementptr inbounds %struct.s1d13xxxfb_par, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %display to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %display, align 4
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 508
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %mode.0.i = or i8 %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %10, i32 508
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i, i8 %mode.0.i) #6, !srcloc !114
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %11 = ptrtoint ptr %display to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %display, align 4
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp6.not = icmp eq i8 %13, 0
  br i1 %cmp6.not, label %if.end.sw.epilog_crit_edge, label %if.then8

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %15, i32 508
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i20) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %mode.0.i21 = or i8 %16, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i7.i22 = getelementptr i8, ptr %18, i32 508
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i22, i8 %mode.0.i21) #6, !srcloc !114
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %20, i32 508
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i23) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %22 = and i8 %21, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %add.ptr.i7.i24 = getelementptr i8, ptr %24, i32 508
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i24, i8 %22) #6, !srcloc !114
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %26, i32 508
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i25) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %28 = and i8 %27, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %add.ptr.i7.i26 = getelementptr i8, ptr %30, i32 508
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i26, i8 %28) #6, !srcloc !114
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %if.then8, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge28
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %blank_mode)
  %cmp12 = icmp eq i32 %blank_mode, 1
  %cond = zext i1 %cmp12 to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s1d13xxxfb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %2 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xoffset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %4 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yoffset, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yres, align 4
  %add = add i32 %7, %5
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %8 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp4 = icmp ugt i32 %add, %9
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %10 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %line_length, align 4
  %shr = lshr i32 %11, 1
  %mul = mul i32 %shr, %5
  %display = getelementptr inbounds %struct.s1d13xxxfb_par, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %display to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %display, align 4
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %conv18 = trunc i32 %mul to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %16, i32 66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv18) #6, !srcloc !114
  %shr11 = lshr i32 %mul, 8
  %conv13 = trunc i32 %shr11 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i43 = getelementptr i8, ptr %18, i32 67
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i43, i8 %conv13) #6, !srcloc !114
  %shr14 = lshr i32 %mul, 16
  %19 = trunc i32 %shr14 to i8
  %conv16 = and i8 %19, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr.i44 = getelementptr i8, ptr %21, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i44, i8 %conv16) #6, !srcloc !114
  br label %cleanup

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i45 = getelementptr i8, ptr %16, i32 98
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i45, i8 %conv18) #6, !srcloc !114
  %shr19 = lshr i32 %mul, 8
  %conv21 = trunc i32 %shr19 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr.i46 = getelementptr i8, ptr %23, i32 99
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i46, i8 %conv21) #6, !srcloc !114
  %shr22 = lshr i32 %mul, 16
  %24 = trunc i32 %shr22 to i8
  %conv24 = and i8 %24, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr.i47 = getelementptr i8, ptr %26, i32 100
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i47, i8 %conv24) #6, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !91, !92, !93, !94, !96, !98, !99, !100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_s1d13xxxfb__303_1028_s1d13xxxfb_init6, !1, !"__initcall__kmod_s1d13xxxfb__303_1028_s1d13xxxfb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 1028, i32 1}
!2 = !{ptr @__exitcall_s1d13xxxfb_exit, !3, !"__exitcall_s1d13xxxfb_exit", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 1029, i32 1}
!4 = !{ptr @__UNIQUE_ID_file304, !5, !"__UNIQUE_ID_file304", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 1032, i32 1}
!6 = !{ptr @__UNIQUE_ID_license305, !5, !"__UNIQUE_ID_license305", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description306, !8, !"__UNIQUE_ID_description306", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 1033, i32 1}
!9 = !{ptr @__UNIQUE_ID_author307, !10, !"__UNIQUE_ID_author307", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 1034, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 1004, i32 11}
!13 = !{ptr @s1d13xxxfb_driver, !14, !"s1d13xxxfb_driver", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 996, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 771, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @s1d13xxxfb_probe._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @s1d13xxxfb_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 781, i32 3}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @s1d13xxxfb_probe._entry.4, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @s1d13xxxfb_probe._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 790, i32 3}
!29 = !{ptr @s1d13xxxfb_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @s1d13xxxfb_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 795, i32 7}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 797, i32 3}
!35 = !{ptr @s1d13xxxfb_probe.__UNIQUE_ID_ddebug301, !34, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 802, i32 7}
!38 = !{ptr @s1d13xxxfb_probe.__UNIQUE_ID_ddebug302, !39, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 804, i32 3}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 820, i32 3}
!42 = !{ptr @s1d13xxxfb_probe._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @s1d13xxxfb_probe._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 830, i32 3}
!46 = !{ptr @s1d13xxxfb_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @s1d13xxxfb_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 852, i32 3}
!50 = !{ptr @s1d13xxxfb_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @s1d13xxxfb_probe._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 854, i32 3}
!54 = !{ptr @s1d13xxxfb_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @s1d13xxxfb_probe._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 856, i32 3}
!58 = !{ptr @s1d13xxxfb_probe._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @s1d13xxxfb_probe._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 859, i32 3}
!62 = !{ptr @s1d13xxxfb_probe._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @s1d13xxxfb_probe._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 869, i32 2}
!66 = !{ptr @s1d13xxxfb_probe._entry.33, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @s1d13xxxfb_probe._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 898, i32 2}
!70 = !{ptr @s1d13xxxfb_probe._entry.36, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @s1d13xxxfb_probe._entry_ptr.38, !69, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"s1d13xxxfb_prod_ids", i1 false, i1 false}
!73 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 68, i32 18}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 78, i32 2}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 79, i32 2}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 80, i32 2}
!80 = !{ptr @s1d13xxxfb_prod_names, !81, !"s1d13xxxfb_prod_names", i1 false, i1 false}
!81 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 77, i32 20}
!82 = !{ptr @s1d13xxxfb_fix, !83, !"s1d13xxxfb_fix", i1 false, i1 false}
!83 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 86, i32 39}
!84 = !{ptr @s1d13xxxfb_fbops, !85, !"s1d13xxxfb_fbops", i1 false, i1 false}
!85 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 599, i32 22}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 63, i32 8}
!88 = !{ptr @s1d13xxxfb_bitblt_lock, !87, !"s1d13xxxfb_bitblt_lock", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 654, i32 3}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @s1d13xxxfb_fetch_hw_state._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @s1d13xxxfb_fetch_hw_state._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = distinct !{null, !95, !"s1d13xxxfb_width_tab", i1 false, i1 false}
!95 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 613, i32 12}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/video/fbdev/s1d13xxxfb.c", i32 940, i32 3}
!98 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @s1d13xxxfb_suspend._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @s1d13xxxfb_suspend._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{i64 2148980194, i64 2148980199, i64 2148980212, i64 2148980256, i64 2148980290, i64 2148980311}
!111 = !{i64 6430499}
!112 = !{i64 2155891469}
!113 = !{i64 2155891854}
!114 = !{i64 6430104}
