; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/tmiofb.c_pt.bc'
source_filename = "../drivers/video/fbdev/tmiofb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.86, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.tmiofb_par = type { [16 x i32], %struct.wait_queue_head, i8, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.tmio_fb_data = type { ptr, ptr, i32, ptr, i32, i32 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_vblank = type { i32, i32, i32, i32, [4 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@tmiofb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tmiofb_probe, ptr @tmiofb_remove, ptr null, ptr @tmiofb_suspend, ptr @tmiofb_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_tmiofb__302_1035_tmiofb_init6 = internal global ptr @tmiofb_init, section ".initcall6.init", align 4
@__exitcall_tmiofb_cleanup = internal global ptr @tmiofb_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description303 = internal constant [43 x i8] c"tmiofb.description=TMIO framebuffer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [58 x i8] c"tmiofb.author=Chris Humbert, Dirk Opfer, Dmitry Baryshkov\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [39 x i8] c"tmiofb.file=drivers/video/fbdev/tmiofb\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [19 x i8] c"tmiofb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tmio-fb\00", [24 x i8] zeroinitializer }, align 32
@tmiofb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 686, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NULL platform data!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tmiofb_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/video/fbdev/tmiofb.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tmiofb_probe._entry_ptr = internal global ptr @tmiofb_probe._entry, section ".printk_index", align 4
@tmiofb_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 690, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"missing resources\0A\00", [45 x i8] zeroinitializer }, align 32
@tmiofb_probe._entry_ptr.8 = internal global ptr @tmiofb_probe._entry.6, section ".printk_index", align 4
@tmiofb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&par->wait_acc\00", [17 x i8] zeroinitializer }, align 32
@tmiofb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tmiofb_check_var, ptr @tmiofb_set_par, ptr @tmiofb_setcolreg, ptr null, ptr @tmiofb_blank, ptr null, ptr @tmiofb_fillrect, ptr @tmiofb_copyarea, ptr @cfb_imageblit, ptr null, ptr @tmiofb_sync, ptr @tmiofb_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tmiofb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016fb%d: %s frame buffer device\0A\00", [32 x i8] zeroinitializer }, align 32
@tmiofb_probe._entry_ptr.12 = internal global ptr @tmiofb_probe._entry.10, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tmiofb_acc_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013tmiofb: timeout waiting for %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tmiofb_acc_wait\00", [16 x i8] zeroinitializer }, align 32
@tmiofb_acc_wait._entry_ptr = internal global ptr @tmiofb_acc_wait._entry, section ".printk_index", align 4
@tmiofb_acc_wait._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tmiofb_acc_wait._entry_ptr.16 = internal global ptr @tmiofb_acc_wait._entry.15, section ".printk_index", align 4
@tmiofb_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013timeout waiting for blit to end!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tmiofb_sync\00", [20 x i8] zeroinitializer }, align 32
@tmiofb_sync._entry_ptr = internal global ptr @tmiofb_sync._entry, section ".printk_index", align 4
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@tmiofb_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016tmiofb: switching to waitq\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tmiofb_irq\00", [21 x i8] zeroinitializer }, align 32
@tmiofb_irq._entry_ptr = internal global ptr @tmiofb_irq._entry, section ".printk_index", align 4
@tmiofb_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016tmiofb: switching to polling\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tmiofb_suspend\00", [17 x i8] zeroinitializer }, align 32
@tmiofb_suspend._entry_ptr = internal global ptr @tmiofb_suspend._entry, section ".printk_index", align 4
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tmiofb\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2086900480, i64 2086900481, i64 2149598738]
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"tmiofb_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 989, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 990, i32 17 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 686, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 690, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 702, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"tmiofb_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 649, i32 28 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 776, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 364, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 374, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 420, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 174, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 225, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 946, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1023, i32 21 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [32 x i8] c"../drivers/video/fbdev/tmiofb.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1008, i32 38 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_tmiofb_cleanup, ptr @__initcall__kmod_tmiofb__302_1035_tmiofb_init6, ptr @tmiofb_acc_wait._entry, ptr @tmiofb_acc_wait._entry.15, ptr @tmiofb_acc_wait._entry_ptr, ptr @tmiofb_acc_wait._entry_ptr.16, ptr @tmiofb_cleanup, ptr @tmiofb_irq._entry, ptr @tmiofb_irq._entry_ptr, ptr @tmiofb_probe._entry, ptr @tmiofb_probe._entry.10, ptr @tmiofb_probe._entry.6, ptr @tmiofb_probe._entry_ptr, ptr @tmiofb_probe._entry_ptr.12, ptr @tmiofb_probe._entry_ptr.8, ptr @tmiofb_suspend._entry, ptr @tmiofb_suspend._entry_ptr, ptr @tmiofb_sync._entry, ptr @tmiofb_sync._entry_ptr, ptr @tmiofb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @tmiofb_probe.__key, ptr @.str.9, ptr @tmiofb_ops, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmiofb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmiofb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmiofb_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmiofb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmiofb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmiofb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmiofb_acc_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmiofb_acc_wait._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmiofb_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmiofb_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmiofb_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tmiofb_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @tmiofb_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tmiofb_init() #0 section ".init.text" align 64 {
entry:
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #9
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str.26, ptr noundef nonnull %option) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call fastcc void @tmiofb_setup(ptr noundef %2) #12
  %call1 = call i32 @__platform_driver_register(ptr noundef nonnull @tmiofb_driver, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmiofb_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mfd_cell.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfd_cell.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %call3 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 1) #9
  %call4 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 0) #9
  %call5 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 2) #9
  %call6 = tail call i32 @platform_get_irq(ptr noundef %dev, i32 noundef 0) #9
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp9 = icmp eq ptr %call3, null
  %cmp10 = icmp eq ptr %call4, null
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp10
  %cmp12 = icmp eq ptr %call5, null
  %or.cond198 = select i1 %or.cond, i1 true, i1 %cmp12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp14 = icmp slt i32 %call6, 0
  %or.cond199 = select i1 %or.cond198, i1 true, i1 %cmp14
  br i1 %or.cond199, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #13
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %call22 = tail call ptr @framebuffer_alloc(i32 noundef 128, ptr noundef %dev1) #9
  %tobool.not = icmp eq ptr %call22, null
  br i1 %tobool.not, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %par25 = getelementptr inbounds %struct.fb_info, ptr %call22, i32 0, i32 30
  %4 = ptrtoint ptr %par25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par25, align 4
  %wait_acc = getelementptr inbounds %struct.tmiofb_par, ptr %5, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wait_acc, ptr noundef nonnull @.str.9, ptr noundef nonnull @tmiofb_probe.__key) #9
  %use_polling = getelementptr inbounds %struct.tmiofb_par, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %use_polling to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %use_polling, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call22, i32 0, i32 2
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 768, ptr %flags, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call22, i32 0, i32 20
  %8 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tmiofb_ops, ptr %fbops, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call22, i32 0, i32 7
  %9 = ptrtoint ptr %fix to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 8389477607085072896, ptr %fix, align 1
  %10 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call5, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call22, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %smem_start, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i, align 4
  %15 = load i32, ptr %call5, align 4
  %sub.i = add i32 %14, 1
  %add.i = sub i32 %sub.i, %15
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call22, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %smem_len, align 4
  %type = getelementptr inbounds %struct.fb_info, ptr %call22, i32 0, i32 7, i32 3
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %type, align 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %call22, i32 0, i32 7, i32 5
  %18 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %visual, align 4
  %19 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call4, align 4
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %call22, i32 0, i32 7, i32 10
  %21 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %mmio_start, align 4
  %end.i200 = getelementptr inbounds %struct.resource, ptr %call4, i32 0, i32 1
  %22 = ptrtoint ptr %end.i200 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end.i200, align 4
  %24 = load i32, ptr %call4, align 4
  %sub.i201 = add i32 %23, 1
  %add.i202 = sub i32 %sub.i201, %24
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %call22, i32 0, i32 7, i32 11
  %25 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i202, ptr %mmio_len, align 4
  %accel = getelementptr inbounds %struct.fb_info, ptr %call22, i32 0, i32 7, i32 12
  %26 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %accel, align 4
  %sub = add i32 %add.i, -2048
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %call22, i32 0, i32 26
  %27 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %screen_size, align 4
  %pseudo_palette43 = getelementptr inbounds %struct.fb_info, ptr %call22, i32 0, i32 27
  %28 = ptrtoint ptr %pseudo_palette43 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %5, ptr %pseudo_palette43, align 4
  %29 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call3, align 4
  %end.i203 = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 1
  %31 = ptrtoint ptr %end.i203 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end.i203, align 4
  %sub.i204 = sub i32 1, %30
  %add.i205 = add i32 %sub.i204, %32
  %call46 = tail call ptr @ioremap(i32 noundef %30, i32 noundef %add.i205) #9
  %ccr47 = getelementptr inbounds %struct.tmiofb_par, ptr %5, i32 0, i32 3
  %33 = ptrtoint ptr %ccr47 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call46, ptr %ccr47, align 4
  %tobool49.not = icmp eq ptr %call46, null
  br i1 %tobool49.not, label %if.end24.err_ioremap_ccr_crit_edge, label %if.end51

if.end24.err_ioremap_ccr_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ioremap_ccr

if.end51:                                         ; preds = %if.end24
  %34 = ptrtoint ptr %mmio_start to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mmio_start, align 4
  %36 = ptrtoint ptr %mmio_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mmio_len, align 4
  %call56 = tail call ptr @ioremap(i32 noundef %35, i32 noundef %37) #9
  %lcr57 = getelementptr inbounds %struct.tmiofb_par, ptr %5, i32 0, i32 4
  %38 = ptrtoint ptr %lcr57 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call56, ptr %lcr57, align 4
  %tobool59.not = icmp eq ptr %call56, null
  br i1 %tobool59.not, label %if.end51.err_ioremap_lcr_crit_edge, label %if.end61

if.end51.err_ioremap_lcr_crit_edge:               ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ioremap_lcr

if.end61:                                         ; preds = %if.end51
  %39 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %smem_start, align 4
  %41 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %smem_len, align 4
  %call66 = tail call ptr @ioremap(i32 noundef %40, i32 noundef %42) #9
  %43 = getelementptr inbounds %struct.fb_info, ptr %call22, i32 0, i32 25
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call66, ptr %43, align 4
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %if.end61.err_ioremap_vram_crit_edge, label %if.end69

if.end61.err_ioremap_vram_crit_edge:              ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ioremap_vram

if.end69:                                         ; preds = %if.end61
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 3
  %45 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end69.dev_name.exit_crit_edge

if.end69.dev_name.exit_crit_edge:                 ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end69.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %48, %if.end.i ], [ %46, %if.end69.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call6, ptr noundef nonnull @tmiofb_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool73.not = icmp eq i32 %call.i, 0
  br i1 %tobool73.not, label %if.end75, label %dev_name.exit.err_request_irq_crit_edge

dev_name.exit.err_request_irq_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_request_irq

if.end75:                                         ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call22, ptr %driver_data.i.i, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call22, i32 0, i32 6
  %modes = getelementptr inbounds %struct.tmio_fb_data, ptr %3, i32 0, i32 3
  %50 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %modes, align 4
  %num_modes = getelementptr inbounds %struct.tmio_fb_data, ptr %3, i32 0, i32 2
  %52 = ptrtoint ptr %num_modes to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_modes, align 4
  %call77 = tail call i32 @fb_find_mode(ptr noundef %var, ptr noundef nonnull %call22, ptr noundef null, ptr noundef %51, i32 noundef %53, ptr noundef %51, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end75.err_find_mode_crit_edge, label %if.end80

if.end75.err_find_mode_crit_edge:                 ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_find_mode

if.end80:                                         ; preds = %if.end75
  %enable = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %enable, align 4
  %tobool81.not = icmp eq ptr %55, null
  br i1 %tobool81.not, label %if.end80.if.end88_crit_edge, label %if.then82

if.end80.if.end88_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then82:                                        ; preds = %if.end80
  %call84 = tail call i32 %55(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then82.if.end88_crit_edge, label %if.then82.err_find_mode_crit_edge

if.then82.err_find_mode_crit_edge:                ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_find_mode

if.then82.if.end88_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.end88:                                         ; preds = %if.then82.if.end88_crit_edge, %if.end80.if.end88_crit_edge
  %call89 = tail call fastcc i32 @tmiofb_hw_init(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end88.err_hw_init_crit_edge

if.end88.err_hw_init_crit_edge:                   ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_hw_init

if.end92:                                         ; preds = %if.end88
  %56 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %modes, align 4
  %58 = ptrtoint ptr %num_modes to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_modes, align 4
  %modelist = getelementptr inbounds %struct.fb_info, ptr %call22, i32 0, i32 13
  tail call void @fb_videomode_to_modelist(ptr noundef %57, i32 noundef %59, ptr noundef %modelist) #9
  %call95 = tail call i32 @register_framebuffer(ptr noundef nonnull %call22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %err_register_framebuffer, label %do.end101

do.end101:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %node = getelementptr inbounds %struct.fb_info, ptr %call22, i32 0, i32 1
  %60 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %node, align 4
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %61, ptr noundef %fix) #13
  br label %cleanup

err_register_framebuffer:                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tmiofb_hw_stop(ptr noundef %dev)
  br label %err_hw_init

err_hw_init:                                      ; preds = %err_register_framebuffer, %if.end88.err_hw_init_crit_edge
  %retval7.0 = phi i32 [ %call89, %if.end88.err_hw_init_crit_edge ], [ %call95, %err_register_framebuffer ]
  %disable = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 4
  %62 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %disable, align 8
  %tobool107.not = icmp eq ptr %63, null
  br i1 %tobool107.not, label %err_hw_init.err_find_mode_crit_edge, label %if.then108

err_hw_init.err_find_mode_crit_edge:              ; preds = %err_hw_init
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_find_mode

if.then108:                                       ; preds = %err_hw_init
  call void @__sanitizer_cov_trace_pc() #11
  %call110 = tail call i32 %63(ptr noundef %dev) #9
  br label %err_find_mode

err_find_mode:                                    ; preds = %if.then108, %err_hw_init.err_find_mode_crit_edge, %if.then82.err_find_mode_crit_edge, %if.end75.err_find_mode_crit_edge
  %retval7.1 = phi i32 [ %call84, %if.then82.err_find_mode_crit_edge ], [ %retval7.0, %if.then108 ], [ %retval7.0, %err_hw_init.err_find_mode_crit_edge ], [ -22, %if.end75.err_find_mode_crit_edge ]
  %call112 = tail call ptr @free_irq(i32 noundef %call6, ptr noundef nonnull %call22) #9
  br label %err_request_irq

err_request_irq:                                  ; preds = %err_find_mode, %dev_name.exit.err_request_irq_crit_edge
  %retval7.2 = phi i32 [ %call.i, %dev_name.exit.err_request_irq_crit_edge ], [ %retval7.1, %err_find_mode ]
  %64 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %43, align 4
  tail call void @iounmap(ptr noundef %65) #9
  br label %err_ioremap_vram

err_ioremap_vram:                                 ; preds = %err_request_irq, %if.end61.err_ioremap_vram_crit_edge
  %retval7.3 = phi i32 [ %retval7.2, %err_request_irq ], [ -12, %if.end61.err_ioremap_vram_crit_edge ]
  %66 = ptrtoint ptr %lcr57 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lcr57, align 4
  tail call void @iounmap(ptr noundef %67) #9
  br label %err_ioremap_lcr

err_ioremap_lcr:                                  ; preds = %err_ioremap_vram, %if.end51.err_ioremap_lcr_crit_edge
  %retval7.4 = phi i32 [ %retval7.3, %err_ioremap_vram ], [ -12, %if.end51.err_ioremap_lcr_crit_edge ]
  %68 = ptrtoint ptr %ccr47 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ccr47, align 4
  tail call void @iounmap(ptr noundef %69) #9
  br label %err_ioremap_ccr

err_ioremap_ccr:                                  ; preds = %err_ioremap_lcr, %if.end24.err_ioremap_ccr_crit_edge
  %retval7.5 = phi i32 [ %retval7.4, %err_ioremap_lcr ], [ -12, %if.end24.err_ioremap_ccr_crit_edge ]
  tail call void @framebuffer_release(ptr noundef nonnull %call22) #9
  br label %cleanup

cleanup:                                          ; preds = %err_ioremap_ccr, %do.end101, %if.end20.cleanup_crit_edge, %do.end18, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end18 ], [ %retval7.5, %err_ioremap_ccr ], [ 0, %do.end101 ], [ -12, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmiofb_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mfd_cell.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfd_cell.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @platform_get_irq(ptr noundef %dev, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %entry
  %par3 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %par3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par3, align 4
  tail call void @unregister_framebuffer(ptr noundef nonnull %3) #9
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i.i, align 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %par3.i = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 30
  %10 = ptrtoint ptr %par3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  tail call void @arm_heavy_mb() #9
  %ccr.i = getelementptr inbounds %struct.tmiofb_par, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ccr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ccr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @arm_heavy_mb() #9
  %lcr.i = getelementptr inbounds %struct.tmiofb_par, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lcr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %15, i32 302
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i, i16 0) #9, !srcloc !83
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 4
  %call8.i = tail call i32 %17(ptr noundef %dev, i1 noundef zeroext false) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !85
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lcr.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %19, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13.i, i16 4096) #9, !srcloc !83
  %disable = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disable, align 8
  %tobool5.not = icmp eq ptr %21, null
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 %21(ptr noundef %dev) #9
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %call9 = tail call ptr @free_irq(i32 noundef %call2, ptr noundef nonnull %3) #9
  %22 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 25
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  tail call void @iounmap(ptr noundef %24) #9
  %lcr = getelementptr inbounds %struct.tmiofb_par, ptr %5, i32 0, i32 4
  %25 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lcr, align 4
  tail call void @iounmap(ptr noundef %26) #9
  %ccr = getelementptr inbounds %struct.tmiofb_par, ptr %5, i32 0, i32 3
  %27 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ccr, align 4
  tail call void @iounmap(ptr noundef %28) #9
  tail call void @framebuffer_release(ptr noundef nonnull %3) #9
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmiofb_suspend(ptr noundef %dev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %mfd_cell.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mfd_cell.i, align 4
  tail call void @console_lock() #9
  tail call void @fb_set_suspend(ptr noundef %1, i32 noundef 1) #9
  %fbops = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbops, align 4
  %fb_sync = getelementptr inbounds %struct.fb_ops, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %fb_sync to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb_sync, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 %9(ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #13
  %use_polling = getelementptr inbounds %struct.tmiofb_par, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %use_polling to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %use_polling, align 4
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %11 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platform_data.i.i, align 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i, align 4
  %par3.i = getelementptr inbounds %struct.fb_info, ptr %14, i32 0, i32 30
  %15 = ptrtoint ptr %par3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %par3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  tail call void @arm_heavy_mb() #9
  %ccr.i = getelementptr inbounds %struct.tmiofb_par, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %ccr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ccr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @arm_heavy_mb() #9
  %lcr.i = getelementptr inbounds %struct.tmiofb_par, ptr %16, i32 0, i32 4
  %19 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lcr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %20, i32 302
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i, i16 0) #9, !srcloc !83
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %12, align 4
  %call8.i = tail call i32 %22(ptr noundef %dev, i1 noundef zeroext false) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !85
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lcr.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %24, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13.i, i16 4096) #9, !srcloc !83
  %suspend = getelementptr inbounds %struct.mfd_cell, ptr %5, i32 0, i32 5
  %25 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %suspend, align 4
  %tobool9.not = icmp eq ptr %26, null
  br i1 %tobool9.not, label %do.end.if.end13_crit_edge, label %if.then10

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 %26(ptr noundef %dev) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %do.end.if.end13_crit_edge
  %retval3.0 = phi i32 [ %call12, %if.then10 ], [ 0, %do.end.if.end13_crit_edge ]
  tail call void @console_unlock() #9
  ret i32 %retval3.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmiofb_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mfd_cell.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfd_cell.i, align 4
  tail call void @console_lock() #9
  %resume = getelementptr inbounds %struct.mfd_cell, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resume, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  %call4 = tail call i32 %5(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %par1.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %6 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par1.i, align 4
  %lcr.i = getelementptr inbounds %struct.tmiofb_par, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lcr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 20
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !88
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lcr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 %10) #9, !srcloc !83
  %13 = and i16 %10, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool16.not.i = icmp eq i16 %13, 0
  br i1 %tobool16.not.i, label %if.end7.tmiofb_irq.exit_crit_edge, label %if.then17.i

if.end7.tmiofb_irq.exit_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %tmiofb_irq.exit

if.then17.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %wait_acc.i = getelementptr inbounds %struct.tmiofb_par, ptr %7, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %wait_acc.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %tmiofb_irq.exit

tmiofb_irq.exit:                                  ; preds = %if.then17.i, %if.end7.tmiofb_irq.exit_crit_edge
  %call9 = tail call fastcc i32 @tmiofb_hw_init(ptr noundef %dev)
  tail call fastcc void @tmiofb_hw_mode(ptr noundef %dev)
  tail call void @fb_set_suspend(ptr noundef %1, i32 noundef 0) #9
  br label %out

out:                                              ; preds = %tmiofb_irq.exit, %if.then.out_crit_edge
  %retval2.1 = phi i32 [ %call4, %if.then.out_crit_edge ], [ 0, %tmiofb_irq.exit ]
  tail call void @console_unlock() #9
  ret i32 %retval2.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmiofb_irq(i32 noundef %irq, ptr nocapture noundef readonly %__info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %__info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %lcr = getelementptr inbounds %struct.tmiofb_par, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !88
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lcr, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 %4) #9, !srcloc !83
  %use_polling = getelementptr inbounds %struct.tmiofb_par, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %use_polling to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %use_polling, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp ne i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %irq)
  %cmp = icmp ne i32 %irq, -1
  %spec.select = and i1 %cmp, %tobool.not
  br i1 %spec.select, label %do.end12, label %entry.if.end_crit_edge, !prof !90

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #13
  %9 = ptrtoint ptr %use_polling to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %use_polling, align 4
  br label %if.end

if.end:                                           ; preds = %do.end12, %entry.if.end_crit_edge
  %10 = and i16 %4, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool16.not = icmp eq i16 %10, 0
  br i1 %tobool16.not, label %if.end.if.end18_crit_edge, label %if.then17

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %wait_acc = getelementptr inbounds %struct.tmiofb_par, ptr %1, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %wait_acc, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end.if.end18_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tmiofb_hw_init(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mfd_cell.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfd_cell.i, align 4
  %resources = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resources, align 4
  %arrayidx4 = getelementptr %struct.resource, ptr %3, i32 2
  %cmp = icmp eq ptr %3, null
  %cmp5 = icmp eq ptr %arrayidx4, null
  %or.cond = or i1 %cmp, %cmp5
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %par2 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  tail call void @arm_heavy_mb() #9
  %ccr = getelementptr inbounds %struct.tmiofb_par, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ccr, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 14848) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ccr, align 4
  %add.ptr10 = getelementptr i8, ptr %13, i32 66
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10, i16 14848) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ccr, align 4
  %add.ptr15 = getelementptr i8, ptr %15, i32 80
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15, i16 63) #9, !srcloc !83
  tail call void @msleep(i32 noundef 2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ccr, align 4
  %add.ptr20 = getelementptr i8, ptr %17, i32 80
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20, i16 0) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %shr = lshr i32 %9, 16
  %conv = trunc i32 %shr to i16
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %19 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ccr, align 4
  %add.ptr25 = getelementptr i8, ptr %20, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr25, i16 %18) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %conv29 = trunc i32 %9 to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv29)
  %22 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ccr, align 4
  %add.ptr31 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr31, i16 %21) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ccr, align 4
  %add.ptr36 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr36, i16 512) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  tail call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ccr, align 4
  %add.ptr41 = getelementptr i8, ptr %27, i32 96
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr41, i16 -22464) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ccr, align 4
  %add.ptr46 = getelementptr i8, ptr %29, i32 98
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr46, i16 6144) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ccr, align 4
  %add.ptr51 = getelementptr i8, ptr %31, i32 100
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr51, i16 512) #9, !srcloc !83
  tail call void @msleep(i32 noundef 2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ccr, align 4
  %add.ptr56 = getelementptr i8, ptr %33, i32 100
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr56, i16 2816) #9, !srcloc !83
  %34 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx4, align 4
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 26
  %36 = ptrtoint ptr %screen_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %screen_size, align 4
  %add = add i32 %37, %35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %shr61 = lshr i32 %add, 16
  %conv62 = trunc i32 %shr61 to i16
  %38 = tail call i16 @llvm.bswap.i16(i16 %conv62)
  %lcr = getelementptr inbounds %struct.tmiofb_par, ptr %7, i32 0, i32 4
  %39 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lcr, align 4
  %add.ptr63 = getelementptr i8, ptr %40, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr63, i16 %38) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %conv67 = trunc i32 %add to i16
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv67)
  %42 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lcr, align 4
  %add.ptr69 = getelementptr i8, ptr %43, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr69, i16 %41) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %44 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lcr, align 4
  %add.ptr74 = getelementptr i8, ptr %45, i32 14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr74, i16 -255) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lcr, align 4
  %add.ptr79 = getelementptr i8, ptr %47, i32 34
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr79, i16 256) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lcr, align 4
  %add.ptr84 = getelementptr i8, ptr %49, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr84, i16 256) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %50 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lcr, align 4
  %add.ptr89 = getelementptr i8, ptr %51, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr89, i16 0) #9, !srcloc !83
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_modelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tmiofb_hw_stop(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %par3 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %par3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  tail call void @arm_heavy_mb() #9
  %ccr = getelementptr inbounds %struct.tmiofb_par, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ccr, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @arm_heavy_mb() #9
  %lcr = getelementptr inbounds %struct.tmiofb_par, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lcr, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 302
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7, i16 0) #9, !srcloc !83
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call8 = tail call i32 %11(ptr noundef %dev, i1 noundef zeroext false) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !85
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lcr, align 4
  %add.ptr13 = getelementptr i8, ptr %13, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13, i16 4096) #9, !srcloc !83
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmiofb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %num_modes.i = getelementptr inbounds %struct.tmio_fb_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %num_modes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_modes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp25.i = icmp sgt i32 %5, 0
  br i1 %cmp25.i, label %for.body.lr.ph.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %modes.i = getelementptr inbounds %struct.tmio_fb_data, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %modes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %modes.i, align 4
  %8 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %var, align 4
  %yres3.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %best.026.i = phi ptr [ null, %for.body.lr.ph.i ], [ %best.1.i, %if.end.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.fb_videomode, ptr %7, i32 %i.027.i
  %xres.i = getelementptr %struct.fb_videomode, ptr %7, i32 %i.027.i, i32 2
  %10 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xres.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp2.not.i = icmp ult i32 %11, %9
  br i1 %cmp2.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %yres.i = getelementptr %struct.fb_videomode, ptr %7, i32 %i.027.i, i32 3
  %12 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres.i, align 4
  %14 = ptrtoint ptr %yres3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %yres3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp4.not.i = icmp ult i32 %13, %15
  br i1 %cmp4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %tobool.not.i = icmp eq ptr %best.026.i, null
  br i1 %tobool.not.i, label %land.lhs.true5.i.if.then.i_crit_edge, label %lor.lhs.false.i

land.lhs.true5.i.if.then.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true5.i
  %xres7.i = getelementptr inbounds %struct.fb_videomode, ptr %best.026.i, i32 0, i32 2
  %16 = ptrtoint ptr %xres7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xres7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %17)
  %cmp8.i = icmp ult i32 %11, %17
  br i1 %cmp8.i, label %land.lhs.true9.i, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true9.i:                                 ; preds = %lor.lhs.false.i
  %yres11.i = getelementptr inbounds %struct.fb_videomode, ptr %best.026.i, i32 0, i32 3
  %18 = ptrtoint ptr %yres11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yres11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %19)
  %cmp12.i = icmp ult i32 %13, %19
  br i1 %cmp12.i, label %land.lhs.true9.i.if.then.i_crit_edge, label %land.lhs.true9.i.if.end.i_crit_edge

land.lhs.true9.i.if.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true9.i.if.then.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true9.i.if.then.i_crit_edge, %land.lhs.true5.i.if.then.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true9.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %best.1.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %best.026.i, %land.lhs.true9.i.if.end.i_crit_edge ], [ %best.026.i, %lor.lhs.false.i.if.end.i_crit_edge ], [ %best.026.i, %land.lhs.true.i.if.end.i_crit_edge ], [ %best.026.i, %for.body.i.if.end.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %tmiofb_find_mode.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

tmiofb_find_mode.exit:                            ; preds = %if.end.i
  %tobool.not = icmp eq ptr %best.1.i, null
  br i1 %tobool.not, label %tmiofb_find_mode.exit.cleanup_crit_edge, label %lor.lhs.false

tmiofb_find_mode.exit.cleanup_crit_edge:          ; preds = %tmiofb_find_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %tmiofb_find_mode.exit
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %20 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %21)
  %cmp = icmp ugt i32 %21, 16
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @fb_videomode_to_var(ptr noundef %var, ptr noundef nonnull %best.1.i) #9
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %best.1.i, i32 0, i32 2
  %22 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xres, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %24 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %xres_virtual, align 4
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 26
  %25 = ptrtoint ptr %screen_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %screen_size, align 4
  %27 = load i32, ptr %xres, align 4
  %mul = shl i32 %27, 1
  %div = udiv i32 %26, %mul
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %28 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div, ptr %yres_virtual, align 4
  %29 = ptrtoint ptr %yres3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %yres3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %30)
  %cmp4 = icmp ult i32 %div, %30
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %31 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %xoffset, align 4
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %32 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %yoffset, align 4
  %33 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16, ptr %bits_per_pixel, align 4
  %grayscale = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 7
  %34 = ptrtoint ptr %grayscale to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %grayscale, align 4
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %35 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 11, ptr %red, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %36 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 5, ptr %length, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %37 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 5, ptr %green, align 4
  %length11 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %38 = ptrtoint ptr %length11 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 6, ptr %length11, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %39 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %blue, align 4
  %length14 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %40 = ptrtoint ptr %length14 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 5, ptr %length14, align 4
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %41 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %transp, align 4
  %length17 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %42 = ptrtoint ptr %length17 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %length17, align 4
  %nonstd = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 12
  %43 = ptrtoint ptr %nonstd to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %nonstd, align 4
  %height = getelementptr inbounds %struct.tmio_fb_data, ptr %3, i32 0, i32 4
  %44 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height, align 4
  %height18 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 14
  %46 = ptrtoint ptr %height18 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %height18, align 4
  %width = getelementptr inbounds %struct.tmio_fb_data, ptr %3, i32 0, i32 5
  %47 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %width, align 4
  %width19 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 15
  %49 = ptrtoint ptr %width19 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %width19, align 4
  %rotate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 26
  %50 = ptrtoint ptr %rotate to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %rotate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %tmiofb_find_mode.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %tmiofb_find_mode.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmiofb_set_par(ptr noundef %info) #2 align 64 {
entry:
  %rect.i = alloca %struct.fb_fillrect, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %0 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device.i, align 4
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i.i, align 8
  %num_modes.i = getelementptr inbounds %struct.tmio_fb_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %num_modes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_modes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp25.i = icmp sgt i32 %5, 0
  br i1 %cmp25.i, label %for.body.lr.ph.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %var1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %modes.i = getelementptr inbounds %struct.tmio_fb_data, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %modes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %modes.i, align 4
  %8 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %var1, align 4
  %yres3.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %best.026.i = phi ptr [ null, %for.body.lr.ph.i ], [ %best.1.i, %if.end.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.fb_videomode, ptr %7, i32 %i.027.i
  %xres.i = getelementptr %struct.fb_videomode, ptr %7, i32 %i.027.i, i32 2
  %10 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xres.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp2.not.i = icmp ult i32 %11, %9
  br i1 %cmp2.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %yres.i = getelementptr %struct.fb_videomode, ptr %7, i32 %i.027.i, i32 3
  %12 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres.i, align 4
  %14 = ptrtoint ptr %yres3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %yres3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp4.not.i = icmp ult i32 %13, %15
  br i1 %cmp4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %tobool.not.i = icmp eq ptr %best.026.i, null
  br i1 %tobool.not.i, label %land.lhs.true5.i.if.then.i_crit_edge, label %lor.lhs.false.i

land.lhs.true5.i.if.then.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true5.i
  %xres7.i = getelementptr inbounds %struct.fb_videomode, ptr %best.026.i, i32 0, i32 2
  %16 = ptrtoint ptr %xres7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xres7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %17)
  %cmp8.i = icmp ult i32 %11, %17
  br i1 %cmp8.i, label %land.lhs.true9.i, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true9.i:                                 ; preds = %lor.lhs.false.i
  %yres11.i = getelementptr inbounds %struct.fb_videomode, ptr %best.026.i, i32 0, i32 3
  %18 = ptrtoint ptr %yres11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yres11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %19)
  %cmp12.i = icmp ult i32 %13, %19
  br i1 %cmp12.i, label %land.lhs.true9.i.if.then.i_crit_edge, label %land.lhs.true9.i.if.end.i_crit_edge

land.lhs.true9.i.if.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true9.i.if.then.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true9.i.if.then.i_crit_edge, %land.lhs.true5.i.if.then.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true9.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %best.1.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %best.026.i, %land.lhs.true9.i.if.end.i_crit_edge ], [ %best.026.i, %lor.lhs.false.i.if.end.i_crit_edge ], [ %best.026.i, %land.lhs.true.i.if.end.i_crit_edge ], [ %best.026.i, %for.body.i.if.end.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %tmiofb_find_mode.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

tmiofb_find_mode.exit:                            ; preds = %if.end.i
  %tobool.not = icmp eq ptr %best.1.i, null
  br i1 %tobool.not, label %tmiofb_find_mode.exit.cleanup_crit_edge, label %if.end

tmiofb_find_mode.exit.cleanup_crit_edge:          ; preds = %tmiofb_find_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %tmiofb_find_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mode2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 14
  %20 = ptrtoint ptr %mode2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %best.1.i, ptr %mode2, align 4
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %best.1.i, i32 0, i32 2
  %21 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xres, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %23 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %24, %22
  %div13 = lshr i32 %mul, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %25 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div13, ptr %line_length, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  tail call fastcc void @tmiofb_hw_mode(ptr noundef %add.ptr)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rect.i) #9
  %26 = getelementptr inbounds %struct.fb_fillrect, ptr %rect.i, i32 0, i32 1
  %27 = getelementptr inbounds %struct.fb_fillrect, ptr %rect.i, i32 0, i32 2
  %28 = getelementptr inbounds %struct.fb_fillrect, ptr %rect.i, i32 0, i32 3
  %29 = getelementptr inbounds %struct.fb_fillrect, ptr %rect.i, i32 0, i32 4
  %30 = getelementptr inbounds %struct.fb_fillrect, ptr %rect.i, i32 0, i32 5
  %31 = ptrtoint ptr %rect.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %rect.i, align 4
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %26, align 4
  %33 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mode2, align 4
  %xres.i14 = getelementptr inbounds %struct.fb_videomode, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %xres.i14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %xres.i14, align 4
  %37 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %27, align 4
  %yres.i15 = getelementptr inbounds %struct.fb_videomode, ptr %34, i32 0, i32 3
  %38 = ptrtoint ptr %yres.i15 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %yres.i15, align 4
  %40 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %28, align 4
  %41 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %29, align 4
  %42 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %30, align 4
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %43 = ptrtoint ptr %fbops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fbops.i, align 4
  %fb_fillrect.i = getelementptr inbounds %struct.fb_ops, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %fb_fillrect.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fb_fillrect.i, align 4
  call void %46(ptr noundef %info, ptr noundef nonnull %rect.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rect.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %tmiofb_find_mode.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %tmiofb_find_mode.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tmiofb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp = icmp ult i32 %regno, 16
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %and = and i32 %red, 63488
  %and2 = lshr i32 %green, 5
  %shr = and i32 %and2, 2016
  %or = or i32 %shr, %and
  %and3 = lshr i32 %blue, 11
  %shr4 = and i32 %and3, 31
  %or5 = or i32 %or, %shr4
  %arrayidx = getelementptr [16 x i32], ptr %1, i32 0, i32 %regno
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or5, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tmiofb_blank(i32 noundef %blank, ptr nocapture noundef readnone %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tmiofb_fillrect(ptr noundef %fbi, ptr noundef %rect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %0 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dy, align 4
  %mode = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 14
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode, align 4
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xres, align 4
  %mul = mul i32 %5, %1
  %6 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rect, align 4
  %add = add i32 %mul, %7
  %mul1 = shl i32 %add, 1
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %color = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %12 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %color, align 4
  %state = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 28
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 2
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and12 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @cfb_fillrect(ptr noundef %fbi, ptr noundef %rect) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %par1.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 30
  %18 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %par1.i, align 4
  %call.i = tail call fastcc i32 @tmiofb_acc_wait(ptr noundef %fbi, i32 noundef 507) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %do.body.lr.ph.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.lr.ph.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lcr.i = getelementptr inbounds %struct.tmiofb_par, ptr %19, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %and = lshr i32 %mul1, 16
  %20 = trunc i32 %and to i16
  %21 = and i16 %20, 255
  %conv.i = or i16 %21, 3072
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #9
  %23 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lcr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %22) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %conv6.i = trunc i32 %mul1 to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv6.i) #9
  %26 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lcr.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %27, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 %25) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lcr.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %29, i32 30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.1, i16 14) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %30 = trunc i32 %9 to i16
  %31 = add i16 %30, 1023
  %conv6.i.1 = and i16 %31, 1023
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv6.i.1) #9
  %33 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lcr.i, align 4
  %add.ptr8.i.1 = getelementptr i8, ptr %34, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.1, i16 %32) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lcr.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %36, i32 30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.2, i16 15) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %37 = trunc i32 %11 to i16
  %38 = add i16 %37, 1023
  %conv6.i.2 = and i16 %38, 1023
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv6.i.2) #9
  %40 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lcr.i, align 4
  %add.ptr8.i.2 = getelementptr i8, ptr %41, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.2, i16 %39) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %42 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lcr.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %43, i32 30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.3, i16 11) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %conv6.i.3 = trunc i32 %13 to i16
  %44 = tail call i16 @llvm.bswap.i16(i16 %conv6.i.3) #9
  %45 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lcr.i, align 4
  %add.ptr8.i.3 = getelementptr i8, ptr %46, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.3, i16 %44) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lcr.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %48, i32 30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.4, i16 35) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lcr.i, align 4
  %add.ptr8.i.4 = getelementptr i8, ptr %50, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.4, i16 0) #9, !srcloc !83
  br label %cleanup

cleanup:                                          ; preds = %do.body.lr.ph.i, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tmiofb_copyarea(ptr noundef %fbi, ptr noundef %area) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dy = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %0 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dy, align 4
  %mode = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 14
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode, align 4
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xres, align 4
  %mul = mul i32 %5, %1
  %6 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %area, align 4
  %add = add i32 %mul, %7
  %mul1 = shl i32 %add, 1
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %sy = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %12 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sy, align 4
  %mul11 = mul i32 %13, %5
  %sx = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %14 = ptrtoint ptr %sx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sx, align 4
  %add12 = add i32 %mul11, %15
  %mul13 = shl i32 %add12, 1
  %state = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 28
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not = icmp eq i32 %17, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and17 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.not = icmp eq i32 %and17, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @cfb_copyarea(ptr noundef %fbi, ptr noundef %area) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %par1.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 30
  %20 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %par1.i, align 4
  %call.i = tail call fastcc i32 @tmiofb_acc_wait(ptr noundef %fbi, i32 noundef 507) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %do.body.lr.ph.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.lr.ph.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lcr.i = getelementptr inbounds %struct.tmiofb_par, ptr %21, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %and = lshr i32 %mul1, 16
  %22 = trunc i32 %and to i16
  %23 = and i16 %22, 255
  %conv.i = or i16 %23, 3072
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #9
  %25 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lcr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %24) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %conv6.i = trunc i32 %mul1 to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv6.i) #9
  %28 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lcr.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %29, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 %27) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lcr.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %31, i32 30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.1, i16 14) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %32 = trunc i32 %9 to i16
  %33 = add i16 %32, 1023
  %conv6.i.1 = and i16 %33, 1023
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv6.i.1) #9
  %35 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lcr.i, align 4
  %add.ptr8.i.1 = getelementptr i8, ptr %36, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.1, i16 %34) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lcr.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %38, i32 30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.2, i16 15) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %39 = trunc i32 %11 to i16
  %40 = add i16 %39, 1023
  %conv6.i.2 = and i16 %40, 1023
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv6.i.2) #9
  %42 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lcr.i, align 4
  %add.ptr8.i.2 = getelementptr i8, ptr %43, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.2, i16 %41) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %and14 = lshr i32 %mul13, 16
  %44 = trunc i32 %and14 to i16
  %45 = and i16 %44, 255
  %conv.i.3 = or i16 %45, 3328
  %46 = tail call i16 @llvm.bswap.i16(i16 %conv.i.3) #9
  %47 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lcr.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %48, i32 30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.3, i16 %46) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %conv6.i.3 = trunc i32 %mul13 to i16
  %49 = tail call i16 @llvm.bswap.i16(i16 %conv6.i.3) #9
  %50 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lcr.i, align 4
  %add.ptr8.i.3 = getelementptr i8, ptr %51, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.3, i16 %49) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lcr.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %53, i32 30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.4, i16 33) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %54 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lcr.i, align 4
  %add.ptr8.i.4 = getelementptr i8, ptr %55, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.4, i16 0) #9, !srcloc !83
  br label %cleanup

cleanup:                                          ; preds = %do.body.lr.ph.i, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmiofb_sync(ptr nocapture noundef readonly %fbi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %call = tail call fastcc i32 @tmiofb_acc_wait(ptr noundef %fbi, i32 noundef 0)
  %lcr = getelementptr inbounds %struct.tmiofb_par, ptr %1, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %while.body.while.cond_crit_edge ]
  %2 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  %5 = and i16 %4, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #9
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond = icmp eq i32 %inc, 10001
  br i1 %exitcond, label %do.end, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ %call, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmiofb_ioctl(ptr nocapture noundef readonly %fbi, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %vblank = alloca %struct.fb_vblank, align 4
  %acc = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.return_crit_edge [
    i32 -2145368558, label %sw.bb
    i32 2086900481, label %sw.bb3
    i32 2086900480, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vblank) #9
  %1 = getelementptr inbounds i8, ptr %vblank, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 28)
  %3 = inttoptr i32 %arg to ptr
  %par1.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 30
  %4 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par1.i, align 4
  %mode2.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 14
  %6 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode2.i, align 4
  %lcr.i = getelementptr inbounds %struct.tmiofb_par, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lcr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 352
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !86
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  %conv.i = zext i16 %11 to i32
  %vsync_len.i = getelementptr inbounds %struct.fb_videomode, ptr %7, i32 0, i32 10
  %12 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vsync_len.i, align 4
  %upper_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %7, i32 0, i32 7
  %14 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %upper_margin.i, align 4
  %add.i = add i32 %15, %13
  %vcount4.i = getelementptr inbounds %struct.fb_vblank, ptr %vblank, i32 0, i32 2
  %16 = ptrtoint ptr %vcount4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.i, ptr %vcount4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv.i)
  %cmp.i = icmp ugt i32 %13, %conv.i
  %spec.store.select.i = select i1 %cmp.i, i32 420, i32 292
  %17 = ptrtoint ptr %vblank to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.store.select.i, ptr %vblank, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp8.i = icmp ugt i32 %add.i, %conv.i
  br i1 %cmp8.i, label %sw.bb.if.then13.i_crit_edge, label %lor.lhs.false.i

sw.bb.if.then13.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  %yres.i = getelementptr inbounds %struct.fb_videomode, ptr %7, i32 0, i32 3
  %18 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yres.i, align 4
  %add10.i = add i32 %19, %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %conv.i)
  %cmp11.i = icmp ult i32 %add10.i, %conv.i
  br i1 %cmp11.i, label %lor.lhs.false.i.if.then13.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

if.then13.i:                                      ; preds = %lor.lhs.false.i.if.then13.i_crit_edge, %sw.bb.if.then13.i_crit_edge
  %or15.i = or i32 %spec.store.select.i, 1
  %20 = ptrtoint ptr %vblank to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or15.i, ptr %vblank, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then13.i, %lor.lhs.false.i.if.then.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

if.then.i.copy_to_user.exit.thread_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %if.then.i
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 32, i32 -1226833920) #14, !srcloc !112
  %asmresult.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %vblank, i32 noundef 32) #9
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %vblank, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %if.then.i.copy_to_user.exit.thread_crit_edge
  %22 = phi i32 [ -14, %if.then.i.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vblank) #9
  br label %return

sw.bb3:                                           ; preds = %entry
  %par1.i37 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 30
  %23 = ptrtoint ptr %par1.i37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %par1.i37, align 4
  %call.i = tail call fastcc i32 @tmiofb_acc_wait(ptr noundef %fbi, i32 noundef 0) #9
  %lcr.i38 = getelementptr inbounds %struct.tmiofb_par, ptr %24, i32 0, i32 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %sw.bb3
  %i.0.i = phi i32 [ 0, %sw.bb3 ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %25 = ptrtoint ptr %lcr.i38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lcr.i38, align 4
  %add.ptr.i39 = getelementptr i8, ptr %26, i32 24
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i39) #9, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  %28 = and i16 %27, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not.i = icmp eq i16 %28, 0
  br i1 %tobool.not.i, label %while.cond.i.return_crit_edge, label %while.body.i

while.cond.i.return_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #9
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 10001
  br i1 %exitcond.i, label %do.end.i, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %return

sw.bb5:                                           ; preds = %entry
  %30 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %acc) #9
  %31 = call ptr @memset(ptr %acc, i32 255, i32 64)
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 528) #9
  %32 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !113
  %and.i = and i32 %34, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %35 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %30, i32 -1226833921) #9, !srcloc !116
  %asmresult = extractvalue { i32, i32 } %35, 0
  %asmresult8 = extractvalue { i32, i32 } %35, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool10.not = icmp eq i32 %asmresult, 0
  br i1 %tobool10.not, label %if.end12, label %sw.bb5.cleanup21_crit_edge

sw.bb5.cleanup21_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

if.end12:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %asmresult8)
  %cmp = icmp ugt i32 %asmresult8, 16
  br i1 %cmp, label %if.end12.cleanup21_crit_edge, label %if.end14

if.end12.cleanup21_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

if.end14:                                         ; preds = %if.end12
  %add.ptr = getelementptr i32, ptr %30, i32 1
  %mul = shl nuw nsw i32 %asmresult8, 2
  call void @__check_object_size(ptr noundef nonnull %acc, i32 noundef %mul, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 156) #9
  %call.i.i31 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i31, label %if.end14.if.end.i.i35_crit_edge, label %land.lhs.true.i.i

if.end14.if.end.i.i35_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i35

land.lhs.true.i.i:                                ; preds = %if.end14
  %36 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %mul, i32 -1226833920) #14, !srcloc !117
  %asmresult.i.i33 = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i33)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i33, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i35_crit_edge, !prof !118

land.lhs.true.i.i.if.end.i.i35_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i35

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i34 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %acc, i32 noundef %mul) #9
  %37 = call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 4
  %39 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !113
  %and.i.i.i.i = and i32 %39, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %acc, ptr noundef %add.ptr, i32 noundef %mul) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  br label %if.end.i.i35

if.end.i.i35:                                     ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i35_crit_edge, %if.end14.if.end.i.i35_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.end14.if.end.i.i35_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end18, label %if.then11.i.i, !prof !118

if.then11.i.i:                                    ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %mul, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %acc, i32 %sub.i.i
  %40 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup21

if.end18:                                         ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = call fastcc i32 @tmiofb_acc_write(ptr noundef %fbi, ptr noundef nonnull %acc, i32 noundef %asmresult8)
  br label %cleanup21

cleanup21:                                        ; preds = %if.end18, %if.then11.i.i, %if.end12.cleanup21_crit_edge, %sw.bb5.cleanup21_crit_edge
  %retval.1 = phi i32 [ %call20, %if.end18 ], [ -14, %sw.bb5.cleanup21_crit_edge ], [ -22, %if.end12.cleanup21_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %acc) #9
  br label %return

return:                                           ; preds = %cleanup21, %do.end.i, %while.cond.i.return_crit_edge, %copy_to_user.exit.thread, %entry.return_crit_edge
  %retval.2 = phi i32 [ %retval.1, %cleanup21 ], [ %22, %copy_to_user.exit.thread ], [ -25, %entry.return_crit_edge ], [ 0, %do.end.i ], [ 0, %while.cond.i.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tmiofb_hw_mode(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mode3 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode3, align 4
  %par4 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 30
  %6 = ptrtoint ptr %par4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %lcr = getelementptr inbounds %struct.tmiofb_par, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lcr, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 302
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #9, !srcloc !83
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call5 = tail call i32 %11(ptr noundef %dev, i1 noundef zeroext false) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lcr, align 4
  %add.ptr10 = getelementptr i8, ptr %13, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10, i16 4096) #9, !srcloc !83
  %lcd_mode = getelementptr inbounds %struct.tmio_fb_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %lcd_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lcd_mode, align 4
  %call11 = tail call i32 %15(ptr noundef %dev, ptr noundef %5) #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call13 = tail call i32 %17(ptr noundef %dev, i1 noundef zeroext true) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @arm_heavy_mb() #9
  %line_length = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 9
  %18 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %line_length, align 4
  %conv = trunc i32 %19 to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %21 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lcr, align 4
  %add.ptr18 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr18, i16 %20) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lcr, align 4
  %add.ptr23 = getelementptr i8, ptr %24, i32 292
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23, i16 0) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lcr, align 4
  %add.ptr28 = getelementptr i8, ptr %26, i32 290
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr28, i16 0) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %line_length, align 4
  %shr = lshr i32 %28, 16
  %conv34 = trunc i32 %shr to i16
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv34)
  %30 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lcr, align 4
  %add.ptr36 = getelementptr i8, ptr %31, i32 300
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr36, i16 %29) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %line_length, align 4
  %conv42 = trunc i32 %33 to i16
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv42)
  %35 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lcr, align 4
  %add.ptr44 = getelementptr i8, ptr %36, i32 298
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr44, i16 %34) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lcr, align 4
  %add.ptr49 = getelementptr i8, ptr %38, i32 324
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr49, i16 0) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %hsync_len = getelementptr inbounds %struct.fb_videomode, ptr %5, i32 0, i32 9
  %39 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hsync_len, align 4
  %conv53 = trunc i32 %40 to i16
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv53)
  %42 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lcr, align 4
  %add.ptr55 = getelementptr i8, ptr %43, i32 326
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr55, i16 %41) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  %left_margin = getelementptr inbounds %struct.fb_videomode, ptr %5, i32 0, i32 5
  %44 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %left_margin, align 4
  %add59 = add i32 %45, %40
  %conv60 = trunc i32 %add59 to i16
  %46 = tail call i16 @llvm.bswap.i16(i16 %conv60)
  %47 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lcr, align 4
  %add.ptr62 = getelementptr i8, ptr %48, i32 322
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr62, i16 %46) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  tail call void @arm_heavy_mb() #9
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %5, i32 0, i32 2
  %49 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %xres, align 4
  %right_margin = getelementptr inbounds %struct.fb_videomode, ptr %5, i32 0, i32 6
  %51 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %right_margin, align 4
  %add66 = add i32 %50, %add59
  %add67 = add i32 %add66, %52
  %conv68 = trunc i32 %add67 to i16
  %53 = tail call i16 @llvm.bswap.i16(i16 %conv68)
  %54 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lcr, align 4
  %add.ptr70 = getelementptr i8, ptr %55, i32 320
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr70, i16 %53) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  tail call void @arm_heavy_mb() #9
  %56 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %xres, align 4
  %conv75 = trunc i32 %57 to i16
  %58 = tail call i16 @llvm.bswap.i16(i16 %conv75)
  %59 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lcr, align 4
  %add.ptr77 = getelementptr i8, ptr %60, i32 332
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr77, i16 %58) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %61 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lcr, align 4
  %add.ptr82 = getelementptr i8, ptr %62, i32 340
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr82, i16 0) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !132
  tail call void @arm_heavy_mb() #9
  %vsync_len = getelementptr inbounds %struct.fb_videomode, ptr %5, i32 0, i32 10
  %63 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %vsync_len, align 4
  %conv87 = trunc i32 %64 to i16
  %65 = tail call i16 @llvm.bswap.i16(i16 %conv87)
  %66 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lcr, align 4
  %add.ptr89 = getelementptr i8, ptr %67, i32 342
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr89, i16 %65) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  tail call void @arm_heavy_mb() #9
  %upper_margin = getelementptr inbounds %struct.fb_videomode, ptr %5, i32 0, i32 7
  %68 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %upper_margin, align 4
  %add93 = add i32 %69, %64
  %conv94 = trunc i32 %add93 to i16
  %70 = tail call i16 @llvm.bswap.i16(i16 %conv94)
  %71 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lcr, align 4
  %add.ptr96 = getelementptr i8, ptr %72, i32 338
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr96, i16 %70) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %yres = getelementptr inbounds %struct.fb_videomode, ptr %5, i32 0, i32 3
  %73 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %yres, align 4
  %add100 = add i32 %74, %add93
  %conv101 = trunc i32 %add100 to i16
  %75 = tail call i16 @llvm.bswap.i16(i16 %conv101)
  %76 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %lcr, align 4
  %add.ptr103 = getelementptr i8, ptr %77, i32 354
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr103, i16 %75) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @arm_heavy_mb() #9
  %lower_margin = getelementptr inbounds %struct.fb_videomode, ptr %5, i32 0, i32 8
  %78 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %lower_margin, align 4
  %add107 = add i32 %79, %add100
  %conv108 = trunc i32 %add107 to i16
  %80 = tail call i16 @llvm.bswap.i16(i16 %conv108)
  %81 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lcr, align 4
  %add.ptr110 = getelementptr i8, ptr %82, i32 336
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr110, i16 %80) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  tail call void @arm_heavy_mb() #9
  %83 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %lcr, align 4
  %add.ptr115 = getelementptr i8, ptr %84, i32 358
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr115, i16 768) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  tail call void @arm_heavy_mb() #9
  %85 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lcr, align 4
  %add.ptr120 = getelementptr i8, ptr %86, i32 302
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr120, i16 256) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void @arm_heavy_mb() #9
  %87 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %lcr, align 4
  %add.ptr125 = getelementptr i8, ptr %88, i32 258
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr125, i16 1856) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %89 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %lcr, align 4
  %add.ptr130 = getelementptr i8, ptr %90, i32 356
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr130, i16 768) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  %91 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lcr, align 4
  %add.ptr135 = getelementptr i8, ptr %92, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr135, i16 4096) #9, !srcloc !83
  tail call void @msleep(i32 noundef 5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %93 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lcr, align 4
  %add.ptr140 = getelementptr i8, ptr %94, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr140, i16 5120) #9, !srcloc !83
  tail call void @msleep(i32 noundef 5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  tail call void @arm_heavy_mb() #9
  %95 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %lcr, align 4
  %add.ptr145 = getelementptr i8, ptr %96, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr145, i16 5376) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  tail call void @arm_heavy_mb() #9
  %97 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %lcr, align 4
  %add.ptr150 = getelementptr i8, ptr %98, i32 398
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr150, i16 -1281) #9, !srcloc !83
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tmiofb_acc_write(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %cmd, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %sub = sub i32 512, %count
  %call = tail call fastcc i32 @tmiofb_acc_wait(ptr noundef %info, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool2.not18 = icmp eq i32 %count, 0
  %or.cond = or i1 %tobool.not, %tobool2.not18
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.lr.ph:                                    ; preds = %entry
  %lcr = getelementptr inbounds %struct.tmiofb_par, ptr %1, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %count.addr.020 = phi i32 [ %count, %do.body.lr.ph ], [ %dec, %do.body.do.body_crit_edge ]
  %cmd.addr.019 = phi ptr [ %cmd, %do.body.lr.ph ], [ %incdec.ptr, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %cmd.addr.019 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd.addr.019, align 4
  %shr = lshr i32 %3, 16
  %conv = trunc i32 %shr to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %5 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lcr, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %4) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %cmd.addr.019 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd.addr.019, align 4
  %conv6 = trunc i32 %8 to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv6)
  %10 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lcr, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 %9) #9, !srcloc !83
  %dec = add i32 %count.addr.020, -1
  %incdec.ptr = getelementptr i32, ptr %cmd.addr.019, i32 1
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tmiofb_acc_wait(ptr nocapture noundef readonly %info, i32 noundef %ccs) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !144
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %use_polling = getelementptr inbounds %struct.tmiofb_par, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %use_polling to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %use_polling, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool10.not = icmp eq i8 %4, 0
  br i1 %tobool10.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %lcr = getelementptr inbounds %struct.tmiofb_par, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lcr, align 4
  %add.ptr141 = getelementptr i8, ptr %6, i32 22
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr141) #9, !srcloc !86
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  %conv15142 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15142, i32 %ccs)
  %cmp16143 = icmp ugt i32 %conv15142, %ccs
  br i1 %cmp16143, label %if.then.while.body_crit_edge, label %if.then.cleanup105_crit_edge

if.then.cleanup105_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup105

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

while.body:                                       ; preds = %tmiofb_irq.exit.while.body_crit_edge, %if.then.while.body_crit_edge
  %i.0144 = phi i32 [ %inc, %tmiofb_irq.exit.while.body_crit_edge ], [ 0, %if.then.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #9
  %inc = add nuw nsw i32 %i.0144, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %i.0144)
  %exitcond = icmp eq i32 %i.0144, 10000
  br i1 %exitcond, label %do.end23, label %if.end

do.end23:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %ccs) #13
  br label %cleanup105

if.end:                                           ; preds = %while.body
  %10 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par1, align 4
  %lcr.i = getelementptr inbounds %struct.tmiofb_par, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lcr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 20
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !88
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lcr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 %14) #9, !srcloc !83
  %17 = and i16 %14, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool16.not.i = icmp eq i16 %17, 0
  br i1 %tobool16.not.i, label %if.end.tmiofb_irq.exit_crit_edge, label %if.then17.i

if.end.tmiofb_irq.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tmiofb_irq.exit

if.then17.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %wait_acc.i = getelementptr inbounds %struct.tmiofb_par, ptr %11, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %wait_acc.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %tmiofb_irq.exit

tmiofb_irq.exit:                                  ; preds = %if.then17.i, %if.end.tmiofb_irq.exit_crit_edge
  %18 = ptrtoint ptr %lcr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lcr, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 22
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !86
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  %conv15 = zext i16 %21 to i32
  %cmp16 = icmp ugt i32 %conv15, %ccs
  br i1 %cmp16, label %tmiofb_irq.exit.while.body_crit_edge, label %tmiofb_irq.exit.cleanup105_crit_edge

tmiofb_irq.exit.cleanup105_crit_edge:             ; preds = %tmiofb_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup105

tmiofb_irq.exit.while.body_crit_edge:             ; preds = %tmiofb_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.else:                                          ; preds = %lor.lhs.false
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 373) #9
  %lcr35 = getelementptr inbounds %struct.tmiofb_par, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %lcr35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lcr35, align 4
  %add.ptr36 = getelementptr i8, ptr %23, i32 22
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr36) #9, !srcloc !86
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %conv40 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv40, i32 %ccs)
  %cmp41.not = icmp ugt i32 %conv40, %ccs
  br i1 %cmp41.not, label %if.then53, label %if.else.cleanup105_crit_edge

if.else.cleanup105_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup105

if.then53:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %26 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %wait_acc = getelementptr inbounds %struct.tmiofb_par, ptr %1, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %cleanup89, %if.then53
  %__ret54.0 = phi i32 [ 1000, %if.then53 ], [ %call88, %cleanup89 ]
  %call55 = call i32 @prepare_to_wait_event(ptr noundef %wait_acc, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %27 = ptrtoint ptr %lcr35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lcr35, align 4
  %add.ptr60 = getelementptr i8, ptr %28, i32 22
  %29 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr60) #9, !srcloc !86
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %conv64 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv64, i32 %ccs)
  %cmp65.not = icmp ugt i32 %conv64, %ccs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret54.0)
  %tobool71.not = icmp eq i32 %__ret54.0, 0
  %spec.store.select106 = select i1 %tobool71.not, i32 1, i32 %__ret54.0
  %__ret54.1 = select i1 %cmp65.not, i32 %__ret54.0, i32 %spec.store.select106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret54.1)
  %tobool78.not = icmp eq i32 %__ret54.1, 0
  %not.cmp65.not = xor i1 %cmp65.not, true
  %31 = select i1 %not.cmp65.not, i1 true, i1 %tobool78.not
  br i1 %31, label %if.end94, label %if.end84

if.end84:                                         ; preds = %for.cond
  %tobool85.not = icmp eq i32 %call55, 0
  br i1 %tobool85.not, label %cleanup89, label %if.end94.thread136

if.end94.thread136:                               ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %cleanup105

cleanup89:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %call88 = call i32 @schedule_timeout(i32 noundef %__ret54.1) #9
  br label %for.cond

if.end94:                                         ; preds = %for.cond
  call void @finish_wait(ptr noundef %wait_acc, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br i1 %tobool78.not, label %do.end100, label %if.end94.cleanup105_crit_edge

if.end94.cleanup105_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup105

do.end100:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %ccs) #13
  br label %cleanup105

cleanup105:                                       ; preds = %do.end100, %if.end94.cleanup105_crit_edge, %if.end94.thread136, %if.else.cleanup105_crit_edge, %tmiofb_irq.exit.cleanup105_crit_edge, %do.end23, %if.then.cleanup105_crit_edge
  %retval.1 = phi i32 [ -110, %do.end100 ], [ -110, %do.end23 ], [ 0, %if.end94.cleanup105_crit_edge ], [ 0, %if.end94.thread136 ], [ 0, %if.else.cleanup105_crit_edge ], [ 0, %if.then.cleanup105_crit_edge ], [ 0, %tmiofb_irq.exit.cleanup105_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tmiofb_setup(ptr noundef %options) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %options.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.while.cond_crit_edge

lor.lhs.false.while.cond_crit_edge:               ; preds = %lor.lhs.false
  br label %while.cond

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %lor.lhs.false.while.cond_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.27) #9
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.cleanup_crit_edge, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.cond.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !46, !47, !48, !49, !51, !52, !54, !56, !58, !59, !60, !61, !63, !65, !66, !67, !68, !70}
!llvm.named.register.sp = !{!72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_tmiofb__302_1035_tmiofb_init6, !1, !"__initcall__kmod_tmiofb__302_1035_tmiofb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/tmiofb.c", i32 1035, i32 1}
!2 = !{ptr @__exitcall_tmiofb_cleanup, !3, !"__exitcall_tmiofb_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/tmiofb.c", i32 1036, i32 1}
!4 = !{ptr @__UNIQUE_ID_description303, !5, !"__UNIQUE_ID_description303", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/tmiofb.c", i32 1038, i32 1}
!6 = !{ptr @__UNIQUE_ID_author304, !7, !"__UNIQUE_ID_author304", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/tmiofb.c", i32 1039, i32 1}
!8 = !{ptr @__UNIQUE_ID_file305, !9, !"__UNIQUE_ID_file305", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/tmiofb.c", i32 1040, i32 1}
!10 = !{ptr @__UNIQUE_ID_license306, !9, !"__UNIQUE_ID_license306", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/tmiofb.c", i32 990, i32 17}
!13 = !{ptr @tmiofb_driver, !14, !"tmiofb_driver", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/tmiofb.c", i32 989, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/tmiofb.c", i32 686, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @tmiofb_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @tmiofb_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/tmiofb.c", i32 690, i32 3}
!25 = !{ptr @tmiofb_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @tmiofb_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @tmiofb_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/tmiofb.c", i32 702, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/tmiofb.c", i32 776, i32 2}
!32 = !{ptr @tmiofb_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tmiofb_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @tmiofb_ops, !35, !"tmiofb_ops", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/tmiofb.c", i32 649, i32 28}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/tmiofb.c", i32 364, i32 5}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @tmiofb_acc_wait._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @tmiofb_acc_wait._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @tmiofb_acc_wait._entry.15, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/tmiofb.c", i32 374, i32 4}
!43 = !{ptr @tmiofb_acc_wait._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/tmiofb.c", i32 420, i32 4}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @tmiofb_sync._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @tmiofb_sync._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!51 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/tmiofb.c", i32 225, i32 3}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @tmiofb_irq._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @tmiofb_irq._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = distinct !{null, !62, !"mode_option", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/tmiofb.c", i32 186, i32 14}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/tmiofb.c", i32 946, i32 2}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @tmiofb_suspend._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @tmiofb_suspend._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/tmiofb.c", i32 1023, i32 21}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/tmiofb.c", i32 1008, i32 38}
!72 = !{!"sp"}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2155926136}
!83 = !{i64 4996345}
!84 = !{i64 2155926585}
!85 = !{i64 2155927045}
!86 = !{i64 4996545}
!87 = !{i64 2155923789}
!88 = !{i64 2155924063}
!89 = !{i8 0, i8 2}
!90 = !{!"branch_weights", i32 1, i32 2000}
!91 = !{i64 2155927544}
!92 = !{i64 2155928015}
!93 = !{i64 2155928486}
!94 = !{i64 2155928957}
!95 = !{i64 2155929436}
!96 = !{i64 2155929915}
!97 = !{i64 2155930380}
!98 = !{i64 2155930851}
!99 = !{i64 2155931322}
!100 = !{i64 2155931793}
!101 = !{i64 2155932264}
!102 = !{i64 2155932746}
!103 = !{i64 2155933229}
!104 = !{i64 2155933704}
!105 = !{i64 2155934172}
!106 = !{i64 2155934622}
!107 = !{i64 2155935072}
!108 = !{i64 2155956824}
!109 = !{i64 2155957307}
!110 = !{i64 2155958017}
!111 = !{i64 2155961681}
!112 = !{i64 2153683660, i64 2153683685}
!113 = !{i64 6178534}
!114 = !{i64 6178731}
!115 = !{i64 2153663964}
!116 = !{i64 2155971146, i64 2155971426, i64 2155971760, i64 2155972094}
!117 = !{i64 2153682979, i64 2153683004}
!118 = !{!"branch_weights", i32 2000, i32 1}
!119 = !{i64 2155935522}
!120 = !{i64 2155935982}
!121 = !{i64 2155936487}
!122 = !{i64 2155936997}
!123 = !{i64 2155937447}
!124 = !{i64 2155937949}
!125 = !{i64 2155938517}
!126 = !{i64 2155939035}
!127 = !{i64 2155939535}
!128 = !{i64 2155940084}
!129 = !{i64 2155940667}
!130 = !{i64 2155941240}
!131 = !{i64 2155941725}
!132 = !{i64 2155942225}
!133 = !{i64 2155942776}
!134 = !{i64 2155943320}
!135 = !{i64 2155943856}
!136 = !{i64 2155944372}
!137 = !{i64 2155944822}
!138 = !{i64 2155945282}
!139 = !{i64 2155945747}
!140 = !{i64 2155946207}
!141 = !{i64 2155946682}
!142 = !{i64 2155947157}
!143 = !{i64 2155947632}
!144 = !{i64 630923}
!145 = !{i64 2155948980}
!146 = !{i64 2155952876}
!147 = !{i64 2155954597}
